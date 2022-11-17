%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Changes

% Base: test3z3_3.lp

% 1. Implement action arities up to 4
% 2. Add partial processing of input graphs


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Suggested call

% clingo -t 6 --sat-prepro=2 --time-limit=7200 <solver> <files>


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Constants and options

#const num_predicates = 15.
#const max_action_arity = 4.
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

%       instance(I): I is non-negative integer
% tlabel(I,(S,T),L): I is instance, S and T nodes in I, L is label
%         node(I,S): S is node in instance I


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Low-level language F0

% Transparent low-level language which is used (elsewhere) to generate
% the high-level language F below


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% High-level language F

% Defined by feature/1, f_arity/2, f_static/2, fval/3, fval/4, and caused/6

%          feature(F): F is name of feature
%        f_arity(F,N): arity of F is N
%       f_static(I,F): feature F is static in instance I
%         fval(I,M,V): atom M has *static* value V in {0,1} in instance I
%       fval(I,M,S,V): atom M has value V in {0,1} in node S in instance I
% caused(I,S,T,A,M,V): labeled edge (S,T,A) in instance I caused atom V with value V in {0,1}

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

relevant(opt_ver_instance,opt_ver_node) :- node(opt_ver_instance,opt_ver_node), not disabled(opt_ver_instance),  opt_synthesis = 0.
relevant(I,S)                           :- node(I,S), not disabled(I), not partial(I,File) : filename(File);     opt_synthesis = 1.
#defined disabled/1.

% To bypass instance I altogether       : assert disabled(I)
% To consider "some" nodes of instance I: remove disabled(I), assert partial(I,File), filename(File), and add relevant(I,S) for target nodes


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Actions and objects

%    action(A): name A is action
% a_arity(A,N): action A has arity N

action(A) :- tlabel(I,(S,T),A), relevant(I,S).
{ a_arity(A,0..max_action_arity) } = 1 :- action(A), opt_synthesis = 1.

% object(I,O): name O is object in instance I
object(I,O) :- not disabled(I), fval(I,(verum,(O,)),1).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choose predicates from high-level language

% non_functional(F): non-static feature F is non-functional if there are two atoms
%                    (F,(O,O1)) and (F,(O,O2)) true at some node in some instance

non_functional(F) :- relevant(I,S), feature(F), not f_static(I,F), object(I,O),
                     2 { fval(I,(F,(O,O1)),S,1) : object(I,O1) },
                     opt_synthesis = 1.

% Choose num_predicates among non-functional features (denoted by pred/1)
feature_good(F) :- feature(F), not non_functional(F), opt_synthesis = 1.
%{ pred(F) : feature(F), not non_functional(F) } num_predicates :- opt_testing = 2, opt_synthesis = 1.
%{ pred(F) : feature(F) } num_predicates :- opt_testing < 2, opt_synthesis = 1.
% CHECK: Static preds not chosen! Revise this.

nelegible(F) :- fval(I,(F,(O,)),S,V), not object(I,O), O != null.
nelegible(F) :- fval(I,(F,(O,)),V), not object(I,O), O != null.
nelegible(F) :- fval(I,(F,(_,O)),V), not object(I,O).
nelegible(F) :- fval(I,(F,(O,_)),V), not object(I,O).
nelegible(F) :- fval(I,(F,(_,O)),S,V), not object(I,O).
nelegible(F) :- fval(I,(F,(O,_)),S,V), not object(I,O).
{ pred(F) : feature(F), not nelegible(F) } num_predicates :- opt_testing < 2, opt_synthesis = 1.


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
objtuple(I,   (O1,O1),2) :- object(I,O1),                             opt_equal_objects = 1.
%* No tuples of size > 2 for FACTORED model
objtuple(I,(O1,O2,O3),3) :- object(I,O1), object(I,O2), object(I,O3), O1 != O2, O1 != O3, O2 != O3.
objtuple(I,(O1,O2,O3),3) :- object(I,O1), object(I,O2), object(I,O3), opt_equal_objects = 1.
*%

% Assumption: predicates have arity < 3
:- p_arity(F,N), N > 2.

% Assert missing values for atoms (if some atom is not true, it is false)
fval(I,(F,OO),0)   :- feature(F),     f_static(I,F), p_arity(F,N), objtuple(I,OO,N),                not fval(I,(F,OO),1),   opt_fill_incomplete_valuations = 1.
%%%fval(I,(F,OO),S,0) :- feature(F), not f_static(I,F), p_arity(F,N), objtuple(I,OO,N), relevant(I,S), not fval(I,(F,OO),S,1), opt_fill_incomplete_valuations = 1.
fval(I,(F,OO),S,0) :- feature(F), not f_static(I,F), p_arity(F,N), objtuple(I,OO,N), node(I,S),     not fval(I,(F,OO),S,1), opt_fill_incomplete_valuations = 1.

% Make sure we have full valuation of atoms
:-     f_static(I,F), p_arity(F,N), objtuple(I,OO,N),                { fval(I,(F,OO),0..1)   } != 1, opt_fill_incomplete_valuations = 1.
%%%:- not f_static(I,F), p_arity(F,N), objtuple(I,OO,N), relevant(I,S), { fval(I,(F,OO),S,0..1) } != 1, opt_fill_incomplete_valuations = 1.
:- not f_static(I,F), p_arity(F,N), objtuple(I,OO,N), node(I,S),     { fval(I,(F,OO),S,0..1) } != 1, opt_fill_incomplete_valuations = 1.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define variables used by actions

% a_var(A,V): action A uses var V
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

% prec(A,M,V): atom M is negative (resp. positive) precondition of action A if V=0 (resp. V=1)

{ prec(A,(P,T),1) }      :- action(A), pred(P), p_arity(P,N), argtuple(T,N), goodtuple(A,T),
                            opt_allow_negative_precs = 0,
                            opt_synthesis = 1.

{ prec(A,(P,T),0..1) } 1 :- action(A), pred(P), p_arity(P,N), argtuple(T,N), goodtuple(A,T),
                            opt_allow_negative_precs = 1,
                            opt_synthesis = 1.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choice of lifted effects for actions

% eff(A,M,V): atom M is negative (resp. positive) effect of action A if V=0 (resp. V=1)

% p_static(P): P is static if it's so in all instances
p_static(P) :- pred(P), f_static(I,P) : instance(I).
p_fluent(P) :- pred(P), not f_static(I,P) : instance(I).

{ eff(A,(P,T),0..1) } 1 :- action(A), pred(P), not p_static(P), p_arity(P,N), argtuple(T,N), goodtuple(A,T),
                           opt_synthesis = 1.

% E1. Avoid noop actions and rule out contradictory effects
:- action(A), { eff(A,(P,T),0..1) : pred(P), p_arity(P,N), argtuple(T,N) } = 0, opt_synthesis = 1.
:- eff(A,M,0), eff(A,M,1), opt_synthesis = 1.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Map graph edges to grounded actions

% FACTORED appl: Only works for action arities up to 3

%* DISABLED AS NOT USED
vtuple_single(N,(K,))          :- N = 1..max_action_arity, K = 1..N.
vtuple_pair(N,(K1,K2))         :- N = 2..max_action_arity, K1 = 1..N, K2 = 1..N, K1 < K2.
*%

% FACTORED appl (static part)

fappl(I,A,null_arg,null_arg)   :- instance(I), action(A),
                                  fval(I,(P,null_arg),V)   : prec(A,(P,null_arg),V), f_static(I,P).

fappl(I,A,(1,),(O1,))          :- action(A), a_arity(A,N), N >= 1, objtuple(I,(O1,),1),
                                  fappl(I,A,null_arg,null_arg),
                                  fval(I,(P,(O1,)),V)      : prec(A,(P,(1,)),V),     f_static(I,P).

fappl(I,A,(2,),(O2,))          :- action(A), a_arity(A,N), N >= 2, objtuple(I,(O2,),1),
                                  fval(I,(P,(O2,)),V)      : prec(A,(P,(2,)),V),     f_static(I,P).

fappl(I,A,(3,),(O3,))          :- action(A), a_arity(A,N), N >= 3, objtuple(I,(O3,),1),
                                  fval(I,(P,(O3,)),V)      : prec(A,(P,(3,)),V),     f_static(I,P).

fappl(I,A,(4,),(O4,))          :- action(A), a_arity(A,N), N >= 4, objtuple(I,(O4,),1),
                                  fval(I,(P,(O4,)),V)      : prec(A,(P,(4,)),V),     f_static(I,P).

fappl(I,A,(1,2),(O1,O2))       :- action(A), a_arity(A,N), N >= 2, objtuple(I,(O1,O2),2),
                                  fappl(I,A,(1,),(O1,)),
                                  fappl(I,A,(2,),(O2,)),
                                  fval(I,(P,(O1,O1)),V)    : prec(A,(P,(1,1)),V),    f_static(I,P);
                                  fval(I,(P,(O1,O2)),V)    : prec(A,(P,(1,2)),V),    f_static(I,P);
                                  fval(I,(P,(O2,O1)),V)    : prec(A,(P,(2,1)),V),    f_static(I,P);
                                  fval(I,(P,(O2,O2)),V)    : prec(A,(P,(2,2)),V),    f_static(I,P);
                                  objtuple(I,(O1,O1),2)    : prec(A,(P,(1,1)),V);
                                  objtuple(I,(O1,O2),2)    : prec(A,(P,(1,2)),V);
                                  objtuple(I,(O2,O1),2)    : prec(A,(P,(2,1)),V);
                                  objtuple(I,(O2,O2),2)    : prec(A,(P,(2,2)),V).

fappl(I,A,(1,3),(O1,O3))       :- action(A), a_arity(A,N), N >= 3, objtuple(I,(O1,O3),2),
                                  fappl(I,A,(3,),(O3,)),
                                  fval(I,(P,(O1,O3)),V)    : prec(A,(P,(1,3)),V),    f_static(I,P);
                                  fval(I,(P,(O3,O1)),V)    : prec(A,(P,(3,1)),V),    f_static(I,P);
                                  fval(I,(P,(O3,O3)),V)    : prec(A,(P,(3,3)),V),    f_static(I,P);
                                  objtuple(I,(O1,O3),2)    : prec(A,(P,(1,3)),V);
                                  objtuple(I,(O3,O1),2)    : prec(A,(P,(3,1)),V);
                                  objtuple(I,(O3,O3),2)    : prec(A,(P,(3,3)),V).

fappl(I,A,(1,4),(O1,O4))       :- action(A), a_arity(A,N), N >= 4, objtuple(I,(O1,O4),2),
                                  fappl(I,A,(4,),(O4,)),
                                  fval(I,(P,(O1,O4)),V)    : prec(A,(P,(1,4)),V),    f_static(I,P);
                                  fval(I,(P,(O4,O1)),V)    : prec(A,(P,(4,1)),V),    f_static(I,P);
                                  fval(I,(P,(O4,O4)),V)    : prec(A,(P,(4,4)),V),    f_static(I,P);
                                  objtuple(I,(O1,O4),2)    : prec(A,(P,(1,4)),V);
                                  objtuple(I,(O4,O1),2)    : prec(A,(P,(4,1)),V);
                                  objtuple(I,(O4,O4),2)    : prec(A,(P,(4,4)),V).

fappl(I,A,(2,3),(O2,O3))       :- action(A), a_arity(A,N), N >= 3, objtuple(I,(O2,O3),2),
                                  fval(I,(P,(O2,O3)),V)    : prec(A,(P,(2,3)),V),    f_static(I,P);
                                  fval(I,(P,(O3,O2)),V)    : prec(A,(P,(3,2)),V),    f_static(I,P);
                                  objtuple(I,(O2,O3),2)    : prec(A,(P,(2,3)),V);
                                  objtuple(I,(O3,O2),2)    : prec(A,(P,(3,2)),V).

fappl(I,A,(2,4),(O2,O4))       :- action(A), a_arity(A,N), N >= 4, objtuple(I,(O2,O4),2),
                                  fval(I,(P,(O2,O4)),V)    : prec(A,(P,(2,4)),V),    f_static(I,P);
                                  fval(I,(P,(O4,O2)),V)    : prec(A,(P,(4,2)),V),    f_static(I,P);
                                  objtuple(I,(O2,O4),2)    : prec(A,(P,(2,4)),V);
                                  objtuple(I,(O4,O2),2)    : prec(A,(P,(4,2)),V).

fappl(I,A,(3,4),(O3,O4))       :- action(A), a_arity(A,N), N >= 4, objtuple(I,(O3,O4),2),
                                  fval(I,(P,(O3,O4)),V)    : prec(A,(P,(3,4)),V),    f_static(I,P);
                                  fval(I,(P,(O4,O3)),V)    : prec(A,(P,(4,3)),V),    f_static(I,P);
                                  objtuple(I,(O3,O4),2)    : prec(A,(P,(3,4)),V);
                                  objtuple(I,(O4,O3),2)    : prec(A,(P,(4,3)),V).

%* ABOVE IS MORE MEMORY EFFICIENT
fappl(I,A,null_arg,null_arg)   :- instance(I), action(A),
                                  fval(I,(P,null_arg),V)   : prec(A,(P,null_arg),V), f_static(I,P).

fappl(I,A,(K,),(O1,))          :- action(A), a_arity(A,N), N > 0, vtuple_single(N,(K,)), objtuple(I,(O1,),1),
                                  fappl(I,A,null_arg,null_arg),
                                  fval(I,(P,(O1,)),V)      : prec(A,(P,(K,)),V),     f_static(I,P).

fappl(I,A,(K1,K2),(O1,O2))     :- action(A), a_arity(A,N), N > 1, vtuple_pair(N,(K1,K2)), objtuple(I,(O1,O2),2),
                                  fappl(I,A,(K1,),(O1,)),
                                  fappl(I,A,(K2,),(O2,)),
                                  fval(I,(P,(O1,O1)),V)    : prec(A,(P,(K1,K1)),V),    f_static(I,P);
                                  fval(I,(P,(O1,O2)),V)    : prec(A,(P,(K1,K2)),V),    f_static(I,P);
                                  fval(I,(P,(O2,O1)),V)    : prec(A,(P,(K2,K1)),V),    f_static(I,P);
                                  fval(I,(P,(O2,O2)),V)    : prec(A,(P,(K2,K2)),V),    f_static(I,P);
                                  objtuple(I,(O1,O1),2)    : prec(A,(P,(K1,K1)),V);
                                  objtuple(I,(O1,O2),2)    : prec(A,(P,(K1,K2)),V);
                                  objtuple(I,(O2,O1),2)    : prec(A,(P,(K2,K1)),V);
                                  objtuple(I,(O2,O2),2)    : prec(A,(P,(K2,K2)),V).
*%

% FACTORED appl (dynamic part)

fappl(I,A,null_arg,null_arg,S) :- action(A), relevant(I,S),
                                  fappl(I,A,null_arg,null_arg),
                                  fval(I,(P,null_arg),S,V) : prec(A,(P,null_arg),V), not f_static(I,P).

fappl(I,A,(1,),(O1,),S)        :- action(A), a_arity(A,N), N >= 1, objtuple(I,(O1,),1), relevant(I,S),
                                  fappl(I,A,(1,),(O1,)),
                                  fappl(I,A,null_arg,null_arg,S),
                                  fval(I,(P,(O1,)),S,V)    : prec(A,(P,(1,)),V),     not f_static(I,P).

fappl(I,A,(2,),(O2,),S)        :- action(A), a_arity(A,N), N >= 2, objtuple(I,(O2,),1), relevant(I,S),
                                  fappl(I,A,(2,),(O2,)),
                                  fval(I,(P,(O2,)),S,V)    : prec(A,(P,(2,)),V),     not f_static(I,P).

fappl(I,A,(3,),(O3,),S)        :- action(A), a_arity(A,N), N >= 3, objtuple(I,(O3,),1), relevant(I,S),
                                  fappl(I,A,(3,),(O3,)),
                                  fval(I,(P,(O3,)),S,V)    : prec(A,(P,(3,)),V),     not f_static(I,P).

fappl(I,A,(4,),(O4,),S)        :- action(A), a_arity(A,N), N >= 4, objtuple(I,(O4,),1), relevant(I,S),
                                  fappl(I,A,(4,),(O4,)),
                                  fval(I,(P,(O4,)),S,V)    : prec(A,(P,(4,)),V),     not f_static(I,P).

fappl(I,A,(1,2),(O1,O2),S)     :- action(A), a_arity(A,N), N >= 2, objtuple(I,(O1,O2),2), relevant(I,S),
                                  fappl(I,A,(1,2),(O1,O2)),
                                  fappl(I,A,(1,),(O1,),S),
                                  fappl(I,A,(2,),(O2,),S),
                                  fval(I,(P,(O1,O1)),S,V)  : prec(A,(P,(1,1)),V),    not f_static(I,P);
                                  fval(I,(P,(O1,O2)),S,V)  : prec(A,(P,(1,2)),V),    not f_static(I,P);
                                  fval(I,(P,(O2,O1)),S,V)  : prec(A,(P,(2,1)),V),    not f_static(I,P);
                                  fval(I,(P,(O2,O2)),S,V)  : prec(A,(P,(2,2)),V),    not f_static(I,P).

fappl(I,A,(1,3),(O1,O3),S)     :- action(A), a_arity(A,N), N >= 3, objtuple(I,(O1,O3),2), relevant(I,S),
                                  fappl(I,A,(1,3),(O1,O3)),
                                  fappl(I,A,(3,),(O3,),S),
                                  fval(I,(P,(O1,O3)),S,V)  : prec(A,(P,(1,3)),V),    not f_static(I,P);
                                  fval(I,(P,(O3,O1)),S,V)  : prec(A,(P,(3,1)),V),    not f_static(I,P);
                                  fval(I,(P,(O3,O3)),S,V)  : prec(A,(P,(3,3)),V),    not f_static(I,P).

fappl(I,A,(1,4),(O1,O4),S)     :- action(A), a_arity(A,N), N >= 4, objtuple(I,(O1,O4),2), relevant(I,S),
                                  fappl(I,A,(1,4),(O1,O4)),
                                  fappl(I,A,(4,),(O4,),S),
                                  fval(I,(P,(O1,O4)),S,V)  : prec(A,(P,(1,4)),V),    not f_static(I,P);
                                  fval(I,(P,(O4,O1)),S,V)  : prec(A,(P,(4,1)),V),    not f_static(I,P);
                                  fval(I,(P,(O4,O4)),S,V)  : prec(A,(P,(4,4)),V),    not f_static(I,P).

fappl(I,A,(2,3),(O2,O3),S)     :- action(A), a_arity(A,N), N >= 3, objtuple(I,(O2,O3),2), relevant(I,S),
                                  fappl(I,A,(2,3),(O2,O3)),
                                  fval(I,(P,(O2,O3)),S,V)  : prec(A,(P,(2,3)),V),    not f_static(I,P);
                                  fval(I,(P,(O3,O2)),S,V)  : prec(A,(P,(3,2)),V),    not f_static(I,P).

fappl(I,A,(2,4),(O2,O4),S)     :- action(A), a_arity(A,N), N >= 4, objtuple(I,(O2,O4),2), relevant(I,S),
                                  fappl(I,A,(2,4),(O2,O4)),
                                  fval(I,(P,(O2,O4)),S,V)  : prec(A,(P,(2,4)),V),    not f_static(I,P);
                                  fval(I,(P,(O4,O2)),S,V)  : prec(A,(P,(4,2)),V),    not f_static(I,P).

fappl(I,A,(3,4),(O3,O4),S)     :- action(A), a_arity(A,N), N >= 4, objtuple(I,(O3,O4),2), relevant(I,S),
                                  fappl(I,A,(3,4),(O3,O4)),
                                  fval(I,(P,(O3,O4)),S,V)  : prec(A,(P,(3,4)),V),    not f_static(I,P);
                                  fval(I,(P,(O4,O3)),S,V)  : prec(A,(P,(4,3)),V),    not f_static(I,P).

%* ABOVE IS MORE MEMORY EFFICIENT
fappl(I,A,null_arg,null_arg,S) :- action(A), relevant(I,S),
                                  fval(I,(P,null_arg),S,V) : prec(A,(P,null_arg),V), not f_static(I,P).

fappl(I,A,(K,),(O1,),S)        :- action(A), a_arity(A,N), N > 0, vtuple_single(N,(K,)), objtuple(I,(O1,),1), relevant(I,S),
                                  fappl(I,A,null_arg,null_arg,S),
                                  fval(I,(P,(O1,)),S,V)    : prec(A,(P,(K,)),V),     not f_static(I,P).

fappl(I,A,(K1,K2),(O1,O2),S)   :- action(A), a_arity(A,N), N > 1, vtuple_pair(N,(K1,K2)), objtuple(I,(O1,O2),2), relevant(I,S),
                                  fappl(I,A,(K1,),(O1,),S),
                                  fappl(I,A,(K2,),(O2,),S),
                                  fval(I,(P,(O1,O1)),S,V)  : prec(A,(P,(K1,K1)),V),  not f_static(I,P);
                                  fval(I,(P,(O1,O2)),S,V)  : prec(A,(P,(K1,K2)),V),  not f_static(I,P);
                                  fval(I,(P,(O2,O1)),S,V)  : prec(A,(P,(K2,K1)),V),  not f_static(I,P);
                                  fval(I,(P,(O2,O2)),S,V)  : prec(A,(P,(K2,K2)),V),  not f_static(I,P);
                                  objtuple(I,(O1,O1),2)    : prec(A,(P,(K1,K1)),V); % CHECK: DO WE NEED THIS? NO, ALREADY CHECKED IN STATIC PART
                                  objtuple(I,(O1,O2),2)    : prec(A,(P,(K1,K2)),V); % CHECK: DO WE NEED THIS? NO, ALREADY CHECKED IN STATIC PART
                                  objtuple(I,(O2,O1),2)    : prec(A,(P,(K2,K1)),V); % CHECK: DO WE NEED THIS? NO, ALREADY CHECKED IN STATIC PART
                                  objtuple(I,(O2,O2),2)    : prec(A,(P,(K2,K2)),V). % CHECK: DO WE NEED THIS? NO, ALREADY CHECKED IN STATIC PART
*%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Match edges with grounded actions

% FACTORED next

% Assumption: each edge (S1,S2) is labeled with unique action A, and maps to unique grounded action A(OO)
:- tlabel(I,(S1,S2),A), tlabel(I,(S1,S2),B), A < B.

% fnext(I,K,O,S1,S2) : for edge tlabel(I,(S1,S2),A), K-th argument of A(OO) is object O

% Account for proper def of next(I,A,OO,S1,S2):
%   1.a. Choose next S2 if ground action A(OO) is applicable in S1
%   1.b. If A/k1 -> O1 in (S1,S2), then A/k2 -> O2, for some O2, for each arg k1 of action A in (S1,S2) (i.e, A(OO) must be fully defined for (S1,S2))
%   1.c. It cannot be fnext(I,K,O1,S1,S2) and fnext(I,K,O2,S1,S2) with O1 != O2
%   1.d. A(OO) cannot be mapped to two edges (S1,S2) and (S1,S3) with S2 != S3
%   1.e. If tlabel(I,(S1,S2),A), then fnext(I,0,0,S1,S2) or fnext(I,1,_,S1,S2)

% 1.a. Choose next S2 if ground action A(OO) is applicable in S1

  { fnext(I,0,0,  S1,S2) : tlabel(I,(S1,S2),A) } = 1 :- action(A), a_arity(A,0), relevant(I,S1),
                                                        fappl(I,A,null_arg,null_arg,S1).

  { fnext(I,1,O1, S1,S2) : tlabel(I,(S1,S2),A) } = 1 :- action(A), a_arity(A,1), relevant(I,S1),
                                                        fappl(I,A,(1,),(O1,),S1).

1 { fnext(I,1,O1, S1,S2) : tlabel(I,(S1,S2),A) }     :- action(A), a_arity(A,2), relevant(I,S1),
                                                        fappl(I,A,(1,2),(O1,O2),S1).
1 { fnext(I,2,O2, S1,S2) : tlabel(I,(S1,S2),A) }     :- action(A), a_arity(A,2), relevant(I,S1),
                                                        fappl(I,A,(1,2),(O1,O2),S1).

1 { fnext(I,1,O1, S1,S2) : tlabel(I,(S1,S2),A) }     :- action(A), a_arity(A,3), relevant(I,S1),
                                                        fappl(I,A,(1,2),(O1,O2),S1), fappl(I,A,(1,3),(O1,O3),S1), fappl(I,A,(2,3),(O2,O3),S1).
1 { fnext(I,2,O2, S1,S2) : tlabel(I,(S1,S2),A) }     :- action(A), a_arity(A,3), relevant(I,S1),
                                                        fappl(I,A,(1,2),(O1,O2),S1), fappl(I,A,(1,3),(O1,O3),S1), fappl(I,A,(2,3),(O2,O3),S1).
1 { fnext(I,3,O3, S1,S2) : tlabel(I,(S1,S2),A) }     :- action(A), a_arity(A,3), relevant(I,S1),
                                                        fappl(I,A,(1,2),(O1,O2),S1), fappl(I,A,(1,3),(O1,O3),S1), fappl(I,A,(2,3),(O2,O3),S1).

1 { fnext(I,1,O1, S1,S2) : tlabel(I,(S1,S2),A) }     :- action(A), a_arity(A,4), relevant(I,S1),
                                                        fappl(I,A,(1,2),(O1,O2),S1), fappl(I,A,(1,3),(O1,O3),S1), fappl(I,A,(1,4),(O1,O4),S1),
                                                        fappl(I,A,(2,3),(O2,O3),S1), fappl(I,A,(2,4),(O2,O4),S1), fappl(I,A,(3,4),(O3,O4),S1).
1 { fnext(I,2,O2, S1,S2) : tlabel(I,(S1,S2),A) }     :- action(A), a_arity(A,4), relevant(I,S1),
                                                        fappl(I,A,(1,2),(O1,O2),S1), fappl(I,A,(1,3),(O1,O3),S1), fappl(I,A,(1,4),(O1,O4),S1),
                                                        fappl(I,A,(2,3),(O2,O3),S1), fappl(I,A,(2,4),(O2,O4),S1), fappl(I,A,(3,4),(O3,O4),S1).
1 { fnext(I,3,O3, S1,S2) : tlabel(I,(S1,S2),A) }     :- action(A), a_arity(A,4), relevant(I,S1),
                                                        fappl(I,A,(1,2),(O1,O2),S1), fappl(I,A,(1,3),(O1,O3),S1), fappl(I,A,(1,4),(O1,O4),S1),
                                                        fappl(I,A,(2,3),(O2,O3),S1), fappl(I,A,(2,4),(O2,O4),S1), fappl(I,A,(3,4),(O3,O4),S1).
1 { fnext(I,4,O4, S1,S2) : tlabel(I,(S1,S2),A) }     :- action(A), a_arity(A,4), relevant(I,S1),
                                                        fappl(I,A,(1,2),(O1,O2),S1), fappl(I,A,(1,3),(O1,O3),S1), fappl(I,A,(1,4),(O1,O4),S1),
                                                        fappl(I,A,(2,3),(O2,O3),S1), fappl(I,A,(2,4),(O2,O4),S1), fappl(I,A,(3,4),(O3,O4),S1).

% 1.b. If k1 -> O1 in (S1,S2), then k2 -> O2 in (S1,S2), for some O2, for each arg k1 of action A (i.e, A(OO) must be fully defined for (S1,S2))
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), fnext(I,K1,O1,S1,S2), K1 > 0, K2 = 1..N, K2 != K1, not fnext(I,K2,O2,S1,S2) : object(I,O2).

% 1.c. It cannot be fnext(I,K,O1,S1,S2) and fnext(I,K,O2,S1,S2) with O1 < O2
:- relevant(I,S1), fnext(I,K,O1,S1,S2), fnext(I,K,O2,S1,S2), O1 < O2.

% 1.d. A(OO) cannot be mapped to two edges (S1,S2) and (S1,S3) with S2 < S3
:- relevant(I,S1), tlabel(I,(S1,S2),A), tlabel(I,(S1,S3),A), S2 < S3, a_arity(A,0).
:- relevant(I,S1), tlabel(I,(S1,S2),A), tlabel(I,(S1,S3),A), S2 < S3, a_arity(A,N), N >= 1, fnext(I,1,O,S1,S2), fnext(I,1,O,S1,S3), not diff_fnext(I,A,K2,S1,S2,S3) : K2 = 2..N.
diff_fnext(I,A,K,S1,S2,S3) :- relevant(I,S1), tlabel(I,(S1,S2),A), tlabel(I,(S1,S3),A), S2 < S3, a_arity(A,N), N >= 1, K = 2..N, fnext(I,K,O1,S1,S2), fnext(I,K,O2,S1,S3), O1 != O2.

% 1.e. If tlabel(I,(S1,S2),A), then fnext(I,0,0,S1,S2) or fnext(I,1,_,S1,S2)
:- relevant(I,S1), tlabel(I,(S1,S2),A), not fnext(I,0,0,S1,S2), not fnext(I,1,O,S1,S2) : object(I,O).

% Check application of effects
%   2.a. If A(OO1) mapped to (S1,S2) and eff(A,(P,OO2),V), then fval(I,(P,OO2),S2,V)
%   2.b. If A(OO1) mapped to (S1,S2), fval(I,(P,OO2),S1,V) and fval(I,(P,OO2),S2,1-V), then eff(A,(P,OO2),1-V).

% 2.a. If A(OO1) mapped to (S1,S2) and eff(A,(P,OO2),V), then fval(I,(P,OO2),S2,V)
%      i.e. :- relevant(I,S1), next(I,A,OO1,S1,S2), eff(A,(P,T),V), map(I,T,OO1,OO2), fval(I,(P,OO2),S2,1-V).
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 0, fnext(I,_,_,S1,S2),                         eff(A,(P,null_arg),V), not f_static(I,P), fval(I,(P,null_arg),S2,1-V).
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 1, fnext(I,K,O,S1,S2),                         eff(A,(P,(K,)),V),     not f_static(I,P), fval(I,(P,(O,)),S2,1-V).
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 1, fnext(I,K,O,S1,S2),                         eff(A,(P,(K,K)),V),    not f_static(I,P), fval(I,(P,(O,O)),S2,1-V).
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 2, fnext(I,K1,O1,S1,S2), fnext(I,K2,O2,S1,S2), eff(A,(P,(K1,K2)),V),  not f_static(I,P), fval(I,(P,(O1,O2)),S2,1-V), K1 < K2.
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 2, fnext(I,K1,O1,S1,S2), fnext(I,K2,O2,S1,S2), eff(A,(P,(K2,K1)),V),  not f_static(I,P), fval(I,(P,(O2,O1)),S2,1-V), K1 < K2.

:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 0, fnext(I,_,_,S1,S2),                         eff(A,(P,null_arg),V),     f_static(I,P), fval(I,(P,null_arg),1-V).
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 1, fnext(I,K,O,S1,S2),                         eff(A,(P,(K,)),V),         f_static(I,P), fval(I,(P,(O,)),1-V).
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 1, fnext(I,K,O,S1,S2),                         eff(A,(P,(K,K)),V),        f_static(I,P), fval(I,(P,(O,O)),1-V).
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 2, fnext(I,K1,O1,S1,S2), fnext(I,K2,O2,S1,S2), eff(A,(P,(K1,K2)),V),      f_static(I,P), fval(I,(P,(O1,O2)),1-V), K1 < K2.
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 2, fnext(I,K1,O1,S1,S2), fnext(I,K2,O2,S1,S2), eff(A,(P,(K2,K1)),V),      f_static(I,P), fval(I,(P,(O2,O1)),1-V), K1 < K2.

% 2.b. If A(OO1) mapped to (S1,S2), fval(I,(P,OO2),S1,V) and fval(I,(P,OO2),S2,1-V), then eff(A,(P,OO2),1-V).
%      i.e. :- relevant(I,S1), next(I,A,OO1,S1,S2), pred(P), fval(I,(P,OO2),S1,V), fval(I,(P,OO2),S2,1-V), not eff(A,(P,T),1-V) : map(I,T,OO1,OO2).
:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N  = 0, fnext(I,0,0,S1,S2),
   pred(P), fval(I,(P,OO),S1,V), fval(I,(P,OO),S2,1-V),
   objtuple(I,OO,M), M > 0.

:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N  = 1, fnext(I,1,_,S1,S2),
   pred(P), fval(I,(P,(O1,O2)),S1,V), fval(I,(P,(O1,O2)),S2,1-V),
   O1 != O2. % CHECK: SUBSUMED?

:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,0),         fnext(I,0,0,S1,S2),
   pred(P), fval(I,(P,null_arg),S1,V), fval(I,(P,null_arg),S2,1-V),
   not eff(A,(P,null_arg),1-V).

:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 1, fnext(I,1,_,S1,S2),
   pred(P), fval(I,(P,null_arg),S1,V), fval(I,(P,null_arg),S2,1-V),
   not eff(A,(P,null_arg),1-V).

:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 1, fnext(I,1,_,S1,S2),
   pred(P), fval(I,(P,(O,)),S1,V), fval(I,(P,(O,)),S2,1-V), O != null,
   not eff(A,(P,(K,)),1-V) : fnext(I,K,O,S1,S2).

:- relevant(I,S1), tlabel(I,(S1,S2),A), a_arity(A,N), N >= 1, fnext(I,1,_,S1,S2),
   pred(P), fval(I,(P,(O1,O2)),S1,V), fval(I,(P,(O1,O2)),S2,1-V),
   not eff(A,(P,(K1,K2)),1-V) : fnext(I,K1,O1,S1,S2), fnext(I,K2,O2,S1,S2).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fundamental constraints

% FACTORED next
% F1. If (S1,S2) has label A, then A(OO) maps S1 to S2 for some object tuple OO
:- relevant(I,S1), a_arity(A,0), X = { tlabel(I,(S1,S2),A) : node(I,S2) }, #count {             S2 : tlabel(I,(S1,S2),A), fnext(I,0,0,S1,S2) } != X.
:- relevant(I,S1), a_arity(A,1), X = { tlabel(I,(S1,S2),A) : node(I,S2) }, #count {          O1,S2 : tlabel(I,(S1,S2),A), fnext(I,1,O1,S1,S2) } != X.
:- relevant(I,S1), a_arity(A,2), X = { tlabel(I,(S1,S2),A) : node(I,S2) }, #count {       O1,O2,S2 : tlabel(I,(S1,S2),A), fnext(I,1,O1,S1,S2), fnext(I,2,O2,S1,S2) } != X.
:- relevant(I,S1), a_arity(A,3), X = { tlabel(I,(S1,S2),A) : node(I,S2) }, #count {    O1,O2,O3,S2 : tlabel(I,(S1,S2),A), fnext(I,1,O1,S1,S2), fnext(I,2,O2,S1,S2), fnext(I,3,O3,S1,S2) } != X.
:- relevant(I,S1), a_arity(A,4), X = { tlabel(I,(S1,S2),A) : node(I,S2) }, #count { O1,O2,O3,O4,S2 : tlabel(I,(S1,S2),A), fnext(I,1,O1,S1,S2), fnext(I,2,O2,S1,S2), fnext(I,3,O3,S1,S2), fnext(I,4,O4,S1,S2) } != X.

% F2. Different nodes are different states with respect to chosen predicates
:- relevant(I,S1), relevant(I,S2), S1 < S2, fval(I,(P,OO),S2,V) : fval(I,(P,OO),S1,V), pred(P), not f_static(I,P).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Break symmetries (taken from STRIPS learner's ASP code)

% a_atom(I,A,M): action A uses atom M = (P,T) as prec (I=1) or effect (I=2)
% a_atom(A,M): action A uses atom M = (P,T)
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
#show      pred(F) : pred(F),                         opt_synthesis + opt_verbose >= 1.
#show  p_static(P) : p_static(P), pred(P),            opt_synthesis + opt_verbose >= 1.

% Display action schemas
%#show    action(A) : action(A),                       opt_synthesis + opt_verbose >= 1.
%#show a_arity(A,N) : a_arity(A,N),                    opt_synthesis + opt_verbose >= 1.
%#show  prec(A,M,V) : prec(A,M,V),                     opt_synthesis + opt_verbose >= 1.
%#show   eff(A,M,V) : eff(A,M,V),                      opt_synthesis + opt_verbose >= 1.
#show action/1.
#show a_arity/2.
#show prec/3.
#show eff/3.

% Display applicable actions
%#show appl(I,A,OO,S)   : appl(I,A,OO,S),                             opt_verbose >= 2.
%#show fappl(I,A,S,K,O) : fappl(I,A,S,K,O),                           opt_verbose >= 2.
%#show appl(I,A,OO,S)   : appl(I,A,OO,S),                           opt_synthesis  = 0.

% Display mapping of grounded actions to edges
#show fnext(I,A,K,O,S1,S2) : tlabel(I,(S1,S2),A), fnext(I,K,O,S1,S2), opt_verbose >= 2.

%#show next(I,A,null_arg,S1,S2)   : a_arity(A,0), tlabel(I,(S1,S2),A), fnext(I,0,0,S1,S2).
%#show next(I,A,(O1,),S1,S2)      : a_arity(A,1), tlabel(I,(S1,S2),A), fnext(I,1,O1,S1,S2).
%#show next(I,A,(O1,O2),S1,S2)    : a_arity(A,2), tlabel(I,(S1,S2),A), fnext(I,1,O1,S1,S2), fnext(I,2,O2,S1,S2).
%#show next(I,A,(O1,O2,O3),S1,S2) : a_arity(A,3), tlabel(I,(S1,S2),A), fnext(I,1,O1,S1,S2), fnext(I,2,O2,S1,S2), fnext(I,3,O3,S1,S2).
%#show next(I,A,(O1,O2,O3,O4),S1,S2) : a_arity(A,3), tlabel(I,(S1,S2),A), fnext(I,1,O1,S1,S2), fnext(I,2,O2,S1,S2), fnext(I,3,O3,S1,S2), fnext(I,4,O4,S1,S2).

