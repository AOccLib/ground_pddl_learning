Zip files contain graph.lp files. The naming convention for files is as follows:

`<domain_name>___complexity=<complexity_bound>_num_edges=<n>_grammar=<g>.zip`

where:
- `complexity_bound` is the bound used to generate the pool of predicates (before generating role restrictions and cardinality concepts)
- `n` is the number of sampled o2d edges for each hidden edge
- `g`is the grammar used, with the following options:
  -- `orig`: grammar with original constructors
  -- `restr`: grammar with original constructors, plus role restrictions
  -- `full`: grammar with original constructors, plus role restrictions and cardinality concept


TODO
1. Split sokoban.zip into sokoban1.zip and sokoban2.zip as in paper
2. Add gripper.zip
3. Tag .zip files with grammar and complexity bound for each case

