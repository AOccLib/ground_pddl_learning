# Graph files

The input for the solvers are graphs for instances on a common domain. 
Each graph consists of a set of vertices, a set of labeled edges, a pool 
of features, and denotation for the features at each vertex in the graph. 
A graph is represented as a set of facts in a logic program, a file with
```.lp``` extension.

## Graph structure

Each graph is assigned a unique integer identifier which is used to tag all
facts regarding the graph. The instance id is defined with facts ```instance/1```.
The vertices in the graph are defined with facts ```node/2``` of the form 
```node(inst,index)``` while edges with facts ```tlabel/3``` of the form 
```tlabel(inst,(src,dst),label)```.

### Simple example

A simple example for encoding the graph structure of a blocks3ops instance
(blocksworld with 3 operators) is the following:

```
% Problem pb2.pddl: 3 node(s) and 4 edge(s)
instance(0).
% Transitions
tlabel(0,(0,1),stack).    % (stack a b)
tlabel(0,(0,2),stack).    % (stack b a)
tlabel(0,(1,0),newtower). % (newtower a b)
tlabel(0,(2,0),newtower). % (newtower b a)
% Nodes
node(0,0).
node(0,1).
node(0,2).
```

This file is created from the PDDL instance pb2.pddl that describes a
blocksworld problem with blocks ```a``` and ```b```. A comment for each
labeled edge tells the ground operator responsible for the edge. 
Observe that the labels in the graph correspond only to the action name
rather that the full grounded action.
 
## Pool of Features

The features are generated using a description logic (DL) grammar over
a vocabulary that contains the primitive PDDL predicates in the domain,
and the objects in the specific instance. Some of the objects correspond
to *constants symbols* that are assumed to be present in all instances
in the domain. The big difference between a constant and a regular object
is that only the latter are allowed to instantiate ground actions. That
is, constant symbols cannot appear as arguments to ground actions.
The constant symbols are denoted with facts ```constant/1```.

In the simple example, there are two constant symbols ```t``` and
```rectangle``` for the table and *rectangle shape* respectively:

```
% Constants
constant(rectangle).
constant(t).
```

On the other hand, each feature in the pool is identified with a name
that encodes its parsing tree in the DL. The features are denoted
with facts ```feature/1```, ```f_arity/2``` and ```f_complexity/2```
that tell the name, arity and complexity (a measure of its parsing
tree) for each feature in the pool.

For the simple example, the pool of features is the following:

```
% Features (predicates)
feature(below).
feature(block).
feature(er_lp_below_sep_verum_rp).
feature(er_lp_shape_sep_verum_rp).
feature(falsum).
feature(falsum_role).
feature(inv_lp_below_rp).
feature(inv_lp_shape_rp).
feature(inv_lp_smaller_rp).
feature(shape).
feature(smaller).
feature(table).
feature(verum).
f_arity(below,2).
f_arity(block,1).
f_arity(er_lp_below_sep_verum_rp,1).
f_arity(er_lp_shape_sep_verum_rp,1).
f_arity(falsum,1).
f_arity(falsum_role,2).
f_arity(inv_lp_below_rp,2).
f_arity(inv_lp_shape_rp,2).
f_arity(inv_lp_smaller_rp,2).
f_arity(shape,2).
f_arity(smaller,2).
f_arity(table,1).
f_arity(verum,1).
f_complexity(below,1).
f_complexity(block,1).
f_complexity(er_lp_below_sep_verum_rp,2).
f_complexity(er_lp_shape_sep_verum_rp,2).
f_complexity(falsum,0).
f_complexity(falsum_role,0).
f_complexity(inv_lp_below_rp,2).
f_complexity(inv_lp_shape_rp,2).
f_complexity(inv_lp_smaller_rp,2).
f_complexity(shape,1).
f_complexity(smaller,1).
f_complexity(table,1).
f_complexity(verum,0).
```

### Valuations

Each vertex in the graph must provide a valuation to all features in the pool.
We only provide the valuations for the true features and thus every missing
value is assumed to be false.

Some features obtain the same value across all the vertices in a given graph.
This type of features are called *static features* and they are identified
with facts ```f_static/2``` of the form ```f_static(inst,name)```.

For the simple example, the following is the subset of static features:

```
f_static(0,block).
f_static(0,er_lp_shape_sep_verum_rp).
f_static(0,falsum).
f_static(0,falsum_role).
f_static(0,inv_lp_shape_rp).
f_static(0,inv_lp_smaller_rp).
f_static(0,shape).
f_static(0,smaller).
f_static(0,table).
f_static(0,verum).
```

### Valuations for static features

The value for static features are given with facts ```fval/3``` of the form
```fval(inst,(name,args),value)``` where ```name``` is a feature name,
```args``` is a list of objects of size equal to the arity of the feature,
and value is either 0 or 1.

In the simple example, the static features obtain the following denotation:

```
% Valuations for static predicates
fval(0,(block,(a,)),1).
fval(0,(block,(b,)),1).
fval(0,(er_lp_shape_sep_verum_rp,(a,)),1).
fval(0,(er_lp_shape_sep_verum_rp,(b,)),1).
fval(0,(er_lp_shape_sep_verum_rp,(t,)),1).
fval(0,(inv_lp_shape_rp,(rectangle,a)),1).
fval(0,(inv_lp_shape_rp,(rectangle,b)),1).
fval(0,(inv_lp_shape_rp,(rectangle,t)),1).
fval(0,(inv_lp_smaller_rp,(t,a)),1).
fval(0,(inv_lp_smaller_rp,(t,b)),1).
fval(0,(shape,(a,rectangle)),1).
fval(0,(shape,(b,rectangle)),1).
fval(0,(shape,(t,rectangle)),1).
fval(0,(smaller,(a,t)),1).
fval(0,(smaller,(b,t)),1).
fval(0,(table,(t,)),1).
fval(0,(verum,(a,)),1).
fval(0,(verum,(b,)),1).
fval(0,(verum,(rectangle,)),1).
fval(0,(verum,(t,)),1).
```

### Valuations for dynamic (non-static) features

Non-static features may obtain different valuations at different vertices.
These valuations are denoted with facts ```fval/4``` of the form
```fval(inst,(name,args),index,value)``` where all arguments are as
before and index is a vertex index.

In the simple example, there are 3 vertices and the valuations for them is:

```
% Valuations for dynamic predicates
fval(0,(er_lp_below_sep_verum_rp,(t,)),0,1).
fval(0,(below,(t,a)),0,1).
fval(0,(below,(t,b)),0,1).
fval(0,(inv_lp_below_rp,(a,t)),0,1).
fval(0,(inv_lp_below_rp,(b,t)),0,1).
fval(0,(er_lp_below_sep_verum_rp,(b,)),1,1).
fval(0,(er_lp_below_sep_verum_rp,(t,)),1,1).
fval(0,(below,(b,a)),1,1).
fval(0,(below,(t,b)),1,1).
fval(0,(inv_lp_below_rp,(a,b)),1,1).
fval(0,(inv_lp_below_rp,(b,t)),1,1).
fval(0,(er_lp_below_sep_verum_rp,(a,)),2,1).
fval(0,(er_lp_below_sep_verum_rp,(t,)),2,1).
fval(0,(below,(a,b)),2,1).
fval(0,(below,(t,a)),2,1).
fval(0,(inv_lp_below_rp,(a,t)),2,1).
fval(0,(inv_lp_below_rp,(b,a)),2,1).
```

# Generation of graph files

The graph files that make up a *learning dataset* are created with the
python program ```make_graphs.py```. This program requires two arguments,
the path of a folder containing the PDDL files describing the domain and
instances to be included in the dataset, and an integer the bounds the
complexity of the features generated with the grammar.

For example, above file for the simple example is created with the following
call:

```
python make_graphs.py ../domains/blocks3ops 2
```

The path ```../domains/blocks3ops``` contains the files

```
domain.pddl
pb2.pddl
pb3.pddl
pb4.pddl
pb5.pddl
```

which end up included in the learning dataset. The folder may contain other
subfolders or files, yet it is assumed that it contains a file called ```domain.pddl```
that specifies the PDDL domian and it is assumed that any other PDDL file
correspond to a valid PDDL instance for this domain and which is to be included
in the resulting dataset.

In the following, we describe different options and functionality for ```make_graphs.py```.


## Registry

The PDDL instances are processed following directives that are specified in
the *registry file* which defaults to ```registry_symb2spatial.json``` but that
can be specified with the argument ```--registry```. For each folder processed
by ```make_graphs.py```, it is assumed that the registry contains an entry for it.
In the example, the registry contains the entry:

```
"blocks3ops" :
    { "desc"       : "Blocks with 3 operators",
      "constants"  : ["rectangle", "t"],
      "o2d"        : ["table/1", "block/1", "below/2", "smaller/2", "shape/2"],
      "facts"      : [ ["table", ["t"]] ],
      "rules"      : { "block/1"      : [ ["block(X)",           ["ontable(X)"]],
                                          ["block(X)",           ["on(X,Y)"]] ],
                       "below/2"      : [ ["below(X,Y)",         ["on(Y,X)"]],
                                          ["below(X,Y)",         ["ontable(Y)", "table(X)"]] ],
                       "smaller/2"    : [ ["smaller(X,Y)",       ["block(X)", "table(Y)"]],
                                          ["smaller(X,Z)",       ["smaller(X,Y)", "smaller(Y,Z)"]] ],
                       "shape/2"      : [ ["shape(X,rectangle)", ["object(X)"]] ]
                     } }
```

The entry begins with a general comment, and it contains a list for constant symbols
(```rectangle``` and ```t``` in this case), and list of facts to be included (```table(t)```).
This list of facts may new relational symbols that do not belong to the PDDL domain,
like ```table``` in this case. In this example, the registry contains two other important
records, the ```o2d``` and ```rules``` records.

The ```o2d``` record tells the subsed of predicates that will make the primitive
relational symbols for applying the DL grammar. The predicates mentioned in this
list should come either from the PDDL domain, the ```facts``` record, or be defined
by the ```rules```. In the example, the list of primitive predicates is made of
the predicate ```table/1``` defined in ```facts```, and the predicates ```block/1```,
```below/2```, ```smaller/2```, and ```shape/2``` defined in ```rules```.

The ```rules``` record defines a set of rules used to defined new facts from existing
facts. This are DATALOG rules that are applied at each state until reaching a fix point.
Thus, for example, one can use rules to compute the transitive closure of a binary
predicate like for example the two rules for ```smaller/2```, the first defining the
primitive atoms, and the second the *inductive* rule.

### Other records in registry

A registry entry may use two other types of records. First, the record ```o2d-object```
that permits filtering the set of objects that end up entering the graph file. This
record is useful when the PDDL domain contains spurious facts that are used to control
the grounding or behavior of actions but that don't stand for real objects in the problem.
An example of this can be observed in the domains ```blocks3ops-slots``` and ```blocks4ops-slots```.

Secondly, the record ```canonical``` that is used when processing PDDL domains that
encode problems where the same underlying state may ba associated with different
*images*. An example of this is ```blocks3ops-slots``` where the same blocks configuration
can be depicted in different forms given by different orderings of the towers in the
table. In this type of problems, we need to instruct the program how to identify different
PDDL states as being *equivalent*. This is done by the ```canonical``` record that list
a set of predicates so that two images are identified as the same if both agree on the
denotation of the predicates in the list.

## Sampling of edges

The python program allows the sampling of state transitions for PDDL instances; two methods
of sampling are implemented. Sampling is important in problems that have multiple images
per underlying state, like ```blocks3ops-slots```. For such problems, the number of all state
transitions may be too large and we must sample a subset of such transitions, but with the
guarantee that every transition between underlying states is *witnessed* in the set of
sampled edges.

The first method is perhaps the simplest. It is triggered with the ```--target_ratio```
option that accepts a real number bigger or equal to 1. Once all state transitions in a
PDDL instance are collected, a first pass over a random permutation of transitions is done
in which a unique transition among two underlying states is sampled. After this pass, 
another pass is done over a new random permutation in which transitions are sampled
until the number of sampled transitions divided by the number of transitions included
in the first pass is bigger than or equal to the target ratio.

The second method samples the edges as they are generated during the full state space
(random) exploration that is performed from the initial state in order to discover all the reachable
states and reachable state transitions. This method is enabled with the argument
```--max_k``` that accepts an integer number bigger than or equal to 1. The max-k value
specified the maximum number of edges between two underlying states that can be included
in the set of sampled transitions, and that are collected during the random exploration.

## Restrictions

The DL grammar can be extended with the options ```--cardinality_restrictions``` and
```--role_restrictions```, each one allowing additional functionality to the grammar.

## All options

A brief description of all the options accepted by ```make_graphs.py``` can be obtained 
with  ```--help``:

```
usage: make_graphs.py [-h] [--cardinality_restrictions] [--role_restrictions]
                      [--max_k MAX_K] [--target_ratio TARGET_RATIO]
                      [--seed SEED] [--debug_level DEBUG_LEVEL]
                      [--complexity_measure {sum,height}]
                      [--output_path OUTPUT_PATH]
                      [--symb2spatial SYMB2SPATIAL]
                      path max_complexity

Construct features and graphs from PDDL models.

optional arguments:
  -h, --help            show this help message and exit

required arguments:
  path                  path to folder containing 'domain.pddl' and .pddl
                        problem files (path name used as key into symb2spatial
                        registry)
  max_complexity        max complexity for construction of concepts and rules
                        (0=no limit)

restrictions:
  --cardinality_restrictions
                        toggle generation of cardinality restrictions
  --role_restrictions   toggle generation of role restrictions

sampling of edges (for tasks with multiple images)::
  --max_k MAX_K         maximum number of instances for each canonical edge
                        (default 0 means disabled)
  --target_ratio TARGET_RATIO
                        define target ratio for sampling edges (default 0
                        means disabled)
  --seed SEED           seed for random generator (default=0)

additional options:
  --debug_level DEBUG_LEVEL
                        set debug level (default=0)
  --complexity_measure {sum,height}
                        complexity measure (either sum or height,
                        default='sum')
  --output_path OUTPUT_PATH
                        override default output_path
  --symb2spatial SYMB2SPATIAL
                        symb2spatial file
                        (default='registry_symb2spatial.json')
```

