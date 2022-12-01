%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Changes

% Base: test3z.lp

% blah blah blah blah


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Suggested call

% clingo -t 6 --sat-prepro=2 --time-limit=7200 <solver> <files>


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Constants and options

#const num_predicates = 12.
#const max_action_arity = 3.
#const null_arg = (null,).

% Whether doing synthesis (learning) or validation
#const opt_synthesis = 1.
#const opt_ver_instance = 0.
#const opt_ver_node = 0.

% Allow equal objects in arguments for actions
#const opt_equal_objects = 0.

% Allow for negative preconditions in action schemas
#const opt_allow_negative_precs = 1.

% Fill incomplete valuations: add atoms fval(I,M,0) if not fval(I,M,1)
#const opt_fill_incomplete_valuations = 1.

% Symmetry breaking
#const opt_symmetries = 1.

% Output
#const opt_verbose = 0.

% Testing: add-ons for testing purposes
#const opt_testing = 0.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Instances and graphs

% Instances defined by instance/1, and graphs by tlabel/3 and node/2

%       instance(I) : I is non-negative integer
% tlabel(I,(S,T),L) : I is instance, S and T nodes in I, L is label
%         node(I,S) : S is node in instance I

edge(I,S,T) :- tlabel(I,(S,T),L).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Low-level language F0

% Transparent low-level language which is used (elsewhere) to generate
% the high-level language F below


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% High-level language F

% Defined by feature/1, f_arity/2, f_static/2, fval/3, fval/4, and caused/6

%          feature(F) : F is name of feature
%        f_arity(F,N) : arity of F is N
%       f_static(I,F) : feature F is static in instance I
%         fval(I,M,V) : atom M has *static* value V in {0,1} in instance I
%       fval(I,M,S,V) : atom M has value V in {0,1} in node S in instance I
% caused(I,S,T,A,M,V) : labeled edge (S,T,A) in instance I caused atom V with value V in {0,1}

% Atoms are pairs (F,obj_tuple) where obj_tuple is tuple of object names; e.g.
%   (inv_shape,(rectangle,a))
%   (shape,(a,rectangle))

% Any high-level language will work here; it doesn't need to come from DL grammar,
% or anything of the like. Only important thing is that it is only defined with
% above facts.

% Define predicate arities with p_arity/2 rathen than directly using f_arity
% since we want to assign 0-arity to nullary predicates

nullary(F)   :- feature(F), f_arity(F,1), 1 { fval(I,(F,null_arg),0..1) }.                % Explicit zero_arity predicates
nullary(F)   :- feature(F), f_arity(F,1), 1 { fval(I,(F,null_arg),S,0..1) : node(I,S) }.  % Explicit zero_arity predicates
p_arity(F,N) :- feature(F), f_arity(F,N), not nullary(F).                                 % Explicit zero_arity predicates
p_arity(F,0) :- nullary(F).                                                               % Explicit zero_arity predicates
:- p_arity(F,N), nullary(F), N > 0.                                                       % Explicit zero_arity predicates


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Set relevant nodes: all nodes are relevant for synthesis, but just one node is relevant for verification

relevant(opt_ver_instance,opt_ver_node) :- node(opt_ver_instance,opt_ver_node), opt_synthesis = 0.
relevant(I,S)                           :- node(I,S),                           opt_synthesis = 1.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Actions and objects

%    action(A) : name A is action
% a_arity(A,N) : action A has arity N

action(A) :- tlabel(I,(S,T),A).
{ a_arity(A,0..max_action_arity) } = 1 :- action(A), opt_synthesis = 1.

% object(I,O) : name O is object in instance I
object(I,O) :- fval(I,(verum,(O,)),1).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choose predicates from high-level language

% non_functional(F) : non-static feature F is non-functional if there are two atoms
%                     (F,(O,O1)) and (F,(O,O2)) true at some node in some instance

non_functional(F) :- node(I,S), feature(F), not f_static(I,F), object(I,O),
                     2 { fval(I,(F,(O,O1)),S,1) : object(I,O1) },
                     opt_synthesis = 1.

% Choose num_predicates among non-functional features (denoted by pred/1)
feature_good(F) :- feature(F), not non_functional(F), opt_synthesis = 1.
%{ pred(F) : feature(F), not non_functional(F) } num_predicates :- opt_testing = 2, opt_synthesis = 1.
                       { pred(F) : feature(F) } num_predicates :- opt_testing < 2, opt_synthesis = 1.
% CHECK: Static preds not chosen! Revise this.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tuples of variables for lifted effects and preconditions

argtuple(null_arg,0).   % Explicit zero arity predicates
argtuple((V1,),1)    :- V1 = 1..max_action_arity.
argtuple((V1,V2),2)  :- V1 = 1..max_action_arity, V2 = 1..max_action_arity.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tuples of objects that ground the action schemas and atoms

objtuple(I,  null_arg,0) :- instance(I). % Explicit zero arity predicates
objtuple(I,     (O1,),1) :- object(I,O1).
objtuple(I,   (O1,O2),2) :- object(I,O1), object(I,O2), O1 != O2.
objtuple(I,(O1,O2,O3),3) :- object(I,O1), object(I,O2), object(I,O3), O1 != O2, O1 != O3, O2 != O3.
objtuple(I,   (O1,O1),2) :- object(I,O1),                             opt_equal_objects = 1.
objtuple(I,(O1,O2,O3),3) :- object(I,O1), object(I,O2), object(I,O3), opt_equal_objects = 1.

% Assert missing values for atoms (if some atom is not true, it is false)
fval(I,(F,OO),0)   :- feature(F),     f_static(I,F), p_arity(F,N), objtuple(I,OO,N),            not fval(I,(F,OO),1),   opt_fill_incomplete_valuations = 1.
fval(I,(F,OO),S,0) :- feature(F), not f_static(I,F), p_arity(F,N), objtuple(I,OO,N), node(I,S), not fval(I,(F,OO),S,1), opt_fill_incomplete_valuations = 1.

% Make sure we have full valuation of atoms
:-     f_static(I,F), p_arity(F,N), objtuple(I,OO,N),            { fval(I,(F,OO),0..1)   } != 1, opt_fill_incomplete_valuations = 1.
:- not f_static(I,F), p_arity(F,N), objtuple(I,OO,N), node(I,S), { fval(I,(F,OO),S,0..1) } != 1, opt_fill_incomplete_valuations = 1.

% Define objects appearing in an object tuple
t_obj(I,     (O1,),1,O1) :- objtuple(I,     (O1,),1), O1 != null.
t_obj(I,   (O1,O2),1,O1) :- objtuple(I,   (O1,O2),2).
t_obj(I,   (O1,O2),2,O2) :- objtuple(I,   (O1,O2),2).
t_obj(I,(O1,O2,O3),1,O1) :- objtuple(I,(O1,O2,O3),3).
t_obj(I,(O1,O2,O3),2,O2) :- objtuple(I,(O1,O2,O3),3).
t_obj(I,(O1,O2,O3),3,O3) :- objtuple(I,(O1,O2,O3),3).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Map selects grounding of lifted atoms in schema from grounding of action arguments

map(I,null_arg,  null_arg,null_arg) :- instance(I).              % for nullary actions
map(I,null_arg,     (O1,),null_arg) :- objtuple(I,(O1,),1).      % for nullary predicates
map(I,null_arg,   (O1,O2),null_arg) :- objtuple(I,(O1,O2),2).    % for nullary predicates
map(I,null_arg,(O1,O2,O3),null_arg) :- objtuple(I,(O1,O2,O3),3). % for nullary predicates
map(I,    (1,),     (O1,),   (O1,)) :- objtuple(I,(O1,),1).
map(I,    (1,),   (O1,O2),   (O1,)) :- objtuple(I,(O1,O2),2).
map(I,    (1,),(O1,O2,O3),   (O1,)) :- objtuple(I,(O1,O2,O3),3).
map(I,    (2,),   (O1,O2),   (O2,)) :- objtuple(I,(O1,O2),2).
map(I,    (2,),(O1,O2,O3),   (O2,)) :- objtuple(I,(O1,O2,O3),3).
map(I,    (3,),(O1,O2,O3),   (O3,)) :- objtuple(I,(O1,O2,O3),3).
map(I,   (1,1),     (O1,), (O1,O1)) :- objtuple(I,(O1,),1).
map(I,   (1,1),   (O1,O2), (O1,O1)) :- objtuple(I,(O1,O2),2).
map(I,   (1,1),(O1,O2,O3), (O1,O1)) :- objtuple(I,(O1,O2,O3),3).
map(I,   (1,2),   (O1,O2), (O1,O2)) :- objtuple(I,(O1,O2),2).
map(I,   (1,2),(O1,O2,O3), (O1,O2)) :- objtuple(I,(O1,O2,O3),3).
map(I,   (1,3),(O1,O2,O3), (O1,O3)) :- objtuple(I,(O1,O2,O3),3).
map(I,   (2,1),   (O1,O2), (O2,O1)) :- objtuple(I,(O1,O2),2).
map(I,   (2,1),(O1,O2,O3), (O2,O1)) :- objtuple(I,(O1,O2,O3),3).
map(I,   (2,2),   (O1,O2), (O2,O2)) :- objtuple(I,(O1,O2),2).
map(I,   (2,2),(O1,O2,O3), (O2,O2)) :- objtuple(I,(O1,O2,O3),3).
map(I,   (2,3),(O1,O2,O3), (O2,O3)) :- objtuple(I,(O1,O2,O3),3).
map(I,   (3,1),(O1,O2,O3), (O3,O1)) :- objtuple(I,(O1,O2,O3),3).
map(I,   (3,2),(O1,O2,O3), (O3,O2)) :- objtuple(I,(O1,O2,O3),3).
map(I,   (3,3),(O1,O2,O3), (O3,O3)) :- objtuple(I,(O1,O2,O3),3).

% Whether a map exists
map_exists(I,T,OO1) :- map(I,T,OO1,OO2).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define variables used by actions

% a_var(A,V) : action A uses var V
a_var(A,V) :- a_arity(A,N), V = 1..N.

% Define variables appearing in a variable tuple
t_var((V,),V)     :- argtuple((V,),1), V != null.
t_var((V1,V2),V1) :- argtuple((V1,V2),2).
t_var((V1,V2),V2) :- argtuple((V1,V2),2).

% An argtuple T is good for action A iff each V in T is an action var
goodtuple(A,null_arg) :- action(A).
goodtuple(A,T) :- action(A), argtuple(T,N), a_var(A,V) : t_var(T,V).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choice of lifted preconditions for actions

% prec(A,M,V) : atom M is negative (resp. positive) precondition of action A if V=0 (resp. V=1)

{ prec(A,(P,T),1) }      :- action(A), pred(P), p_arity(P,N), argtuple(T,N), goodtuple(A,T),
                            opt_allow_negative_precs = 0,
                            opt_synthesis = 1.

{ prec(A,(P,T),0..1) } 1 :- action(A), pred(P), p_arity(P,N), argtuple(T,N), goodtuple(A,T),
                            opt_allow_negative_precs = 1,
                            opt_synthesis = 1.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choice of lifted effects for actions

% eff(A,M,V) : atom M is negative (resp. positive) effect of action A if V=0 (resp. V=1)

% p_static(P) : P is static if it's so in all instances
p_static(P) :- pred(P), f_static(I,P) : instance(I).

{ eff(A,(P,T),0..1) } 1 :- action(A), pred(P), not p_static(P), p_arity(P,N), argtuple(T,N), goodtuple(A,T),
                           opt_synthesis = 1.

% Avoid noop actions and rule out contradictory effects
:- action(A), { eff(A,(P,T),0..1) : pred(P), p_arity(P,N), argtuple(T,N) } = 0, opt_synthesis = 1.
:- eff(A,M,0), eff(A,M,1), opt_synthesis = 1.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Map graph edges to grounded actions

appl(I,A,OO1,S) :- relevant(I,S), action(A), a_arity(A,N), objtuple(I,OO1,N),
                   fval(I,(P,OO2),V)       : prec(A,(P,T),V), map(I,T,OO1,OO2),     f_static(I,P), opt_fill_incomplete_valuations = 1;
                   fval(I,(P,OO2),S,V)     : prec(A,(P,T),V), map(I,T,OO1,OO2), not f_static(I,P), opt_fill_incomplete_valuations = 1;
                   map_exists(I,T,OO1)     : prec(A,(P,T),V);
                   map_exists(I,T,OO1)     : eff(A,(P,T),V).


% FACTORED MODEL

% Map variable-tuple (lifted-atom args) and (partial) object tuple (action args) to object tuple of same size and variable tuple
% Number for instances with N objects: 1 + 6N + 6N^2
map_po_tuple(I,null_arg,(0,0,0),null_arg)  :- instance(I).
map_po_tuple(I,(1,),(O1,0,0),(O1,))        :- object(I,O1).
map_po_tuple(I,(2,),(0,O2,0),(O2,))        :- object(I,O2).
map_po_tuple(I,(3,),(0,0,O3),(O3,))        :- object(I,O3).
map_po_tuple(I,(1,1),(O1,0,0),(O1,O1))     :- object(I,O1).
map_po_tuple(I,(1,2),(O1,O2,0),(O1,O2))    :- object(I,O1), object(I,O2).
map_po_tuple(I,(1,3),(O1,0,O3),(O1,O3))    :- object(I,O1), object(I,O3).
map_po_tuple(I,(2,1),(O1,O2,0),(O2,O1))    :- object(I,O1), object(I,O2).
map_po_tuple(I,(2,2),(0,O2,0),(O2,O2))     :- object(I,O2).
map_po_tuple(I,(2,3),(0,O2,O3),(O2,O3))    :- object(I,O2), object(I,O3).
map_po_tuple(I,(3,1),(O1,0,O3),(O3,O1))    :- object(I,O1), object(I,O3).
map_po_tuple(I,(3,2),(0,O2,O3),(O3,O2))    :- object(I,O2), object(I,O3).
map_po_tuple(I,(3,3),(0,0,O3),(O3,O3))     :- object(I,O3).

% Applicability of ground action A(OO) in nodes and its factorization
%{ appl(I,A,OO,S) } :- relevant(I,S), a_arity(A,N), objtuple(I,OO,N).
fappl(I,A,S,0,0) :- appl(I,A,null_arg,S).
fappl(I,A,S,K,O) :- appl(I,A,OO,S), t_obj(I,OO,K,O).

%*
% Constraints about applicability:
%   1. Static atoms in precondition must hold
%   2. Fluents (dynamic atoms) in preconditions must hold
%   3. If all preconditions hold, A(OO) is applicable <=> if A(OO) isn't applicable, some precondition doesn't hold

% 1. Static atoms in precondition must hold
:- appl(I,A,OO,S), prec(A,(P,T),V), f_static(I,P), map(I,T,OO,OO2), not fval(I,(P,OO2),V).

% 2. Fluents (dynamic atoms) in preconditions must hold
:- appl(I,A,OO,S), prec(A,(P,T),V), not f_static(I,P), map(I,T,OO,OO2), not fval(I,(P,OO2),S,V).

% 3. If all preconditions hold, A(OO) is applicable <=> if A(OO) isn't applicable, some precondition doesn't hold
:- relevant(I,S), a_arity(A,N), objtuple(I,OO,N),
   fval(I,(P,OO2),V) : prec(A,(P,T),V), f_static(I,P), map(I,T,OO,OO2);
   fval(I,(P,OO2),S,V) : prec(A,(P,T),V), not f_static(I,P), map(I,T,OO,OO2);
   not appl(I,A,OO,S).
*%

% FACTORED next(I,A,OO,S1,S2) in terms of fnext(I,(S1,S2),A,K,O)
% fnext(I,(S1,S2),A,K,O) : edge (S1,S2) mapped to action A with K-th arg equal object O, K=1..a_arity(A)

% Need to: 1. Account for proper def of next(I,A,OO,S1,S2)
%          2. Explain mapping of ground actions to edges

% 1. Account for proper def of next(I,A,OO,S1,S2):
%    1.a. Choose next S2 if ground action A(OO) is applicable in S1
%    1.b. If A/k1 -> O1 in (S1,S2), then A/k2 -> O2, for some O2, for each arg k1 of action A in (S1,S2) (i.e, A(OO) must be fully defined for (S1,S2))
%    1.c. It cannot be fnext(I,(S1,S2),A,K,O1) and fnext(I,(S1,S2),A,K,O2) with O1 != O2
%    1.d. A(OO) cannot be mapped to two edges (S1,S2) and (S1,S3) with S2 != S3

% 1.a. Choose next S2 if ground action A(OO) is applicable in S1
{ fnext(I,(S1,S2),A,0,0) : tlabel(I,(S1,S2),A) } = 1 :- action(A), a_arity(A,0), fappl(I,A,S1,0,0).
1 { fnext(I,(S1,S2),A,K,O) : tlabel(I,(S1,S2),A) }   :- action(A), a_arity(A,N), fappl(I,A,S1,K,O), K = 1..N.

% 1.b. If A/k1 -> O1 in (S1,S2), then A/k2 -> O2 in (S1,S2), for some O2, for each arg k1 of action A (i.e, A(OO) must be fully defined for (S1,S2))
:- a_arity(A,N), fnext(I,(S1,S2),A,K1,O1), K2 = 1..N, K2 != K1, not fnext(I,(S1,S2),A,K2,O2) : object(I,O2).

% 1.c. It cannot be fnext(I,(S1,S2),A,K,O1) and fnext(I,(S1,S2),A,K,O2) with O1 != O2
:- fnext(I,(S1,S2),A,K,O1), fnext(I,(S1,S2),A,K,O2), O1 != O2.

% 1.d. A(OO) cannot be mapped to two edges (S1,S2) and (S1,S3) with S2 != S3
:- a_arity(A,N), N > 0, edge(I,S1,S2), edge(I,S1,S3), S2 < S3, fnext(I,(S1,S2),A,K,O), fnext(I,(S1,S3),A,K,O), not diff_fnext(I,S1,S2,S3,A,M) : M = 1..N.
diff_fnext(I,S1,S2,S3,A,K) :- a_arity(A,N), edge(I,S1,S2), edge(I,S1,S3), S2 < S3, K = 1..N, fnext(I,(S1,S2),A,K,O1), fnext(I,(S1,S3),A,K,O2), O1 != O2.

% 2. Explain mapping of ground actions to edges
%    2.a. If A(OO1) mapped to (S1,S2) and eff(A,(P,OO2),V), then fval(I,(P,OO2),S2,V)
%    2.b. If A(OO1) mapped to (S1,S2), fval(I,(P,OO2),S1,V) and fval(I,(P,OO2),S2,1-V), then eff(A,(P,OO2),1-V).

po_tuple_next(I,S1,S2,A,(0,0,0))       :- tlabel(I,(S1,S2),A), fnext(I,(S1,S2),A,1,O).
po_tuple_next(I,S1,S2,A,(O1,0,0))      :- tlabel(I,(S1,S2),A), fnext(I,(S1,S2),A,1,O1).
po_tuple_next(I,S1,S2,A,(0,O2,0))      :- tlabel(I,(S1,S2),A), fnext(I,(S1,S2),A,2,O2).
po_tuple_next(I,S1,S2,A,(0,0,O3))      :- tlabel(I,(S1,S2),A), fnext(I,(S1,S2),A,3,O3).
po_tuple_next(I,S1,S2,A,(O1,O2,0))     :- tlabel(I,(S1,S2),A), fnext(I,(S1,S2),A,1,O1), fnext(I,(S1,S2),A,2,O2).
po_tuple_next(I,S1,S2,A,(O1,0,O3))     :- tlabel(I,(S1,S2),A), fnext(I,(S1,S2),A,1,O1), fnext(I,(S1,S2),A,3,O3).
po_tuple_next(I,S1,S2,A,(0,O2,O3))     :- tlabel(I,(S1,S2),A), fnext(I,(S1,S2),A,2,O2), fnext(I,(S1,S2),A,3,O3).

% 2.a. If A(OO1) mapped to (S1,S2) and eff(A,(P,OO2),V), then fval(I,(P,OO2),S2,V)
:- fnext(I,(S1,S2),A,0,0), eff(A,(P,null_arg),V), fval(I,(P,null_arg),S2,1-V).
%:- fnext(I,(S1,S2),A,1,O), eff(A,(P,T),V), fval(I,(P,OO),S2,1-V), po_tuple_next(I,S1,S2,A,PO), map_po_tuple(I,T,PO,OO).
:- eff(A,(P,T),V), fval(I,(P,OO),S2,1-V), po_tuple_next(I,S1,S2,A,PO), map_po_tuple(I,T,PO,OO).

% 2.b. If A(OO1) mapped to (S1,S2), fval(I,(P,OO2),S1,V) and fval(I,(P,OO2),S2,1-V), then eff(A,(P,OO2),1-V).
:- fnext(I,(S1,S2),A,0,0), pred(P), fval(I,(P,null_arg),S1,1-V), fval(I,(P,null_arg),S2,V), not eff(A,(P,null_arg),V).
%:- fnext(I,(S1,S2),A,1,O), pred(P), fval(I,(P,OO),S1,1-V), fval(I,(P,OO),S2,V), not eff(A,(P,T),V) : po_tuple_next(I,S1,S2,A,PO), map_po_tuple(I,T,PO,OO).
:- po_tuple_next(I,S1,S2,A,(0,0,0)), pred(P), fval(I,(P,OO),S1,1-V), fval(I,(P,OO),S2,V), not eff(A,(P,T),V) : po_tuple_next(I,S1,S2,A,PO), map_po_tuple(I,T,PO,OO).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fundamental constraints

% If (S1,S2) has label A, then A(OO) maps S1 to S2 for some object tuple OO
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,0), not fnext(I,(S1,S2),A,0,0).
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N > 0, not fnext(I,(S1,S2),A,1,O) : object(I,O).

% Different nodes are different states with respect to chosen predicates
:- node(I,S1), node(I,S2), S1 < S2, fval(I,(P,OO),S2,V) : fval(I,(P,OO),S1,V), pred(P), not f_static(I,P).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Break symmetries (taken from STRIPS learner's ASP code)

% a_atom(I,A,M) : action A uses atom M = (P,T) as prec (I=1) or effect (I=2)
% a_atom(A,M) : action A uses atom M = (P,T)
a_atom(1,A,M) :- prec(A,M,V).
a_atom(2,A,M) :-  eff(A,M,V).
a_atom(A,M)   :- a_atom(I,A,M), I = 1..2.

% Simple symmetries
:- V = 1..max_action_arity-1, action(A),
   1 #sum{ -1,I,P,VV,1 : a_atom(I,A,(P,(  V, VV)));
           -1,I,P,VV,2 : a_atom(I,A,(P,( VV,  V)));
            1,I,P,VV,1 : a_atom(I,A,(P,(V+1, VV)));
            1,I,P,VV,2 : a_atom(I,A,(P,( VV,V+1))) },
   opt_symmetries = 1,
   opt_synthesis = 1.

% Based on "separating the levels"
% V occurs less or equal times than V+1 on the first argument of P (in type-I condition of action A)
lesseq(V,V+1,A,I,P,1) :- V = 1..max_action_arity-1, action(A), I = 1..2, pred(P),
   0 #sum{ -1,VV : a_atom(I,A,(P,(  V,VV))); 1,VV : a_atom(I,A,(P,(V+1,VV))) },
   opt_symmetries = 2,
   opt_synthesis = 1.

% V occurs less or equal times than V+1 on the second argument of P (in type-I condition of action A)
lesseq(V,V+1,A,I,P,2) :- V = 1..max_action_arity-1, action(A), I = 1..2, pred(P),
   0 #sum{ -1,VV : a_atom(I,A,(P,(VV,  V))); 1,VV : a_atom(I,A,(P,(VV,V+1))) },
   opt_symmetries = 2,
   opt_synthesis = 1.

% V occurs less times than V+1 on the first argument of P (in type-I condition of action A)
less(V,V+1,A,I,P,1) :- V = 1..max_action_arity-1, action(A), I = 1..2, pred(P),
   0 #sum{ -1,VV : a_atom(I,A,(P,(  V,VV))); 1,VV : a_atom(I,A,(P,(V+1,VV))) },
   opt_symmetries = 2,
   opt_synthesis = 1.

% V occurs less times than V+1 on the second argument of P (in type-I condition of action A)
less(V,V+1,A,I,P,2) :- V = 1..max_action_arity-1, action(A), I = 1..2, pred(P),
   0 #sum{ -1,VV : a_atom(I,A,(P,(VV,  V))); 1,VV : a_atom(I,A,(P,(VV,V+1))) },
   opt_symmetries = 2,
   opt_synthesis = 1.

% It cannot be that object O occurs less than O+1 as argument I of P,
% and it occurs less than or equal on the previous pairs (PP,II)
:- V = 1..max_action_arity-1, action(A),
   less(V,V+1,A,I,P,J),
   lesseq(V,V+1,A,II,PP,JJ) : II = 1..2, pred(PP), JJ = 1..2, (II,PP,JJ) < (I,P,J);
   opt_symmetries = 2,
   opt_synthesis = 1.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Optimize (lexicographic ordering)

% Prefer models with minimum sum of actions' cardinalities
#minimize { 1+N@10, A : a_arity(A,N) }.

% Prefer models with minimum sum of (non-static) predicates' cardinalities
#minimize { 1+N@8, P : pred(P), p_arity(P,N), not p_static(P) }.

% Prefer models with minimum sum of (static) predicates' cardinalities
#minimize { 1+N@6, P : pred(P), p_arity(P,N), p_static(P) }.

% Prefer models with minimum number of effects
#minimize { 1@4, A, P, T, V : eff(A,(P,T),V) }.

% Prefer models with minimum number of preconditions
#minimize { 1@2, A, P, T, V : prec(A,(P,T),V) }.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Display

#show.

% Display mode
#show    synthesis : opt_synthesis = 1.
#show verification : opt_synthesis = 0.

% Display objects
#show object/2.

% Display selected predicates
#show      pred(F) : pred(F),              opt_synthesis + opt_verbose >= 1.
#show  p_static(P) : p_static(P), pred(P), opt_synthesis + opt_verbose >= 1.

% Display action schemas
#show    action(A) : action(A),            opt_synthesis + opt_verbose >= 1.
#show a_arity(A,N) : a_arity(A,N),         opt_synthesis + opt_verbose >= 1.
#show  prec(A,M,V) : prec(A,M,V),          opt_synthesis + opt_verbose >= 1.
#show   eff(A,M,V) : eff(A,M,V),           opt_synthesis + opt_verbose >= 1.

% Display applicable actions
#show appl(I,A,OO,S)   : appl(I,A,OO,S),                   opt_verbose >= 2.
#show fappl(I,A,S,K,O) : fappl(I,A,S,K,O),                 opt_verbose >= 2.
#show appl(I,A,OO,S)   : appl(I,A,OO,S),                  opt_synthesis = 0.

% Display mapping of grounded actions to edges
#show fnext(I,(S1,S2),A,K,O) : fnext(I,(S1,S2),A,K,O),     opt_verbose >= 2.

%#show next(I,A,(0,),S1,S2)       : a_arity(A,0), fnext(I,(S1,S2),A,0,0).
%#show next(I,A,(O1,),S1,S2)      : a_arity(A,1), fnext(I,(S1,S2),A,1,O1).
%#show next(I,A,(O1,O2),S1,S2)    : a_arity(A,2), fnext(I,(S1,S2),A,1,O1), fnext(I,(S1,S2),A,2,O2).
%#show next(I,A,(O1,O2,O3),S1,S2) : a_arity(A,3), fnext(I,(S1,S2),A,1,O1), fnext(I,(S1,S2),A,2,O2), fnext(I,(S1,S2),A,3,O3).

