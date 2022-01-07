from sys import stdin, stdout, argv
from timeit import default_timer as timer
from pathlib import Path
from typing import List, Tuple
from itertools import chain, product
from termcolor import colored
import signal, argparse, re
import json
import logging

#from pyperplan.planner import _parse, _ground
#from pyperplan.search import searchspace
from pyperplan.src.pyperplan.planner import _parse, _ground
from pyperplan.src.pyperplan.search import searchspace
from collections import deque

g_primitive_role_names = [ 'left', 'below', 'overlap', 'smaller', 'shape' ] # CHECK: all?
g_primitive_concept_names = [ 'robot', 'block', 'table', 'cell', 'lockedcell', 'sokoban', 'crate', 'key', 'peg', 'disk', 'tile' ] # CHECK: all?

class Options(object): pass

def get_logger(name : str, log_file : Path, level = logging.INFO):
    logger = logging.getLogger(name)
    logger.propagate = False
    logger.setLevel(level)

    # add stdout handler
    formatter = logging.Formatter('[%(levelname)s] %(message)s')
    formatter = logging.Formatter('%(asctime)s [%(levelname)s] [%(funcName)s:%(lineno)d] %(message)s')
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

# O2D states
class O2DState(object):
    def __init__(self, instance, objects, denotations):
        self.instance = instance
        self.objects = objects
        self.denotations = denotations

# Denotations
def subsumed(role_or_concept, list_list_roles_or_concepts):
    for i in range(len(list_list_roles_or_concepts)):
        for j in range(len(list_list_roles_or_concepts[i])):
            if role_or_concept.denotations == list_list_roles_or_concepts[i][j].denotations:
                return i, j
    return -1, -1

# Denotations of roles at O2D states are relations among objects
class Role(object):
    def __init__(self):
        self.denotations = None
    def complexity(self):
        raise NotImplementedError('Role class is abstract')
    def __str__(self):
        raise NotImplementedError('Role class is abstract')
    def denotation(self, state : O2DState):
        raise NotImplementedError('Role class is abstract')
    def set_denotations(self, states : List[O2DState]):
        if self.denotations == None:
            self.denotations = [ self.denotation(state) for state in states ]
    def clear_denotations(self):
        self.denotations = None

class FalsumRole(Role):
    def __init__(self):
        super().__init__()
    def complexity(self):
        return 0
    def __str__(self):
        return 'falsum'
    def denotation(self, state : O2DState):
        return set()

# Primitive roles are O2D roles
class O2DRole(Role):
    def __init__(self, role : str):
        super().__init__()
        self.role = role
    def complexity(self):
        return 1
    def __str__(self):
        return f'{self.role}'
    def denotation(self, state : O2DState):
        try:
            denotations = state.denotations[self.role]
        except KeyError:
            logger.error(f"Key role='{self.role}' not found in O2DState {state.denotations}")
            exit(1)
        return denotations

class InverseRole(Role):
    def __init__(self, role : str):
        assert type(role) != InverseRole
        super().__init__()
        self.role = role
    def complexity(self):
        return 1 + self.role.complexity()
    def __str__(self):
        return f'inv_lp_{self.role}_rp'
    def denotation(self, state : O2DState):
        denotation = self.role.denotation(state)
        return set([ (b, a) for (a, b) in denotation ])

class TransitiveClosureRole(Role):
    def __init__(self, role : Role):
        assert type(role) != TransitiveClosureRole
        super().__init__()
        self.role = role
    def complexity(self):
        return 1 + self.role.complexity()
    def __str__(self):
        return f'tc_lp_{self.role}_rp'
    def denotation(self, state : O2DState):
        role = self.role.denotation(state)
        raise NotImplementedError('TransitiveClosureRole::denotation()')

class CompositionRole(Role):
    def __init__(self, role1 : Role, role2 : Role):
        super().__init__()
        self.role1 = role1
        self.role2 = role2
    def complexity(self):
        return 1 + self.role1.complexity() + self.role2.complexity()
    def __str__(self):
        return f'{self.role1}_COMP_{self.role2}'
    def denotation(self, state : O2DState):
        role1 = self.role1.denotation(state)
        role2 = self.role2.denotation(state)
        med = [ obj for (_, obj) in role1 ]
        return set([ (x1,y2) for m in med for (x1,x2) in role1 for (y1,y2) in role2 if x2 == m and y1 == m ])

class ConjunctiveRole(Role):
    def __init__(self, role1 : Role, role2 : Role):
        assert type(role1) != FalsumRole
        assert type(role2) != FalsumRole
        assert str(role1) != str(role2)
        super().__init__()
        self.role_set = set([ role1, role2 ])
    def complexity(self):
        return 1 + sum([ c.complexity() for c in self.role_set ])
    def __str__(self):
        return f'cap_lp_{"_".join([ str(c) for c in self.role_set ])}_rp'
    def denotation(self, state : O2DState):
        denotations = [ c.denotation(state) for c in self.role_set ]
        return set.intersection(*denotations)

class DisjunctiveRole(Role):
    def __init__(self, role1 : Role, role2 : Role):
        assert type(role1) != FalsumRole
        assert type(role2) != FalsumRole
        assert str(role1) != str(role2)
        super().__init__()
        self.role_set = set([ role1, role2 ])
    def complexity(self):
        return 1 + sum([ c.complexity() for c in self.role_set ])
    def __str__(self):
        return f'union_lp_{"_".join([ str(c) for c in self.role_set ])}_rp'
    def denotation(self, state : O2DState):
        denotations = [ c.denotation(state) for c in self.role_set ]
        return set.union(*denotations)

# Denotations of concepts at O2D states are subsets of objects
class Concept(object):
    def __init__(self):
        self.denotations = None
    def complexity(self):
        raise NotImplementedError('Concept class is abstract')
    def __str__(self):
        raise NotImplementedError('Concept class is abstract')
    def denotation(self, state : O2DState):
        raise NotImplementedError('Concept class is abstract')
    def set_denotations(self, states : List[O2DState]):
        if self.denotations == None:
            self.denotations = [ self.denotation(state) for state in states ]
    def clear_denotations(self):
        self.denotations = None

class FalsumConcept(Concept):
    def __init__(self):
        super().__init__()
    def complexity(self):
        return 0
    def __str__(self):
        return 'falsum'
    def denotation(self, state : O2DState):
        return set()

class VerumConcept(Concept):
    def __init__(self):
        super().__init__()
    def complexity(self):
        return 0
    def __str__(self):
        return 'verum'
    def denotation(self, state : O2DState):
        return set([ (obj,) for obj in state.objects ]) # CHECK: build this into state so that just a ref is copied here!

# Primitive concepts are O2D concepts
class O2DConcept(Concept):
    def __init__(self, concept : str):
        super().__init__()
        self.concept = concept
    def complexity(self):
        return 1
    def __str__(self):
        return str(self.concept)
    def denotation(self, state : O2DState):
        try:
            denotations = state.denotations[self.concept]
        except KeyError:
            logger.error(f"Key concept='{self.concept}' not found in O2DState {state.denotations}")
            exit(1)
        return set(denotations)

class NegatedConcept(Concept):
    def __init__(self, concept : Concept):
        assert type(concept) not in [ FalsumConcept, VerumConcept ]
        assert type(concept) != NegatedConcept
        super().__init__()
        self.concept = concept
    def complexity(self):
        return 1 + self.concept.complexity()
    def __str__(self):
        return f'not_lp_{self.concept}_rp'
    def denotation(self, state : O2DState):
        subset = self.concept.denotation(state)
        return set([ obj for obj in state.objects if obj not in subset ])

class ConjunctiveConcept(Concept):
    def __init__(self, concept1 : Concept, concept2 : Concept):
        assert type(concept1) not in [ FalsumConcept, VerumConcept ]
        assert type(concept2) not in [ FalsumConcept, VerumConcept ]
        assert str(concept1) != str(concept2)
        super().__init__()
        if type(concept1) == ConjunctiveConcept and type(concept2) == ConjunctiveConcept:
            self.concept_set = set(concept1.concept_set)
            self.concept_set.union(concept2.concept_set)
        elif type(concept1) == ConjunctiveConcept:
            self.concept_set = set(concept1.concept_set)
            self.concept_set.add(concept2)
        elif type(concept2) == ConjunctiveConcept:
            self.concept_set = set(concept2.concept_set)
            self.concept_set.add(concept1)
        else:
            self.concept_set = set([ concept1, concept2 ])
    def complexity(self):
        return 1 + sum([ c.complexity() for c in self.concept_set ])
    def __str__(self):
        return f'cap_lp_{"_".join([ str(c) for c in self.concept_set ])}_rp'
    def denotation(self, state : O2DState):
        denotations = [ c.denotation(state) for c in self.concept_set ]
        return set.intersection(*denotations)

class DisjunctiveConcept(Concept):
    def __init__(self, concept1 : Concept, concept2 : Concept):
        assert type(concept1) not in [ FalsumConcept, VerumConcept ]
        assert type(concept2) not in [ FalsumConcept, VerumConcept ]
        assert str(concept1) != str(concept2)
        super().__init__()
        if type(concept1) == DisjunctiveConcept and type(concept2) == DisjunctiveConcept:
            self.concept_set = set(concept1.concept_set)
            self.concept_set.union(concept2.concept_set)
        elif type(concept1) == DisjunctiveConcept:
            self.concept_set = set(concept1.concept_set)
            self.concept_set.add(concept2)
        elif type(concept2) == DisjunctiveConcept:
            self.concept_set = set(concept2.concept_set)
            self.concept_set.add(concept1)
        else:
            self.concept_set = set([ concept1, concept2 ])
    def complexity(self):
        return 1 + sum([ c.complexity() for c in self.concept_set ])
    def __str__(self):
        return f'union_lp_{"_".join([ str(c) for c in self.concept_set ])}_rp'
    def denotation(self, state : O2DState):
        denotations = [ c.denotation(state) for c in self.concept_set ]
        return set.union(*denotations)

# Existential quantification
class ERConcept(Concept):
    def __init__(self, role : Role, concept : Concept):
        assert type(concept) != FalsumConcept
        super().__init__()
        self.role = role
        self.concept = concept
    def complexity(self):
        return 1 + self.role.complexity() + self.concept.complexity()
    def __str__(self):
        return f'er_lp_{self.role}_{self.concept}_rp'
    def denotation(self, state : O2DState):
        # E[R.C] = { x : there is y such that R(x,y) and C(y) }
        role = self.role.denotation(state)
        concept = self.concept.denotation(state)
        return set([ x for (x,y) in role if y in concept ])

# Predicates:
# - nullary predicates: (C \subseteq C') for concepts C and C'
# - unary predicates: C(x) for concept C
# - binary predicates: R(x,y) for role R
class Predicate(object):
    def __init__(self):
        self.denotations = None
    def complexity(self):
        raise NotImplementedError('Predicate class is abstract')
    def __str__(self):
        raise NotImplementedError('Predicate class is abstract')
    def denotation(self, state : O2DState):
        raise NotImplementedError('Predicate class is abstract')
    def set_denotations(self, states : List[O2DState]):
        if self.denotations == None:
            self.denotations = [ self.denotation(state) for state in states ]
    def clear_denotations(self):
        self.denotations = None
    def is_constant_on_slice(self, beg, end):
        assert self.denotations != None
        slice_denotations = self.denotations[beg:end]
        for i in range(len(slice_denotations)):
            if slice_denotations[0] != slice_denotations[i]:
                return False
        return True
    def is_constant(self):
        assert self.denotations != None
        return self.is_constant_on_slice(0, len(self.denotations))

class NullaryPredicate(Predicate):
    def __init__(self, concept1 : Concept, concept2 : Concept):
        super().__init__()
        self.concept1 = concept1
        self.concept2 = concept2
    def complexity(self):
        return 1 + self.concept1.complexity() + self.concept2.complexity()
    def __str__(self):
        return f'{self.concept1}_SUBSET_{self.concept2}'
    def denotation(self, state : O2DState):
        assert False
        d1 = self.concept1.denotation(state)
        d2 = self.concept2.denotation(state)
        return d1.issubset(d2)
    def set_denotations(self, states : List[O2DState]):
        if self.denotations == None:
            self.concept1.set_denotations(states)
            self.concept2.set_denotations(states)
            self.denotations = [ True for i in range(len(states)) ]
            for i in range(len(states)):
                d1 = self.concept1.denotations[i]
                d2 = self.concept2.denotations[i]
                self.denotations[i] = d1.issubset(d2)
    def clear_denotations(self):
        self.denotations = None

class UnaryPredicate(Predicate):
    def __init__(self, concept : Concept):
        super().__init__()
        self.concept = concept
    def complexity(self):
        return self.concept.complexity()
    def __str__(self):
        return str(self.concept)
    def denotation(self, state : O2DState):
        assert False
        return self.concept.denotation(state)
    def set_denotations(self, states : List[O2DState]):
        if self.denotations == None:
            self.concept.set_denotations(states)
            self.denotations = self.concept.denotations
    def clear_denotations(self):
        self.denotations = None

class BinaryPredicate(Predicate):
    def __init__(self, role : Role):
        super().__init__()
        self.role = role
    def complexity(self):
        return self.role.complexity()
    def __str__(self):
        return str(self.role)
    def denotation(self, state : O2DState):
        assert False
        return self.role.denotation(state)
    def set_denotations(self, states : List[O2DState]):
        if self.denotations == None:
            self.role.set_denotations(states)
            self.denotations = self.role.denotations
    def clear_denotations(self):
        self.denotations = None


# Generation of roles
def primitive_role_names():
    return g_primitive_role_names

def roles_unary(role : Role, ctors):
    new_roles = []
    for ctor in ctors:
        if ctor[0] == 'Role' and ctor[1] == 'None':
            try:
                new_roles.append(ctor[2](role))
            except AssertionError:
                pass
    return new_roles

def roles_for_pair(pair, roles : List[Role], ctors):
    new_roles = []
    for ctor in ctors:
        if ctor[0] == 'Role' and ctor[1] == 'Role':
            try:
                new_roles.append(ctor[2](roles[pair[0]], roles[pair[1]]))
            except AssertionError:
                pass
    return new_roles

def generate_roles(primitive : List[Role], states : List[O2DState], complexity_bound : int, ctors):
    roles = []
    role_names = set()

    # add primitive roles to new_roles while pruning subsumed ones
    new_roles = []
    for r in primitive:
        r.set_denotations(states)
        i, j = subsumed(r, [ new_roles ])
        if i == -1:
            new_roles.append(r)
            role_names.add(str(r))
        else:
            logger.debug(f'Role {r} subsumed by {new_roles[j]}')

    iteration = 0
    while new_roles:
        iteration += 1
        logger.info(colored(f'*** Roles: iter={iteration}, #new_roles={len(new_roles)}', 'magenta'))
        fresh_roles = []

        # roles defined by single role in new_roles
        for role in new_roles:
            for r in roles_unary(role, ctors):
                if r.complexity() <= complexity_bound and str(r) not in role_names:
                    r.set_denotations(states)
                    ext_roles = [ fresh_roles, new_roles, roles ]
                    i, j = subsumed(r, ext_roles)
                    if i == -1:
                        logger.debug(colored(f'+++ New role {r} with complexity {r.complexity()}', 'magenta'))
                        fresh_roles.append(r)
                        role_names.add(str(r))
                    else:
                        logger.debug(f'Role {r} subsumed by {ext_roles[i][j]}')

        # roles that require two roles but at least one role in new_roles
        indices = set(range(len(roles)))
        roles.extend(new_roles)
        role_names.union(set([ str(c) for c in new_roles ]))
        for pair in product(range(len(roles)), repeat=2):
            if pair[0] not in indices or pair[1] not in indices:
                for r in roles_for_pair(pair, roles, ctors):
                    if r.complexity() <= complexity_bound and str(r) not in role_names:
                        r.set_denotations(states)
                        ext_roles = [ fresh_roles, new_roles, roles ]
                        i, j = subsumed(r, ext_roles)
                        if i == -1:
                            logger.debug(colored(f'+++ New role {r} with complexity {r.complexity()}', 'magenta'))
                            fresh_roles.append(r)
                            role_names.add(str(r))
                        else:
                            logger.debug(f'Role {r} subsumed by {ext_roles[i][j]}')

        new_roles = fresh_roles

    return roles

# Generation of concepts
def primitive_concept_names():
    return g_primitive_concept_names

def concepts_with_roles(ctors, concept, roles):
    new_concepts = []
    for ctor in ctors:
        if ctor[0] == 'Role' and ctor[1] == 'Concept':
            for role in roles:
                try:
                    new_concepts.append(ctor[2](role, concept))
                except AssertionError:
                    pass
    return new_concepts

def concepts_unary(concept : Concept, ctors):
    new_concepts = []
    for ctor in ctors:
        if ctor[0] == 'Concept' and ctor[1] == 'None':
            try:
                new_concepts.append(ctor[2](concept))
            except AssertionError:
                pass
    return new_concepts

def concepts_for_pair(pair, concepts : List[Concept], ctors):
    new_concepts = []
    for ctor in ctors:
        if ctor[0] == 'Concept' and ctor[1] == 'Concept':
            try:
                new_concepts.append(ctor[2](concepts[pair[0]], concepts[pair[1]]))
            except AssertionError:
                pass
    return new_concepts

def generate_concepts(primitive : List[Concept], roles : List[Role], states : List[O2DState], complexity_bound : int, ctors):
    concepts = []
    concept_names = set()

    # add primitive concepts to new_concepts while pruning subsumed ones
    new_concepts = []
    for c in primitive:
        c.set_denotations(states)
        i, j = subsumed(c, [ new_concepts ])
        if i == -1:
            new_concepts.append(c)
            concept_names.add(str(c))
        else:
            logger.debug(f'Concept {c} subsumed by {new_concepts[j]}')

    iteration = 0
    while new_concepts:
        iteration += 1
        logger.info(colored(f'*** Concepts: iter={iteration}, #new_concepts={len(new_concepts)}', 'green'))
        fresh_concepts = []

        # concepts defined by single concept in new_concepts
        for concept in new_concepts:
            for c in concepts_with_roles(ctors, concept, roles):
                if c.complexity() <= complexity_bound and str(c) not in concept_names:
                    c.set_denotations(states)
                    ext_concepts = [ fresh_concepts, new_concepts, concepts ]
                    i, j = subsumed(c, ext_concepts)
                    if i == -1:
                        logger.debug(colored(f'+++ New concept {c} with complexity {c.complexity()}', 'green'))
                        fresh_concepts.append(c)
                        concept_names.add(str(c))
                    else:
                        logger.debug(f'Concept {c} subsumed by {ext_concepts[i][j]}')

            for c in concepts_unary(concept, ctors):
                if c.complexity() <= complexity_bound and str(c) not in concept_names:
                    c.set_denotations(states)
                    ext_concepts = [ fresh_concepts, new_concepts, concepts ]
                    i, j = subsumed(c, ext_concepts)
                    if i == -1:
                        logger.debug(colored(f'+++ New concept {c} with complexity {c.complexity()}', 'green'))
                        fresh_concepts.append(c)
                        concept_names.add(str(c))
                    else:
                        logger.debug(f'Concept {c} subsumed by {ext_concepts[i][j]}')

        # concepts that require two concepts but at least one concept in new_concepts
        indices = set(range(len(concepts)))
        concepts.extend(new_concepts)
        concept_names.union(set([ str(c) for c in new_concepts ]))
        for pair in product(range(len(concepts)), repeat=2):
            if pair[0] not in indices or pair[1] not in indices:
                for c in concepts_for_pair(pair, concepts, ctors):
                    if c.complexity() <= complexity_bound and str(c) not in concept_names:
                        c.set_denotations(states)
                        ext_concepts = [ fresh_concepts, concepts ]
                        i, j = subsumed(c, ext_concepts)
                        if i == -1:
                            logger.debug(colored(f'+++ New concept {c} with complexity {c.complexity()}', 'green'))
                            fresh_concepts.append(c)
                            concept_names.add(str(c))
                        else:
                            logger.debug(f'Concept {c} subsumed by {ext_concepts[i][j]}')

        new_concepts = fresh_concepts

    return concepts

# Generation of predicates
def generate_predicates(states : List[O2DState], options : Options):
    max_complexity = options.max_complexity
    complexity_measure = options.complexity_measure # CHECK: NOT USED

    # Roles
    role_ctors = [ ('Role', 'None', InverseRole), ('Role', 'Role', CompositionRole) ]
    primitive_roles = [ O2DRole(name) for name in primitive_role_names() ]
    roles = generate_roles(primitive_roles, states, max_complexity, role_ctors)

    # Concepts
    concept_ctors = [ ('Concept', 'None', NegatedConcept), ('Concept', 'Concept', ConjunctiveConcept), ('Role', 'Concept', ERConcept) ]
    primitive_concepts = [ FalsumConcept(), VerumConcept() ]
    primitive_concepts.extend([ O2DConcept(name) for name in primitive_concept_names() ])
    concepts = generate_concepts(primitive_concepts, roles, states, max_complexity, concept_ctors)

    # Predicates:
    # - nullary predicates: (C \subseteq C') for concepts C and C'
    # - unary predicates: C(x) for concept C
    # - binary predicates: R(x,y) for role R
    predicates = []

    # nullary predicates
    for p in product(range(len(concepts)), repeat=2):
        c1, c2 = concepts[p[0]], concepts[p[1]]
        if type(c1) != FalsumConcept and type(c2) != VerumConcept and c1 != c2:
            p = NullaryPredicate(c1, c2)
            if p.complexity() <= max_complexity:
                p.set_denotations(states)
                if not p.is_constant(): # CHECK: is it safe to remove nullary predicates in this way?
                    predicates.append((p, 0))
                else:
                    logger.debug(f'Predicate {p} is constant; pruned')

    # unary predicates
    for c in concepts:
        if type(c) != NegatedConcept:
            p = UnaryPredicate(c)
            p.set_denotations(states)
            if True or not p.is_constant(): # CHECK: cannot prune using this condition since all static info dissapears (subsumption)
                predicates.append((p, 1))
                logger.debug(f'UnaryPredicate: {p} with complexity {p.complexity()}')
            else:
                logger.debug(f'Predicate {p} is constant; pruned')

    # binary predicates
    for r in roles:
        p = BinaryPredicate(r)
        p.set_denotations(states)
        if True or not p.is_constant(): # CHECK: cannot prune using this condition since all static info dissapears (subsumption)
            predicates.append((p, 2))
        else:
            logger.debug(f'Predicate {p} is constant; pruned')

    return roles, concepts, predicates

# Obtain O2D states from states
def apply_rule(ext_state : dict, pred, head, body):
    assert pred == head[:head.index('(')]
    body_keys = [ atom[:atom.index('(')] for atom in body ]
    body_vars = [ atom[1+atom.index('('):-1].split(',') for atom in body ]
    values = [ ext_state[key] if key in ext_state else set() for key in body_keys ]
    head_vars = head[1+head.index('('):-1].split(',')
    logger.debug(f'apply_rule: head={head}, vars={head_vars}, body={body}, keys={body_keys}, vars={body_vars}, values={values}')
    something_added = False
    for tup in product(*values):
        trigger = True
        args = tuple(tup)
        assignment = dict()
        for i, arg in enumerate(args):
            key = body_keys[i]
            if key not in ext_state or arg not in ext_state[key]:
                trigger = False
                break
            else:
                inconsistent = False
                for j, var in enumerate(body_vars[i]):
                    if var not in assignment: assignment[var] = set()
                    assignment[var].add(arg[j])
                    if len(assignment[var]) > 1:
                        inconsistent = True
                        break
                if inconsistent:
                    trigger = False
                    break
                logger.debug(f'match: key={key}, arg={arg}, vars={body_vars[i]}, assignment={assignment}')

        # if trigger, add atom
        if trigger:
            atom_args = tuple([ next(iter(assignment[var])) if var.isupper() else var for var in head_vars ])
            if atom_args not in ext_state[pred]:
                something_added = True
                ext_state[pred].add(atom_args)
                logger.debug(colored(f'trigger: pred={pred}, head={head}, body={body}, args={args}, assignment={assignment}, atom_args={atom_args}', 'blue'))
    return something_added

def apply_rules_for_pred(ext_state : dict, pred, rules) -> bool:
    if pred not in ext_state: ext_state[pred] = set()
    something_added = False
    some_change = True
    while some_change:
        some_change = False
        for head, body in rules:
            if apply_rule(ext_state, pred, head, body):
                something_added = True
                some_change = True
    return something_added

def apply_rules(ext_state : dict, rules):
    something_added = True
    while something_added:
        something_added = False
        for pred in rules:
            if apply_rules_for_pred(ext_state, pred, rules[pred]):
                something_added = True

def get_dict_from_state(state):
    ext_state = dict()
    for atom in state:
        fields = atom[1:-1].split(' ')
        pred = fields[0]
        args = fields[1:]
        if pred not in ext_state: ext_state[pred] = set()
        ext_state[pred].add(tuple(args))
    return ext_state

def construct_map_function(symb2spatial, objects):
    # construct dict for objects
    object_dict = dict(object=set())
    for obj in objects:
        objtype = str(objects[obj])
        if objtype not in object_dict: object_dict[objtype] = set()
        object_dict['object'].add((obj,))
        object_dict[objtype].add((obj,))

    def map_func(state):
        ext_state = get_dict_from_state(state)
        ext_state.update(object_dict)

        # add constants
        ext_state['constant'] = set()
        for obj in symb2spatial['constants']:
            ext_state['constant'].add((obj,))
            ext_state['object'].add((obj,))

        # add facts
        for fact in symb2spatial['facts']:
            if fact[0] not in ext_state: ext_state[fact[0]] = set()
            ext_state[fact[0]].add(tuple(fact[1]))

        # apply rules in symb2spatial profile to obtain visualization
        apply_rules(ext_state, symb2spatial['rules'])

        return ext_state
    return map_func

def get_o2d_state_from_ext_state(i : int, ext_state : dict, focus : List[str]) -> O2DState:
    objects = set([ obj[0] for obj in ext_state['object'] ])
    denotations = dict()
    for name in focus:
        denotations[name] = ext_state[name] if name in ext_state else set()
    return O2DState(i, objects, denotations)

def get_o2d_states(problems, transitions : List[list], symb2spatial : dict, focus : List[str]):
    assert len(problems) == len(transitions)
    states = []
    o2d_states = []
    offsets = dict()
    states_dict = dict()
    for i in range(len(transitions)):
        start_time = timer()
        offsets[i] = len(o2d_states)
        objects = problems[i].objects
        map_func = construct_map_function(symb2spatial, objects)
        seen_states, states_dict[i] = set(), dict()
        for (src, action, dst) in transitions[i]:
            for state in [src, dst]:
                if state not in seen_states:
                    states_dict[i][state] = len(states)
                    seen_states.add(state)
                    states.append(state)
                    ext_state = map_func(state)
                    o2d_states.append(get_o2d_state_from_ext_state(i, ext_state, focus))
        elapsed_time = timer() - start_time
        logger.info(f'{problems[i].name}: {len(states) - offsets[i]} state(s) in {elapsed_time:.3f} second(s)')
    assert len(states) == len(o2d_states)
    return states, states_dict, o2d_states, offsets

# Planner for calculating reachable states
def get_PDDL_files(path : Path):
    files = [ fname for fname in path.iterdir() if fname.is_file() and fname.name[-5:] == '.pddl' ]
    domain_filenames = [ fname for fname in files if fname.name == 'domain.pddl' ]
    problem_filenames = [ fname for fname in files if fname.name != 'domain.pddl' ]
    assert len(domain_filenames) == 1
    return domain_filenames[0], problem_filenames

def get_planning_tasks(domain_filename, problem_filenames):
    problems = [ _parse(str(domain_filename), str(fname)) for fname in problem_filenames ]
    tasks = [ _ground(problem) for problem in problems ]
    return problems, tasks

def get_planning_transitions(problems, tasks):
    transitions = []
    for i in range(len(tasks)):
        start_time = timer()
        transitions.append([])
        assert len(transitions) == 1 + i
        initial_state = tasks[i].initial_state
        logger.debug(f'{problems[i].name}: initial-state={initial_state}')

        queue = deque()
        queue.append(searchspace.make_root_node(initial_state))
        while queue:
            node = queue.popleft()
            #logger.debug(f'{problems[i].name}: node dequeued: state={node.state}')
            for operator, successor_state in tasks[i].get_successor_states(node.state):
                transition = (node.state, operator.name, successor_state)

                # duplicate detection
                if transition not in transitions[i]:
                    queue.append(searchspace.make_child_node(node, operator, successor_state))
                    transitions[i].append(transition)
                    #logger.debug(f'{problems[i].name}: state={node.state}, operator={operator.name}, successor={successor_state}')

        elapsed_time = timer() - start_time
        logger.info(f'{problems[i].name}: {len(transitions[i])} edge(s) in {elapsed_time:.3f} second(s)')

    return transitions

# Write graph files (.lp)
def write_graph_file(predicates : list, slice_beg : int, slice_end : int, instance : int, states : list, states_dict : dict, transitions : list, o2d_states : List[O2DState], graph_filename : Path):
    start_time = timer()
    written_lines = 0
    with graph_filename.open('w') as fd:
        fd.write(f"% Problem {graph_filename.with_suffix('.pddl')}: {len(o2d_states)} node(s) and {len(transitions)} edge(s)\n")
        fd.write(f'instance({instance}).\n')
        logger.debug(f"% Problem {graph_filename.with_suffix('.pddl')}: {len(o2d_states)} node(s) and {len(transitions)} edge(s)")
        logger.debug(f'instance({instance}).')
        written_lines += 2

        # transitions
        for (src, action, dst) in transitions:
            src_index = states_dict[src]
            dst_index = states_dict[dst]
            label = action[1:-1].split(' ')[0]
            fd.write(f'tlabel({instance},({src_index},{dst_index}),{label}). % {action}\n')
            logger.debug(f'tlabel({instance},({src_index},{dst_index}),{label}). % {action}')
            written_lines += 1

        # states (nodes)
        for state in states:
            index = states_dict[state]
            fd.write(f'node({instance},{index}).\n')
            logger.debug(f'node({instance},{index}).')
            written_lines += 1

        # features (predicates)
        static_predicates = set()
        for (p, arity) in predicates:
            fd.write(f'feature({p}).\n')
            fd.write(f'f_arity({p},{arity}).\n')
            logger.debug(f'feature({p}).')
            logger.debug(f'f_arity({p},{arity}).')
            written_lines += 2
            if p.is_constant_on_slice(slice_beg, slice_end):
                static_predicates.add(str(p))
                fd.write(f'f_static({instance},{p}).\n')
                logger.debug(f'f_static({instance},{p}).')
                written_lines += 1

        # valuations for static predicates
        for (p, arity) in predicates:
            if str(p) in static_predicates:
                tuples = p.denotations[slice_beg]
                #logger.info(f'static: i={instance}, arity={arity}, p={p}, tuples={tuples}')
                if arity == 0:
                    assert tuples in [ False, True ], tuples
                    fd.write(f'fval({instance},({p},(null,)),{1 if tuples else 0}).\n')
                    written_lines += 1
                else:
                    for arg in tuples:
                        arg_str = f'({",".join(arg)})'
                        fd.write(f'fval({instance},({p},{arg_str}),1).\n')
                        #logger.info(f'fval({instance},({p},{arg_str}),1).')
                        written_lines += 1

        # valuations for dynamic predicates
        for i, (state, o2d_state) in enumerate(zip(states, o2d_states)):
            index = states_dict[state]
            assert slice_beg <= index and index < slice_end, f'unexpected index={index} (beg={slice_beg}, end={slice_end})'
            for (p, arity) in predicates:
                if str(p) not in static_predicates:
                    tuples = p.denotations[index]
                    #logger.info(f'dynamic: i={instance}, arity={arity}, index={index}, p={p}, tuples={tuples}')
                    if arity == 0:
                        assert tuples in [ False, True ], tuples
                        fd.write(f'fval({instance},({p},(null,)),{index},{1 if tuples else 0}).\n')
                        written_lines += 1
                    else:
                        for arg in tuples:
                            arg_str = f'({",".join(arg)})'
                            fd.write(f'fval({instance},({p},{arg_str}),{index},1).\n')
                            #logger.info(f'fval({instance},({p},{arg_str}),{index},1).')
                            written_lines += 1
    elapsed_time = timer() - start_time
    logger.info(f'{graph_filename}: {written_lines} line(s) for instance {instance} (slice ({slice_beg},{slice_end})) in {elapsed_time:.3f} second(s)')

def write_graph_files(predicates : list, states : list, states_dict : dict, transitions : List[list], o2d_states : List[O2DState], offsets : List[int], problem_filenames : List[Path]):
    assert len(states) == len(o2d_states)
    assert len(transitions) == len(problem_filenames)
    for i, fname in enumerate(problem_filenames):
        beg, end = offsets[i], offsets[i+1] if i+1 in offsets else len(states)
        slice_states = states[beg:end]
        slice_states_dict = states_dict[i]
        slice_o2d_states = o2d_states[beg:end]
        graph_filename = fname.with_suffix('.lp')
        write_graph_file(predicates, beg, end, i, slice_states, slice_states_dict, transitions[i], slice_o2d_states, graph_filename)


if __name__ == '__main__':
    # setup timer and exec name
    entry_time = timer()
    exec_path = Path(argv[0]).parent
    exec_name = Path(argv[0]).stem

    # default values
    default_debug_level = 0
    default_max_complexity = 3
    default_complexity_measure = 'sum'
    default_symb2spatial = exec_path / 'registry_symb2spatial.txt'

    # argument parser
    parser = argparse.ArgumentParser(description='Incremental learning of grounded PDDL models.')
    parser.add_argument('--debug-level', dest='debug_level', type=int, default=default_debug_level, help=f'set debug level (default={default_debug_level})')
    parser.add_argument('--complexity-measure', dest='complexity_measure', type=str, default=default_complexity_measure, help=f'complexity measure (either sum or height, default={default_complexity_measure})')
    parser.add_argument('--max-complexity', dest='max_complexity', type=int, default=default_max_complexity, help=f'max complexity for construction of concepts and rules (0=no limit, default={default_max_complexity})')
    parser.add_argument('--symb2spatial', dest='symb2spatial', type=str, default=default_symb2spatial, help=f'symb2spatial file (default={default_symb2spatial})')
    parser.add_argument('domain', type=str, help='domain path')
    args = parser.parse_args()

    # setup domain path and name
    domain_path = Path(args.domain)
    domain_name = domain_path.name

    # setup logger
    log_level = logging.INFO if args.debug_level == 0 else logging.DEBUG
    logger = get_logger(exec_name, '', log_level)

    # load symb2spatial
    symb2spatial_filename = Path(args.symb2spatial)
    symb2spatial_registry = json.load(symb2spatial_filename.open('r'))

    # fetch symb2spatial for domain
    if domain_name not in symb2spatial_registry:
        logger.error(f"Domain '{domain_name}' not registered in symb2spatial '{symb2spatial_filename}'")
        exit(1)
    else:
        symb2spatial = symb2spatial_registry[domain_name]

    options = Options()
    setattr(options, 'complexity_measure', args.complexity_measure)
    setattr(options, 'max_complexity', args.max_complexity)

    # load/process PDDL files
    start_time = timer()
    logger.info(colored(f'Parse and ground PDDL files...', 'red', attrs = [ 'bold' ]))
    domain_filename, problem_filenames = get_PDDL_files(domain_path)
    logger.info(f'PDDLs: domain={domain_filename}, problems={[ str(fname) for fname in problem_filenames ]}')
    problems, tasks = get_planning_tasks(domain_filename, problem_filenames)
    elapsed_time = timer() - start_time
    logger.info(colored(f'All parsing and grounding in {elapsed_time:.3f} second(s)', 'blue'))

    start_time = timer()
    logger.info(colored(f'Generate transitions in PDDL files...', 'red', attrs = [ 'bold' ]))
    transitions = get_planning_transitions(problems, tasks)
    elapsed_time = timer() - start_time
    logger.info(colored(f'All transitions generated in {elapsed_time:.3f} second(s)', 'blue'))

    # remove tasks with no transitions
    good_tasks = [ i for i in range(len(transitions)) if len(transitions[i]) > 0 ]
    if len(good_tasks) < len(transitions):
        bad_tasks = [ i for i in range(len(transitions)) if i not in good_tasks ]
        logger.info(colored(f'Removing {len(bad_tasks)} problem(s) that have zero transitions: {[ problem_filenames[i].name for i in bad_tasks ]}', 'red'))
    problem_filenames = [ problem_filenames[i] for i in good_tasks ]
    problems = [ problems[i] for i in good_tasks ]
    tasks = [ tasks[i] for i in good_tasks ]
    transitions = [ transitions[i] for i in good_tasks ]

    # get O2D states
    start_time = timer()
    logger.info(colored(f'Generate O2D states...', 'red', attrs = [ 'bold' ]))
    focus = list(primitive_role_names())
    focus.extend(primitive_concept_names())
    states, states_dict, o2d_states, offsets = get_o2d_states(problems, transitions, symb2spatial, focus)
    elapsed_time = timer() - start_time
    logger.info(colored(f'{len(o2d_states)} state(s) and {sum([ len(transitions[i]) for i in range(len(transitions)) ])} edges(s) in {elapsed_time:.3f} second(s)', 'blue'))

    # generate predicates
    start_time = timer()
    logger.info(colored(f'Generate predicates...', 'red', attrs = [ 'bold' ]))
    roles, concepts, predicates = generate_predicates(o2d_states, options)
    elapsed_time = timer() - start_time
    logger.info(colored(f'(max-complexity={options.max_complexity}) {len(roles)} role(s), {len(concepts)} concept(s), and {len(predicates)} predicate(s) in {elapsed_time:.3f} second(s)', 'blue'))

    # Last thing is to produce .lp files
    start_time = timer()
    logger.info(colored(f'Write graph files...', 'red', attrs = [ 'bold' ]))
    write_graph_files(predicates, states, states_dict, transitions, o2d_states, offsets, problem_filenames)
    elapsed_time = timer() - start_time
    logger.info(colored(f'{len(transitions)} file(s) written in {elapsed_time:.3f} second(s)', 'blue'))

    elapsed_time = timer() - entry_time
    logger.info(colored(f'All tasks completed in {elapsed_time:.3f} second(s)', 'blue'))
