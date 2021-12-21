import os, itertools, re
from subprocess import Popen, PIPE
from sys import stdin, argv
from termcolor import colored
from typing import List

def get_lp_files(path, exclude_regexes : List[str] = []) -> List[str]:
    files = [ os.path.join(path, fname) for fname in os.listdir(path) if os.path.isfile(os.path.join(path, fname)) and fname[-3:] == '.lp' ]
    if exclude_regexes:
        raw_regex = '(%s)' % '|'.join(exclude_regexes)
        regex = re.compile(raw_regex)
        files = [ fname for fname in files if not re.match(regex, fname) ]
    return sorted(files)

def solve(solver : str, path : str, best_model_filename : str = ''):
    task_name = os.path.basename(path)
    train_set = os.path.join(path, 'train')
    if best_model_filename == '': best_model_filename = f'best_{task_name}_{solver}'
    print(f'{colored("solve:", "green")} solver={solver}, task={task_name}, train_set={train_set}, best_model_filename={best_model_filename}')

    files = get_lp_files(train_set, [ '.*_caused.lp' ])
    print(f'{colored("solve:", "green")} files={files}')

    cmd = f'clingo -t 6 --sat-prepro=2 --time-limit=28800 --stats=0 {solver} {train_set}/*.lp | python3 get_best_model.py {best_model_filename}'
    print(f'{colored("solve:", "green")} cmd={cmd}')

    output = []
    with Popen(cmd, stdout=PIPE, shell=True, bufsize=1, universal_newlines=True) as p:
        for line in p.stdout:
            print(line, end='')
            output.append(line.strip('\n'))
    return output

def verify_using_clingo(solver : str, path : str, best_model_filename : str = ''):
    task_name = os.path.basename(path)
    test_set = os.path.join(path, 'test')
    if best_model_filename == '': best_model_filename = f'best_{task_name}_{solver}'
    print(f'{colored("verify:", "green")} solver={solver}, task={task_name}, test_set={test_set}, best_model_filename={best_model_filename}')

    outputs = []
    files = get_lp_files(test_set, [ '.*_caused.lp' ])
    for fname in files:
        nodes = []
        with open(fname, 'r') as fd:
            for line in fd:
                line = line.strip('\n')
                if line[:5] == 'node(' and line[-1] == '.':
                    fields = line[5:-2].split(',')
                    nodes.append((int(fields[0]), int(fields[1])))
        print(f'{colored("verify:", "green")} file={fname}, #nodes={len(nodes)}, nodes={nodes}')

        pre_cmd = f'clingo -t 6 --sat-prepro=2 --time-limit=7200 --stats=2 {solver} {fname} {fname.replace(".lp", "_caused.lp")} {best_model_filename} -c opt_synthesis=0'
        for instance, node in nodes:
            cmd = f'{pre_cmd} -c opt_ver_instance={instance} -c opt_ver_node={node}'
            print(f'{colored("verify:", "green")} cmd={cmd}')

            output = []
            with Popen(cmd, stdout=PIPE, shell=True, bufsize=1, universal_newlines=True) as p:
                for line in p.stdout:
                    output.append(line.strip('\n'))
            assert 'OPTIMUM FOUND' in output, '\n'.join(output)
            outputs.append(dict(fname=fname, instance=instance, node=node, cmd=cmd, output=output))
    return outputs


def read_file(filename : str) -> List[str]:
    lines = []
    for line in open(filename, 'r'):
        line = line.strip('\n')
        if line != '':
            index_first_non_white_char = len(line) - len(line.lstrip())
            #print(f'index_first_non_white_char={index_first_non_white_char}')
            if index_first_non_white_char < len(line) and line[index_first_non_white_char] != '%':
                split = line.strip('\n').split()
                for r in split:
                    assert r != ''
                    if r[0] == '%': break
                    lines.append(r)
    print(f'{colored("read_file: " + str(len(lines)) + " record(s) from " + filename, attrs=["bold"])}')
    return lines

def parse_record(record : str, sep_tok : str = ',', grouping_tok : str = '()', debug : bool = False) -> List[str]:
    field = ''
    balance = 0
    fields = []
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
    if debug: print(f'parse_record: record={record}, fields={fields}')
    return fields

def parse_lifted_model(filename : str) -> dict:
    lifted_model = dict(action=dict(), pred=set(), eff=[], prec=[])
    for line in read_file(filename):
        if line[:8] == 'a_arity(' and line[-1] == '.':
            fields = parse_record(line[8:-2], debug=False)
            action = fields[0]
            arity = int(fields[1])
            if action not in lifted_model['action']:
                lifted_model['action'][action] = dict(arity=arity, prec=[], eff=[])
            else:
                lifted_model['action'][action]['arity'] = arity
        elif line[:5] == 'pred(' and line[-1] == '.':
            fields = parse_record(line[5:-2], debug=False)
            lifted_model['pred'].add(fields[0])
        elif line[:4] == 'eff(' and line[-1] == '.':
            fields = parse_record(line[4:-2], debug=False)
            assert len(fields) == 3
            action = fields[0]
            if action not in lifted_model['action']:
                lifted_model['action'][action] = dict(arity=-1, prec=[], eff=[])
            atom_fields = parse_record(fields[1][1:-1], debug=False)
            atom_args = parse_record(atom_fields[1][1:-1], debug=False)
            if atom_args == [ 'null' ]:
                atom = (atom_fields[0], (0,))
            else:
                atom = (atom_fields[0], tuple([ int(arg) for arg in atom_args ]))
            value = int(fields[2])
            lifted_model['action'][action]['eff'].append((atom, value))
        elif line[:5] == 'prec(' and line[-1] == '.':
            fields = parse_record(line[5:-2], debug=False)
            assert len(fields) == 3
            action = fields[0]
            if action not in lifted_model['action']:
                lifted_model['action'][action] = dict(arity=-1, prec=[], eff=[])
            atom_fields = parse_record(fields[1][1:-1], debug=False)
            atom_args = parse_record(atom_fields[1][1:-1], debug=False)
            if atom_args == [ 'null' ]:
                atom = (atom_fields[0], (0,))
            else:
                atom = (atom_fields[0], tuple([ int(arg) for arg in atom_args ]))
            value = int(fields[2])
            lifted_model['action'][action]['prec'].append((atom, value))
        else:
            print(line)
    return lifted_model


def parse_graph_caused_file(filename : str) -> None:
    assert filename[-10:] == '_caused.lp'
    print('hola')
    lines = read_file(filename)

def parse_graph_file(filename : str) -> List[dict]:
    assert filename[-3:] == '.lp', f"ERROR: unexpected filename '{filename}'"

    if filename[-10:] == '_caused.lp':
        return parse_graph_caused_file(filename)

    raw = dict(filename=filename, instance=[], node=[], tlabel=[], f_static=[], fval=[], feature=[], f_arity=[])
    distilled = dict(filename=filename, node=dict(), tlabel=dict(), f_static=dict(), fval=dict(), fval_static=dict(), feature=dict())
    for line in read_file(filename):
        if line[:9] == 'instance(' and line[-1] == '.':
            fields = parse_record(line[9:-2], debug=False)
            inst = int(fields[0])
            raw['instance'].append(inst)
        elif line[:7] == 'tlabel(' and line[-1] == '.':
            fields = parse_record(line[7:-2], debug=False)
            inst = int(fields[0])
            label = fields[2]
            edge_fields = parse_record(fields[1][1:-1], debug=False)
            assert len(edge_fields) == 2
            edge = (int(edge_fields[0]), int(edge_fields[1]))
            raw['tlabel'].append((inst, edge, label))
            if inst not in distilled['tlabel']:
                distilled['tlabel'][inst] = dict()
            if label not in distilled['tlabel'][inst]:
                distilled['tlabel'][inst][label] = []
            distilled['tlabel'][inst][label].append(edge)
        elif line[:5] == 'node(' and line[-1] == '.':
            fields = parse_record(line[5:-2], debug=False)
            inst = int(fields[0])
            node = int(fields[1])
            raw['node'].append((inst, node))
            if inst not in distilled['node']:
                distilled['node'][inst] = []
            distilled['node'][inst].append(node)
        elif line[:9] == 'f_static(' and line[-1] == '.':
            fields = parse_record(line[9:-2], debug=False)
            inst = int(fields[0])
            feature = fields[1]
            raw['f_static'].append((inst, feature))
            if inst not in distilled['f_static']:
                distilled['f_static'][inst] = set()
            distilled['f_static'][inst].add(feature)
        elif line[:5] == 'fval(' and line[-1] == '.':
            fields = parse_record(line[5:-2], debug=False)
            assert len(fields) in [3, 4]
            inst = int(fields[0])
            atom_fields = parse_record(fields[1][1:-1], debug=False)
            assert len(atom_fields) == 2
            arg_fields = parse_record(atom_fields[1][1:-1], debug=False)
            atom = (atom_fields[0], tuple(arg_fields))
            state = None if len(fields) == 3 else int(fields[2])
            value = int(fields[-1])
            raw['fval'].append((inst, atom, state, value))

            key = 'fval_static' if len(fields) == 3 else 'fval'
            if inst not in distilled[key]:
                distilled[key][inst] = dict()
                distilled[key][inst][0] = set()
                distilled[key][inst][1] = set()
                distilled[key][inst]['atom'] = dict()
                if state != None:
                    distilled[key][inst]['state'] = dict()

            if atom[0] not in distilled[key][inst]['atom']:
                distilled[key][inst]['atom'][atom[0]] = []

            fval = (atom, state) if state != None else atom
            distilled[key][inst][value].add(fval)
            fval = (atom[1], state, value) if state != None else (atom[1], value)
            distilled[key][inst]['atom'][atom[0]].append(fval)

            if state != None:
                if state not in distilled[key][inst]['state']:
                    distilled[key][inst]['state'][state] = []
                distilled[key][inst]['state'][state].append((atom, value))
        elif line[:8] == 'feature(' and line[-1] == '.':
            fields = parse_record(line[8:-2], debug=False)
            assert len(fields) == 1
            feature = fields[0]
            raw['feature'].append(feature)
        elif line[:8] == 'f_arity(' and line[-1] == '.':
            fields = parse_record(line[8:-2], debug=False)
            assert len(fields) == 2
            feature = fields[0]
            arity = int(fields[1])
            raw['f_arity'].append((feature, arity))
            if feature not in distilled['feature']:
                distilled['feature'][feature] = arity
            else:
                assert distilled['feature'][feature] == arity
        else:
            print(line)
    return raw, distilled

def ground(lifted_model : dict, distilled : dict, debug : bool = False) -> dict:
    # ground atoms
    ground_model = dict(instances=set(), gatoms=dict(), gatoms_r=dict(), pred=lifted_model['pred'], filename=distilled['filename'], feature=distilled['feature'], tlabel=distilled['tlabel'], f_static=distilled['f_static'])
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
                state = item[1] if type(item[0]) == tuple else None
                if atom[1] == ('null',) or atom[1] == ('0',): atom = (atom[0], ())
                assert atom in ground_model['gatoms'][inst], f'inst={inst}, atom={atom}'
                gatom = ground_model['gatoms'][inst][atom]
                ground_model[key][inst][1].append(gatom if state == None else (gatom, state))

    for inst in distilled['fval'].keys():
        ground_model['fval'][inst]['state'] = dict()
        for state in distilled['fval'][inst]['state'].keys():
            ground_model['fval'][inst]['state'][state] = set()
            for atom, value in distilled['fval'][inst]['state'][state]:
                if value == 1:
                    if atom[1] == ('null',) or atom[1] == ('0',): atom = (atom[0], ())
                    assert atom in ground_model['gatoms'][inst], f'inst={inst}, atom={atom}'
                    gatom = ground_model['gatoms'][inst][atom]
                    ground_model['fval'][inst]['state'][state].add(gatom)
            assert set([ atom for atom, st in ground_model['fval'][inst][1] if st == state ]) == ground_model['fval'][inst]['state'][state]

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
            filter_fn = lambda item: len(set(item)) == arity # CHECK: FILTER FUNCTION
            for args in filter(filter_fn, itertools.product(ground_model['objects'][inst], repeat=arity)):
                # calculate action items and states where it's applicable
                items = dict(label=label, args=args, prec=[], eff=[], appl=[])
                for key in ['prec', 'eff']:
                    for lifted, value in lifted_model['action'][label][key]:
                        assert lifted[0] in lifted_model['pred']
                        if lifted[1] == (0,):
                            pargs = ()
                        else:
                            assert 0 not in lifted[1]
                            pargs = tuple([ args[i-1] for i in lifted[1] ])
                        glifted = (lifted[0], pargs)
                        index = -1 if glifted not in ground_model['gatoms'][inst] else ground_model['gatoms'][inst][glifted]
                        items[key].append((glifted, index, value))

                if applicable_static(ground_model, inst, items):
                    for state in ground_model['fval'][inst]['state']:
                        if applicable_dynamic(ground_model, inst, state, items):
                            items['appl'].append(state)

                    if items['appl']:
                        index = len(ground_model['gactions_r'][inst])
                        ground_model['gactions'][inst][(label, args)] = index
                        ground_model['gactions_r'][inst].append(items)
                        if debug: print(f'ground: gaction: {index}={(label, args)}, appl={items["appl"]}')

    print(f'ground: #features={len(ground_model["feature"])}, #objects={num_objects}, #grounded-atoms={num_gatoms}')
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

def applicable_dynamic(ground_model : dict, inst : int, sindex : int, action : dict) -> bool:
    for gprec, index, value in action['prec']:
        assert gprec[0] in ground_model['pred']
        if gprec[0] not in ground_model['f_static'][inst]:
            if value == 1 and index == -1:
                return False
            elif value == 0 and index != -1 and index in ground_model['fval'][inst]['state'][sindex]:
                return False
            elif value == 1 and index != -1 and index not in ground_model['fval'][inst]['state'][sindex]:
                return False
    return True

def applicable(ground_model : dict, inst : int, sindex : int, action : dict) -> bool:
    return applicable_static(ground_model, inst, action) and applicable_dynamic(ground_model, inst, sindex, action)

def transition(ground_model : dict, inst : int, sindex : int, action : dict, f_states : List, f_states_r : dict, debug : bool = False) -> List:
    rstate = set(f_states[sindex])
    if debug: print(f'transition: src={rstate}, index={sindex}, action={action["label"]}{action["args"]}')
    for gatom, index, value in action['eff']:
        assert gatom[0] in ground_model['pred']
        if index == -1:
            print(f'{colored("ERROR:", "red")} inexistent ground atom {gatom}')
        elif value == 0:
            if index in rstate:
                if debug: print(f'transition: remove {index}={gatom}')
                rstate.remove(index)
        else:
            if debug and index not in rstate: print(f'transition: assert {index}={gatom}')
            rstate.add(index)
    key = tuple(sorted(list(rstate)))
    rindex = -1 if key not in f_states_r else f_states_r[key]
    if debug: print(f'transition: dst={rstate}, index={rindex}')
    return rindex

def verify_states_are_different(ground_model : dict, inst : int, selected_gatoms : set) -> List:
    states = list(ground_model['fval'][inst]['state'].keys())
    for i in range(len(states)):
        istate = set([ gatom for gatom in ground_model['fval'][inst]['state'][states[i]] if gatom in selected_gatoms ])
        for j in range(i+1, len(states)):
            jstate = set([ gatom for gatom in ground_model['fval'][inst]['state'][states[j]] if gatom in selected_gatoms ])
            if istate == jstate:
                return False, (states[i], states[j])
    return True, None


def verify_instance_state(ground_model : dict, inst : int, sindex : int, f_states : List, f_states_r : dict) -> List:
    tlabels = ground_model['tlabel'][inst]
    gactions_r = ground_model['gactions_r'][inst]
    aindices = [ i for i in range(len(gactions_r)) if sindex in gactions_r[i]['appl'] ]

    print(f'{colored("verify_instance_state:", "green")} sindex={sindex}, appl={aindices}')
    transitions, transitions_without_args, err_transitions = [], [], []
    for aindex in aindices:
        action = gactions_r[aindex]
        label = action['label']
        assert applicable(ground_model, inst, sindex, action)
        rindex = transition(ground_model, inst, sindex, action, f_states, f_states_r, debug=False)
        if rindex != -1:
            transitions.append((aindex, (sindex, rindex)))
            transitions_without_args.append((label, (sindex, rindex)))
        else:
            err_transitions.append(((label, action['args']), sindex))

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
            if edge[0] == sindex and (label, edge) not in transitions_without_args:
                edges_without_transitions.append((label, edge))

    rv = not err_transitions and not transitions_without_edges and not edges_without_transitions
    return rv, dict(err_transitions=err_transitions, transitions_without_edges=transitions_without_edges, edges_without_transitions=edges_without_transitions)

def verify_instance(ground_model : dict, inst : int) -> bool:
    gatoms_r = ground_model['gatoms_r'][inst]
    selected_gatoms = set([ gindex for gindex in range(len(gatoms_r)) if gatoms_r[gindex][0] in ground_model['pred'] ])
    rv, pair = verify_states_are_different(ground_model, inst, selected_gatoms)

    if not rv:
        i, j = pair
        states = ground_model['fval'][inst]['state']
        print(f'{colored("WARNING:", "magenta")} states {i} and {j} in instance {inst} are equal modulo selected predicates')
        istate = [ gatoms_r[k] for k in sorted(states[i]) if k in selected_gatoms ]
        jstate = [ gatoms_r[k] for k in sorted(states[j]) if k in selected_gatoms ]
        print(f's{i}={istate}')
        print(f's{j}={jstate}')
        if states[i] == states[j]:
            print(colored(f"ERROR: these states aren't separated by any set of features", "red", attrs=["bold"]))
        #return False, [ istate, jstate ]

    nstates = len(ground_model['fval'][inst]['state'])
    f_states = [ [] for _ in range(nstates) ]
    f_states_r = dict()
    for i, state in ground_model['fval'][inst]['state'].items():
        assert type(state) == set
        filtered = set([ gindex for gindex in state if gindex in selected_gatoms ])
        f_states[i] = filtered
        f_states_r[tuple(sorted(list(filtered)))] = i

    unverified_states = []
    for sindex in range(nstates):
        rv, reason = verify_instance_state(ground_model, inst, sindex, f_states, f_states_r)
        if not rv:
            unverified_states.append(sindex)
            print(f'{colored("WARNING:", "magenta")} bad verification for state={sindex}; reason={reason}')
    return unverified_states == [], unverified_states

def verify_assumptions(ground_model : dict, inst : int) -> bool:
    # verify that each edge (S1,S2) is mapped to single action label A
    tlabels = ground_model['tlabel'][inst]
    edges = dict() # map edges to labels
    for label in tlabels:
        for edge in tlabels[label]:
            if edge in edges:
                print(f'{colored("WARNING:", "magenta")} Edge assumption violated: edge={edge} has labels={[ label ] + tlabels[label]}')
                return False
            else:
                edges[edge] = [ label ]
    return True

def verify_ground_model(ground_model : dict) -> None:
    for inst in ground_model['instances']:
        rv1 = verify_assumptions(ground_model, inst)
        rv2, unverified_states = verify_instance(ground_model, inst)
        if not rv2:
            print(f'{colored("WARNING:", "magenta")} unverified_states: instance={inst}, states={unverified_states}')
        print(f'{colored("verify_ground_model:", "green")} filename={ground_model["filename"]}, status={rv1 and rv2}, rvs={[rv1, rv2]}')

def verify(best_model_filename : str, path : str) -> None:
    task_name = os.path.basename(path)
    test_set = os.path.join(path, 'test')
    print(f'{colored("verify:", "green")} task={task_name}, test_set={test_set}, best_model_filename={best_model_filename}')

    files = get_lp_files(test_set, [ '.*_caused.lp' ])
    #files = [ os.path.join(test_set, fname) for fname in os.listdir(test_set) if os.path.isfile(os.path.join(test_set, fname)) ]
    #files = [ fname for fname in files if fname[-9:] != 'caused.lp' and fname[-3:] == '.lp' ]
    print(f'{colored("verify:", "green")} files={files}')

    lifted_model = parse_lifted_model(best_model_filename)
    for fname in files:
        raw, distilled = parse_graph_file(fname)
        ground_model = ground(lifted_model, distilled)
        verify_ground_model(ground_model)


def usage(exec_name : str) -> None:
    print(f'''
Usage: {exec_name} {{0,1,2}} <solver> <path>

where

  0 = only synthesis (resulting model stored in best_<domain>_<solver>; e.g. best_blocks_test3.lp)
  1 = only verification (assumes best model is in file best_<domain>_<solver>)
  2 = both, synthesis + verification
  <solver> = .lp solver (e.g. test3.lp)
  <path> = path to domain's folder (assumes it contains train/ and test/ subfolders)
''')

if __name__ == '__main__':
    if len(argv) < 4:
        usage(argv[0])
        exit(-1)

    mode = int(argv[1])
    solver = argv[2]
    path = argv[3]
    assert mode in [0,1,2]

    while path[-1] == '/': path = path[:-1]

    # make best_name for storing best model
    task_name = os.path.basename(path)
    best_model_filename = f'best_{task_name}_{solver}'

    # solve and verify
    if mode == 0 or mode == 2:
        solve(solver, path, best_model_filename)
    if mode == 1 or mode == 2:
        #verify_using_clingo(solver, path, best_model_filename)
        verify(best_model_filename, path)

