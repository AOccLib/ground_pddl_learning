# Graph files for different domains

A graph file (.lp) describes a state transition system as a *labeled and directed graph* together with the denotation of features at each vertex in the graph, where the features belong to a *pool of features* constructed from the PDDL domain using a description logic (DL) grammar.

Multiple graph files for instances of a common domain are stored in a .zip. The .zip file shall also contain the ``collection.txt`` and ``log.txt`` files that are created during the generation process. The first describes the concepts, roles and predicates obtained with the DL grammar, while the second is the trace of the generation process.

The name of the .zip file hints the parameters used for generation but the precise details shall be found in ``log.txt``.

The .zip files in this folder are partitioned into solvable and unsolvable. The files in the first group admit a solution computed by the solver, one of them, while the files in the second group do not have solution (typically due to lack of sufficiently expressive features).

All the files in this folder were generated using the programs in ``feature_generation/`` and the domains in ``domains/``, while the status as solvable or not were obtained by running the solver.
