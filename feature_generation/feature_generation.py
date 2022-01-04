import sys
from itertools import product, combinations

class Variable:
    def __init__(self, name):
        self.name = name
    def __str__(self):
        return "%s" % self.name

class Predicate:
    def __init__(self, name, arity):
        self.name = name
        self.arity = arity
    def __str__(self):
        return "%s" % self.name

class Atom:
    def __init__(self, predicate, vars):
        self.predicate = predicate
        self.vars = vars
        self.arity = len(vars)
        self.name = f"{self.predicate}({','.join(self.vars)})"
    def __str__(self):
        return self.name
    def __repr__(self):
        return self.name

class NegatedAtom:
    def __init__(self, predicate, vars):
        self.predicate = predicate
        self.vars = vars
        self.arity = len(vars)
        self.name = f"not {self.predicate}({','.join(self.vars)})"
    def __str__(self):
        return self.name
    def __repr__(self):
        return self.name

class CardinalityConstraint:
    '''
    Assumed to be the form: {pred(X,Y)}=N
    '''
    def __init__(self, atom, card=0):
        self.atom = atom
        self.cardinality = card # N
        self.name = f"{{{self.atom.name}}}={self.cardinality}"
    def __str__(self):
        return self.name
    def __repr__(self):
        return self.name

class ConditionalLiteral:
    '''
    Assumed to be of the form: pred_1(X_1,...X_n) : pred_2(Y_1,...,Y_i),..., pred_m(Z_1,...Z_j).
    '''
    def __init__(self, head, body):
        self.head = head
        self.body = body
        self.name = f"{self.head} : {self.body}"
    def __str__(self):
        return self.name

class Rule:
    def __init__(self, head, body):
        self.head = head
        self.body = body
        self.length = len(body)
    def __str__(self):
        # A literal is an Atom or a NegatedAtom
        return f"{self.head} :- {','.join([literal.name for literal in self.body])}."
    def __repr__(self):
        return f"{self.head} :- {','.join([literal.name for literal in self.body])}."

class Feature:
    def __init__(self, atom, rules, level=0):
        '''
        :param atom: the Atom representation of the feature
        :param rules: the rules defining the feature
        :param level: indicates the level at which the feature was created, in the inductive construction of features
        '''
        self.atom = atom
        self.rules = rules
        self.level = level
    def add_rule_false_instances(self):
        head = Atom(Predicate(f'-{self.atom.predicate}', self.atom.arity), self.atom.vars)
        body = []
        for n in range(self.atom.arity):
            body.append(Atom(Predicate('object', 1), [self.atom.vars[n]]))
        body.append(NegatedAtom(Predicate(f'{self.atom.predicate}', self.atom.arity), self.atom.vars))
        self.rules.append(Rule(head, body))
    def __str__(self):
        return self.atom.name
    def __repr__(self):
        return self.atom.name

class ConjunctiveConcept(Feature):
    def __init__(self,atom,rules,level,conjuncts):
        super().__init__(atom,rules,level)
        self.conjuncts = conjuncts

class DisjunctiveConcept(Feature):
    def __init__(self,atom,rules,level,disjuncts):
        super().__init__(atom,rules,level)
        self.disjuncts = disjuncts

class SubsetConcept(Feature):
    def __init__(self,atom,rules,level,concepts):
        super().__init__(atom,rules,level)
        self.concepts = concepts
    def add_rule_false_instances(self):
        head = Atom(Predicate(f'-{self.atom.predicate}', self.atom.arity), self.atom.vars)
        body = [NegatedAtom(Predicate(f'{self.atom.predicate}', self.atom.arity), self.atom.vars)]
        self.rules.append(Rule(head, body))

class NegatedConcept(Feature):
    def __init__(self,atom,rules,level,negation_of):
        super().__init__(atom,rules,level)
        self.negation_of = negation_of

class ERConcept(Feature):
    def __init__(self,atom,rules,level,role,concept):
        super().__init__(atom,rules,level)
        self.role = role
        self.concept = concept

class URESConcept(Feature):
    def __init__(self,atom,rules,level,role,concept):
        super().__init__(atom,rules,level)
        self.role = role
        self.concept = concept

class RRESRole(Feature):
    def __init__(self,atom,rules,level,role,concept):
        super().__init__(atom,rules,level)
        self.role = role
        self.concept = concept

class CRESConcept(Feature):
    def __init__(self,atom,rules,level,cardinality_constraint):
        super().__init__(atom,rules,level)
        self.cardinality_constraint = cardinality_constraint

class InverseRole(Feature):
    def __init__(self,atom,rules,level,inverse_of):
        super().__init__(atom,rules,level)
        self.inverse_of = inverse_of

class TransitiveClosureRole(Feature):
    def __init__(self,atom,rules,level,transitive_of):
        super().__init__(atom,rules,level)
        self.transitive_of = transitive_of

class DisjunctiveRole(Feature):
    def __init__(self,atom,rules,level,disjuncts):
        super().__init__(atom,rules,level)
        self.disjuncts = disjuncts

class CompositionRole(Feature):
    def __init__(self,atom,rules,level,components):
        super().__init__(atom,rules,level)
        self.components = components

class RoleConstructor:
    def __init__(self, name, arity, rules_false_instances, uses_concepts = False, uses_roles = True):
        '''
        :param name: name string
        :param arity: arity of the constructor function
        :param rules_false_instances: Boolean indicating if the rules needed to compute false instances of the role should be generated
        '''
        self.name = name
        self.arity = arity
        self.rules_false_instances = rules_false_instances
        self.uses_concepts = uses_concepts
        self.uses_roles = uses_roles
    def __str__(self):
        return self.name

class RoleInverseCons(RoleConstructor):
    def __init__(self):
        super().__init__("Role Inverse Constructor",1,True)
    def apply(self, roles):
        '''
        :param roles: an iterator with a single element, the role to invert
        :return: the inverted role as an InverseRole object
        '''
        role = roles[0]
        reversed_atom = Atom(role.atom.predicate,role.atom.vars[::-1])
        head, body = Atom(Predicate(f'inv_{role.atom.predicate}', role.atom.arity), role.atom.vars), [reversed_atom]
        rules = [Rule(head, body)]
        feature = InverseRole(head, rules, level=role.level+1, inverse_of=role)
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature

class RoleUnionCons(RoleConstructor):
    def __init__(self):
        super().__init__("Role Union Constructor",2,True)
    def apply(self, roles):
        '''
        :param roles: an iterator with the roles to take the union of
        :return: the union of the input roles as a DisjunctiveRole object
        '''
        role1, role2 = roles[0], roles[1]
        head = Atom(Predicate(f'union_{role1.atom.predicate}_{role2.atom.predicate}', role1.atom.arity), role1.atom.vars)
        body1, body2 = [role1.atom], [role2.atom]
        rules = [Rule(head, body1), Rule(head, body2)]
        feature = DisjunctiveRole(head, rules, level= role1.level + role2.level +1, disjuncts=[role1,role2])
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature

class GeneralRoleUnionCons(RoleConstructor):
    def __init__(self):
        super().__init__("Role Union Constructor",2,True)
    def apply(self, roles):
        '''
        :param roles: an iterator with the roles to take the union of
        :return: the union of the input roles as a DisjunctiveRole object
        '''
        rules = []
        head_name = "union"
        for role in roles:
            head_name += '_' + role.atom.predicate.name
        head = Atom(Predicate(f'{head_name}', 2),
                    roles[0].atom.vars)
        for role in roles:
            rules.append(Rule(head,[role.atom]))
        feature = DisjunctiveRole(head, rules, level=sum([role.level for role in roles])+1, disjuncts=roles)
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature

class RoleTransCons(RoleConstructor):
    def __init__(self):
        super().__init__("Role Transitive Closure Constructor",1,True)
    def apply(self, roles):
        '''
        :param roles: an iterator with the roles to take the union of
        :return: the closure of the input role as a TransitiveClosure object
        '''
        role = roles[0]
        head = Atom(Predicate(f'trcl_{role.atom.predicate}', role.atom.arity), role.atom.vars)
        body1, body2 = [role.atom], [Atom(Predicate(f'trcl_{role.atom.predicate}', role.atom.arity), ["X0","X2"]), Atom(Predicate(f'trcl_{role.atom.predicate}', role.atom.arity), ["X2","X1"])]
        rules = [Rule(head, body1), Rule(head, body2)]
        feature = TransitiveClosureRole(head, rules, level=role.level+1, transitive_of=role)
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature

class RoleCompositionCons(RoleConstructor):
    def __init__(self):
        super().__init__("Role Composition Constructor",2,True)
    def apply(self, roles):
        '''
        :param roles: an iterator with the roles to take the composition of
        :return: the composition of the input roles as a CompositionRole object
        '''
        role1, role2 = roles[0], roles[1]
        head = Atom(Predicate(f'comp_{role1.atom.predicate}_{role2.atom.predicate}', role1.atom.arity),
                    role1.atom.vars)
        body = [Atom(Predicate(f'{role1.atom.predicate}', role1.atom.arity), ["X0","X2"]), Atom(Predicate(f'{role2.atom.predicate}', role2.atom.arity), ["X2","X1"])]
        rules = [Rule(head, body)]
        feature = CompositionRole(head, rules, level=sum([role.level for role in roles])+1, components=[role1,role2])
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature

class RRESCons(RoleConstructor):
    def __init__(self):
        super().__init__("Role Restriction Constructor",2,rules_false_instances=True,uses_concepts=True)
    def apply(self, concept_and_role):
        '''
        :param concept_and_role: a tuple with a concept as first element, and a role as second one
        :return: the resulting RRES role as an RRESRole object
        '''
        concept, role = concept_and_role[0], concept_and_role[1]
        head = Atom(Predicate(f'rres_{role.atom.predicate}_{concept.atom.predicate}',2), role.atom.vars)
        body = [Atom(concept.atom.predicate, [role.atom.vars[1]]), role.atom]
        rules = [Rule(head, body)]
        feature = RRESRole(head, rules, level= concept.level + role.level +1, role=role, concept=concept)
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature

class ConceptConstructor:
    def __init__(self, name, uses_concepts, uses_roles, rules_false_instances):
        '''
        :param name: name string
        :param uses_concepts: an integer indicating how many concepts are used by the constructor
        :param uses_roles: an integer indicating how many roles are used by the constructor
        :param rules_false_instances: Boolean indicating if the rules needed to compute false instances of the role should be generated
        '''
        self.name = name
        self.uses_concepts = uses_concepts
        self.uses_roles = uses_roles
        self.rules_false_instances = rules_false_instances
    def __str__(self):
        return self.name

class ERCons(ConceptConstructor):
    def __init__(self):
        super().__init__("ER Constructor",uses_concepts=1,uses_roles=1,rules_false_instances=True)
    def apply(self, concept_and_role):
        '''
        :param concept_and_role: a tuple with a concept as first element, and a role as second one
        :return: the resulting ER concept as an ERConcept object
        '''
        concept, role = concept_and_role[0], concept_and_role[1]
        head = Atom(Predicate(f'er_{role.atom.predicate}_{concept.atom.predicate}', 1), [role.atom.vars[0]])
        body = [Atom(concept.atom.predicate, [role.atom.vars[1]]), role.atom]
        rules = [Rule(head, body)]
        feature = ERConcept(head, rules, level= concept.level + role.level +1, role=role, concept=concept)
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature

class URESCons(ConceptConstructor):
    def __init__(self):
        super().__init__("URES Constructor",uses_concepts=1,uses_roles=1,rules_false_instances=True)
    def apply(self, concept_and_role):
        '''
        :param concept_and_role: a tuple with a concept as first element, and a role as second one
        :return: the resulting URES concept as an URESConcept object
        '''
        concept, role = concept_and_role[0], concept_and_role[1]
        var0, var1 = role.atom.vars[0], role.atom.vars[1]
        head = Atom(Predicate(f'ures_{role.atom.predicate}_{concept.atom.predicate}', 1), [var0])
        body = [Atom(Predicate('object', 1), [var0]),
                ConditionalLiteral(head=Atom(concept.atom.predicate, [var1]),
                                   body=role.atom)]
        rules = [Rule(head, body)]
        feature = URESConcept(head, rules, level=concept.level + role.level +1, role=role, concept=concept)
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature


class CRESCons(ConceptConstructor):
    def __init__(self):
        super().__init__("CRES Constructor",uses_concepts=0,uses_roles=1,rules_false_instances=True)
    def apply(self, roles, cardinality_bound=0):
        '''
        :param roles: an iterator with a single role, the role whose cardinality is considered
        :param cardinality_bound: the cardinality bound defining the concept
        :return: the resulting CRES concept as an CRESConcept object
        '''
        role = roles[0]
        head = Atom(Predicate(f'cres_{cardinality_bound}_{role.atom.predicate}', 1), [role.atom.vars[0]])
        cardinality_constraint = CardinalityConstraint(role.atom,cardinality_bound)
        body = [cardinality_constraint, Atom(Predicate('object', 1), [role.atom.vars[0]])]
        rules = [Rule(head, body)]
        feature = CRESConcept(head, rules, level=role.level+1, cardinality_constraint=cardinality_constraint)
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature

class ConceptIntersectionCons(ConceptConstructor):
    def __init__(self):
        super().__init__("Concept Intersection Constructor",uses_concepts=2,uses_roles=0,rules_false_instances=True)
    def apply(self, concepts):
        '''
        :param concepts: an iterator with two concepts, whose conjunction is taken
        :return: the resulting concept intersection concept as an ConjunctiveConcept object
        '''
        concept1, concept2 = concepts[0], concepts[1]
        var0 = concept1.atom.vars[0]
        head = Atom(Predicate(f'inter_{concept1.atom.predicate}_{concept2.atom.predicate}', 1), [var0])
        body = [concept1.atom, concept2.atom]
        rules = [Rule(head, body)]
        feature = ConjunctiveConcept(head,rules,level= concept1.level + concept2.level+1,conjuncts=[concept1,concept2])
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature

class ConceptSubsetCons(ConceptConstructor):
    def __init__(self):
        super().__init__("Concept Subset Constructor",uses_concepts=2,uses_roles=0,rules_false_instances=True)
    def apply(self, concepts):
        '''
        :param concepts: an iterator with two concepts, whose conjunction is taken
        :return: the resulting concept intersection concept as an ConjunctiveConcept object
        '''
        concept1, concept2 = concepts[0], concepts[1]
        var0 = 'null'
        head = Atom(Predicate(f'subset_{concept1.atom.predicate}_{concept2.atom.predicate}', 1), [var0])
        body = [ConditionalLiteral(concept2.atom,concept1.atom)]
        rules = [Rule(head, body)]
        feature = SubsetConcept(head,rules,level= concept1.level + concept2.level+1,concepts=[concept1,concept2])
        if self.rules_false_instances:
            feature.add_rule_false_instances()
        return feature

class ConceptUnionCons(ConceptConstructor):
    def __init__(self,level):
        super().__init__("Concept Union Constructor",uses_concepts=2,uses_roles=0,rules_false_instances=True)
        self.level = level
    def apply(self, concepts,level_limit=0):
        '''
        :param concepts: an iterator with the concepts to take the union of
        :return: the union of the input concepts as a DisjunctiveConcept object
        '''
        if level_limit>0:
            concept1, concept2 = concepts[0], concepts[1]
            if concept1.level + concept2.level < level_limit:
                head = Atom(Predicate(f'union_{concept1.atom.predicate}_{concept2.atom.predicate}', concept1.atom.arity),
                            concept1.atom.vars)
                body1, body2 = [concept1.atom], [concept2.atom]
                rules = [Rule(head, body1), Rule(head, body2)]
                feature = DisjunctiveConcept(head, rules, level=concept1.level + concept2.level + 1,
                                             disjuncts=[concept1, concept2])
                if self.rules_false_instances:
                    feature.add_rule_false_instances()
                return feature
            else:
                pass
        else:
            concept1, concept2 = concepts[0], concepts[1]
            head = Atom(Predicate(f'union_{concept1.atom.predicate}_{concept2.atom.predicate}', concept1.atom.arity), concept1.atom.vars)
            body1, body2 = [concept1.atom], [concept2.atom]
            rules = [Rule(head, body1), Rule(head, body2)]
            feature = DisjunctiveConcept(head, rules, level=concept1.level + concept2.level+1, disjuncts=[concept1,concept2])
            if self.rules_false_instances:
                feature.add_rule_false_instances()
            return feature

def generate_roles(concepts, roles, constructors):
    '''
    :param concepts: concepts to construct from
    :param roles: roles to construct from
    :param constructors: role constructors to use
    :return: list containing all the roles obtained by applying constructors to the input roles
    '''
    generated_roles = []
    for cons in constructors:
        if concepts:
            if cons.uses_concepts:
                for arg in product(concepts, roles):
                    generated_roles.append(cons.apply(arg))
            else:
                for arg in combinations(roles, cons.arity):
                    generated_roles.append(cons.apply(arg))
        else:
            for arg in combinations(roles, cons.arity):
                generated_roles.append(cons.apply(arg))
    return generated_roles

def generate_concepts(concepts, roles, constructors):
    '''
    :param concepts: concepts to construct from
    :param roles: roles to construct from
    :param constructors: concept constructors to use
    :return: list containing all the concepts obtained by applying constructors to the input concepts and roles
    '''
    generated_concepts = []
    for cons in constructors:
        if cons.uses_concepts:
            if cons.uses_roles:
                for arg in product(concepts, roles):
                    generated_concepts.append(cons.apply(arg))
            else:
                for arg in combinations(concepts, cons.uses_concepts):
                    generated_concepts.append(cons.apply(arg))
        else:
            for arg in combinations(roles, cons.uses_roles):
                generated_concepts.append(cons.apply(arg))
    return generated_concepts

def generate_feature_info(features):
    info = []
    for feature in features:
        info.append(f'feature({feature.atom.predicate}).')
        info.append(f'f_arity({feature.atom.predicate},{feature.atom.arity}).')
    return info

NUM_VARIABLES = 4

RELATIONS = [Predicate('smaller', 2),
              Predicate('below', 2),
              Predicate('left', 2),
              Predicate('overlap', 2),
              Predicate('shape', 2),
             ]

# Here, only the object types occurring in sliding-tile are uncommented
TYPES = [Predicate('verum', 1),
          Predicate('falsum', 1),
          #Predicate('robot', 1), # from blocks, grid
          #Predicate('block', 1), # from blocks
          #Predicate('table', 1), # from blocks
          Predicate('opencell', 1), # from sokoban, grid, sliding tile
          #Predicate('lockedcell', 1), # from grid
          #Predicate('sokoban', 1), # from sokoban
          #Predicate('crate', 1), # from sokoban
          #Predicate('key', 1),  # from grid
          #Predicate('peg', 1),  # from hanoi
          #Predicate('disk', 1),  # from hanoi
          Predicate('tile', 1)  # from sliding tile
         ]

PREDICATES = RELATIONS + TYPES

VARIABLES = [f'X{n}' for n in range(NUM_VARIABLES)]

PRIMITIVE_FEATURES = []
for p in PREDICATES:
    p_atom = Atom(p, VARIABLES[:p.arity])
    p_feature = Feature(p_atom, [p_atom])
    PRIMITIVE_FEATURES.append(p_feature)

PRIMITIVE_CONCEPTS = [feature for feature in PRIMITIVE_FEATURES if feature.atom.arity == 1]
PRIMITIVE_ROLES = [feature for feature in PRIMITIVE_FEATURES if feature.atom.arity == 2]

def main():
    args = sys.argv[1:]
    filepath = args[0]

    ric = RoleInverseCons()
    comp = RoleCompositionCons()
    er = ERCons()
    inter = ConceptIntersectionCons()
    subs = ConceptSubsetCons()

    with open(filepath, 'w') as f:
        counter = 0
        all_features = PRIMITIVE_CONCEPTS + PRIMITIVE_ROLES
        level0_concepts = generate_concepts(PRIMITIVE_CONCEPTS, PRIMITIVE_ROLES, [er,inter,subs])
        print("%%%%%%%%%%%%%%%%%%% LEVEL 0 CONCEPTS %%%%%%%%%%%%%%%%%%%", file=f)
        for concept in level0_concepts:
            counter += 1
            for rule in concept.rules:
                print(rule, file=f)
        all_features += level0_concepts

        level0_roles = generate_roles([], PRIMITIVE_ROLES, [ric,comp])
        print("\n%%%%%%%%%%%%%%%%%%% LEVEL 0 ROLES %%%%%%%%%%%%%%%%%%%", file=f)
        for role in level0_roles:
            counter += 1
            for rule in role.rules:
                print(rule, file=f)
        all_features += level0_roles

        level1_concepts = generate_concepts(PRIMITIVE_CONCEPTS+level0_concepts, PRIMITIVE_ROLES+level0_roles, [er,inter,subs])
        print("\n%%%%%%%%%%%%%%%%%%% LEVEL 1 CONCEPTS %%%%%%%%%%%%%%%%%%%", file=f)
        for concept in level1_concepts:
            if not any([prev_concept.atom.name==concept.atom.name for prev_concept in level0_concepts]):
                counter += 1
                for rule in concept.rules:
                    print(rule, file=f)
        all_features += level1_concepts

        level1_roles = generate_roles([], PRIMITIVE_ROLES+level0_roles, [ric,comp])
        print("\n%%%%%%%%%%%%%%%%%%% LEVEL 1 ROLES %%%%%%%%%%%%%%%%%%%", file=f)
        for role in level1_roles:
            if not any([prev_role.atom.name == role.atom.name for prev_role in level0_roles]):
                counter += 1
                for rule in role.rules:
                    print(rule, file=f)
        all_features += level1_roles

        print(f"% Number of generated preds: {counter}")
        print(f"% Number of generated preds: {counter}", file=f)


if __name__ == "__main__":
    main()
