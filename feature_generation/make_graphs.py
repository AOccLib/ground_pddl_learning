from sys import stdin, stdout, argv
from timeit import default_timer as timer
from pathlib import Path
from typing import Callable, List, Tuple, Dict, Set
from itertools import chain, product
from termcolor import colored
import signal, argparse, re
import json
import logging

from sys import path as sys_path
sys_path.append('../../pyperplan')
from pyperplan.planner import _parse, _ground
from pyperplan.search import searchspace
#from pyperplan.src.pyperplan.planner import _parse, _ground
#from pyperplan.src.pyperplan.search import searchspace

from collections import deque
import random

# Type hints
State = Tuple[str]
Action = str
Transition = Tuple[State, Action, State]
Transitions = Tuple[Transition]


def get_logger(name: str, log_file: Path, level = logging.INFO):
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
    def denotation(self, state: O2DState):
        raise NotImplementedError('Role class is abstract')
    def set_denotations(self, states: List[O2DState]):
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
        return 'falsum_role'
    def denotation(self, state: O2DState):
        return set()

# Primitive roles are O2D roles
class O2DRole(Role):
    def __init__(self, role: str):
        super().__init__()
        self.role = role
    def complexity(self):
        return 1
    def __str__(self):
        return f'{self.role}'
    def denotation(self, state: O2DState):
        try:
            denotations = state.denotations[self.role]
        except KeyError:
            logger.error(f"Key role='{self.role}' not found in O2DState {state.denotations}")
            exit(1)
        return denotations

class InverseRole(Role):
    def __init__(self, role: str):
        assert type(role) != InverseRole
        super().__init__()
        self.role = role
    def complexity(self):
        return 1 + self.role.complexity()
    def __str__(self):
        return f'inv_lp_{self.role}_rp'
    def denotation(self, state: O2DState):
        denotation = self.role.denotation(state)
        return set([ (b, a) for (a, b) in denotation ])

class TransitiveClosureRole(Role):
    def __init__(self, role: Role):
        assert type(role) != TransitiveClosureRole
        super().__init__()
        self.role = role
    def complexity(self):
        return 1 + self.role.complexity()
    def __str__(self):
        return f'tc_lp_{self.role}_rp'
    def denotation(self, state: O2DState):
        role = self.role.denotation(state)
        raise NotImplementedError('TransitiveClosureRole::denotation()')

class CompositionRole(Role):
    def __init__(self, role1: Role, role2: Role):
        super().__init__()
        self.role1 = role1
        self.role2 = role2
    def complexity(self):
        return 1 + self.role1.complexity() + self.role2.complexity()
    def __str__(self):
        return f'{self.role1}_COMP_{self.role2}'
    def denotation(self, state: O2DState):
        role1 = self.role1.denotation(state)
        role2 = self.role2.denotation(state)
        med = [ obj for (_, obj) in role1 ]
        return set([ (x1,y2) for m in med for (x1,x2) in role1 for (y1,y2) in role2 if x2 == m and y1 == m and x1 != y2 ]) # CHECK: avoid repeated args?

class ConjunctiveRole(Role):
    def __init__(self, role1: Role, role2: Role):
        assert type(role1) != FalsumRole
        assert type(role2) != FalsumRole
        assert str(role1) != str(role2)
        super().__init__()
        self.role_set = set([ role1, role2 ])
    def complexity(self):
        return 1 + sum([ c.complexity() for c in self.role_set ])
    def __str__(self):
        return f'inter_lp_{"_sep_".join(sorted([ str(c) for c in self.role_set ]))}_rp'
    def denotation(self, state: O2DState):
        denotations = [ c.denotation(state) for c in self.role_set ]
        return set.intersection(*denotations)

class DisjunctiveRole(Role):
    def __init__(self, role1: Role, role2: Role):
        assert type(role1) != FalsumRole
        assert type(role2) != FalsumRole
        assert str(role1) != str(role2)
        super().__init__()
        self.role_set = set([ role1, role2 ])
    def complexity(self):
        return 1 + sum([ c.complexity() for c in self.role_set ])
    def __str__(self):
        return f'union_lp_{"_".join([ str(c) for c in self.role_set ])}_rp'
    def denotation(self, state: O2DState):
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
    def denotation(self, state: O2DState):
        raise NotImplementedError('Concept class is abstract')
    def set_denotations(self, states: List[O2DState]):
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
    def denotation(self, state: O2DState):
        return set()

class VerumConcept(Concept):
    def __init__(self):
        super().__init__()
    def complexity(self):
        return 0
    def __str__(self):
        return 'verum'
    def denotation(self, state: O2DState):
        return state.objects

# Primitive concepts are O2D concepts
class O2DConcept(Concept):
    def __init__(self, concept: str):
        super().__init__()
        self.concept = concept
    def complexity(self):
        return 1
    def __str__(self):
        return str(self.concept)
    def denotation(self, state: O2DState):
        try:
            state_denotation = state.denotations[self.concept]
            if state_denotation and len(next(iter(state_denotation))) != 1:
                raise ValueError(f'Unexpected O2DConcept denotation: concept={self}/{state_denotation}')
        except KeyError:
            logger.error(f"Key concept='{self.concept}' not found in O2DState {state_denotation}")
            exit(1)
        return set([ obj for (obj,) in state_denotation ])

class NegatedConcept(Concept):
    def __init__(self, concept: Concept):
        assert type(concept) not in [ FalsumConcept, VerumConcept ]
        assert type(concept) != NegatedConcept
        super().__init__()
        self.concept = concept
    def complexity(self):
        return 1 + self.concept.complexity()
    def __str__(self):
        return f'not_lp_{self.concept}_rp'
    def denotation(self, state: O2DState):
        subset = self.concept.denotation(state)
        return set([ obj for obj in state.objects if obj not in subset ])

class ConjunctiveConcept(Concept):
    def __init__(self, concept1: Concept, concept2: Concept):
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
        return f'inter_lp_{"_sep_".join(sorted([ str(c) for c in self.concept_set ]))}_rp'
    def denotation(self, state: O2DState):
        denotations = [ c.denotation(state) for c in self.concept_set ]
        return set.intersection(*denotations)

class DisjunctiveConcept(Concept):
    def __init__(self, concept1: Concept, concept2: Concept):
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
    def denotation(self, state: O2DState):
        denotations = [ c.denotation(state) for c in self.concept_set ]
        return set.union(*denotations)

# Existential quantification
class ERConcept(Concept):
    def __init__(self, role: Role, concept: Concept):
        assert type(role) != FalsumRole
        assert type(concept) != FalsumConcept
        super().__init__()
        self.role = role
        self.concept = concept
    def complexity(self):
        return 1 + self.role.complexity() + self.concept.complexity()
    def __str__(self):
        return f'er_lp_{self.role}_sep_{self.concept}_rp'
    def denotation(self, state: O2DState):
        # E[R.C] = { x : there is y such that R(x,y) and C(y) }
        role = self.role.denotation(state)
        concept = self.concept.denotation(state)
        return set([ x for (x, y) in role if y in concept ])

# Cardinality restriction
class CardinalityConcept(Concept):
    def __init__(self, role: Role, n: int):
        assert type(role) != FalsumRole
        super().__init__()
        self.role = role
        self.n = n
    def complexity(self):
        return 1 + self.role.complexity()
    def __str__(self):
        return f'card{self.n}_lp_{self.role}_rp'
    def denotation(self, state: O2DState):
        # Card[R.n] = { x : #{ y : R(x,y) } == n }
        role = self.role.denotation(state)
        return set([ x for (x, y) in role if len([(a, b) for (a, b) in role if a == x ]) == self.n ])

# Role restrictions (full, left and right) using concepts
class FullRestrictionRole(Role):
    def __init__(self, role: Role, lconcept: Concept, rconcept: Concept):
        assert type(role) != FalsumRole
        assert type(lconcept) not in [ FalsumConcept, VerumConcept ]
        assert type(rconcept) not in [ FalsumConcept, VerumConcept ]
        super().__init__()
        self.role = role
        self.lconcept = lconcept
        self.rconcept = rconcept
    def complexity(self):
        return 1 + self.role.complexity() + self.lconcept.complexity() + self.rconcept.complexity()
    def __str__(self):
        return f'fr_lp_{self.lconcept}_sep_{self.role}_sep_{self.rconcept}_rp'
    def denotation(self, state: O2DState):
        # FR[LC.R.RC] = { (x,y) : R(x,y) & LC(x) & RC(y) }
        role = self.role.denotation(state)
        lconcept = self.lconcept.denotation(state)
        rconcept = self.rconcept.denotation(state)
        return set([ (x, y) for (x, y) in role if x in lconcept and y in rconcept ])

class RightRestrictionRole(Role):
    def __init__(self, role: Role, rconcept: Concept):
        assert type(role) != FalsumRole
        assert type(rconcept) not in [ FalsumConcept, VerumConcept ]
        super().__init__()
        self.role = role
        self.rconcept = rconcept
    def complexity(self):
        return 1 + self.role.complexity() + self.rconcept.complexity()
    def __str__(self):
        return f'rr_lp_{self.role}_sep_{self.rconcept}_rp'
    def denotation(self, state: O2DState):
        # RR[R.RC] = { (x,y) : R(x,y) & RC(y) }
        role = self.role.denotation(state)
        rconcept = self.rconcept.denotation(state)
        return set([ (x, y) for (x, y) in role if y in rconcept ])

class LeftRestrictionRole(Role):
    def __init__(self, role: Role, lconcept: Concept):
        assert type(role) != FalsumRole
        assert type(lconcept) not in [ FalsumConcept, VerumConcept ]
        super().__init__()
        self.role = role
        self.lconcept = lconcept
    def complexity(self):
        return 1 + self.role.complexity() + self.lconcept.complexity()
    def __str__(self):
        return f'lr_lp_{self.role}_sep_{self.lconcept}_rp'
    def denotation(self, state: O2DState):
        # LR[LC.R] = { (x,y) : R(x,y) & LC(x) }
        role = self.role.denotation(state)
        lconcept = self.lconcept.denotation(state)
        return set([ (x, y) for (x, y) in role if x in lconcept ])

# Predicates:
# - nullary predicates: (C \subseteq C') for concepts C and C'
# - unary predicates: C(x) for concept C
# - binary predicates: R(x,y) for role R
class Predicate(object):
    def __init__(self, arity):
        self.arity = arity
        self.denotations = None
    def complexity(self):
        raise NotImplementedError('Predicate class is abstract')
    def __str__(self):
        raise NotImplementedError('Predicate class is abstract')
    def denotation(self, state: O2DState):
        raise NotImplementedError('Predicate class is abstract')
    def set_denotations(self, states: List[O2DState]):
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
    def __init__(self, concept1: Concept, concept2: Concept):
        super().__init__(0)
        self.concept1 = concept1
        self.concept2 = concept2
    def complexity(self):
        return 1 + self.concept1.complexity() + self.concept2.complexity()
    def __str__(self):
        return f'{self.concept1}_SUBSET_{self.concept2}'
    def denotation(self, state: O2DState):
        assert False
        d1 = self.concept1.denotation(state)
        d2 = self.concept2.denotation(state)
        return d1.issubset(d2)
    def set_denotations(self, states: List[O2DState]):
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
    def __init__(self, concept: Concept):
        super().__init__(1)
        self.concept = concept
    def complexity(self):
        return self.concept.complexity()
    def __str__(self):
        return str(self.concept)
    def denotation(self, state: O2DState):
        assert False
        return self.concept.denotation(state)
    def set_denotations(self, states: List[O2DState]):
        if self.denotations == None:
            self.concept.set_denotations(states)
            self.denotations = list(map(lambda x: set([ (obj,) for obj in x ]), self.concept.denotations))
    def clear_denotations(self):
        self.denotations = None

class BinaryPredicate(Predicate):
    def __init__(self, role: Role):
        super().__init__(2)
        self.role = role
    def complexity(self):
        return self.role.complexity()
    def __str__(self):
        return str(self.role)
    def denotation(self, state: O2DState):
        assert False
        return self.role.denotation(state)
    def set_denotations(self, states: List[O2DState]):
        if self.denotations == None:
            self.role.set_denotations(states)
            self.denotations = self.role.denotations
    def clear_denotations(self):
        self.denotations = None


# Generation of roles
def roles_unary(role: Role, ctors):
    new_roles = []
    for ctor in ctors:
        if ctor[0] == 'Role' and ctor[1] == 'None':
            try:
                new_roles.append(ctor[2](role))
            except AssertionError:
                pass
    return new_roles

def roles_for_pair(pair, roles: List[Role], ctors):
    new_roles = []
    for ctor in ctors:
        if ctor[0] == 'Role' and ctor[1] == 'Role':
            try:
                new_roles.append(ctor[2](roles[pair[0]], roles[pair[1]]))
            except AssertionError:
                pass
    return new_roles

def generate_roles(primitive: List[Role], states: List[O2DState], complexity_bound: int, ctors):
    roles = []
    discarded = []
    role_names = set()

    # add primitive roles to new_roles while pruning subsumed ones
    new_roles = []
    for r in primitive:
        r.set_denotations(states)
        i, j = subsumed(r, [ new_roles ])
        if i == -1:
            logger.debug(colored(f'+++ New role {r}/{r.complexity()}', 'magenta'))
            new_roles.append(r)
            role_names.add(str(r))
        elif r.complexity() >= new_roles[j].complexity():
            logger.debug(f'Role {r}/{r.complexity()} subsumed by {new_roles[j]}/{new_roles[j].complexity()}')
            discarded.append(r)
        else:
            logger.debug(f'Role {r}/{r.complexity()} subsumes previous {new_roles[j]}/{new_roles[j].complexity()}')
            logger.debug(colored(f'+++ Remove role {new_roles[j]}/{new_roles[j].complexity()}', 'blue'))
            logger.debug(colored(f'+++ New role {r}/{r.complexity()}', 'blue'))
            discarded.append(new_roles[j])
            new_roles[j] = r

    iteration = 0
    while new_roles:
        iteration += 1
        logger.info(colored(f'*** Roles: iter={iteration}, #roles={len(roles)}, #subsumed={len(discarded)}, #new_roles={len(new_roles)}', 'magenta'))
        fresh_roles = []

        # roles defined by single role in new_roles
        for role in new_roles:
            for r in roles_unary(role, ctors):
                if r.complexity() <= complexity_bound and str(r) not in role_names:
                    r.set_denotations(states)
                    ext_roles = [ fresh_roles, new_roles, roles ]
                    i, j = subsumed(r, ext_roles)
                    if i == -1:
                        logger.debug(colored(f'+++ New role {r}/{r.complexity()}', 'magenta'))
                        fresh_roles.append(r)
                        role_names.add(str(r))
                    elif r.complexity() >= ext_roles[i][j].complexity():
                        logger.debug(f'Role {r}/{r.complexity()} subsumed by {ext_roles[i][j]}/{ext_roles[i][j].complexity()}')
                        discarded.append(r)
                    else:
                        logger.debug(f'Role {r}/{r.complexity()} subsumes previous {ext_roles[i][j]}/{ext_roles[i][j].complexity()}')
                        logger.debug(colored(f'+++ Remove role {ext_roles[i][j]}/{ext_roles[i][j].complexity()}', 'blue'))
                        logger.debug(colored(f'+++ New role {r}/{r.complexity()}', 'blue'))
                        discarded.append(ext_roles[i][j])
                        ext_roles[i][j] = r

        # roles that require two roles but at least one role must be in new_roles
        new_indices = set(range(len(new_roles)))
        roles.extend(new_roles)
        role_names.union(set([ str(c) for c in new_roles ]))
        for pair in product(range(len(roles)), repeat=2):
            if pair[0] in new_indices or pair[1] in new_indices:
                for r in roles_for_pair(pair, roles, ctors):
                    if r.complexity() <= complexity_bound and str(r) not in role_names:
                        r.set_denotations(states)
                        ext_roles = [ fresh_roles, new_roles, roles ]
                        i, j = subsumed(r, ext_roles)
                        if i == -1:
                            logger.debug(colored(f'+++ New role {r}/{r.complexity()}', 'magenta'))
                            fresh_roles.append(r)
                            role_names.add(str(r))
                        elif r.complexity() >= ext_roles[i][j].complexity():
                            logger.debug(f'Role {r}/{r.complexity()} subsumed by {ext_roles[i][j]}/{ext_roles[i][j].complexity()}')
                            discarded.append(r)
                        else:
                            logger.debug(f'Role {r}/{r.complexity()} subsumes previous {ext_roles[i][j]}/{ext_roles[i][j].complexity()}')
                            logger.debug(colored(f'+++ Remove role {ext_roles[i][j]}/{ext_roles[i][j].complexity()}', 'blue'))
                            logger.debug(colored(f'+++ New role {r}/{r.complexity()}', 'blue'))
                            discarded.append(ext_roles[i][j])
                            ext_roles[i][j] = r

        new_roles = fresh_roles

    logger.info(colored(f'*** Roles: #roles={len(roles)}, #subsumed={len(discarded)}', 'magenta'))
    return roles

# Generation of concepts
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

def concepts_unary(concept: Concept, ctors):
    new_concepts = []
    for ctor in ctors:
        if ctor[0] == 'Concept' and ctor[1] == 'None':
            try:
                new_concepts.append(ctor[2](concept))
            except AssertionError:
                pass
    return new_concepts

def concepts_for_pair(pair, concepts: List[Concept], ctors):
    new_concepts = []
    for ctor in ctors:
        if ctor[0] == 'Concept' and ctor[1] == 'Concept':
            try:
                new_concepts.append(ctor[2](concepts[pair[0]], concepts[pair[1]]))
            except AssertionError:
                pass
    return new_concepts

def generate_concepts(primitive: List[Concept], roles: List[Role], states: List[O2DState], complexity_bound: int, ctors):
    concepts = []
    discarded = []
    concept_names = set()

    # add primitive concepts to new_concepts while pruning subsumed ones
    new_concepts = []
    for c in primitive:
        c.set_denotations(states)
        i, j = subsumed(c, [ new_concepts ])
        if i == -1:
            logger.debug(colored(f'+++ New concept {c}/{c.complexity()}', 'green'))
            new_concepts.append(c)
            concept_names.add(str(c))
        elif c.complexity() >= new_concepts[j].complexity():
            logger.debug(f'Concept {c}/{c.complexity()} subsumed by {new_concepts[j]}/{new_concepts[j].complexity()}')
            discarded.append(c)
        else:
            logger.debug(f'Concept {c}/{c.complexity()} subsumes previous {new_concepts[j]}/{new_concepts[j].complexity()}')
            logger.debug(colored(f'+++ Remove concept {new_concepts[j]}/{new_concepts[j].complexity()}', 'blue'))
            logger.debug(colored(f'+++ New concept {c}/{c.complexity()}', 'blue'))
            discarded.append(new_concepts[j])
            new_concepts[j] = c

    iteration = 0
    while new_concepts:
        iteration += 1
        logger.info(colored(f'*** Concepts: iter={iteration}, #concepts={len(concepts)}, #subsumed={len(discarded)}, #new_concepts={len(new_concepts)}', 'green'))
        fresh_concepts = []

        # concepts defined by single concept in new_concepts
        for concept in new_concepts:
            for c in concepts_unary(concept, ctors) + concepts_with_roles(ctors, concept, roles):
                if c.complexity() <= complexity_bound and str(c) not in concept_names:
                    c.set_denotations(states)
                    ext_concepts = [ fresh_concepts, new_concepts, concepts ]
                    i, j = subsumed(c, ext_concepts)
                    if i == -1:
                        logger.debug(colored(f'+++ New concept {c}/{c.complexity()}', 'green'))
                        fresh_concepts.append(c)
                        concept_names.add(str(c))
                    elif c.complexity() >= ext_concepts[i][j].complexity():
                        logger.debug(f'Concept {c}/{c.complexity()} subsumed by {ext_concepts[i][j]}/{ext_concepts[i][j].complexity()}')
                        discarded.append(c)
                    else:
                        logger.debug(f'Concept {c}/{c.complexity()} subsumes previous {ext_concepts[i][j]}/{ext_concepts[i][j].complexity()}')
                        logger.debug(colored(f'+++ Remove concept {ext_concepts[i][j]}/{ext_concepts[i][j].complexity()}', 'blue'))
                        logger.debug(colored(f'+++ New concept {c}/{c.complexity()}', 'blue'))
                        discarded.append(ext_concepts[i][j])
                        ext_concepts[i][j] = c

        # concepts that require two concepts but at least one concept must be in new_concepts
        new_indices = set(range(len(new_concepts)))
        concepts.extend(new_concepts)
        concept_names.union(set([ str(c) for c in new_concepts ]))
        for pair in product(range(len(concepts)), repeat=2):
            if pair[0] != pair[1] and (pair[0] in new_indices or pair[1] in new_indices):
                #logger.info(f'Trying pair {pair}: c1={concepts[pair[0]]}, c2={concepts[pair[1]]}')
                for c in concepts_for_pair(pair, concepts, ctors):
                    if c.complexity() <= complexity_bound and str(c) not in concept_names:
                        c.set_denotations(states)
                        ext_concepts = [ fresh_concepts, concepts ]
                        i, j = subsumed(c, ext_concepts)
                        if i == -1:
                            logger.debug(colored(f'+++ New concept {c}/{c.complexity()}', 'green'))
                            fresh_concepts.append(c)
                            concept_names.add(str(c))
                        elif c.complexity() >= ext_concepts[i][j].complexity():
                            logger.debug(f'Concept {c}/{c.complexity()} subsumed by {ext_concepts[i][j]}/{ext_concepts[i][j].complexity()}')
                            discarded.append(c)
                        else:
                            logger.debug(f'Concept {c}/{c.complexity()} subsumes previous {ext_concepts[i][j]}/{ext_concepts[i][j].complexity()}')
                            logger.debug(colored(f'+++ Remove concept {ext_concepts[i][j]}/{ext_concepts[i][j].complexity()}', 'blue'))
                            logger.debug(colored(f'+++ New concept {c}/{c.complexity()}', 'blue'))
                            discarded.append(ext_concepts[i][j])
                            ext_concepts[i][j] = c

        new_concepts = fresh_concepts

    logger.info(colored(f'*** Concepts: #concepts={len(concepts)}, #subsumed={len(discarded)}', 'green'))
    return concepts

def generate_role_restrictions(roles: List[Role], concepts: List[Concept], primitive_concepts: List[Concept], states: List[O2DState], complexity_bound: int):
    new_roles = []
    discarded = []
    role_names = set()
    for role in roles:
        if type(role) == FalsumRole: continue
        for concept in concepts:
            if type(concept) in [ FalsumConcept, VerumConcept ]: continue
            #logger.info(f"Trying role '{role}' with concept '{concept}'")
            for r in [ RightRestrictionRole(role, concept), LeftRestrictionRole(role, concept) ]:
                if r.complexity() <= complexity_bound:
                    r.set_denotations(states)
                    ext_roles = [ new_roles, roles ]
                    i, j = subsumed(r, ext_roles)
                    if i == -1:
                        logger.info(colored(f'+++ New role {r}/{r.complexity()}', 'magenta'))
                        new_roles.append(r)
                        role_names.add(str(r))
                    elif r.complexity() >= ext_roles[i][j].complexity():
                        logger.info(f'Role {r}/{r.complexity()} subsumed by {ext_roles[i][j]}/{ext_roles[i][j].complexity()}')
                        discarded.append(r)
                    else:
                        logger.info(f'Role {r}/{r.complexity()} subsumes previous {ext_roles[i][j]}/{ext_roles[i][j].complexity()}')
                        logger.info(colored(f'+++ Remove role {ext_roles[i][j]}/{ext_roles[i][j].complexity()}', 'blue'))
                        logger.info(colored(f'+++ New role {r}/{r.complexity()}', 'blue'))
                        discarded.append(ext_roles[i][j])
                        ext_roles[i][j] = r

        for lconcept, rconcept in product(primitive_concepts, primitive_concepts):
            if type(lconcept) in [ FalsumConcept, VerumConcept ]: continue
            if type(rconcept) in [ FalsumConcept, VerumConcept ]: continue
            r = FullRestrictionRole(role, lconcept, rconcept)
            if r.complexity() <= complexity_bound:
                r.set_denotations(states)
                ext_roles = [ new_roles, roles ]
                i, j = subsumed(r, ext_roles)
                if i == -1:
                    logger.info(colored(f'+++ New role {r}/{r.complexity()}', 'magenta'))
                    new_roles.append(r)
                    role_names.add(str(r))
                elif r.complexity() >= ext_roles[i][j].complexity():
                    logger.info(f'Role {r}/{r.complexity()} subsumed by {ext_roles[i][j]}/{ext_roles[i][j].complexity()}')
                    discarded.append(r)
                else:
                    logger.info(f'Role {r}/{r.complexity()} subsumes previous {ext_roles[i][j]}/{ext_roles[i][j].complexity()}')
                    logger.info(colored(f'+++ Remove role {ext_roles[i][j]}/{ext_roles[i][j].complexity()}', 'blue'))
                    logger.info(colored(f'+++ New role {r}/{r.complexity()}', 'blue'))
                    discarded.append(ext_roles[i][j])
                    ext_roles[i][j] = r

    return new_roles

# Generation of predicates
def generate_predicates(o2d_concepts_and_roles: Dict,
                        states: List[O2DState],
                        max_complexity: int,
                        complexity_measure: str,
                        cardinality_restrictions: bool,
                        role_restrictions: bool,
                        **kwargs):
    # Roles
    role_ctors = [ ('Role', 'None', InverseRole), ('Role', 'Role', CompositionRole) ]
    primitive_roles = [ FalsumRole() ]
    primitive_roles.extend([ O2DRole(name) for name in o2d_concepts_and_roles['roles'] ])
    roles = generate_roles(primitive_roles, states, max_complexity, role_ctors)
    for i, r in enumerate(roles):
        logger.debug(f'Role r{i}.{r}/{r.complexity()}')

    # Concepts
    concept_ctors = [ ('Concept', 'None', NegatedConcept), ('Concept', 'Concept', ConjunctiveConcept), ('Role', 'Concept', ERConcept) ]
    primitive_concepts = [ FalsumConcept(), VerumConcept() ]
    primitive_concepts.extend([ O2DConcept(name) for name in o2d_concepts_and_roles['concepts'] ])
    concepts = generate_concepts(primitive_concepts, roles, states, max_complexity, concept_ctors)
    for i, c in enumerate(concepts):
        logger.debug(f'Concept c{i}.{c}/{c.complexity()}')

    # Cardinality restrictions: construct cardinality concepts
    if cardinality_restrictions:
        cardinality_concepts = [CardinalityConcept(role, n) for role in primitive_roles for n in [1, 2] if type(role) is not FalsumRole]
        #primitive_concepts.extend(cardinality_concepts)
    else:
        cardinality_concepts = []

    # Restriction of roles
    if role_restrictions:
        roles.extend(generate_role_restrictions(primitive_roles, concepts, primitive_concepts + cardinality_concepts, states, 2 + max_complexity))

    # Cardinality restrictions: extend concepts with conjunctions of primitive concepts and cardinality concepts
    if cardinality_restrictions:
        concepts.extend(generate_concepts(primitive_concepts+cardinality_concepts, [], states, 2 + max_complexity, [('Concept', 'Concept', ConjunctiveConcept)]))

    # Predicates:
    # - nullary predicates: (C \subseteq C') for concepts C and C'
    # - unary predicates: C(x) for concept C
    # - binary predicates: R(x,y) for role R
    predicates = []

    # nullary predicates
    for pair in product(range(len(concepts)), repeat=2):
        c1, c2 = concepts[pair[0]], concepts[pair[1]]
        if type(c1) != FalsumConcept and type(c2) != VerumConcept and c1 != c2:
            p = NullaryPredicate(c1, c2)
            if p.complexity() <= max_complexity:
                p.set_denotations(states)
                if not p.is_constant(): # CHECK: is it safe to remove nullary predicates in this way?
                    predicates.append(p)
                else:
                    logger.debug(f'Predicate {p}/{p.arity} is constant; pruned')

    # unary predicates
    for c in concepts:
        if type(c) != NegatedConcept:
            p = UnaryPredicate(c)
            p.set_denotations(states)
            if True or not p.is_constant(): # CHECK: cannot prune using this condition since all static info dissapears (subsumption)
                predicates.append(p)
                logger.debug(f'UnaryPredicate: {p} with complexity {p.complexity()}')
            else:
                logger.debug(f'Predicate {p}/{p.arity} is constant; pruned')

    # binary predicates
    for r in roles:
        p = BinaryPredicate(r)
        p.set_denotations(states)
        if True or not p.is_constant(): # CHECK: cannot prune using this condition since all static info dissapears (subsumption)
            predicates.append(p)
        else:
            logger.debug(f'Predicate {p}/{p.arity} is constant; pruned')

    for i, p in enumerate(predicates):
        logger.debug(f'Predicate p{i}.{p}/{p.arity}')

    return roles, concepts, predicates

# Obtain O2D states from states
def apply_rule(ext_state: Dict, pred: str, arity: int, head: str, body: List):
    assert pred == head[:head.index('(')], f"Rule head doesn't match predicate '{pred}' in registry"
    body_keys = [ atom[:atom.index('(')] for atom in body ]
    body_vars = [ atom[1+atom.index('('):-1].split(',') for atom in body ]
    values = [ ext_state[key] if key in ext_state else set() for key in body_keys ]
    head_vars = head[1+head.index('('):-1].split(',')
    logger.debug(f'apply_rule: head={head}, vars={head_vars}, body={body}, keys={body_keys}, vars={body_vars}, values={values}')
    assert len(head_vars) == arity, f"Number of variables in rule head '{head}' doesn't match declared arity '{pred}/{arity}'"

    something_added = False
    for tup in product(*values): # CHECK: This is full joint of denotations of atoms in body, it could be very large!
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

        # if trigger, add atom in head
        if trigger:
            atom_args = tuple([ next(iter(assignment[var])) if var.isupper() else var for var in head_vars ])
            if atom_args not in ext_state[pred] and len(set(atom_args)) == len(head_vars): # CHECK: avoid repeated args?
                something_added = True
                ext_state[pred].add(atom_args)
                logger.debug(colored(f'trigger: pred={pred}/{arity}, head={head}, body={body}, args={args}, assignment={assignment}, atom_args={atom_args}', 'blue'))
    return something_added

def apply_rules_for_pred(ext_state: Dict, pred: str, arity: int, rules: List) -> bool:
    if pred not in ext_state: ext_state[pred] = set()
    something_added = False
    some_change = True
    while some_change:
        some_change = False
        for head, body in rules:
            if apply_rule(ext_state, pred, arity, head, body):
                something_added = True
                some_change = True
    return something_added

def apply_rules(ext_state: Dict, rules):
    something_added = True
    while something_added:
        something_added = False
        for pred in sorted(rules.keys()):
            assert len(pred) > 2 and pred[-2] == '/', f"Unexpected predicate name '{pred}' in registry (format is <pred_name>/<arity>)"
            pred_name = pred[:-2]
            pred_arity = int(pred[-1:])
            if apply_rules_for_pred(ext_state, pred_name, pred_arity, rules[pred]):
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

def construct_map_function(symb2spatial: Dict, objects) -> Callable:
    # construct dict for objects
    object_dict = dict(object=set())
    for obj in objects:
        objtype = str(objects[obj])
        if objtype not in object_dict: object_dict[objtype] = set()
        object_dict['object'].add((obj,))
        object_dict[objtype].add((obj,))
    logger.info(object_dict)

    def map_func(state):
        ext_state = get_dict_from_state(state)
        ext_state.update(object_dict)

        # add constants (if any)
        ext_state['constant'] = set()
        if 'constants' in symb2spatial:
            for obj in symb2spatial['constants']:
                ext_state['constant'].add((obj,))
                ext_state['object'].add((obj,))

        # add facts (if any)
        if 'facts' in symb2spatial:
            for fact in symb2spatial['facts']:
                if fact[0] not in ext_state: ext_state[fact[0]] = set()
                ext_state[fact[0]].add(tuple(fact[1]))

        # apply rules in symb2spatial profile to obtain visualization
        apply_rules(ext_state, symb2spatial['rules'])

        return ext_state
    return map_func

def get_o2d_state_from_ext_state(i: int, ext_state: Dict, primitive_concepts_and_roles: List[str]) -> O2DState:
    objects = set([ obj[0] for obj in ext_state['object'] ])
    denotations = dict()
    for name in primitive_concepts_and_roles:
        denotations[name] = ext_state[name] if name in ext_state else set()
    return O2DState(i, objects, denotations)

def get_o2d_states(problems, list_transitions: List[Transitions], symb2spatial: Dict, o2d_concepts_and_roles: Dict):
    assert len(problems) == len(list_transitions)
    primitive_concepts_and_roles = o2d_concepts_and_roles['concepts'] + o2d_concepts_and_roles['roles']
    states = []
    o2d_states = []
    offsets = dict()
    states_dict = []
    for i in range(len(list_transitions)):
        start_time = timer()
        seen_states = set()
        states_dict.append(dict())
        offsets[i] = len(o2d_states)
        objects = problems[i].objects
        map_func = construct_map_function(symb2spatial, objects)
        for (src, action, dst) in list_transitions[i]:
            for state in [src, dst]:
                if state not in seen_states:
                    assert state not in states_dict[i]
                    states_dict[i][state] = len(states)
                    seen_states.add(state)
                    states.append(state)
                    ext_state = map_func(state)
                    o2d_states.append(get_o2d_state_from_ext_state(i, ext_state, primitive_concepts_and_roles))
        elapsed_time = timer() - start_time
        logger.info(f'{problems[i].name}: {len(states) - offsets[i]} state(s) in {elapsed_time:.3f} second(s)')
    assert len(states) == len(o2d_states)
    return states, states_dict, o2d_states, offsets

# Planner for calculating reachable states
def get_PDDL_files(path: Path):
    files = sorted([ fname for fname in path.iterdir() if fname.is_file() and fname.name.endswith('.pddl') ])
    domain_filenames = [ fname for fname in files if fname.name == 'domain.pddl' ]
    problem_filenames = [ fname for fname in files if fname.name != 'domain.pddl' ]
    assert len(domain_filenames) == 1
    return domain_filenames[0], problem_filenames

def get_tasks(domain_filename, problem_filenames):
    remove_statics_from_initial_state = False
    remove_irrelevant_operators = False
    problems = [ _parse(str(domain_filename), str(fname)) for fname in problem_filenames ]
    tasks = [ _ground(problem, remove_statics_from_initial_state, remove_irrelevant_operators) for problem in problems ]
    for task, fname in zip(tasks, problem_filenames):
        setattr(task, 'fname', fname.name)
    return problems, tasks

def get_transitions(tasks: List, logger) -> List[Transitions]:
    # for each task, do a BFS exploration to discover all transitions in task
    list_transitions = []
    for task in tasks:
        start_time = timer()
        explored_transitions = set()
        initial_state = task.initial_state
        logger.debug(f'{task.name} (in {task.fname}): initial_state={initial_state}')

        queue = deque()
        queue.append(searchspace.make_root_node(initial_state))
        while queue:
            node = queue.popleft()
            src = tuple(sorted(node.state))
            logger.debug(f'{task.name}: node dequeued: state={src}')
            for operator, successor_state in task.get_successor_states(node.state):
                dst = tuple(sorted(successor_state))
                transition = (src, operator.name, dst)
                if transition not in explored_transitions:
                    explored_transitions.add(transition)
                    queue.append(searchspace.make_child_node(node, operator, successor_state))
                    logger.debug(f'{task.name}: add transition={transition}')
        list_transitions.append(tuple(sorted(explored_transitions)))

        elapsed_time = timer() - start_time
        logger.info(f'{task.name}: {len(explored_transitions)} edge(s) in {elapsed_time:.3f} second(s)')

    return list_transitions

def sample_transitions(tasks: List, max_k: int, canonical_func: Callable, logger) -> List[Transitions]:
    # similar to get_transitions() but keep record of "canonical transitions" seen,
    # and keep up to k transitions for each canonical transition. Successors states
    # are randomly shuffled before exploring them.
    canonical_func = construct_canonical_function(symb2spatial)
    list_sampled_transitions = []
    for task in tasks:
        start_time = timer()
        sampled_transitions = []
        canonical_transitions = {}
        explored_transitions = set()
        initial_state = task.initial_state
        logger.debug(f'{task.name} (in {task.fname}): initial_state={initial_state}')

        queue = deque()
        queue.append(searchspace.make_root_node(initial_state))
        while queue:
            node = queue.popleft()
            src = tuple(sorted(node.state))
            logger.debug(f'{task.name}: node dequeued: state={src}')
            successors = task.get_successor_states(node.state)
            random.shuffle(successors)
            for operator, successor_state in successors:
                dst = tuple(sorted(successor_state))
                transition = (src, operator.name, dst)
                if transition not in explored_transitions:
                    explored_transitions.add(transition)
                    c_transition = (canonical_func(src), canonical_func(dst))
                    num_instances = canonical_transitions.get(c_transition, 0)
                    if num_instances < max_k:
                        canonical_transitions[c_transition] = 1 + num_instances
                        sampled_transitions.append(transition)
                        logger.debug(f'{task.name}: add transition={transition}')
                    queue.append(searchspace.make_child_node(node, operator, successor_state))
        list_sampled_transitions.append(tuple(sorted(sampled_transitions)))

        elapsed_time = timer() - start_time
        logger.info(f'{task.name}: {len(explored_transitions)} edge(s), {len(canonical_transitions)} canonical edge(s), and {len(sampled_transitions)} sampled edge(s) in {elapsed_time:.3f} second(s)')

    return list_sampled_transitions

def construct_canonical_function(symb2spatial: Dict) -> Callable:
    assert 'canonical' in symb2spatial, f"Expecting 'canonical' entry in symb2spatial: {symb2spatial}"
    canonical_atoms = [ '(' + item.split('/')[0] + ' ' for item in symb2spatial['canonical'] ]
    def canonical_func(state: Set) -> Tuple:
        return tuple(sorted([ atom for atom in state if any(map(lambda x: atom.startswith(x), canonical_atoms)) ]))
    return canonical_func

def sample_transitions_with_ratio(list_transitions: List[Transitions], tasks: List, target_ratio: float, symb2state: Dict, logger) -> List[Transitions]:
    assert target_ratio >= 1
    start_time = timer()
    canonical_func = construct_canonical_function(symb2spatial)
    list_sampled_transitions = []
    for transitions, task in zip(list_transitions, tasks):
        # stores: canonical transitions, full states, and canonical states
        store_c_transitions = set()
        store_c_states = set()
        store_states = set()

        # shuffle transitions
        shuffled_transitions = list(transitions)
        random.shuffle(shuffled_transitions)

        # first pass, instantiate each canonical transition in some direction
        sampled_transitions = set()
        for transition in shuffled_transitions:
            c_src = canonical_func(transition[0])
            c_dst = canonical_func(transition[2])
            store_c_states.add(c_src)
            store_c_states.add(c_dst)
            if (c_src, c_dst) not in store_c_transitions:
                sampled_transitions.add(transition)
                store_c_transitions.add((c_src, c_dst))
                store_states.add(transition[0])
                store_states.add(transition[2])
        num_canonical_transitions = len(sampled_transitions)
        change = True
        ratio = 1.0

        # do more passes until ratio >= target_ratio
        while change and ratio < target_ratio:
            change = False
            random.shuffle(shuffled_transitions)
            for transition in shuffled_transitions:
                c_src = canonical_func(transition[0])
                c_dst = canonical_func(transition[2])
                if transition not in sampled_transitions:
                    sampled_transitions.add(transition)
                    ratio = len(sampled_transitions) / num_canonical_transitions
                    if ratio >= target_ratio: break
                    change = True
        sampled_transitions = tuple(sorted(sampled_transitions))
        list_sampled_transitions.append(sampled_transitions)
        logger.info(f'task {task.name} (in {task.fname}): #canonical={{states={len(store_c_states)}, transitions={num_canonical_transitions}}}, #sampled={{states={len(store_states)}, transitions={len(sampled_transitions)}, ratio={ratio}}}')

    logger.info(f'#sampled_transitions={sum(map(len, list_sampled_transitions))}, {timer() - start_time:.3f} elapsed second(s)')
    return list_sampled_transitions

# Write graph files (.lp)
def write_graph_file(predicates: List, slice_desc: Tuple, instance: int, states: List, states_dict: Dict,
                     transitions: Transitions, o2d_states: List[O2DState], graph_filename: Path, symb2spatial: Dict):
    start_time = timer()
    written_lines = 0
    with graph_filename.open('w') as fd:
        fd.write(f"% Problem {graph_filename.with_suffix('.pddl')}: {len(o2d_states)} node(s) and {len(transitions)} edge(s) [inst={instance}, slice={slice_desc}]\n")
        fd.write(f'instance({instance}).\n')
        logger.debug(f"% Problem {graph_filename.with_suffix('.pddl')}: {len(o2d_states)} node(s) and {len(transitions)} edge(s)")
        logger.debug(f'instance({instance}).')
        written_lines += 2

        # transitions
        fd.write('% Transitions\n')
        written_lines += 1
        for (src, action, dst) in transitions:
            src_index = states_dict[src] - slice_desc[0]
            dst_index = states_dict[dst] - slice_desc[0]
            label = action[1:-1].split(' ')[0]
            fd.write(f'tlabel({instance},({src_index},{dst_index}),{label}). % {action}\n')
            logger.debug(f'tlabel({instance},({src_index},{dst_index}),{label}). % {action}')
            written_lines += 1

        # states (nodes)
        fd.write('% Nodes\n')
        written_lines += 1
        for state in states:
            index = states_dict[state] - slice_desc[0]
            fd.write(f'node({instance},{index}).\n')
            logger.debug(f'node({instance},{index}).')
            written_lines += 1

        # constants
        fd.write('% Constants\n')
        written_lines += 1
        if 'constants' in symb2spatial:
            for obj in symb2spatial['constants']:
                fd.write(f'constant({obj}).\n')
                written_lines += 1

        # features (predicates)
        sorted_predicates = sorted(predicates, key=lambda x: str(x))
        fd.write('% Features (predicates)\n')
        written_lines += 1
        static_predicates = set()
        for p in sorted_predicates:
            fd.write(f'feature({p}).\n')
            logger.debug(f'feature({p}).')
            written_lines += 1
        for p in sorted_predicates:
            fd.write(f'f_arity({p},{p.arity}).\n')
            logger.debug(f'f_arity({p},{p.arity}).')
            written_lines += 1
        for p in sorted_predicates:
            fd.write(f'f_complexity({p},{p.complexity()}).\n')
            logger.debug(f'f_complexity({p},{p.complexity()}).')
            written_lines += 1
        for p in sorted_predicates:
            if p.is_constant_on_slice(slice_desc[0], slice_desc[1]):
                static_predicates.add(str(p))
                fd.write(f'f_static({instance},{p}).\n')
                logger.debug(f'f_static({instance},{p}).')
                written_lines += 1

        # valuations for static predicates
        fd.write('% Valuations for static predicates\n')
        written_lines += 1
        for p in sorted_predicates:
            if str(p) in static_predicates:
                tuples = p.denotations[slice_desc[0]]
                #logger.info(f'static: i={instance}, arity={p.arity}, p={p}, tuples={tuples}')
                if p.arity == 0:
                    assert tuples in [ False, True ], tuples
                    fd.write(f'fval({instance},({p},(null,)),{1 if tuples else 0}).\n')
                    written_lines += 1
                else:
                    for arg in sorted(tuples):
                        assert len(arg) == p.arity, f'Unexpected arity: arg={arg}, arity={p.arity}, tuples={tuples}, p={p}'
                        arg_str = f'({arg[0]},)' if len(arg) == 1 else f'({",".join(arg)})'
                        fd.write(f'fval({instance},({p},{arg_str}),1).\n')
                        #logger.info(f'fval({instance},({p},{arg_str}),1).')
                        written_lines += 1

        # valuations for dynamic predicates
        fd.write('% Valuations for dynamic predicates\n')
        written_lines += 1
        for i, (state, o2d_state) in enumerate(zip(states, o2d_states)):
            index = states_dict[state]
            index_normalized = index - slice_desc[0]
            assert slice_desc[0] <= index and index < slice_desc[1], f'Unexpected index={index} outside range'
            for p in predicates:
                if str(p) not in static_predicates:
                    tuples = p.denotations[index]
                    #logger.info(f'dynamic: i={instance}, index={index}/{index_normalized}, p={p}/{p.arity}, tuples={tuples}')
                    if p.arity == 0:
                        assert tuples in [ False, True ], tuples
                        fd.write(f'fval({instance},({p},(null,)),{index_normalized},{1 if tuples else 0}).\n')
                        written_lines += 1
                    else:
                        for arg in sorted(tuples):
                            assert len(arg) == p.arity, f'Unexpected arity: arg={arg}, arity={p.arity}'
                            arg_str = f'({arg[0]},)' if len(arg) == 1 else f'({",".join(arg)})'
                            fd.write(f'fval({instance},({p},{arg_str}),{index_normalized},1).\n')
                            #logger.info(f'fval({instance},({p},{arg_str}),{index_normalized},1).')
                            written_lines += 1
    elapsed_time = timer() - start_time
    logger.info(f'{graph_filename}: {written_lines} line(s) for instance {instance} [slice={slice_desc}] in {elapsed_time:.3f} second(s)')

def write_graph_files(predicates: List, states: List, states_dict: List[dict], list_transitions: List[Transitions], o2d_states: List[O2DState],
                      offsets: List[int], output_path: Path, problem_filenames: List[Path], symb2spatial: Dict):
    assert len(states) == len(o2d_states)
    assert len(list_transitions) == len(problem_filenames)
    for i, fname in enumerate(problem_filenames):
        beg, end = offsets[i], offsets[i+1] if i+1 in offsets else len(states)
        slice_states = states[beg:end]
        slice_o2d_states = o2d_states[beg:end]
        graph_filename = output_path / fname.with_suffix('.lp').name
        write_graph_file(predicates, (beg, end), i, slice_states, states_dict[i], list_transitions[i], slice_o2d_states, graph_filename, symb2spatial)

def get_o2d_concepts_and_roles(symb2spatial: Dict) -> Dict:
    assert 'o2d' in symb2spatial, "TEMPORAL CHECK (REMOVE AFTERWARDS): expecting 'o2d' record in registry" #CHECK
    o2d_concepts_and_roles = dict(raw=[], concepts=[], roles=[])
    o2d_concepts_and_roles['raw'] = sorted(symb2spatial['o2d'])
    o2d_concepts_and_roles['concepts'] = [ name[:-2] for name in o2d_concepts_and_roles['raw'] if name[-2:] == '/1' ]
    o2d_concepts_and_roles['roles'] = [ name[:-2] for name in o2d_concepts_and_roles['raw'] if name[-2:] == '/2' ]
    if not o2d_concepts_and_roles['concepts']: logger.warning('Empty primitive concepts')
    if not o2d_concepts_and_roles['roles']: logger.warning('Empty primitive roles')
    return o2d_concepts_and_roles

def _setup_seed(seed: int):
    random.seed(seed)
    return seed


if __name__ == '__main__':
    # set cmdline
    cmdline = ' '.join(argv)

    # setup timer and exec name
    entry_time = timer()
    exec_path = Path(argv[0]).parent
    exec_name = Path(argv[0]).stem

    # argument parser
    parser = argparse.ArgumentParser(description='Construct features and graphs from PDDL models.')

    # required arguments
    required = parser.add_argument_group('required arguments')
    required.add_argument('path', type=str, help="path to folder containing 'domain.pddl' and .pddl problem files (path name used as key into symb2spatial registry)")
    required.add_argument('max_complexity', type=int, help=f'max complexity for construction of concepts and rules (0=no limit)')

    # restrictions
    restrictions = parser.add_argument_group('restrictions')
    restrictions.add_argument('--cardinality_restrictions', action='store_true', help=f'toggle generation of cardinality restrictions')
    restrictions.add_argument('--role_restrictions', action='store_true', help=f'toggle generation of role restrictions')

    # sampled edges
    default_seed = 0
    sampled = parser.add_argument_group('sampling of edges (for tasks with multiple images):')
    sampled.add_argument('--max_k', type=int, default=0, help=f'maximum number of instances for each canonical edge (default 0 means disabled)')
    sampled.add_argument('--target_ratio', type=float, default=0, help=f'define target ratio for sampling edges (default 0 means disabled)')
    sampled.add_argument('--seed', type=int, default=default_seed, help=f'seed for random generator (default={default_seed})')

    # additional options
    default_debug_level = 0
    default_complexity_measure = 'sum'
    default_symb2spatial = exec_path / 'registry_symb2spatial.txt'
    other = parser.add_argument_group('additional options')
    other.add_argument('--debug_level', type=int, default=default_debug_level, help=f'set debug level (default={default_debug_level})')
    other.add_argument('--complexity_measure', type=str, choices=['sum', 'height'], default=default_complexity_measure, help=f"complexity measure (either sum or height, default='{default_complexity_measure}')")
    other.add_argument('--output_path', type=str, default=None, help=f'override default output_path')
    other.add_argument('--symb2spatial', type=str, default=default_symb2spatial, help=f"symb2spatial file (default='{default_symb2spatial}')")

    # parse arguments and setup seed
    args = parser.parse_args()
    _setup_seed(args.seed)

    # setup domain path and name
    domain_path = Path(args.path)
    domain_name = domain_path.name

    # create output folder`
    output_folder = f'{domain_name}_complexity={args.max_complexity}'
    if args.role_restrictions: output_folder += '_r_restr'
    if args.cardinality_restrictions: output_folder += '_c_restr'
    if args.max_k > 0: output_folder += f'_maxk={args.max_k}'
    if args.target_ratio > 0: output_folder += f'_ratio={args.target_ratio}'
    if args.seed != 0: output_folder += f'_s{args.seed}'
    output_path = (domain_path if args.output_path is None else Path(args.output_path)) / output_folder
    output_path_graphs = output_path / 'test'
    output_path.mkdir(parents=True, exist_ok=True)
    output_path_graphs.mkdir(parents=True, exist_ok=True)

    # setup logger
    log_file = output_path / 'log.txt'
    log_level = logging.INFO if args.debug_level == 0 else logging.DEBUG
    logger = get_logger(exec_name, log_file, log_level)
    logger.info(f'Call: {cmdline}')

    # load symb2spatial
    symb2spatial_filename = Path(args.symb2spatial)
    symb2spatial_registry = json.load(symb2spatial_filename.open('r'))

    # fetch symb2spatial for domain
    if domain_name not in symb2spatial_registry:
        logger.error(f"Domain '{domain_name}' not registered in symb2spatial '{symb2spatial_filename}'")
        exit(1)
    else:
        deferrals = []
        key = domain_name
        symb2spatial = symb2spatial_registry[key]
        while 'defer-to' in symb2spatial and symb2spatial['defer-to'] not in deferrals:
            next_key = symb2spatial['defer-to']
            deferrals.append(next_key)
            logger.info(colored(f"Deferral of '{key}' to '{next_key}' in '{symb2spatial_filename}'", 'blue'))
            symb2spatial = symb2spatial_registry[next_key]
            key = next_key
        if 'defer-to' in symb2spatial:
            logger.error(f"Circular deferrals in '{symb2spatial_filename}'")
            exit(-1)

    # get list of O2D concepts/roles
    o2d_concepts_and_roles = get_o2d_concepts_and_roles(symb2spatial)
    logger.info(f"O2D: raw={o2d_concepts_and_roles['raw']}, concepts={o2d_concepts_and_roles['concepts']}, roles={o2d_concepts_and_roles['roles']}")

    # load/process PDDL files
    start_time = timer()
    logger.info(colored(f'Parse and ground PDDL files...', 'red', attrs = [ 'bold' ]))
    domain_filename, problem_filenames = get_PDDL_files(domain_path)
    logger.info(f'PDDLs: domain={domain_filename}, problems={[ str(fname) for fname in problem_filenames ]}')
    problems, tasks = get_tasks(domain_filename, problem_filenames)
    elapsed_time = timer() - start_time
    logger.info(colored(f'{len(problems)} file(s) parsed and grounded in {elapsed_time:.3f} second(s)', 'blue'))

    start_time = timer()
    logger.info(colored(f'Generate transitions in PDDL files...', 'red', attrs = [ 'bold' ]))
    if args.max_k > 0:
        list_transitions = sample_transitions(tasks, args.max_k, symb2spatial, logger)
    else:
        list_transitions = get_transitions(tasks, logger)
        if args.target_ratio > 0:
            list_transitions = sample_transitions_with_ratio(list_transitions, tasks, args.target_ratio, symb2spatial, logger)
    elapsed_time = timer() - start_time
    logger.info(colored(f'{sum(map(lambda x: len(x), list_transitions))} edge(s) in {elapsed_time:.3f} second(s)', 'blue'))

    # remove tasks with no transitions
    good_tasks = [ i for i, transitions in enumerate(list_transitions) if len(transitions) > 0 ]
    if len(good_tasks) < len(list_transitions):
        bad_tasks = [ i for i in range(len(list_transitions)) if i not in good_tasks ]
        logger.info(colored(f'Removing {len(bad_tasks)} problem(s) that have zero transitions: {[ problem_filenames[i].name for i in bad_tasks ]}', 'red'))
    problem_filenames = [ problem_filenames[i] for i in good_tasks ]
    problems = [ problems[i] for i in good_tasks ]
    tasks = [ tasks[i] for i in good_tasks ]
    list_transitions = tuple([ list_transitions[i] for i in good_tasks ])

    # get O2D states
    start_time = timer()
    logger.info(colored(f'Generate O2D states...', 'red', attrs = [ 'bold' ]))
    states, states_dict, o2d_states, offsets = get_o2d_states(problems, list_transitions, symb2spatial, o2d_concepts_and_roles)
    elapsed_time = timer() - start_time
    logger.info(colored(f'{len(o2d_states)} state(s) in {sum(map(lambda x: len(x), list_transitions))} edge(s) in {elapsed_time:.3f} second(s)', 'blue'))

    # generate predicates
    start_time = timer()
    logger.info(colored(f'Generate predicates...', 'red', attrs = [ 'bold' ]))
    predicates_kwargs = {
        'max_complexity': args.max_complexity,
        'complexity_measure': args.complexity_measure,
        'cardinality_restrictions': args.cardinality_restrictions,
        'role_restrictions': args.role_restrictions
    }
    roles, concepts, predicates = generate_predicates(o2d_concepts_and_roles, o2d_states, **predicates_kwargs)
    elapsed_time = timer() - start_time
    logger.info(colored(f'[max-complexity={args.max_complexity}] {len(roles)} role(s), {len(concepts)} concept(s), and {len(predicates)} predicate(s) in {elapsed_time:.3f} second(s)', 'blue'))

    # write roles, concepts and predicates to file
    collection_filename = output_path / f'collection.txt'
    with collection_filename.open('w') as fd:
        for i, r in enumerate(roles):
            fd.write(f'Role r{i}.{r}/{r.complexity()}\n')
        fd.write('\n')
        for i, c in enumerate(concepts):
            fd.write(f'Concept c{i}.{c}/{c.complexity()}\n')
        fd.write('\n')
        for i, p in enumerate(predicates):
            fd.write(f'Predicate p{i}.{p}/{p.arity}\n')
    logger.info(colored(f'Roles, concepts, and predicates written to {collection_filename}', 'blue'))

    # Last thing is to produce .lp files
    start_time = timer()
    logger.info(colored(f'Write graph files...', 'red', attrs = [ 'bold' ]))
    write_graph_files(predicates, states, states_dict, list_transitions, o2d_states, offsets, output_path_graphs, problem_filenames, symb2spatial)
    elapsed_time = timer() - start_time
    logger.info(colored(f'{len(list_transitions)} file(s) written in {elapsed_time:.3f} second(s)', 'blue'))

    elapsed_time = timer() - entry_time
    logger.info(colored(f'All tasks completed in {elapsed_time:.3f} second(s)', 'blue'))

