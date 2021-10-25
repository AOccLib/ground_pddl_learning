# Learning ground PDDL models

The `learn.lp` file contains the clingo code for learning ground PDDL models from instance graphs.

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
The **graphs** folder contains the input graphs used for in the experiments. The folder structure is as follows:
```bash
    .
    ├── graphs                                  # defs of domains and instances used in experiments
    │   ├── domain                              # name of domain 1
    │   │   ├── object_types.pl                 # pre-computed object types for the domain
    │   │   ├── instance1.lp                    # graph data for instance 1
    │   │   ├── instance1_caused.lp             # pre-computed caused changes (deltas)
    │   │   ...		
    │   │   ├── instanceN.lp                    # graph data for instance N
    │   │   └── instanceN_caused.lp             # problem definition N
    │   └── domain2		
    │   │   ...		
    └── ...
```
### Learned models
The **learned_models** folder contains a file for each domain (sort of pretty-printed). The file includes:
```bash
1. Chosen action arities
2. Chosen predicates
3. Action names
4. Chosen ground actions
5. Learned action schemas
```
### Feature definitions
The ``features.lp`` file defines the members of the feature pool (concepts and roles from description logic) via clingo rules.

### Running a single experiment
To run a single experiment for one of the domains, run ``learn.lp`` together with the files in the **graphs** folder for that domain. For example, for Blocks:

```bash
clingo learn.lp ./graphs/blocks/object_types.lp ./graphs/blocks/1block.lp ./graphs/blocks/1block_caused.lp ./graphs/blocks/3block.lp ./graphs/blocks/3block_caused.lp
```
