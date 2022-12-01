#const max_predicates = 12.
#const max_arity = 3. % for each action

% Actions and objects
action(L) :- tlabel(I,T,L).
{ a_arity(A,1..max_arity) } = 1 :- action(A).
object(I,X) :- fval(I,(verum,(X,)),1).

% Choose predicates from high-level language, must be non-functional
non_functional(P) :- instance(I), feature(P), not f_static(I,P),
                     2{fval(I,(P,(O1,O2)),V): object(I,O2)}, object(I,O1).
feature_good(P) :- feature(P), not non_functional(P).
{ pred(P) : feature_good(P) } max_predicates.
p_arity(P,N) :- f_arity(P,N), pred(P).

% Tuples of variables for lifted effects and preconditions
argtuple((V1,),1) :- V1=0..max_arity.
argtuple((V1,V2),2) :- V1=1..max_arity, V2=1..max_arity, V1!=V2.

% Define variables used by each action
actionvar(A,V) :- a_arity(A,AR), V=0..AR.

% Define variables appearing in a variable tuple
tuplevar((V,),V):- argtuple((V,),1).
tuplevar((V1,V2),V1):- argtuple((V1,V2),2).
tuplevar((V1,V2),V2):- argtuple((V1,V2),2).

% Define, for each action A, those tuples that feature action variables only
goodtuple(A,T) :- action(A), argtuple(T,AR), actionvar(A,V1): tuplevar(T,V1).

% Define truth values}
tval(0..1).

% Generate lifted preconditions for each action
prec(A,(P,T),V) :- action(A), pred(P), p_arity(P,AR), argtuple(T,AR), 
                   goodtuple(A,T), tval(V),
                   fval(I,(P,OO2),V): next(I,A,OO1,S1,S2), map(I,T,OO1,OO2),
                                       argtuple(T,AR), goodtuple(A,T), f_static(I,P); 
                   fval(I,(P,OO2),S1,V) : next(I,A,OO1,S1,S2), map(I,T,OO1,OO2), 
                                           argtuple(T,AR), goodtuple(A,T), 
                                           not f_static(I,P).
                                           
% Choose lifted effects for each action (at least one)
1 {eff(A,(P,T),V) : p_arity(P,AR), argtuple(T,AR), pred(P), caused(I,S1,S2,A,(P,OO),V)} :- action(A).
                            
% Only generate lifted effects for caused changes
:- eff(A,(P,T),V), next(I,A,OO1,S1,S2), map(I,T,OO1,OO2), not caused(I,S1,S2,A,(P,OO2),V), pred(P), not f_static(I,P).
:- eff(A,(P,T),V), next(I,A,OO1,S1,S2), map(I,T,OO1,OO2), caused(I,S1,S2,A,(P,OO2),1-V), pred(P), not f_static(I,P).

% Ensure that all and only caused changes are explained by lifted effects
explained(I,S1,S2,A,(P,OO2),V) :- eff(A,(P,T),V), next(I,A,OO1,S1,S2), map(I,T,OO1,OO2), pred(P), not f_static(I,P).
:- not explained(I,S1,S2,A,(P,OO),V), caused(I,S1,S2,A,(P,OO),V), pred(P).
:- explained(I,S1,S2,A,(P,OO),V), not caused(I,S1,S2,A,(P,OO),V), pred(P).

% Check that variables mentioned in precs and effects are action arguments
:- eff(A,(_,(V, )),_), a_arity(A,ARITY), ARITY < V.
:- eff(A,(_,(V,_)),_), a_arity(A,ARITY), ARITY < V.
:- eff(A,(_,(_,V)),_), a_arity(A,ARITY), ARITY < V.
:- prec(A,(_,(V, )),_), a_arity(A,ARITY), ARITY < V.
:- prec(A,(_,(V,_)),_), a_arity(A,ARITY), ARITY < V.
:- prec(A,(_,(_,V)),_), a_arity(A,ARITY), ARITY < V.

% Tuples of objects for grounding the action schemas and atoms
objtuple(I,(0,),1):- instance(I).  % for nullary predicates
objtuple(I,(O1, ),1) :- object(I,O1).
objtuple(I,(O1,O2 ),2) :- object(I,O1), object(I,O2), O1!=O2.
objtuple(I,(O1,O2,O3),3) :- object(I,O1), object(I,O2), object(I,O3), O1!=O2, O1!=O3, O2!=O3.

% Check preconditions: ground action A(OO1) is applicable in node S of instance I
appl(I,A,OO1,S) :- action(A), a_arity(A,ARITY), objtuple(I,OO1,ARITY), node(I,S),
                         fval(I,(P,OO2),V) : prec(A,(P,T),V), map(I,T,OO1,OO2), 
                         f_static(I,P);
                         fval(I,(P,OO2),S,V) : prec(A,(P,T),V), map(I,T,OO1,OO2), 
                         not f_static(I,P).

% If ground action A(OO) applicable in S1, assign to some edge (S1,S2) with same label
{ next(I,A,OO,S1,S2) : tlabel(I,(S1,S2),A) }= 1 :- appl(I,A,OO,S1).

% Every edge is assigned to a ground action with the same label
:- tlabel(I,(S1,S2),A), action(A), { next(I,A,OO,S1,S2) } != 1.

% Different nodes are different states with respect to chosen predicates
:- node(I,S1), node(I,S2), S1 < S2, fval(I,(P,T),S2,V) : fval(I,(P,T),S1,V), pred(P).

% Map selects grounding of lifted atoms in schema from grounding of action arguments
map(I,(0,),(O1,),(0,)) :- objtuple(I,(O1,),1). % for nullary predicates
map(I,(0,),(O1,O2),(0,)) :- objtuple(I,(O1,O2),2). % for nullary predicates
map(I,(0,),(O1,O2,O3),(0,)) :- objtuple(I,(O1,O2,O3),3). % for nullary predicates
map(I, (1,), (O1,), (O1,)) :- objtuple(I,(O1,),1).
map(I, (1,), (O1,O2), (O1,)) :- objtuple(I,(O1,O2),2).
map(I, (2,), (O1,O2), (O2,)) :- objtuple(I,(O1,O2),2).
map(I, (1,), (O1,O2,O3), (O1,)) :- objtuple(I,(O1,O2,O3),3).
map(I, (2,), (O1,O2,O3), (O2,)) :- objtuple(I,(O1,O2,O3),3).
map(I, (3,), (O1,O2,O3), (O3,)) :- objtuple(I,(O1,O2,O3),3).
map(I,(1,2),(O1,O2),(O1,O2)) :-    objtuple(I,(O1,O2),2).
map(I,(2,1),(O1,O2),(O2,O1)) :-    objtuple(I,(O1,O2),2).
map(I,(1,2),(O1,O2,O3),(O1,O2)) :- objtuple(I,(O1,O2,O3),3).
map(I,(1,3),(O1,O2,O3),(O1,O3)) :- objtuple(I,(O1,O2,O3),3).
map(I,(2,1),(O1,O2,O3),(O2,O1)) :- objtuple(I,(O1,O2,O3),3).
map(I,(2,3),(O1,O2,O3),(O2,O3)) :- objtuple(I,(O1,O2,O3),3).
map(I,(3,1),(O1,O2,O3),(O3,O1)) :- objtuple(I,(O1,O2,O3),3).
map(I,(3,2),(O1,O2,O3),(O3,O2)) :- objtuple(I,(O1,O2,O3),3).

% Display
#show a_arity/2.
#show eff/3.
#show prec/3.
#show next/5.
#show pred/1.