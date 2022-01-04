# Learning ground PDDL models

### Installation

Python 3.7 is needed as well as the packages ``termcolor`` and ``tqdm``. Clingo 5.5.0 must be reachable and executable.

### Definitions of domains and instances

The **domains** folder contains the PDDL definitions for domains and instances used in the experiments. The folder structure is as follows:
```bash
    .
    ├── domains                                 # defs of domains and instances used in experiments
    │   ├── domain1                             # name of domain 1
    │   │   ├── domain.pddl                     # domain definition
    │   │   ├── instance1.pddl                  # problem definition 1
    │   │   ...		
    │   │   └── instanceN.pddl                  # problem definition N
    │   └── domain2		
    │   │   ...		
    └── ...
```
### Graphs
The **graphs** folder contains the input graphs for a given domain used in the experiments in **compressed format**.
Once decompressed, a domain folder is as follows:
```bash
    .
    └── domain                                   # name of domain
        ├── train                                # folder containing training instances, typically it only contains object_types.lp
        └── test                                 # folder containing test instances, typically it contains all graphs for the domain
```
### Feature generation
The ``feature_generation`` folder contains code to generate a pool of grounding predicates (concepts and roles from description logic) represented as clingo rules, starting from the primitive O2D predicates. Currently, only pools of complexity 2 are generated (but this can easily be extended to arbitrary complexity). To run the feature generator do:
```bash
python3 feature_generation.py <filename.lp>
```
The output file  ``<filename.lp>`` is stored in the ``feature_generation``. There are precomputed predicate pools for some experimental domains (Blocksworld, Sokoban, etc.). 

### Solvers
The folder ``solvers/`` contains different .lp solvers. The default solver is ``solvers/solver.lp``.

### Running a single experiment
To run a single experiment for one of the domains with the incremental engine and the program ``solvers/solver.lp`` do:
```bash
python3 incremental_solve.py solvers/solver.lp graphs/<domain> --results <results>
```
Results are stored in ``<results>``. Possible options for the incremental solver are:
```bash
usage: incremental_solve.py [-h] [--aws-instance AWS_INSTANCE] [--continue]
                            [--debug-level DEBUG_LEVEL]
                            [--max-action-arity MAX_ACTION_ARITY]
                            [--max-nodes-per-iteration MAX_NODES_PER_ITERATION]
                            [--max-num-predicates MAX_NUM_PREDICATES]
                            [--max-time MAX_TIME] [--results RESULTS]
                            [--verify-only]
                            solver domain

Incremental learning of grounded PDDL models.

positional arguments:
  solver                solver (.lp file)
  domain                path to domain's folder (it can be a .zip file)

optional arguments:
  -h, --help            show this help message and exit
  --aws-instance AWS_INSTANCE
                        describe AWS instance (boolean, default=False)
  --continue            continue an interrupted learning process
  --debug-level DEBUG_LEVEL
                        set debug level (default=0)
  --max-action-arity MAX_ACTION_ARITY
                        set maximum action arity for schemas (default=3)
  --max-nodes-per-iteration MAX_NODES_PER_ITERATION
                        max number of nodes added per iteration (0=all,
                        default=10
  --max-num-predicates MAX_NUM_PREDICATES
                        set maximum number selected predicates (default=12)
  --max-time MAX_TIME   max-time for Clingo solver (0=no limit, default=57600)
  --results RESULTS     folder to store results (default=graphs's folder)
  --verify-only         verify best model found over test set
```
