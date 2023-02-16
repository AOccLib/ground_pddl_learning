import subprocess
import generate
from itertools import product

x = range(1,5) # horizontal extension of grid
y = range(1,5) # vertical extension of grid
shapes = range(0,3) # num different key+lock types
keys = range(0,3) # num keys
locks = range(0,3) # num locks

# cartesian product of parameter values
parameter_product = product(x,y,shapes,keys,locks)

for param_vector in parameter_product:
    x = param_vector[0]
    y = param_vector[1]
    shapes = param_vector[2]
    keys = param_vector[3]
    locks = param_vector[4]
    cmd = [f"python /Users/aocc/Documents/repositories/batch-pddl-generator/pddl-generators/grid/generate.py {x} {y} --keys {keys} --shapes {shapes} --locks {locks}"]

    command_process = subprocess.Popen(
    cmd,
    shell=True,
    stdin=subprocess.PIPE,
    stdout=subprocess.PIPE,
    stderr=subprocess.STDOUT,
    universal_newlines=True
    )

    command_output = command_process.communicate()[0]

    if (command_process.returncode != 0):
      print('Invalid combination of parameters: '+' '.join(map(str,cmd)))
    else:
        filename = f"grid-{x}rows-{y}cols-{shapes}shapes-{keys}keys-{locks}locks.pddl"
        fi = open(filename,'w')
        fi.write(command_output)
        fi.close()