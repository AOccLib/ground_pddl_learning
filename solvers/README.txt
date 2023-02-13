
solver.lp

solver.lp is OLD/test3z3_7.lp

========================================================================

solver_eqc3.lp

Modification of solver.lp that solves problems where different images
correspond to the same hidden state:


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Representatives of equivalence classes

  % Two states S1 and S2 belong to the same equivalence class if they have the same valuation over chosen atoms
  equiv(I,S,S)       :- node(I,S).
  equiv(I,S1,S2)     :- node(I,S1), node(I,S2), S1 < S2, fval(I,(P,OO),S1,V) : fval(I,(P,OO),S2,V), pred(P), not f_static(I,P).
  not_equiv(I,S1,S2) :- node(I,S1), node(I,S2), S1 < S2, pred(P), not f_static(I,P), fval(I,(P,OO),S1,V), fval(I,(P,OO),S2,1-V).

  % If R is relevant, it is representative unless other relevant state S < R is equivalent to R
  repr(I,R)      :- relevant(I,R), not_equiv(I,S,R) : relevant(I,S), S < R.

  % If R isn't relevant, it is a representative unless no relevant X or state X < S is equivalent to R
  repr(I,R)      :- node(I,R), not relevant(I,R),
                    not_equiv(I,S,R) : node(I,S), S < R;
                    not_equiv(I,R,S) : relevant(I,S), R < S.

  % Node R represents node S
  repr(I,R,S)    :- repr(I,R), node(I,S), fval(I,(P,OO),R,V) : fval(I,(P,OO),S,V), pred(P), not f_static(I,P).

  % Node R is relevant and representative
  relrepr(I,R)   :- relevant(I,R), repr(I,R).

  % Project transitions over representatives
  tlabelR(I,(R1,R2),A) :- relevant(I,R1), repr(I,R1,S1), repr(I,R2,S2), tlabel(I,(S1,S2),A).

  % No self loops or parallel edges in abstraction
  :- tlabelR(I,(R,R),A).
  :- tlabelR(I,(R1,R2),A), tlabelR(I,(R1,R2),B), A < B.

  % F1. Two different representatives are in different equivalence classes
  :- repr(I,R1), repr(I,R2), R1 < R2, equiv(I,R1,R2).

The constraints on self loops and parallel edges are not fully justified.
These constraints are removed in solver_eqc3_max.lp

Once the equivalence classes and their representatives are set,
solver_eq3.lp replaces relevant/2 and tlabel/3 by relrepr/2 and
tlabelR/3 respectively.

Output of solver show information about the relevance classes and
projected transitions.

#show repr/2.
#show repr/3.
#show tlabelR/3.

========================================================================

solver_eqc3_max.lp

The two ad-hoc constraints are replaced by an optimization criteria
that maximizes the number of equivalence classes:

  % Maximize number of equivalence classes
  #maximize { R@12,I : repr(I,R) }.

This is a justified criteria that subsumes the ad-hoc constrained.
Submitted paper to ICAPS-23 uses this formulation.

This is the unique change wrt solver_eqc3.lp

========================================================================

solver_noise_simple.lp

Noise model consists in that the truth-value of a random subset of
atoms is not known. The solver addresses this by letting the solver
choose the truth-value of such atoms. The optimization criteria minimizes
the number of such choosing. The solver also outputs the assigned truth
values.

The first implementation assumes a verifier with complete information so
it doesn't need to be modified.

Noise atoms are indicates as unknown(I,M,S) where I is instance, M is
ground atom, and S is state. These facts are randomly chosen and inserted
into the program. The input must "remove" the valuation of atom M at
state S from the input.

