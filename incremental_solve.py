from distutils.util import strtobool
from tempfile import TemporaryDirectory
from shutil import copy as file_copy
from shutil import get_unpack_formats, unpack_archive
from itertools import product
from sys import stdin, stdout
from timeit import default_timer as timer
from tqdm import tqdm
from pathlib import Path
from subprocess import Popen, PIPE
from termcolor import colored
from typing import List
from random import shuffle
import signal, argparse, re
import logging

def rm_tree(path : Path, logger) -> None:
    for child in path.iterdir():
        if child.is_file():
            logger.debug(f'Unlink {child}')
            child.unlink()
        else:
            rm_tree(child, logger)
    logger.debug(f'Rmdir {path}')
    path.rmdir()

def get_logger(name : str, log_file : Path, level = logging.INFO):
    logger = logging.getLogger(name)
    logger.propagate = False
    logger.setLevel(level)

    # add stdout handler
    formatter = logging.Formatter('[%(levelname)s] %(message)s')
    console = logging.StreamHandler(stdout)
    console.setFormatter(formatter)
    logger.addHandler(console)

    # add file handler
    if log_file != '':
        formatter = logging.Formatter('%(asctime)s [%(levelname)s] [%(funcName)s:%(lineno)d] %(message)s')
        file_handler = logging.FileHandler(str(log_file), 'a')
        file_handler.setFormatter(formatter)
        logger.addHandler(file_handler)

    return logger

def get_aws_instance(fname : Path) -> None:
    with fname.open('w') as fd:
        fd.write('Instance-Type: ')
        fd.flush()
        p = Popen('curl -s http://169.254.169.254/latest/meta-data/instance-type', stdout=fd, shell=True, bufsize=1, universal_newlines=True)
        p.wait()
        fd.write('\n\nCPU Info:\n')
        fd.flush()
        p = Popen('cat /proc/cpuinfo', stdout=fd, shell=True, bufsize=1, universal_newlines=True)
        p.wait()
        fd.write('Mem Info:\n')
        fd.flush()
        p = Popen('cat /proc/meminfo', stdout=fd, shell=True, bufsize=1, universal_newlines=True)
        p.wait()
        fd.write('\n')
        fd.flush()

def get_lp_files(path : Path, exclude_regexes : List[str] = []) -> List[str]:
    files = [ fname for fname in path.iterdir() if fname.is_file() and fname.name[-3:] == '.lp' ]
    if exclude_regexes:
        raw_regex = '(%s)' % '|'.join(exclude_regexes)
        regex = re.compile(raw_regex)
        files = [ fname for fname in files if not re.match(regex, fname.name) ]
    return sorted(files)

def size_lp_file(fname : Path) -> int:
    size = 0
    with fname.open('r') as fd:
        for line in fd:
            if line[:5] == 'node(':
                size += 1
    return size

def sort_lp_files_by_size(files : List[Path]) -> List[Path]:
    files_with_size = [ (size_lp_file(fname), fname) for fname in files ]
    files_with_size.sort(key=lambda pair: pair[0])
    return [ fname for _, fname in files_with_size ]

def solve(solver : Path,
          domain : Path,
          best_model_filename : Path,
          solution_filename : Path,
          solve_path : Path,
          max_action_arity : int,
          max_num_predicates : int,
          max_time : int,
          verify_only : bool,
          ignore_constants : bool,
          max_nodes_per_iteration : int) -> bool:
    # start clock
    start_time = timer()

    # setup basic variables
    task_name = domain.name
    train_path = domain / 'train'
    test_path = domain / 'test'
    logger.info(f'Params: solver={solver}, task={task_name}, train_path={train_path}, best_model_filename={best_model_filename}, solution_filename={solution_filename}')

    # calculate model using solve set
    iterations = 0
    added_states = []
    added_files = []
    calculate_model = True
    solver_times_raw = []
    solver_wall_times = []
    solver_ground_times = []
    solver_cpu_times = []
    verify_times_batches = []

    # for checking whether trapped in infinite loop (set of new nodes cannot be subset of previous nodes)
    already_solved = dict()

    # setup solver command
    solver_cmd_args = dict(max_time=max_time, max_action_arity=max_action_arity, max_num_predicates=max_num_predicates, solver=solver, best_model_filename=best_model_filename)
    solver_cmd_template = 'clingo -c max_action_arity={max_action_arity} -c num_predicates={max_num_predicates} --fast-exit -t 6 --sat-prepro=2 --time-limit={max_time} --stats=0 {solver} {files} | python3 get_best_model.py {best_model_filename}'

    solution_found = False
    while calculate_model:
        iterations += 1

        if not verify_only:
            files = get_lp_files(solve_path, [ f'{solver.name}', f'{best_model_filename.name}', f'{solution_filename.name}' ])
            files_str = ' '.join([ str(fname) for fname in files ])
            solver_cmd = solver_cmd_template.format(files=files_str, **solver_cmd_args)

            logger.info(f'{colored("**** ITERATION " + str(iterations) + " ****", "red", attrs=["bold"])}')
            logger.info(f'Files={[ str(fname) for fname in files ]}')
            logger.info(f'Cmd={solver_cmd}')

            solve_output = []
            time_pair = [ -1, -1 ]
            if best_model_filename.exists(): best_model_filename.unlink()
            with Popen(solver_cmd, stdout=PIPE, shell=True, bufsize=1, universal_newlines=True) as p:
                g_running_children.append(p)
                for line in p.stdout:
                    line = line.strip('\n')
                    logger.info(f'{line}')
                    solve_output.append(line)
                    if line[:4] == 'Time':
                        time_pair[0] = line.split()
                    elif line[:8] == 'CPU Time':
                        time_pair[1] = line.split()
            g_running_children.pop()

            # update solver time
            solver_times_raw.append(tuple(time_pair))
            if time_pair[0] != -1:
                assert len(time_pair[0]) == 10 and time_pair[0][2][-1] == 's'
                wall_time = float(time_pair[0][2][:-1])
                solve_time = float(time_pair[0][4][:-1])
                ground_time = wall_time - solve_time
                solver_wall_times.append(wall_time)
                solver_ground_times.append(ground_time)
            if time_pair[1] != -1:
                assert len(time_pair[1]) == 4 and time_pair[1][3][-1] == 's'
                cpu_time = float(time_pair[1][3][:-1])
                solver_cpu_times.append(cpu_time)

        # if this model verifies over test set, no further computation is needed
        calculate_model = False

        # If solution found, iterate over test set:
        #   1. Verify best model over test set, one file at a time
        #   2. For each failure, expand training set with triplets (s,a,s') for offending nodes
        if best_model_filename.is_file():
            logger.info(f'Model found in {best_model_filename}')
            lifted_model = parse_lifted_model(best_model_filename, logger)
            if ignore_constants and len(lifted_model['constants']) > 0:
                logger.info(f"Ignoring constants {lifted_model['constants']} in model")
                lifted_model['constants'] = set()

            test_files = sort_lp_files_by_size(get_lp_files(test_path))
            verify_times = []
            for fname in test_files:
                verify_start_time = timer()
                distilled = parse_graph_file(fname, logger)
                ground_model = ground(lifted_model, distilled, logger)
                inst, unverified_nodes = verify_ground_model(ground_model, logger)
                verify_elapsed_time = timer() - verify_start_time
                verify_times.append(verify_elapsed_time)

                if unverified_nodes:
                    if fname.name not in already_solved:
                        already_solved[fname.name] = set()

                    unsolved_nodes = [ node for node in unverified_nodes if node not in already_solved[fname.name] ]
                    if not unsolved_nodes:
                        elapsed_time = timer() - start_time
                        logger.info(f'#calls={len(solver_wall_times)}, solve_wall_time={sum(solver_wall_times)}, solve_ground_time={sum(solver_ground_times)}, verify_time={sum(map(lambda batch: sum(batch), verify_times_batches))}, elapsed_time={elapsed_time}')
                        logger.critical(colored(f'Looping on partial.lp with nodes {unverified_nodes} from {fname.name}; already_solved={already_solved[fname.name]}', 'red', attrs = [ 'bold' ]))
                        return False

                    # copy fname to solve path, and fill in partial.lp
                    if not verify_only:
                        if not (solve_path / fname.name).exists():
                            added_files.append((inst, fname))
                            file_copy(fname, solve_path)

                        with (solve_path / 'partial.lp').open('a') as fd:
                            fd.write(f'filename("{fname.name}").\n')
                            fd.write(f'partial({inst},"{fname.name}").\n')
                            added_states.append(0)
                            n = max_nodes_per_iteration if max_nodes_per_iteration > 0 else len(unsolved_nodes)
                            shuffle(unsolved_nodes)
                            for node in unsolved_nodes[:n]:
                                added_states[-1] += 1
                                fd.write(f'relevant({inst},{node}).\n')
                                already_solved[fname.name].add(node)
                        calculate_model = True
                    break
            verify_times_batches.append(verify_times)
            solution_found = not unverified_nodes
        else:
            solution_found = False

    elapsed_time = timer() - start_time
    status_string = colored('OK', 'green', attrs = [ 'bold' ]) if solution_found else colored('Failed', 'red', attrs = [ 'bold' ])
    logger.info(f'#iterations={iterations}, added_files={added_files}, #added_states={sum(added_states)} in {added_states}')
    logger.info(f'#calls={len(solver_wall_times)}, solve_wall_time={sum(solver_wall_times)}, solve_ground_time={sum(solver_ground_times)}, verify_time={sum(map(lambda batch: sum(batch), verify_times_batches))}, elapsed_time={elapsed_time}, status={status_string}')
    return solution_found

def read_file(filename : Path, logger) -> List[str]:
    lines = [ line for line in filename.open('r') ]
    for line in tqdm(lines, desc = f"read file '{filename}'", file=stdout):
        line = line.strip('\n')
        if line != '':
            index_first_non_white_char = len(line) - len(line.lstrip())
            if index_first_non_white_char < len(line) and line[index_first_non_white_char] != '%':
                split = line.strip('\n').split()
                for r in split:
                    assert r != ''
                    if r[0] == '%': break
                    yield r
    logger.info(f'{len(lines)} record(s) from {filename}')
    return

def parse_record(record : str, sep_tok : str = ',', grouping_tok : str = '()', logger = None, debug : bool = False) -> List[str]:
    fields = []
    balance = 0

    if False:
        j, k = 0, 0
        for i in range(len(record)):
            if record[i] == sep_tok and balance == 0:
                fields.append(record[j:j+k])
                j, k = i+1, 0
            else:
                k += 1
                if record[i] == grouping_tok[0]:
                    balance += 1
                elif record[i] == grouping_tok[1]:
                    balance -= 1
        if k > 0: fields.append(record[j:j+k])
    else:
        field = ''
        for char in record:
            if char == sep_tok and balance == 0:
                fields.append(field)
                field = ''
            else:
                field += char
                if char == grouping_tok[0]:
                    balance += 1
                elif char == grouping_tok[1]:
                    balance -= 1
        if field: fields.append(field)

    if debug: logger.debug(f'Record={record}, fields={fields}')
    return fields

def parse_lifted_model(filename : Path, logger) -> dict:
    lifted_model = dict(action=dict(), pred=set(), eff=[], prec=[], constants=set())
    for line in read_file(filename, logger):
        if line[:8] == 'a_arity(' and line[-1] == '.':
            fields = parse_record(line[8:-2], logger=logger, debug=False)
            action = fields[0]
            arity = int(fields[1])
            if action not in lifted_model['action']:
                lifted_model['action'][action] = dict(arity=arity, prec=[], eff=[])
            else:
                lifted_model['action'][action]['arity'] = arity
        elif line[:5] == 'pred(' and line[-1] == '.':
            fields = parse_record(line[5:-2], logger=logger, debug=False)
            lifted_model['pred'].add(fields[0])
        elif line[:4] == 'eff(' and line[-1] == '.':
            fields = parse_record(line[4:-2], logger=logger, debug=False)
            assert len(fields) == 3
            action = fields[0]
            if action not in lifted_model['action']:
                lifted_model['action'][action] = dict(arity=-1, prec=[], eff=[])
            atom_fields = parse_record(fields[1][1:-1], logger=logger, debug=False)
            atom_args = parse_record(atom_fields[1][1:-1], logger=logger, debug=False)
            if atom_args == [ 'null' ]:
                atom = (atom_fields[0], (0,))
            else:
                atom = (atom_fields[0], tuple([ int(arg) if arg.isdecimal() else arg for arg in atom_args ]))
            value = int(fields[2])
            lifted_model['action'][action]['eff'].append((atom, value))
        elif line[:5] == 'prec(' and line[-1] == '.':
            fields = parse_record(line[5:-2], logger=logger, debug=False)
            assert len(fields) == 3
            action = fields[0]
            if action not in lifted_model['action']:
                lifted_model['action'][action] = dict(arity=-1, prec=[], eff=[])
            atom_fields = parse_record(fields[1][1:-1], logger=logger, debug=False)
            atom_args = parse_record(atom_fields[1][1:-1], logger=logger, debug=False)
            if atom_args == [ 'null' ]:
                atom = (atom_fields[0], (0,))
            else:
                atom = (atom_fields[0], tuple([ int(arg) if arg.isdecimal() else arg for arg in atom_args ]))
            value = int(fields[2])
            lifted_model['action'][action]['prec'].append((atom, value))
        elif line[:9] == 'constant(' and line[-1] == '.':
            fields = parse_record(line[9:-2], logger=logger, debug=False)
            assert len(fields) == 1
            constant = fields[0]
            lifted_model['constants'].add(constant)
        else:
            logger.warning(f'Unrecognized line |{line}|')
    return lifted_model

def parse_graph_file(filename : Path, logger) -> List[dict]:
    assert filename.name[-3:] == '.lp', f"{colored('ERROR:', 'red')} unexpected filename '{filename}'"

    distilled = dict(filename=filename, node=dict(), tlabel=dict(), f_static=dict(), fval=dict(), fval_static=dict(), feature=dict())
    for line in read_file(filename, logger):
        if line[:9] == 'instance(' and line[-1] == '.':
            fields = parse_record(line[9:-2], logger=logger, debug=False)
            inst = int(fields[0])
        elif line[:7] == 'tlabel(' and line[-1] == '.':
            fields = parse_record(line[7:-2], logger=logger, debug=False)
            inst = int(fields[0])
            label = fields[2]
            edge_fields = parse_record(fields[1][1:-1], logger=logger, debug=False)
            assert len(edge_fields) == 2
            edge = (int(edge_fields[0]), int(edge_fields[1]))
            if inst not in distilled['tlabel']:
                distilled['tlabel'][inst] = dict()
            if label not in distilled['tlabel'][inst]:
                distilled['tlabel'][inst][label] = []
            distilled['tlabel'][inst][label].append(edge)
        elif line[:5] == 'node(' and line[-1] == '.':
            fields = parse_record(line[5:-2], logger=logger, debug=False)
            inst = int(fields[0])
            node = int(fields[1])
            if inst not in distilled['node']:
                distilled['node'][inst] = []
            distilled['node'][inst].append(node)
        elif line[:9] == 'f_static(' and line[-1] == '.':
            fields = parse_record(line[9:-2], logger=logger, debug=False)
            inst = int(fields[0])
            feature = fields[1]
            if inst not in distilled['f_static']:
                distilled['f_static'][inst] = set()
            distilled['f_static'][inst].add(feature)
        elif line[:5] == 'fval(' and line[-1] == '.':
            fields = parse_record(line[5:-2], logger=logger, debug=False)
            assert len(fields) in [3, 4]
            inst = int(fields[0])
            atom_fields = parse_record(fields[1][1:-1], logger=logger, debug=False)
            assert len(atom_fields) == 2
            arg_fields = parse_record(atom_fields[1][1:-1], logger=logger, debug=False)
            atom = (atom_fields[0], tuple(arg_fields))
            node = None if len(fields) == 3 else int(fields[2])
            value = int(fields[-1])

            key = 'fval_static' if len(fields) == 3 else 'fval'
            if inst not in distilled[key]:
                distilled[key][inst] = dict()
                distilled[key][inst][0] = set()
                distilled[key][inst][1] = set()
                #distilled[key][inst]['atom'] = dict()
                if node != None:
                    distilled[key][inst]['node'] = dict()

            #if atom[0] not in distilled[key][inst]['atom']:
            #    distilled[key][inst]['atom'][atom[0]] = []

            fval = (atom, node) if node != None else atom
            distilled[key][inst][value].add(fval)
            #fval = (atom[1], node, value) if node != None else (atom[1], value)
            #distilled[key][inst]['atom'][atom[0]].append(fval)

            if node != None:
                if node not in distilled[key][inst]['node']:
                    distilled[key][inst]['node'][node] = []
                distilled[key][inst]['node'][node].append((atom, value))
        elif line[:8] == 'feature(' and line[-1] == '.':
            fields = parse_record(line[8:-2], logger=logger, debug=False)
            assert len(fields) == 1
            feature = fields[0]
        elif line[:8] == 'f_arity(' and line[-1] == '.':
            fields = parse_record(line[8:-2], logger=logger, debug=False)
            assert len(fields) == 2
            feature = fields[0]
            arity = int(fields[1])
            if feature not in distilled['feature']:
                distilled['feature'][feature] = arity
            else:
                assert distilled['feature'][feature] == arity, f"Arity mismatch for '{feature}': registered={distilled['feature'][feature]}, got={arity}, line=|{line}|"
        elif line[:13] == 'f_complexity(' and line[-1] == '.':
            pass
        elif line[:9] == 'constant(' and line[-1] == '.':
            pass
        else:
            logger.warning(f'Unrecognized line |{line}|')
    return distilled

def ground(lifted_model : dict, distilled : dict, logger, debug : bool = False) -> dict:
    # ground atoms
    ground_model = dict(instances=set(), gatoms=dict(), gatoms_r=dict(), pred=lifted_model['pred'], constants=lifted_model['constants'], filename=distilled['filename'], feature=distilled['feature'], tlabel=distilled['tlabel'], f_static=distilled['f_static'])
    for key in [ 'fval_static', 'fval' ]:
        for inst in distilled[key].keys():
            ground_model['instances'].add(inst)
            if inst not in ground_model['gatoms']:
                ground_model['gatoms'][inst] = dict()
                ground_model['gatoms_r'][inst] = []
            for value in range(2):
                for item in distilled[key][inst][value]:
                    atom = item[0] if type(item[0]) == tuple else item
                    assert type(atom) == tuple and len(atom) == 2
                    if atom[1] == ('null',) or atom[1] == ('0',):
                        atom = (atom[0], ())
                        ground_model['feature'][atom[0]] = 0
                    if atom not in ground_model['gatoms'][inst]:
                        index = len(ground_model['gatoms'][inst])
                        ground_model['gatoms'][inst][atom] = index
                        ground_model['gatoms_r'][inst].append(atom)

    num_gatoms = dict()
    for inst in ground_model['instances']:
        num_gatoms[inst] = len(ground_model['gatoms'][inst])

    # grounded fval structures
    for key in [ 'fval_static', 'fval' ]:
        ground_model[key] = dict()
        for inst in distilled[key].keys():
            ground_model[key][inst] = dict()
            ground_model[key][inst][1] = []
            for item in distilled[key][inst][1]:
                atom = item[0] if type(item[0]) == tuple else item
                node = item[1] if type(item[0]) == tuple else None
                if atom[1] == ('null',) or atom[1] == ('0',): atom = (atom[0], ())
                assert atom in ground_model['gatoms'][inst], f'grounding: (1) inst={inst}, atom={atom}'
                gatom = ground_model['gatoms'][inst][atom]
                ground_model[key][inst][1].append(gatom if node == None else (gatom, node))

    for inst in distilled['fval'].keys():
        ground_model['fval'][inst]['node'] = dict()
        for node in distilled['fval'][inst]['node'].keys():
            ground_model['fval'][inst]['node'][node] = set()
            for atom, value in distilled['fval'][inst]['node'][node]:
                if value == 1:
                    if atom[1] == ('null',) or atom[1] == ('0',): atom = (atom[0], ())
                    assert atom in ground_model['gatoms'][inst], f'grounding: (2) inst={inst}, atom={atom}'
                    gatom = ground_model['gatoms'][inst][atom]
                    ground_model['fval'][inst]['node'][node].add(gatom)
            assert set([ atom for atom, st in ground_model['fval'][inst][1] if st == node ]) == ground_model['fval'][inst]['node'][node]

    # objects
    num_objects = dict()
    ground_model['objects'] = dict()
    for inst in ground_model['gatoms_r']:
        ground_model['objects'][inst] = set()
        for atom in ground_model['gatoms_r'][inst]:
            assert type(atom[0]) == str and type(atom[1]) == tuple
            if atom[0] == 'verum':
                for obj in atom[1]: ground_model['objects'][inst].add(obj)
        num_objects[inst] = len(ground_model['objects'][inst])

    # grounded actions
    ground_model.update(dict(gactions=dict(), gactions_r=dict()))
    for inst in ground_model['instances']:
        ground_model['gactions'][inst] = dict()
        ground_model['gactions_r'][inst] = []
        for label in lifted_model['action']:
            arity = lifted_model['action'][label]['arity']
            assert arity >= 0, f'{colored("ERROR:", "red")} grounding: arity={arity} for action {label}'
            filter_fn = lambda item: len(set(item)) == arity # CHECK: THIS FILTER RESULTS IN GROUNDED ACTIONS WITHOUT REPEATED ARGUMENTS
            # CHECK: THIS DECISON IS NOT FIXED. PROPER THING WOULD BE TO ADD FLAG TO SOLVER AND USE IT IN THIS FUNCTION AND TO SET opt_equal_objects IN ASP PROGRAM
            for args in filter(filter_fn, product([ item for item in ground_model['objects'][inst] if item not in ground_model['constants'] ], repeat=arity)):
                # calculate action items and nodes where it's applicable
                items = dict(label=label, args=args, prec=[], eff=[], appl=[])
                is_applicable = True
                warnings = []
                for key in ['prec', 'eff']:
                    for lifted, value in lifted_model['action'][label][key]:
                        #if key == 'eff' and lifted[0] in distilled['f_static'][inst]:
                        #    print(f"{colored('WARNING:', 'magenta')} effect '{lifted[0]}({','.join([ str(i) for i in lifted[1] ])})={value}' over static predicate '{lifted[0]}' for inst={inst}")
                        assert lifted[0] in lifted_model['pred']
                        if lifted[1] == (0,):
                            pargs = ()
                        else:
                            assert 0 not in lifted[1]
                            pargs = tuple([ args[i-1] if type(i) == int else i for i in lifted[1] ])
                        glifted = (lifted[0], pargs)
                        index = -1 if glifted not in ground_model['gatoms'][inst] else ground_model['gatoms'][inst][glifted]
                        if index == -1:
                            if key == 'prec' and value == 1:
                                is_applicable = False
                                break
                            elif debug:
                                warnings.append(f'{colored("INFO:", "green")} grounding: inexistent ground atom {glifted} (value={value}) in {key} for inst={inst} in {label}({",".join(args)})')
                        items[key].append((glifted, index, value))
                    if not is_applicable: break

                if is_applicable and applicable_static(ground_model, inst, items):
                    for node in ground_model['fval'][inst]['node']:
                        if applicable_dynamic(ground_model, inst, node, items):
                            items['appl'].append(node)

                    if items['appl']:
                        index = len(ground_model['gactions_r'][inst])
                        ground_model['gactions'][inst][(label, args)] = index
                        ground_model['gactions_r'][inst].append(items)
                        if debug: logger.debug(f'gaction: {index}={(label, args)}, appl={items["appl"]}')
                        for warning in warnings: logger.warning(f'{warning}')

    # calculate number nodes
    num_nodes = dict()
    for inst in distilled['node']:
        num_nodes[inst] = len(distilled['node'][inst])

    logger.info(f'#nodes={num_nodes}, #features={len(ground_model["feature"])}, #objects={num_objects}, #grounded-atoms={num_gatoms}')
    return ground_model


def applicable_static(ground_model : dict, inst : int, action : dict) -> bool:
    for gprec, index, value in action['prec']:
        assert gprec[0] in ground_model['pred']
        if gprec[0] in ground_model['f_static'][inst]:
            if value == 1 and index == -1:
                return False
            elif value == 0 and index != -1 and index in ground_model['fval_static'][inst][1]:
                return False
            elif value == 1 and index != -1 and index not in ground_model['fval_static'][inst][1]:
                return False
    return True

def applicable_dynamic(ground_model : dict, inst : int, node_index : int, action : dict) -> bool:
    for gprec, index, value in action['prec']:
        assert gprec[0] in ground_model['pred']
        if gprec[0] not in ground_model['f_static'][inst]:
            if value == 1 and index == -1:
                return False
            elif value == 0 and index != -1 and index in ground_model['fval'][inst]['node'][node_index]:
                return False
            elif value == 1 and index != -1 and index not in ground_model['fval'][inst]['node'][node_index]:
                return False
    return True

def applicable(ground_model : dict, inst : int, node_index : int, action : dict) -> bool:
    return applicable_static(ground_model, inst, action) and applicable_dynamic(ground_model, inst, node_index, action)

def transition(ground_model : dict, inst : int, src_index : int, action : dict, f_nodes : List, f_nodes_r : dict, logger, debug : bool = False) -> List:
    dst = set(f_nodes[src_index])
    if debug: logger.info(f'Src={src_index}.{dst}, action={action["label"]}{action["args"]}')
    for gatom, index, value in action['eff']:
        assert gatom[0] in ground_model['pred']
        if index == -1:
            if value == 1:
                logger.error(f'Inexistent ground atom {gatom} (add effect)')
                return -1
            else:
                logger.warning(f'Inexistent ground atom {gatom} (del effect, issue warning)')
        elif value == 0:
            if gatom[0] in ground_model['f_static'][inst] and index in ground_model['fval_static'][inst][1]:
                logger.error(f'Trying to remove non-existent static atom {gatom}')
                return -1
            elif gatom[0] not in ground_model['f_static'][inst] and index in dst:
                if debug: logger.info(f'Remove atom {index}.{gatom}')
                dst.remove(index)
        else:
            if gatom[0] in ground_model['f_static'][inst] and index not in ground_model['fval_static'][inst][1]:
                logger.error(f'Trying to assert non-true static atom {index}.{gatom}')
                return -1
            elif gatom[0] not in ground_model['f_static'][inst] and index not in dst:
                if debug: logger.info(f'Assert atom {index}.{gatom}')
                dst.add(index)
    key = tuple(sorted(list(dst)))
    dst_index = -1 if key not in f_nodes_r else f_nodes_r[key]
    if debug:
        dst_gatoms = [ ground_model['gatoms_r'][inst][i] for i in dst ]
        logger.info(f'Dst={dst_index}.{dst}={dst_gatoms}')
    return dst_index

def verify_nodes_are_different(ground_model : dict, inst : int, selected_gatoms : set) -> List:
    nodes = list(ground_model['fval'][inst]['node'].keys())
    for i in range(len(nodes)):
        inode = set([ gatom for gatom in ground_model['fval'][inst]['node'][nodes[i]] if gatom in selected_gatoms ])
        for j in range(i+1, len(nodes)):
            jnode = set([ gatom for gatom in ground_model['fval'][inst]['node'][nodes[j]] if gatom in selected_gatoms ])
            if inode == jnode:
                return False, (nodes[i], nodes[j])
    return True, None


def verify_instance_node(ground_model : dict, inst : int, node_index : int, f_nodes : List, f_nodes_r : dict, logger) -> List:
    tlabels = ground_model['tlabel'][inst]
    gactions_r = ground_model['gactions_r'][inst]
    aindices = [ i for i in range(len(gactions_r)) if node_index in gactions_r[i]['appl'] ]

    appl_actions = [ (aindex,gactions_r[aindex]) for aindex in aindices ]
    appl_actions = [ f"{aindex}.{action['label']}({','.join(action['args'])})" for aindex, action in appl_actions ]
    logger.info(f'Inst={inst}, node={node_index}, appl={appl_actions}')

    transitions, transitions_without_args, err_transitions = [], [], []
    for aindex in aindices:
        action = gactions_r[aindex]
        label = action['label']
        assert applicable(ground_model, inst, node_index, action)
        rindex = transition(ground_model, inst, node_index, action, f_nodes, f_nodes_r, logger, debug=False)
        if rindex != -1:
            transitions.append((aindex, (node_index, rindex)))
            transitions_without_args.append((label, (node_index, rindex)))
        else:
            transition(ground_model, inst, node_index, action, f_nodes, f_nodes_r, logger, debug=True)
            err_transitions.append(((label, action['args']), node_index))

    # check transitions appear as edges
    transitions_without_edges = []
    for aindex, edge in transitions:
        gaction = gactions_r[aindex]
        label = gaction['label']
        if label not in tlabels or edge not in tlabels[label]:
            transitions_without_edges.append(((label, gaction['args']), edge))

    # check edges appear as transitions
    edges_without_transitions = []
    for label in tlabels:
        for edge in tlabels[label]:
            if edge[0] == node_index and (label, edge) not in transitions_without_args:
                edges_without_transitions.append((label, edge))

    rv = not err_transitions and not transitions_without_edges and not edges_without_transitions
    return rv, dict(err_transitions=err_transitions, transitions_without_edges=transitions_without_edges, edges_without_transitions=edges_without_transitions)

def verify_instance(ground_model : dict, inst : int, logger) -> bool:
    gatoms_r = ground_model['gatoms_r'][inst]
    selected_gatoms = set([ gindex for gindex in range(len(gatoms_r)) if gatoms_r[gindex][0] in ground_model['pred'] ])
    rv, pair = verify_nodes_are_different(ground_model, inst, selected_gatoms)

    if not rv:
        i, j = pair
        nodes = ground_model['fval'][inst]['node']
        logger.warning(f'Nodes {i} and {j} in inst={inst} are equal modulo selected predicates={ground_model["pred"]}')
        inode = [ gatoms_r[k] for k in sorted(nodes[i]) if k in selected_gatoms ]
        jnode = [ gatoms_r[k] for k in sorted(nodes[j]) if k in selected_gatoms ]
        logger.warning(f'Projected s{i}={inode}')
        logger.warning(f'Projected s{j}={jnode}')
        if nodes[i] == nodes[j]:
            logger.error(colored("These nodes aren't separated by any set of features", "red", attr = [ "bold" ]))
        return False, [ i, j ]

    # CHECK: code below assumes nodes in instance are enumerated as 0...n-1 where n is number of nodes
    num_nodes = len(ground_model['fval'][inst]['node'])
    f_nodes = [ [] for _ in range(num_nodes) ]
    f_nodes_r = dict()
    for i, node in ground_model['fval'][inst]['node'].items():
        assert type(node) == set
        filtered = set([ gindex for gindex in node if gindex in selected_gatoms ])
        f_nodes[i] = filtered
        f_nodes_r[tuple(sorted(list(filtered)))] = i

    unverified_nodes = []
    for node_index in range(num_nodes):
        rv, reason = verify_instance_node(ground_model, inst, node_index, f_nodes, f_nodes_r, logger)
        if not rv:
            unverified_nodes.append(node_index)
            logger.warning(colored(f'Bad verification in inst={inst} for node={node_index}; reason={reason}', 'magenta'))
    return unverified_nodes == [], unverified_nodes

def verify_assumptions(ground_model : dict, inst : int, logger) -> bool:
    # verify that each edge (S1,S2) is mapped to single action label A
    tlabels = ground_model['tlabel'][inst]
    edges = dict() # map edges to labels
    for label in tlabels:
        for edge in tlabels[label]:
            if edge in edges:
                logger.warning(f'Edge assumption violated for inst={inst}: edge={edge} has labels={[ label ] + tlabels[label]}')
                return False
            else:
                edges[edge] = [ label ]
    return True

def verify_ground_model(ground_model : dict, logger) -> None:
    for inst in ground_model['instances']:
        rv1 = verify_assumptions(ground_model, inst, logger)
        rv2, unverified_nodes = verify_instance(ground_model, inst, logger)
        logger.info(f'Filename={ground_model["filename"]}, status={rv1 and rv2}, rvs={[rv1, rv2]}, unverified_nodes={unverified_nodes}')
        return inst, unverified_nodes

if __name__ == '__main__':
    # setup proper SIGTERM handler
    g_running_children = []
    def sigterm_handler(_signo, _stack_frame):
        logger.warning(colored('Process INTERRUPTED by SIGTERM!', 'red'))
        if g_running_children:
            logger.info(f'Killing {len(g_running_children)} subprocess(es) ...')
            for p in g_running_children:
                p.kill()
        exit(0)
    signal.signal(signal.SIGTERM, sigterm_handler)

    # default values
    default_aws_instance = False
    default_debug_level = 0
    default_max_time = 57600
    default_max_nodes_per_iteration = 10
    default_max_action_arity = 3
    default_max_num_predicates = 12

    # argument parser
    parser = argparse.ArgumentParser(description='Incremental learning of grounded PDDL models.')
    parser.add_argument('--aws-instance', dest='aws_instance', type=lambda x:bool(strtobool(x)), default=default_aws_instance, help=f'describe AWS instance (boolean, default={default_aws_instance})')
    parser.add_argument('--continue', dest='continue_solve', action='store_true', help='continue an interrupted learning process')
    parser.add_argument('--debug-level', dest='debug_level', type=int, default=default_debug_level, help=f'set debug level (default={default_debug_level})')
    parser.add_argument('--ignore-constants', dest='ignore_constants', action='store_true', help='ignore constant semantics for objects of type constant')
    parser.add_argument('--max-action-arity', dest='max_action_arity', type=int, default=default_max_action_arity, help=f'set maximum action arity for schemas (default={default_max_action_arity})')
    parser.add_argument('--max-nodes-per-iteration', dest='max_nodes_per_iteration', type=int, default=default_max_nodes_per_iteration, help=f'max number of nodes added per iteration (0=all, default={default_max_nodes_per_iteration}')
    parser.add_argument('--max-num-predicates', dest='max_num_predicates', type=int, default=default_max_num_predicates, help=f'set maximum number selected predicates (default={default_max_num_predicates})')
    parser.add_argument('--max-time', dest='max_time', type=int, default=default_max_time, help=f'max-time for Clingo solver (0=no limit, default={default_max_time})')
    parser.add_argument('--results', dest='results', action='append', help=f"folder to store results (default=graphs's folder)")
    parser.add_argument('--verify-only', dest='verify_only', action='store_true', help='verify best model found over test set')
    parser.add_argument('solver', type=str, help='solver (.lp file)')
    parser.add_argument('domain', type=str, help="path to domain's folder (it can be a .zip file)")
    args = parser.parse_args()

    # setup solver paths
    solver = Path(args.solver)
    solver_name = solver.stem
    solve_folder = f'{solver_name}_a={args.max_action_arity}_p={args.max_num_predicates}'

    # setup domain paths
    domain = Path(args.domain)
    suffix = ''.join(domain.suffixes)
    compressed_formats = [ ext for format in get_unpack_formats() for ext in format[1] ]
    if suffix in compressed_formats:
        # if compressed domain, unpack it in tmp folder
        tmp_folder = Path(TemporaryDirectory().name)
        print(f'Domain {domain} is compressed; uncompressing it in temporary folder {tmp_folder}')
        unpack_archive(domain, tmp_folder)
        subfolders = [ fname for fname in tmp_folder.iterdir() if fname.is_dir() ]
        assert len(subfolders) > 0, f'Empty compressed file {domain}'
        print(f'Subfolders in compressed domain {subfolders}')
        domain = Path(subfolders[0])
        print(f'Using subfolder {domain} as domain')
    else:
        tmp_folder = None

    # setup solve path, and best-model and solution filenames
    solve_path = (domain if not args.results else Path(args.results[0]) / domain.name) / solve_folder
    best_model_filename = solve_path / 'best_model.lp'
    solution_filename = solve_path / 'solution.lp'

    # create/clean solve_path
    if args.verify_only:
        if not solve_path.exists():
            print(f"Requested verification on inexistent solve path '{solve_path}'")
            exit(-1)
    else:
        continue_solve = args.continue_solve and solve_path.exists()
        if not continue_solve and not args.verify_only:
            solve_path.mkdir(parents=True, exist_ok=True)
            for fname in solve_path.iterdir():
                fname.unlink()

            # populate solve_path with train set
            train_path = domain / 'train'
            if train_path.exists():
                for fname in train_path.iterdir():
                    if fname[:-3] == '.lp':
                        print(f'File copy {fname} to {solve_path}')
                        file_copy(fname, solve_path)

            # copy solver to solve_path
            file_copy(solver, solve_path)

    # setup logger
    log_file = solve_path / 'log.txt'
    log_level = logging.INFO if args.debug_level == 0 else logging.DEBUG
    logger = get_logger('solve', log_file, log_level)

    # describe AWS instance
    if args.aws_instance:
        instance = solve_path / 'aws_instance_info.txt'
        get_aws_instance(instance)

    # if only verification, check that solve_path contains a solution file and copy it to best_model_filename
    if args.verify_only:
        if not solution_filename.exists():
            logger.error(f'Required solution file {solution_filename} is required for only verification')
            exit(-1)
        else:
            file_copy(solution_filename, best_model_filename)

    # solve
    solution_found = False
    try:
        solve_args = dict(solver=solve_path / solver.name, domain=domain,
                          best_model_filename=best_model_filename, solution_filename=solution_filename,
                          solve_path=solve_path, max_action_arity=args.max_action_arity,
                          max_num_predicates=args.max_num_predicates, max_time=args.max_time,
                          verify_only=args.verify_only, ignore_constants=args.ignore_constants,
                          max_nodes_per_iteration=args.max_nodes_per_iteration)
        solution_found = solve(**solve_args)
    except KeyboardInterrupt:
        logger.warning(colored('Process INTERRUPTED by keyboard (ctrl-C)!', 'red'))
        pass
    finally:
        if args.verify_only:
            assert best_model_filename.exists()
            best_model_filename.unlink()
        else:
            # if solution found, rename best_model_filename to solution_filename
            assert solution_found == best_model_filename.exists()
            if solution_found:
                assert best_model_filename.exists()
                best_model_filename.rename(solution_filename)

        # cleanup
        if tmp_folder != None:
            n = len(str(domain))
            if str(domain) == str(solve_path)[:n]:
                logger.warning(f'Temporary folder {domain} not removed because results are stored there')
            else:
                rm_tree(tmp_folder, logger)
                logger.info(f'Temporary folder {tmp_folder} removed')
        logger.info(f'Results stored in {solve_path}')

