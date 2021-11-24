import subprocess
import generate
from itertools import product

x = range(1,5) # horizontal extension of grid
y = range(1,5) # vertical extension of grid
boxes = range(0,3) # num different key+lock types

# cartesian product of parameter values
parameter_product = product(x,y,boxes)

for param_vector in parameter_product:
    x = param_vector[0]
    y = param_vector[1]
    boxes = param_vector[2]
    cmd = [f"python /Users/aocc/Documents/repositories/batch-pddl-generator/pddl-generators/sokomine/generate.py {x} {y} --boxes {boxes}"]

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
        filename = f"sokoban-{x}rows-{y}cols-{boxes}boxes.pddl"
        fi = open(filename,'w')
        fi.write(command_output)
        fi.close()