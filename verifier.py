from termcolor import colored
from typing import List
import parse_and_ground as pg

# Verifies that all nodes in instance are different modulo selected atoms (predicates).
# Returns either (True, None) or (False, (S1,S2)) where S1 and S2 are two nodes that are equal modulo selected atoms
def verify_nodes_are_different(ground_model : dict, inst : int, selected_gatoms : set) -> List:
    nodes = list(ground_model['fval'][inst]['node'].keys())
    for i in range(len(nodes)):
        inode = set([ gatom for gatom in ground_model['fval'][inst]['node'][nodes[i]] if gatom in selected_gatoms ])
        for j in range(i+1, len(nodes)):
            jnode = set([ gatom for gatom in ground_model['fval'][inst]['node'][nodes[j]] if gatom in selected_gatoms ])
            if inode == jnode:
                return False, (nodes[i], nodes[j])
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
            logger.error(colored("These nodes aren't separated by any set of features", "red", attr = [ "bold" ]))
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
    for src_index in range(num_nodes):
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

