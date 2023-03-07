from termcolor import colored
from typing import List
from itertools import product
import parse_and_ground as pg
from sys import stdout
from tqdm import tqdm

# Get node representation over selected atoms
def get_node_rep(ground_model: dict, inst: int, node: int, selected_gatoms: set):
    return set([ gatom for gatom in ground_model['fval'][inst]['node'][node] if gatom in selected_gatoms ])

# Calculate equivalence classes over nodes modulo selected atoms
def calculate_equivalence_classes(ground_model: dict, inst: int, selected_gatoms: set) -> List:
    nodes = list(ground_model['fval'][inst]['node'].keys())
    node_reprs = [ get_node_rep(ground_model, inst, i, selected_gatoms) for i in nodes ]
    eq_classes = [ None for _ in nodes ]
    map_eqclass = [ None for _ in nodes ]
    mapped_nodes = set()
    for i in tqdm(range(len(node_reprs)), desc='Calculating equivalence classes'):
        if i not in mapped_nodes:
            eq_classes[i] = set([i])
            map_eqclass[i] = i
            mapped_nodes.add(i)
            for j in range(i+1, len(node_reprs)):
                if node_reprs[i] == node_reprs[j]:
                    eq_classes[i].add(j)
                    map_eqclass[j] = i
                    mapped_nodes.add(j)
    class_reprs = [ next(iter(eqclass)) for eqclass in eq_classes if eqclass is not None ]
    return dict(reprs=class_reprs, classes=eq_classes, map=map_eqclass)

# Verifies that all nodes in instance are different modulo selected atoms (predicates).
# Returns either (True, None) or (False, (S1,S2)) where S1 and S2 are two nodes that are equal modulo selected atoms
def verify_nodes_are_different(ground_model : dict, inst : int, selected_gatoms : set) -> List:
    nodes = list(ground_model['fval'][inst]['node'].keys())
    n = len(nodes) * (len(nodes) - 1) // 2
    progress_bar = tqdm(range(n), desc='Verifying that nodes are different')
    for i in range(len(nodes)):
        #inode = set([ gatom for gatom in ground_model['fval'][inst]['node'][nodes[i]] if gatom in selected_gatoms ])
        inode = get_node_rep(ground_model, inst, nodes[i], selected_gatoms)
        for j in range(i+1, len(nodes)):
            #jnode = set([ gatom for gatom in ground_model['fval'][inst]['node'][nodes[j]] if gatom in selected_gatoms ])
            jnode = get_node_rep(ground_model, inst, nodes[j], selected_gatoms)
            if inode == jnode:
                progress_bar.update(n)
                return False, (nodes[i], nodes[j])
            progress_bar.update()
            n -= 1
    return True, None

# Verifies that all outgoing transitions from src_index match the outgoing transition in planning graph defined by lifted model
def verify_node(ground_model : dict, inst : int, src_index : int, f_nodes : List, f_nodes_r : dict, logger) -> List:
    tlabels = ground_model['tlabel'][inst]
    gactions_r = ground_model['gactions_r'][inst]

    # indices of applicable ground actions in src node
    indices_appl_actions = [ i for i in range(len(gactions_r)) if src_index in gactions_r[i]['appl'] ]
    appl_actions = [ (i, gactions_r[i]) for i in indices_appl_actions ]
    appl_actions = [ f"{i}.{gaction['label']}({','.join(gaction['args'])})" for i, gaction in appl_actions ]
    logger.debug(f'Inst={inst}, node={src_index}, appl={appl_actions}')

    transitions, transitions_without_args, err_transitions = [], set(), []
    for i in indices_appl_actions:
        gaction = gactions_r[i]
        label = gaction['label']
        assert pg.applicable(ground_model, inst, src_index, gaction)
        dst_index = pg.transition(ground_model, inst, src_index, gaction, f_nodes, f_nodes_r, logger, debug=False)
        if dst_index != -1:
            transitions.append((i, (src_index, dst_index)))
            transitions_without_args.add((label, (src_index, dst_index)))
        else:
            pg.transition(ground_model, inst, src_index, gaction, f_nodes, f_nodes_r, logger, debug=True)
            err_transitions.append(((label, gaction['args']), src_index))

    # check transitions appear as edges
    transitions_without_edges = []
    for i, edge in transitions:
        gaction = gactions_r[i]
        label = gaction['label']
        if label not in tlabels or edge not in tlabels[label]:
            transitions_without_edges.append(((label, gaction['args']), edge))

    # check edges appear as transitions
    edges_without_transitions = []
    for label in tlabels:
        for edge in tlabels[label]:
            if edge[0] == src_index and (label, edge) not in transitions_without_args:
                edges_without_transitions.append((label, edge))

    rv = not err_transitions and not transitions_without_edges and not edges_without_transitions
    return rv, dict(err_transitions=err_transitions, transitions_without_edges=transitions_without_edges, edges_without_transitions=edges_without_transitions)

# Verifies isomorphism for given instance
def verify_instance(ground_model : dict, inst : int, logger) -> (bool, List[int]):
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
            logger.error(colored("These nodes aren't separated by any set of features", "red", attrs = [ "bold" ]))
            logger.error(f's{i}=s{j}={nodes[i]}')
        return False, [ i, j ]

    # CHECK: Code below assumes nodes in instance are enumerated as 0...n-1 where n is number of nodes
    # CHECK: However, they could be enumerated in any way, even by non-consecutive integers
    num_nodes = len(ground_model['fval'][inst]['node'])
    f_nodes = [ [] for _ in range(num_nodes) ]
    f_nodes_r = dict()
    for i, node in ground_model['fval'][inst]['node'].items():
        assert type(node) == set
        filtered = set([ gindex for gindex in node if gindex in selected_gatoms ])
        f_nodes[i] = filtered
        f_nodes_r[tuple(sorted(list(filtered)))] = i

    unverified_nodes = []
    for src_index in tqdm(range(num_nodes), desc=f'Verifying transitions', file=stdout):
        rv, reason = verify_node(ground_model, inst, src_index, f_nodes, f_nodes_r, logger)
        if not rv:
            unverified_nodes.append(src_index)
            logger.warning(colored(f'Bad verification in inst={inst} for node={src_index}; reason={reason}', 'magenta'))
    return unverified_nodes == [], unverified_nodes

# Verifies that each edge in graph is mapped to single action label
def verify_assumptions(ground_model : dict, inst : int, logger) -> bool:
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

# Verifies isomorphism between (lifted) ground model and input graphs, all of them in input dict
def verify_ground_model(ground_model : dict, logger) -> None:
    for inst in ground_model['instances']:
        rv1 = verify_assumptions(ground_model, inst, logger)
        rv2, unverified_nodes = verify_instance(ground_model, inst, logger)
        logger.info(f'Filename={ground_model["graph_filename"]}, status={rv1 and rv2}, rvs={[rv1, rv2]}, unverified_nodes={unverified_nodes}')
        # CHECK: Looping but returning on first instance (actual call is always with one instance; fix?)
        return inst, unverified_nodes

# Verifies that all outgoing transitions from src_index match the outgoing transition in planning graph defined by lifted model
def verify_node_using_equivalence_classes(ground_model: dict, inst: int, src_index: int, eq_classes: dict, projected_tlabels, f_nodes: dict, f_nodes_r: dict, logger) -> List:
    gactions_r = ground_model['gactions_r'][inst]
    #logger.debug(colored(f'    DEBUG: inst={inst}, src_index={src_index}', 'blue', attrs=['bold']))

    # indices of applicable ground actions in src node
    indices_appl_actions = set()
    for i in range(len(gactions_r)):
        for index in eq_classes['classes'][eq_classes['map'][src_index]]:
            if index in gactions_r[i]['appl']:
                indices_appl_actions.add(i)
    #indices_appl_actions = [ i for i in range(len(gactions_r)) if src_index in gactions_r[i]['appl'] ]
    appl_actions = [ (i, gactions_r[i]) for i in indices_appl_actions ]
    appl_actions = [ f"{i}.{gaction['label']}({','.join(gaction['args'])})" for i, gaction in appl_actions ]
    logger.debug(colored(f'    DEBUG: inst={inst}, src_index={src_index}, appl={appl_actions}', 'blue'))

    # CHECK: ADD COMMENT
    transitions, transitions_without_args, err_transitions = [], set(), []
    for i in indices_appl_actions:
        gaction = gactions_r[i]
        label = gaction['label']
        assert pg.applicable(ground_model, inst, src_index, gaction)
        dst_index = pg.transition(ground_model, inst, src_index, gaction, f_nodes, f_nodes_r, logger, debug=False)
        if dst_index != -1:
            transitions.append((i, (src_index, dst_index)))
            transitions_without_args.add((label, (src_index, dst_index)))
        else:
            pg.transition(ground_model, inst, src_index, gaction, f_nodes, f_nodes_r, logger, debug=False)
            err_transitions.append(((label, gaction['args']), src_index))
    logger.debug(colored(f'    DEBUG: inst={inst}, src_index={src_index}, transitions={transitions}', 'blue'))
    logger.debug(colored(f'    DEBUG: inst={inst}, src_index={src_index}, transitions_without_args={transitions_without_args}', 'blue'))
    logger.debug(colored(f'    DEBUG: inst={inst}, src_index={src_index}, err_transitions={err_transitions}', 'blue'))

    # check transitions appear as edges
    transitions_without_edges = []
    for i, edge in transitions:
        gaction = gactions_r[i]
        label = gaction['label']
        pedge = tuple([ eq_classes['map'][x] for x in edge ])
        if label not in projected_tlabels or pedge not in projected_tlabels[label]:
            transitions_without_edges.append(((label, gaction['args']), edge))
            logger.warning(colored(f'TRANSITION WITHOUT MATCHING PEDGE: inst={inst}, src_index={src_index}, label={label}, edge={edge}, pedge={pedge}', 'magenta', attrs=['bold']))

    # check edges appear as transitions
    edges_without_transitions = []
    for label in projected_tlabels:
        for pedge in projected_tlabels[label]:
            if pedge[0] == src_index: # CHECK: INEFFICENT LOOP AS EDGES WITH SOURCE != src_index CONSIDERED
                logger.debug(f'    DEBUG: inst={inst}, src_index={src_index}, label={label}, pedge={pedge}, dst_eqclass={eq_classes["classes"][pedge[1]]}')
                assert eq_classes['map'][pedge[0]] == pedge[0] and eq_classes['map'][pedge[1]] == pedge[1]
                src_eq_class = eq_classes['classes'][pedge[0]]
                dst_eq_class = eq_classes['classes'][pedge[1]]
                transition_found = False
                for edge in product(src_eq_class, dst_eq_class):
                    if (label, edge) in transitions_without_args:
                        transition_found = True
                        break
                if not transition_found:
                    edges_without_transitions.append((label, pedge))
                    logger.warning(colored(f'PEDGE WITHOUT MATCHING TRANSITION: inst={inst}, src_index={src_index}, label={label}, pedge={pedge}', 'magenta', attrs=['bold']))

    rv = not err_transitions and not transitions_without_edges and not edges_without_transitions
    return rv, dict(err_transitions=err_transitions, transitions_without_edges=transitions_without_edges, edges_without_transitions=edges_without_transitions)

# Verifies isomorphism for given instance over equivalence classes given by selected predicates
def verify_instance_using_equivalence_classes(ground_model: dict, inst: int, already_solved: set, logger) -> (bool, List[int]):
    gatoms_r = ground_model['gatoms_r'][inst]
    selected_gatoms = set([ gindex for gindex in range(len(gatoms_r)) if gatoms_r[gindex][0] in ground_model['pred'] ])

    # calculate equivalence classes and representatives
    eq_classes = calculate_equivalence_classes(ground_model, inst, selected_gatoms)

    # get transitions and their projection on the equivalence classes
    tlabels = ground_model['tlabel'][inst]
    projected_tlabels = dict()
    projected_tlabels_r = dict()
    for label in tlabels:
        projected_tlabels[label] = set()
        for edge in tlabels[label]:
            pedge = tuple([ eq_classes['map'][x] for x in edge ])
            projected_tlabels[label].add(pedge)
            if pedge not in projected_tlabels_r:
                projected_tlabels_r[pedge] = set()
            projected_tlabels_r[pedge].add(edge)

    logger.debug(colored(f'DEBUG: selected_gatoms={selected_gatoms}', 'green', attrs=['bold']))
    logger.debug(colored(f'DEBUG: inst={inst}, eq_classes={eq_classes}', 'green', attrs=['bold']))
    logger.debug(colored(f'DEBUG: inst={inst}, tlabels={tlabels}', 'green', attrs=['bold']))
    logger.debug(colored(f'DEBUG: inst={inst}, projected_tlabels={projected_tlabels}', 'green', attrs=['bold']))
    #logger.debug(colored(f'DEBUG: inst={inst}, projected_tlabels_r={projected_tlabels_r}', 'green', attrs=['bold']))

    # CHECK: Code below assumes nodes in instance are enumerated as 0...n-1 where n is number of nodes
    # CHECK: However, they could be enumerated in any way, even by non-consecutive integers
    nodes = [ ground_model['fval'][inst]['node'][i] for i in eq_classes['reprs'] ]
    f_nodes = dict()
    f_nodes_r = dict()
    # for i, node in enumerate(nodes):
    for i, index in enumerate(eq_classes['reprs']):
        assert type(nodes[i]) == set
        filtered = set([ gindex for gindex in nodes[i] if gindex in selected_gatoms ])
        f_nodes[index] = filtered
        f_nodes_r[tuple(sorted(list(filtered)))] = index
    logger.debug(colored(f'DEBUG: reprs={eq_classes["reprs"]}, nodes={nodes}, f_nodes={f_nodes}', 'yellow'))

    unverified_nodes = set()
    for src_index in tqdm(eq_classes['reprs'], desc='  Verifying equivalance classes'):
        #logger.debug(colored(f'DEBUG: src_index={src_index}, nodes={nodes}', 'red', attrs=[]))
        rv, reason = verify_node_using_equivalence_classes(ground_model, inst, src_index, eq_classes, projected_tlabels, f_nodes, f_nodes_r, logger)
        if not rv:
            for key in ['err_transitions', 'transitions_without_edges', 'edges_without_transitions']:
                for pedge in reason[key]:
                    if pedge[1] not in projected_tlabels_r:
                        # CHECK: NEED TO INSERT SOME FROM EQ CLASS OF src_index
                        unverified_nodes.add(src_index)
                    else:
                        for edge in projected_tlabels_r[pedge[1]]:
                            #logger.debug(colored(f'DEBUG: key={key}, pedge={pedge}, edge={edge}', 'green'))
                            unverified_nodes.add(edge[0])
            unverified_nodes.add(src_index)
            logger.warning(colored(f'Bad verification in inst={inst} for node={src_index}; reason={reason}', 'magenta'))
    logger.debug(colored(f'DEBUG: inst={inst}, unverified_nodes={unverified_nodes}', 'green', attrs=['bold']))
    return len(unverified_nodes) == 0, unverified_nodes, eq_classes

# Verifies isomorphism between (lifted) ground model and input graphs, all of them in input dict
def verify_ground_model_using_equivalence_classes(ground_model: dict, already_solved: set, logger) -> None:
    for inst in ground_model['instances']:
        rv1 = verify_assumptions(ground_model, inst, logger)
        rv2, unverified_nodes, eq_classes = verify_instance_using_equivalence_classes(ground_model, inst, already_solved, logger)
        logger.info(f'Filename={ground_model["graph_filename"]}, status={rv1 and rv2}, rvs={[rv1, rv2]}, unverified_nodes={unverified_nodes}')
        # CHECK: Looping but returning on first instance (actual call is always with one instance; fix?)
        return inst, unverified_nodes, eq_classes

