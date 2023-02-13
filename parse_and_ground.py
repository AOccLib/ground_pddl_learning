from tqdm import tqdm
from sys import stdout
from pathlib import Path
from itertools import product
from typing import List, Dict
from termcolor import colored

def read_file(filename: Path, logger) -> List[str]:
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

def parse_record(record: str, sep_tok: str = ',', grouping_tok: str = '()', logger = None, debug: bool = False) -> List[str]:
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

# Read lifted model from .lp file, specified with facts a_arity/2, pred/1, eff/3, prec/3, and constant/1
def parse_lifted_model(filename: Path, logger) -> dict:
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
        elif line[:8] == 'tlabelR(' and line[-1] == '.':
            fields = parse_record(line[8:-2], logger=logger, debug=False)
            assert len(fields) == 3
            assert False
        elif line[:5] == 'repr(' and line[-1] == '.':
            fields = parse_record(line[5:-2], logger=logger, debug=False)
            assert len(fields) in [2, 3]
            assert False
        else:
            logger.warning(f'Unrecognized line |{line}|')
    return lifted_model

# Parse graph from .lp file, specified with facts instance/1, tlabel/3, node/2, f_static/2, fval/3-4, feature/1, and f_arity/2
def parse_graph_file(filename: Path, logger) -> Dict:
    assert filename.name[-3:] == '.lp', f"{colored('ERROR:', 'red')} unexpected filename '{filename}'"
    distilled = dict(graph_filename=filename, node=dict(), tlabel=dict(), constant=dict(), f_static=dict(), fval=dict(), fval_static=dict(), feature=dict(), complexity=dict())
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
                distilled['tlabel'][inst][label] = set()
            distilled['tlabel'][inst][label].add(edge)
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
            fields = parse_record(line[13:-2], logger=logger, debug=False)
            assert len(fields) == 2
            feature = fields[0]
            complexity = int(fields[1])
            if feature not in distilled['complexity']:
                distilled['complexity'][feature] = complexity
            else:
                assert distilled['complexity'][feature] == complexity, f"Complexity mismatch for '{feature}': registered={distilled['complexity'][feature]}, got={complexity}, line=|{line}|"
        elif line[:9] == 'constant(' and line[-1] == '.':
            fields = parse_record(line[9:-2], logger=logger, debug=False)
            assert len(fields) == 1
            if inst not in distilled['constant']:
                distilled['constant'][inst] = set()
            distilled['constant'][inst].add(fields[0])
        else:
            logger.warning(f'Unrecognized line |{line}|')
    return distilled

def write_graph_file_from_distilled(filename: Path, distilled: Dict, logger) -> None:
    assert filename.name[-3:] == '.lp', f"{colored('ERROR:', 'red')} unexpected filename '{filename}'"
    instances = [ int(key) for key in distilled['node'] ]
    with filename.open('w') as fd:
        fd.write(f'% Automatically generated from distilled on {distilled["graph_filename"]}\n')
        fd.write(f'% {len(instances)} instance(s) in {instances}\n')
        for inst in instances:
            # instance index
            fd.write(f'instance({inst}).\n')

            # nodes
            fd.write('% Nodes\n')
            for node in distilled['node'][inst]:
                fd.write(f'node({inst},{node}).\n')

            # transitions
            fd.write('% Transitions\n')
            for label in distilled['tlabel'][inst]:
                for (src, dst) in distilled['tlabel'][inst][label]:
                    fd.write(f'tlabel({inst},({src},{dst}),{label}).\n')

            # constants
            fd.write('% Constants\n')
            if inst in distilled['constant']:
                for const in distilled['constant'][inst]:
                    fd.write(f'constant({const}).\n')

            # features (arities, complexities and static)
            fd.write('% Features (predicates)\n')
            for feature in distilled['feature']:
                fd.write(f'feature({feature}).\n')
            for feature in distilled['feature']:
                arity = distilled['feature'][feature]
                fd.write(f'f_arity({feature},{arity}).\n')
            for feature in distilled['complexity']:
                complexity = distilled['complexity'][feature]
                fd.write(f'f_complexity({feature},{complexity}).\n')
            if inst in distilled['f_static']:
                for feature in distilled['f_static'][inst]:
                    fd.write(f'f_static({inst},{feature}).\n')

            # valuations for static predicates
            fd.write('% Valuations for static predicates\n')
            if inst in distilled['fval_static']:
                for value in [0, 1]:
                    for (pred, args) in distilled['fval_static'][inst][value]:
                        joined = ','.join(args)
                        if len(args) == 1: joined += ','
                        fd.write(f'fval({inst},({pred},({joined})),{value}).\n')

            # valuations for dynamic predicates
            fd.write('% Valuations for dynamic predicates\n')
            if inst in distilled['fval']:
                for node in distilled['fval'][inst]['node']:
                    for ((pred, args), value) in distilled['fval'][inst]['node'][node]:
                        joined = ','.join(args)
                        if len(args) == 1: joined += ','
                        fd.write(f'fval({inst},({pred},({joined})),{node},{value}).\n')

            # unknowns
            if 'unknown' in distilled and inst in distilled['unknown']:
                fd.write('% Unknowns\n')
                for node in distilled['unknown'][inst]['node']:
                    for (pred, args) in distilled['unknown'][inst]['node'][node]:
                        joined = ','.join(args)
                        if len(args) == 1: joined += ','
                        fd.write(f'unknown({inst},({pred},({joined})),{node}).\n')

def read_sink_nodes(distilled: Dict, logger) -> set:
    inst = list(distilled['node'].keys())[0]
    nodes = distilled['node'][inst]
    tlabels = distilled['tlabel'][inst]
    sinks = [ True for _ in nodes ]
    for label in tlabels:
        for (src, dst) in tlabels[label]:
            sinks[src] = False
    #logger.info(f'read_sink_nodes: inst={inst}, tlabels={tlabels}')
    #logger.info(f'read_sink_nodes: inst={inst}, sinks={sinks}')
    return set([ node for node in nodes if sinks[node] ])


# Given a lifted model and structured of distilled (parsed) graph files, ground the model on each graph file.
# Returns dictionary with two type of elements: elements that are shared by all instances, and elements that
# are particular to each instance.
#
# The first type of elements are given as part of the input (i.e., not computed by this function), but are
# copied from input to output:
#   - name of the graph file ['graph_filename']
#   - set of predicates used to define the lifted model ['pred']
#   - set of constants used in the lifted model ['constants']
#   - dictionary that maps feature names to their arities ['feature'] (taken as is from input)
#   - set of static features ['f_static'] (takes as is from input)
#   - set of instances used to index elements of second type ['instances']
#
# The second type of elements are indexed by instance_index (each one read/computed from the information provided
# in a graph file):
#   - dictionary ['that maps action labels into set of edges, where edge is pair (src_index,dst_index)
#     (read off from .lp graph file; provided as is from input; these are the edges in input graph) ['tlabel']
#   - dictionary that maps grounded atoms to indices, where grounded atom is pair (name, obj-tuple) ['gatoms']
#   - list that maps atom indices to grounded atoms; reverse of map provided by gatoms ['gatoms_r']
#   - NEED DESC ['fval_static']
#   - NEED DESC ['fval']
#   - set of objects ['objects']
#   - dictionary that maps grounded action names to indices, where grounded action name is pair (label, obj-tuple) ['gactions']
#   - list that maps ground action indices to dictionary that contains label, args, prec, eff, and appl, where
#     label is action label, args is obj-tuple, prec and eff are lists of triplets (gatom, index, value), and appl is boolean ['gactions_r']

# CHECK: Grounded actions are obtained by instantiations that do not repeat objects in arguments
# CHECK: This shouldn't be fixed here, rather it should be a choice determined by an option (pruning is done with filter_fn function)

def ground(lifted_model: Dict, distilled: Dict, logger, debug: bool = False) -> dict:
    ground_model = dict(graph_filename=distilled['graph_filename'],
                        pred=lifted_model['pred'],
                        constants=lifted_model['constants'],
                        feature=distilled['feature'],
                        f_static=distilled['f_static'],
                        tlabel=distilled['tlabel'])

    # instance indices and ground atoms from fval_static and fval elements in distilled
    ground_model.update(dict(instances=set(), gatoms=dict(), gatoms_r=dict()))
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

    # number of grounded atoms
    num_gatoms = dict()
    for inst in ground_model['instances']:
        num_gatoms[inst] = len(ground_model['gatoms'][inst])

    # grounded fval structures
    ground_model.update(dict(fval_static=dict(), fval=dict()))
    for key in [ 'fval_static', 'fval' ]:
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
    ground_model.update(dict(objects=dict()))
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
                # calculate ground action and nodes where it's applicable
                gaction = dict(label=label, args=args, prec=[], eff=[], appl=[])
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
                        gaction[key].append((glifted, index, value))
                    if not is_applicable: break

                if is_applicable and applicable_static(ground_model, inst, gaction):
                    for node in ground_model['fval'][inst]['node']:
                        if applicable_dynamic(ground_model, inst, node, gaction):
                            gaction['appl'].append(node)

                    if gaction['appl']:
                        index = len(ground_model['gactions_r'][inst])
                        ground_model['gactions'][inst][(label, args)] = index
                        ground_model['gactions_r'][inst].append(gaction)
                        if debug: logger.debug(f'gaction: {index}={(label, args)}, appl={gaction["appl"]}')
                        for warning in warnings: logger.warning(f'{warning}')

    # calculate number nodes
    num_nodes = dict()
    for inst in distilled['node']:
        num_nodes[inst] = len(distilled['node'][inst])

    logger.info(f'#nodes={num_nodes}, #features={len(ground_model["feature"])}, #objects={num_objects}, #grounded-atoms={num_gatoms}')
    return ground_model

# Check if static predicates in given ground action hold
def applicable_static(ground_model: Dict, inst: int, gaction: Dict) -> bool:
    for gprec, index, value in gaction['prec']:
        assert gprec[0] in ground_model['pred']
        if gprec[0] in ground_model['f_static'][inst]:
            if value == 1 and index == -1:
                return False
            elif value == 0 and index != -1 and index in ground_model['fval_static'][inst][1]:
                return False
            elif value == 1 and index != -1 and index not in ground_model['fval_static'][inst][1]:
                return False
    return True

# Check if dynamic predicates in given ground action hold in given node
def applicable_dynamic(ground_model: Dict, inst: int, node_index: int, gaction: Dict) -> bool:
    for gprec, index, value in gaction['prec']:
        assert gprec[0] in ground_model['pred']
        if gprec[0] not in ground_model['f_static'][inst]:
            if value == 1 and index == -1:
                return False
            elif value == 0 and index != -1 and index in ground_model['fval'][inst]['node'][node_index]:
                return False
            elif value == 1 and index != -1 and index not in ground_model['fval'][inst]['node'][node_index]:
                return False
    return True

# Check if given ground action is aplicable in give node
def applicable(ground_model: Dict, inst: int, node_index: int, gaction: Dict) -> bool:
    return applicable_static(ground_model, inst, gaction) and applicable_dynamic(ground_model, inst, node_index, gaction)

# Returns index of results node for grounded action applicable at src node
# If grounded action leads to non-existent node, errors are logged
def transition(ground_model: Dict, inst: int, src_index: int, gaction: Dict, f_nodes: Dict, f_nodes_r: Dict, logger, debug: bool = False) -> List:
    dst = set(f_nodes[src_index])
    if debug: logger.debug(f'Src={src_index}.{dst}, gaction={gaction["label"]}{gaction["args"]}')
    for gatom, index, value in gaction['eff']:
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
                if debug: logger.debug(f'Remove atom {index}.{gatom}')
                dst.remove(index)
        else:
            if gatom[0] in ground_model['f_static'][inst] and index not in ground_model['fval_static'][inst][1]:
                logger.error(f'Trying to assert non-true static atom {index}.{gatom}')
                return -1
            elif gatom[0] not in ground_model['f_static'][inst] and index not in dst:
                if debug: logger.debug(f'Assert atom {index}.{gatom}')
                dst.add(index)
    key = tuple(sorted(list(dst)))
    dst_index = -1 if key not in f_nodes_r else f_nodes_r[key]
    if debug:
        dst_gatoms = [ ground_model['gatoms_r'][inst][i] for i in dst ]
        logger.debug(f'Dst={dst_index}.{dst}={dst_gatoms}')
    return dst_index

