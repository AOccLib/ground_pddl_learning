from distutils.util import strtobool
from tempfile import TemporaryDirectory
from shutil import copy as file_copy
from shutil import get_unpack_formats, unpack_archive
from sys import stdin, stdout
from timeit import default_timer as timer
from pathlib import Path
from subprocess import Popen, PIPE
from termcolor import colored
from typing import List, Tuple
import signal, argparse, re, random
import logging

import parse_and_ground as pg
from verifier import verify_ground_model
from verifier import verify_ground_model_using_equivalence_classes

def rm_tree(path: Path, logger) -> None:
    for child in path.iterdir():
        if child.is_file():
            logger.debug(f'Unlink {child}')
            child.unlink()
        else:
            rm_tree(child, logger)
    logger.debug(f'Rmdir {path}')
    path.rmdir()

def get_logger(name: str, log_file: Path, level = logging.INFO):
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

def get_aws_instance(fname: Path) -> None:
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

def get_lp_files(path: Path, exclude_regexes: List[str] = []) -> List[str]:
    files = [ fname for fname in path.iterdir() if fname.is_file() and str(fname).endswith('.lp') ]
    if exclude_regexes:
        raw_regex = '(%s)' % '|'.join(exclude_regexes)
        regex = re.compile(raw_regex)
        files = [ fname for fname in files if not re.match(regex, fname.name) ]
    return sorted(files)

def size_lp_file(fname: Path) -> int:
    size = 0
    with fname.open('r') as fd:
        for line in fd:
            if line[:5] == 'node(':
                size += 1
    return size

def sort_lp_files_by_size(files: List[Path]) -> List[Path]:
    files_with_size = [ (size_lp_file(fname), fname) for fname in files ]
    files_with_size.sort(key=lambda pair: pair[0])
    return [ fname for _, fname in files_with_size ]

def add_nodes_to_partial_lp_file(partial_fname: Path, fnames: dict, unsolved_nodes: List[Tuple], max_nodes_per_iteration: int, logger):
    added_nodes = []
    insts = set([ inst for (inst, node) in unsolved_nodes ])
    with partial_fname.open('a') as fd:
        for inst in insts:
            assert inst in fnames, f'Looking for inst={inst} in fnames={fnames}'
            fname = fnames[inst]
            fd.write(f'filename("{fname.name}").\n')
            fd.write(f'partial({inst},"{fname.name}").\n')
            nodes = [ node for (i, node) in unsolved_nodes if i == inst ]
            n = max_nodes_per_iteration if max_nodes_per_iteration > 0 else len(nodes)
            random.shuffle(nodes)
            logger.info(f'add_nodes_to_partial_lp_file: inst={inst}, nodes={nodes}, max_nodes_per_iteration={max_nodes_per_iteration}')
            for node in nodes[:n]:
                fd.write(f'relevant({inst},{node}).\n')
                logger.info(colored(f'ADD TO PARTIAL: relevant({inst},{node})', 'blue', attrs=['bold']))
                added_nodes.append((inst, node))
    return added_nodes

def solve(solver: Path,
          domain: Path,
          best_model_filename: Path,
          solution_filename: Path,
          readable_models_filename: Path,
          solve_path: Path,
          max_action_arity: int,
          max_num_predicates: int,
          max_time: int,
          verify_only: bool,
          ignore_constants: bool,
          max_nodes_per_iteration: int,
          sat_prepro: int,
          include: List[Path]) -> bool:
    # start clock
    start_time = timer()

    # setup basic variables
    task_name = domain.name
    train_path = domain / 'train'
    test_path = domain / 'test'
    partial_fname = solve_path / 'partial.lp'
    logger.info(f'Params: solver={solver}, task={task_name}, train_path={train_path}, best_model_filename={best_model_filename}, solution_filename={solution_filename}')

    # calculate model using solve set
    iterations = 0
    num_added_nodes = []
    added_files = []
    calculate_model = True
    solver_times_raw = []
    solver_wall_times = []
    solver_ground_times = []
    solver_cpu_times = []
    verify_times_batches = []

    # data for checking whether trapped in infinite loop, dictionary with fields:
    # - log: list of instances processed in order (same instance may appear multiple times)
    # - already_added: list of pairs of format (inst, node), both are integers, meaning (inst, node) appear in file 'partial.lp'
    # - sink_nodes: dict() indexed by inst that points to list of sink nodes in input graph (typically, graphs with node confusions have sinks)
    # - eq_classes: dict() indexed by inst that poitns to list of equivalance classes for such inst, ordered as they are processed
    # - fnames: dict() that maps inst to filenames
    data = dict(log=[], already_added=set(), sink_nodes=dict(), eq_classes=dict(), fnames=dict())

    # setup solver command
    solver_cmd_args = dict(max_time=max_time, max_action_arity=max_action_arity, max_num_predicates=max_num_predicates, solver=solver, best_model_filename=best_model_filename, readable_models_filename=readable_models_filename, sat_prepro=sat_prepro)
    solver_cmd_template = 'clingo -c max_action_arity={max_action_arity} -c num_predicates={max_num_predicates} --fast-exit -t 6 --sat-prepro={sat_prepro} --time-limit={max_time} --stats=0 {solver} {files} | python3 get_best_model.py {best_model_filename} {readable_models_filename}'

    solution_found = False
    while calculate_model:
        iterations += 1

        if not verify_only:
            files = get_lp_files(solve_path, [ f'{solver.name}', f'{best_model_filename.name}', f'{solution_filename.name}' ])
            if include and iterations > 1:
                for fname in include:
                    if not fname.exists():
                        logger.warning(colored(f"Include file '{fname}' doesn't exist; skipping it", 'red'))
                    else:
                        files.append(fname)
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
            lifted_model = pg.parse_lifted_model(best_model_filename, logger)
            if ignore_constants and len(lifted_model['constants']) > 0:
                logger.info(f"Ignoring constants {lifted_model['constants']} in model")
                lifted_model['constants'] = set()

            test_files = sort_lp_files_by_size(get_lp_files(test_path))
            solution_found = True
            verify_times = []

            for fname in test_files:
                verify_start_time = timer()
                distilled = pg.parse_graph_file(fname, logger)
                ground_model = pg.ground(lifted_model, distilled, logger)
                inst, unverified_nodes, eqc = verify_ground_model_using_equivalence_classes(ground_model, data['already_added'], logger)
                verify_elapsed_time = timer() - verify_start_time
                verify_times.append(verify_elapsed_time)

                if inst not in data['sink_nodes']:
                    sinks = pg.read_sink_nodes(distilled, logger)
                    logger.info(f'Sinks: inst={inst}, all={sinks}')
                    data['sink_nodes'][inst] = sinks
                    assert inst not in data['eq_classes']
                    data['eq_classes'][inst] = []
                    assert inst not in data['fnames']
                    data['fnames'][inst] = fname

                data['log'].append(inst)
                data['eq_classes'][inst].append(eqc)

                if unverified_nodes:
                    unsolved_nodes = [ (inst, node) for node in unverified_nodes if (inst, node) not in data['already_added'] ]
                    if not unsolved_nodes:
                        elapsed_time = timer() - start_time
                        logger.info(f'#calls={len(solver_wall_times)}, solve_wall_time={sum(solver_wall_times)}, solve_ground_time={sum(solver_ground_times)}, verify_time={sum(map(lambda batch: sum(batch), verify_times_batches))}, elapsed_time={elapsed_time}')
                        logger.critical(colored(f'Looping on partial.lp with nodes {unverified_nodes} from {fname.name}; already_added={data["already_added"]}', 'red', attrs=['bold']))
                        return False

                    # copy fname to solve path, and fill in partial.lp
                    if not verify_only:
                        if not (solve_path / fname.name).exists():
                            added_files.append((inst, fname))
                            file_copy(fname, solve_path)
                        added = add_nodes_to_partial_lp_file(partial_fname, data['fnames'], unsolved_nodes, max_nodes_per_iteration, logger)
                        #logger.info(f'****: already={data["already_added"]}, added={added}')
                        data['already_added'].update(added)
                        num_added_nodes.append(len(added))
                        calculate_model = True
                    solution_found = False
                    break
            verify_times_batches.append(verify_times)
        else:
            '''
            # Solver returns UNSAT. This could be done if there are relevant nodes that are sink nodes.
            # In such cases, add nodes equivalent to the sinks if any. Otherwise, fail.
            assert len(data['log']) > 0
            last_inst = data['log'][-1]
            last_fname = data['fnames'][last_inst]
            last_eq_classes = data['eq_classes'][last_inst][-1]
            sinks_in_partial = [ node for (inst, node) in data['already_added'] if inst == last_inst and node in data['sink_nodes'][last_inst] ]

            # calculate equivalent nodes to unsolved sinks that are not already added
            unsolved_nodes = set()
            for sink in sinks_in_partial:
                equivalent_to_sink = []
                for node in last_eq_classes['classes'][last_eq_classes['map'][sink]]:
                    if (inst, node) not in data['already_added']:
                        equivalent_to_sink.append((inst, node))
                        #unsolved_nodes.add((inst, node))
                logger.info(f'Sink: inst={inst}, sink={node}, equivalent={equivalent_to_sink}')
                unsolved_nodes.update(equivalent_to_sink)

            # if some nodes to add, add them and continue solving
            if unsolved_nodes:
                added = add_nodes_to_partial_lp_file(partial_fname, data['fnames'], list(unsolved_nodes), max_nodes_per_iteration, logger)
                #logger.info(f'****: already={data["already_added"]}, added={added}')
                data['already_added'].update(added)
                num_added_nodes.append(len(added))
                calculate_model = True
            '''
            solution_found = False

    elapsed_time = timer() - start_time
    status_string = colored('OK', 'green', attrs=['bold']) if solution_found else colored('Failed', 'red', attrs=['bold'])
    logger.info(f'#iterations={iterations}, added_files={added_files}, #added_nodes={sum(num_added_nodes)} in {num_added_nodes}')
    logger.info(f'#calls={len(solver_wall_times)}, solve_wall_time={sum(solver_wall_times)}, solve_ground_time={sum(solver_ground_times)}, verify_time={sum(map(lambda batch: sum(batch), verify_times_batches))}, elapsed_time={elapsed_time}, status={status_string}')
    return solution_found

def _parse_arguments():
    parser = argparse.ArgumentParser(description='Incremental learning of grounded PDDL models (Equivalence Classes)')

    # required arguments
    required = parser.add_argument_group('required arguments')
    required.add_argument('solver', type=str, help='solver (.lp file)')
    required.add_argument('domain', type=str, help="path to domain's folder (it can be a .zip file)")

    # hyperparameters
    default_max_action_arity = 3
    default_max_num_predicates = 12
    hyper = parser.add_argument_group('hyperparameters for solver')
    hyper.add_argument('--max-action-arity', dest='max_action_arity', type=int, default=default_max_action_arity, help=f'set maximum action arity for schemas (default={default_max_action_arity})')
    hyper.add_argument('--max-num-predicates', dest='max_num_predicates', type=int, default=default_max_num_predicates, help=f'set maximum number selected predicates (default={default_max_num_predicates})')

    # options for solver
    default_max_nodes_per_iteration = 5
    default_sat_prepro = 0
    solver = parser.add_argument_group('additional options for solver')
    solver.add_argument('--ignore-constants', dest='ignore_constants', action='store_true', help='ignore constant semantics for objects of type constant')
    solver.add_argument('--include', nargs=1, dest='include', type=Path, default=[], help=f'include additional .lp file')
    solver.add_argument('--max-nodes-per-iteration', dest='max_nodes_per_iteration', type=int, default=default_max_nodes_per_iteration, help=f'max number of nodes added per iteration (0=all, default={default_max_nodes_per_iteration}')
    solver.add_argument('--sat-prepro', dest='sat_prepro', type=int, default=default_sat_prepro, choices=[0, 1, 2], help=f'set --sat-prepro flag for Clingo solver (default={default_sat_prepro})')

    # options for driver program
    default_aws_instance = False
    default_debug_level = 0
    default_max_time = 57600
    driver = parser.add_argument_group('optional arguments for driver program')
    driver.add_argument('--aws-instance', dest='aws_instance', type=lambda x:bool(strtobool(x)), default=default_aws_instance, help=f'describe AWS instance (boolean, default={default_aws_instance})')
    driver.add_argument('--continue', dest='continue_solve', action='store_true', help='continue an interrupted learning process')
    driver.add_argument('--debug-level', dest='debug_level', type=int, default=default_debug_level, help=f'set debug level (default={default_debug_level})')
    driver.add_argument('--max-time', dest='max_time', type=int, default=default_max_time, help=f'max-time for Clingo solver (0=no limit, default={default_max_time})')
    driver.add_argument('--results', dest='results', action='append', help=f"folder to store results (default=graphs's folder)")
    driver.add_argument('--verify-only', dest='verify_only', action='store_true', help='verify best model found over test set')

    # parse arguments
    args = parser.parse_args()
    return args

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

    # parse arguments
    args = _parse_arguments()

    # setup solver paths
    solver = Path(args.solver)
    solver_name = solver.stem
    solve_folder = f'{solver_name}_a={args.max_action_arity}_p={args.max_num_predicates}'

    # setup domain paths
    domain = Path(args.domain)
    suffix = None if len(domain.suffixes) == 0 else domain.suffixes[-1]
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
    readable_models_filename = solve_path / 'readable_models.txt'

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
                    if str(fname).endswith('.lp'):
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
        solve_args = dict(solver=solve_path / solver.name,
                          domain=domain,
                          best_model_filename=best_model_filename,
                          solution_filename=solution_filename,
                          readable_models_filename=readable_models_filename,
                          solve_path=solve_path,
                          max_action_arity=args.max_action_arity,
                          max_num_predicates=args.max_num_predicates,
                          max_time=args.max_time,
                          verify_only=args.verify_only,
                          ignore_constants=args.ignore_constants,
                          max_nodes_per_iteration=args.max_nodes_per_iteration,
                          sat_prepro=args.sat_prepro,
                          include=args.include)
        solution_found = solve(**solve_args)
    except KeyboardInterrupt:
        logger.warning(colored('Process INTERRUPTED by keyboard (ctrl-C)!', 'red'))
        pass
    finally:
        if args.verify_only:
            assert best_model_filename.exists()
            best_model_filename.unlink()
        elif solution_found:
            # if solution found, rename best_model_filename to solution_filename
            assert best_model_filename.exists()
            best_model_filename.rename(solution_filename)
        else:
            logger.info(colored('No solution found!', 'red', attrs=['bold']))

        # cleanup
        if tmp_folder != None:
            n = len(str(domain))
            if str(domain) == str(solve_path)[:n]:
                logger.warning(f'Temporary folder {domain} not removed because results are stored there')
            else:
                rm_tree(tmp_folder, logger)
                logger.info(f'Temporary folder {tmp_folder} removed')
        logger.info(f'Results stored in {solve_path}')

