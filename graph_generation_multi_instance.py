#! /usr/bin/env python3
import argparse
import logging
import os
import sys
from collections import deque
from pyperplan.src.pyperplan.planner import _parse,_ground
from pyperplan.src.pyperplan.search import searchspace
from clyngor import ASP
import pandas as pd
import copy

def pddl_to_asp(facts):
    '''
    :param facts: iterable of facts with pddl format (e.g., '(ontable a)')
    :return: facts in logic programming/asp format (e.g., 'ontable(a).')
    '''
    asp_facts = []
    for fact in facts:
        fact = fact[1:-1].split(" ")
        name, args = fact[0], fact[1:]
        asp_facts.append(f"{name}({','.join(args)}).")
    return asp_facts

def to_geometric(state, domain_name, domain_predicates):
    '''
    :param state: an iterable containing state facts (strings)
    :param domain_name: the name of the planning domain (e.g., 'blocksworld')
    :return: the collection of geometric facts holding at the input state, as an ASP-answer dictionary (ASP(...).by_predicate object)
    '''
    with open(f"symb2spatial/{domain_name}.txt", 'r') as d_file, open(f"feature_generation/features_{domain_name}.lp", 'r') as f_file:
        # d_file contains the rules for computing the truth values of O2D facts in the state
        # f_file contains the rules for computing the truth values of grounding predicates in the state
        translation, features = d_file.read(), f_file.read()
        state_str = "".join([fact + "\n" for fact in state])
        answer = next(ASP(state_str+translation+features).by_predicate)
        # remove facts about non-geometric predicates from the answer set
        for predicate in domain_predicates:
            if domain_name == 'sokoban':
                if predicate not in ["sokoban", "crate", "below", "left"]:
                    answer.pop(predicate, None)
            elif domain_name == 'hanoi':
                if predicate not in ["smaller", "disk", "peg"]:
                    answer.pop(predicate, None)
            elif domain_name == 'grid':
                if predicate not in ["key","left","below"]:
                    answer.pop(predicate, None)
            elif domain_name == 'blocksworld':
                answer.pop(predicate, None)
            elif domain_name == 'slidingtile':
                if predicate not in ["tile", "below", "left", "opencell"]:
                    answer.pop(predicate, None)
    return answer

def write_graphs(transitions, problems, filenames, problem_ids):
    # valuations_dict: a dict whose keys are instance numbers.
    # valuation_dicts[n]: stores all valuations for all states of instance n
    # valuation_dicts[n][k]: stores the valuation for the k-th state of instance n
    # valuation_dicts[n][k] has separate entries for negated and non-negated atoms, e.g., left, -left
    valuations_dict = {}
    for i in problem_ids:
        instance_num = problem_ids[i]
        with open(filenames[i], "a") as file:
            print(f"instance({instance_num}).", file=file)
            logging.debug(f"Generating feature valuations for all states of instance {instance_num}")
            seen_states = set([])
            # dictionary assigning a unique id to each state
            states_dict, id = {}, 0
            # dictionary storing, for each state id, the corresponding state valuation
            all_valuations = {}
            for transition in transitions[i]:
                state, action, successor = transition[0], transition[1], transition[2]
                for s in [state, successor]:
                    if s not in seen_states:
                        logging.debug(f"Computing feature valuation for state {len(states_dict.keys())}...")
                        seen_states.add(s)
                        states_dict[s] = id
                        answer_by_predicate = to_geometric(pddl_to_asp(s),
                                                          problems[i].domain.name,
                                                          problems[i].domain.predicates.keys())
                        all_valuations[id] = answer_by_predicate
                        id += 1
                action_without_params = action.split(" ")[0][1:]
                print(f"tlabel({instance_num},({states_dict[state]},{states_dict[successor]}),{action_without_params}). % {action}", file=file)
            logging.debug(f"{len(states_dict.keys())} States recorded")
            print(f"% {len(states_dict.keys())} States recorded", file=file)
            for id in states_dict.values():
                print(f"node({instance_num},{id}).", file=file)
        valuations_dict[i] = all_valuations
    remove_redundant_features(valuations_dict,filenames,problem_ids)


def remove_redundant_features(valuations_dict,filenames,problem_ids):
    # features will contain the pool of predicates
    features = set([])
    joint_val = {}
    joint_val_dict = {}
    # the pool of predicates will be extracted from a state valuation
    first_state_valuation = valuations_dict[0][0]
    # negated predicates occur with a - in front
    # for each literal, joint_val will store its truth value
    for literal in first_state_valuation.keys():
        if literal.startswith("-"):
            features.add(literal[1:])
            joint_val[literal[1:]] = []
        else:
            features.add(literal)
            joint_val[literal] = []
    for i in problem_ids:
        joint_val_dict[i] = copy.deepcopy(joint_val)
    # joint_val_dict will be a dict with the following info
    # for instance n with k states, joint_val_dict[n][pred] stores a list of k entries,
    # where the j-th entry stores the list of object tuples for which "pred" is true in state j
    for i in problem_ids:
        for feature in features:
            for valuation in valuations_dict[i].values():
                try:
                    joint_val_dict[i][feature].append((sorted(tuple(valuation[feature]))))
                except KeyError:
                    # KeyError can arise because "feature" is a non-negated pred,
                    # but some states will only contain false facts about "feature"
                    joint_val_dict[i][feature].append(str())
    logging.debug(f"Total number of features: {len(features)}")
    logging.debug("Dropping duplicate features")
    unique_features = set()
    static_features = dict()
    for i in problem_ids:
        # defining statics and non-redundant/unique features for each instance
        df = pd.DataFrame.from_dict(joint_val_dict[i]).T.astype(str)
        df_statics = df[df.apply(pd.Series.nunique, axis=1) == 1]
        static_features[i] = list(df_statics.index)
        logging.debug(f"Number of static features for instance {i}: {len(static_features[i])}")
        df['feature'] = df.index
        df_uniques = df.loc[df['feature'].str.len().sort_values().index].drop_duplicates(subset=df.columns.difference(['feature']))
        logging.debug(f"Done dropping duplicate features for instance {i}")
        logging.debug(f"Number of unique features in instance {i}: {df_uniques.shape[0]}")
        unique_features.update(list(df_uniques.index))
    logging.info("Writing graphs to file")
    feature_arities = {}
    for i in problem_ids:
        with open(filenames[i], 'a') as file:
            c_statics = 0
            for feat in unique_features:
                if feat in static_features[i]:
                    print(f"f_static({i},{feat}).", file=file)
                    c_statics += 1
            logging.debug(f"Number of unique static features in instance {i}: {c_statics}")
            for feat in unique_features:
                try:
                    arity = len(next(iter(valuations_dict[i][0][feat])))
                except KeyError:
                    arity = len(next(iter(valuations_dict[i][0]["-" + feat])))
                feature_arities[feat] = arity
                # ADD VALUATION FOR STATICS
                if feat in static_features[i]:
                    if feature_arities[feat] > 1:
                        try:
                            for arg in valuations_dict[i][0][feat]:
                                if arg[0]!=arg[1]:
                                    print(f"fval({i},({feat},({','.join(arg)})),1).", file=file)
                        except KeyError: pass
                        try:
                            for arg in valuations_dict[i][0]["-"+feat]:
                                if arg[0] != arg[1]:
                                    print(f"fval({i},({feat},({','.join(arg)})),0).", file=file)
                        except KeyError: pass
                    elif feature_arities[feat] == 1:
                        try:
                            for arg in valuations_dict[i][0][feat]:
                                print(f"fval({i},({feat},({','.join(arg)},)),1).", file=file)
                        except KeyError: pass
                        try:
                            for arg in valuations_dict[i][0]["-"+feat]:
                                print(f"fval({i},({feat},({','.join(arg)},)),0).", file=file)
                        except KeyError: pass
                # ADD VALUATION FOR FLUENTS
                else:
                    for state in valuations_dict[i]:
                        if feature_arities[feat] > 1:
                            try:
                                for arg in valuations_dict[i][state][feat]:
                                    if arg[0] != arg[1]:
                                        print(f"fval({i},({feat},({','.join(arg)})),{state},1).", file=file)
                            except KeyError: pass
                            try:
                                for arg in valuations_dict[i][state]["-"+feat]:
                                    if arg[0] != arg[1]:
                                        print(f"fval({i},({feat},({','.join(arg)})),{state},0).", file=file)
                            except KeyError: pass
                        elif feature_arities[feat] == 1:
                            try:
                                for arg in valuations_dict[i][state][feat]:
                                    print(f"fval({i},({feat},({','.join(arg)},)),{state},1).", file=file)
                            except KeyError: pass
                            try:
                                for arg in valuations_dict[i][state]["-"+feat]:
                                    print(f"fval({i},({feat},({','.join(arg)},)),{state},0).", file=file)
                            except KeyError: pass
            logging.info("Writing feature info to file")
            for feat in unique_features:
                print(f"feature({feat}).", file=file)
                print(f"f_arity({feat},{abs(feature_arities[feat])}).", file=file)
            print(f"% Number of unique features: {len(unique_features)}", file=file)

def main():
    # Commandline parsing
    log_levels = ["info", "debug"]
    argparser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter
    )
    argparser.add_argument(dest="domain", nargs="?")
    argparser.add_argument('-p', '--problems', nargs='+')
    argparser.add_argument("-l", "--loglevel", choices=log_levels, default="info")
    args = argparser.parse_args()
    logging.basicConfig(
        level=getattr(logging, args.loglevel.upper()),
        format="%(asctime)s %(levelname)-8s %(message)s",
        stream=sys.stdout,
    )
    args.domain = os.path.abspath(args.domain)
    problem_ids = range(len(args.problems))
    problems = [_parse(args.domain, args.problems[i]) for i in problem_ids]
    planning_tasks = [_ground(problem) for problem in problems]
    transitions = dict()
    graph_files = dict()
    to_remove = []
    for i in problem_ids:
        instance_num = i
        # counts the number of edges (only for printing)
        edge_count = 0
        # fifo-queue storing the nodes which are next to explore
        queue = deque()
        queue.append(searchspace.make_root_node(planning_tasks[i].initial_state))
        # set storing the edges/transitions seen so far
        transitions[i] = []
        while queue:
            # get the next node to explore
            node = queue.popleft()
            # explore the node
            for operator, successor_state in planning_tasks[i].get_successor_states(node.state):
                transition = (node.state, operator.name, successor_state)
                # duplicate detection
                if transition not in transitions[i]:
                    edge_count += 1
                    queue.append(
                        searchspace.make_child_node(node, operator, successor_state)
                    )
                    transitions[i].append(transition)
                    logging.debug("==================== CURRENT STATE ====================")
                    for atom in node.state:
                        logging.debug(atom)
                    logging.debug("==================== ACTION ====================")
                    logging.debug(operator.name)
                    logging.debug("==================== SUCCESSOR STATE ====================")
                    for atom in successor_state:
                        logging.debug(atom)
        logging.debug("================================================")
        logging.info(f"{edge_count} Edges recorded")
        if not transitions[i]:
            to_remove.append(problems[i].domain.name)
        graph_file = f"graphs/{problems[i].domain.name}_GEN/{problems[i].name}.lp"
        graph_files[i] = graph_file
        os.makedirs(os.path.dirname(graph_file), exist_ok=True)
        with open(graph_file, "w") as f:
            print(f"% {edge_count} Edges recorded", file=f)
    write_graphs(transitions, problems, graph_files, problem_ids)


if __name__ == "__main__":
    main()
