from sys import stdin, stdout, argv
from pathlib import Path
import termcolor

def colored(text, color, attrs=None, use_colors=True):
    return termcolor.colored(text, color=color, attrs=attrs) if use_colors else text

class LiftedAtom:
    def __init__(self, name, vargs):
        self.name = name
        self.vargs = vargs
    def __str__(self):
        return f'{self.name}{str(tuple(self.vargs)).replace(" ", "")}'

class LiftedAtomWithValue:
    def __init__(self, atom, value):
        self.atom = atom
        self.value = value
    def __str__(self):
        return f'{str(self.atom)}={self.value}'

class LiftedAction:
    def __init__(self, name):
        self.name = name
        self.arity = -1
        self.vargs = []
        self.static = []
        self.precs = []
        self.effects = []
    def set_arity(self, arity):
        self.arity = arity
        self.vargs = list(range(1, 1 + self.arity)) if self.arity > 0 else []
    def set_static_preconditions(self, static):
        new_precs = []
        for prec in self.precs:
            if prec.atom.name in static:
                self.static.append(prec)
            else:
                new_precs.append(prec)
        self.precs = new_precs
    def add_prec(self, prec):
        self.precs.append(prec)
    def add_effect(self, effect):
        self.effects.append(effect)
    def head(self):
        return f'{self.name}{str(tuple(self.vargs)).replace(" ", "")}'
    def __str__(self):
        body = dict(precs=[ str(atom) for atom in self.precs ], effects=[ str(atom) for atom in self.effects ])
        return f'{self.head()}={body}'

class Answer:
    def __init__(self):
        self.mode = None
        self.atoms = []
        self.objects = []
        self.constants = []
        self.predicates = []
        self.static = []
        self.actions = dict()
        self.optimization = []
        self.appl = []
    def set_mode(self, mode):
        self.mode = mode
    def add_atom(self, atom):
        self.atoms.append(atom)
    def add_object(self, obj):
        self.objects.append(obj)
    def add_constant(self, obj):
        self.constants.append(obj)
    def add_action(self, name):
        if name not in self.actions:
            self.actions[name] = LiftedAction(name)
    def add_predicate(self, name):
        self.predicates.append(name)
    def add_static(self, name):
        self.static.append(name)
    def set_action_arity(self, name, arity):
        self.add_action(name)
        action = self.actions[name]
        action.set_arity(arity)
    def get_atom(self, atom, value):
        #print(f'get_atom: atom={atom}, value={value}')
        fields = parse(atom[1:-1])
        assert len(fields) == 2, f'atom={atom}, value={value}'
        name = fields[0]
        args = parse(fields[1][1:-1])
        if args == [ 'null' ]:
            vargs = [ 0 ]
        else:
            assert 'null' not in args, f'fields={fields}'
            vargs = [ int(i) if i.isdecimal() else i for i in args ]
        return LiftedAtomWithValue(LiftedAtom(name, vargs), value)
    def add_appl(self, instance, name, args, node):
        self.appl.append((instance, name, args, node))
    def add_precondition(self, name, atom, value):
        self.add_action(name)
        action = self.actions[name]
        action.precs.append(self.get_atom(atom, value))
    def add_effect(self, name, atom, value):
        self.add_action(name)
        action = self.actions[name]
        action.effects.append(self.get_atom(atom, value))
    def set_optimization(self, optimization):
        if optimization[:13] == 'Optimization:':
            self.optimization = [ int(n) for n in optimization[13:].strip(' ').split(' ') ]
        else:
            print(f"Unexpected optimization string '{optimization}'")
    def set_static_preconditions(self):
        for _, action in self.actions.items():
            action.set_static_preconditions(self.static)
    def print(self, indent_size=0, use_colors=True, fd=stdout):
        indent = ' ' * indent_size
        print(f'{indent}Optimization: ({",".join([ str(n) for n in self.optimization ])})', file=fd)
        print(f'{indent}{len(self.objects)} object(s): {", ".join(self.objects)}', file=fd)
        print(f'{indent}{len(self.constants)} constant(s): {", ".join(self.constants)}', file=fd)
        print(f'{indent}{len(self.predicates)} predicate(s): {", ".join(self.predicates)}', file=fd)
        print(f'{indent}{len(self.static)} static predicate(s): {", ".join(self.static)}', file=fd)
        print('\n', end='')
        for _, action in self.actions.items():
            static = [ str(atom) for atom in action.static ]
            precs = [ str(atom) for atom in action.precs ]
            effects = [ str(atom) for atom in action.effects ]
            print(colored(f'{indent}{action.head()}:', 'red', use_colors=use_colors), file=fd)
            print(colored(f'{indent}   static: ', 'green', use_colors=use_colors) + ', '.join(static), file=fd)
            print(colored(f'{indent}    precs: ', 'green', use_colors=use_colors) + ', '.join(precs), file=fd)
            print(colored(f'{indent}  effects: ', 'green', use_colors=use_colors) + ', '.join(effects), file=fd)
    def print_appl(self, indent_size=0, use_colors=True, fd=stdout):
        indent = ' ' * indent_size
        for (instance, name, args, node) in self.appl:
            print(f'{indent}Action {name}({",".join(args)}) is appl. in node {node}/{instance}', file=fd)
    def dump(self, filename):
        with Path(filename).open('w') as fd:
            for atom in self.atoms:
                fd.write(f'{atom}.\n')

def parse(line, sep_tok=',', grouping_tok='()', debug=False):
    field = ''
    balance = 0
    fields = []
    for char in line:
        if char == sep_tok and balance == 0:
            fields.append(field)
            field = ''
        else:
            field += char
            if char == grouping_tok[0]:
                balance += 1
            elif char == grouping_tok[1]:
                balance -= 1
    if field: fields.append(field)
    if debug: print(f'parse: line={line}, fields={fields}')
    return fields

def read_answer(line):
    answer = Answer()
    for fact in line.split(' '):
        if fact[:7] == 'object(':
            fields = parse(fact[7:-1])
            answer.add_object(f'{fields[0]}/{fields[1]}')
        elif fact[:9] == 'constant(':
            name = fact[9:-1]
            answer.add_constant(name)
            answer.add_atom(fact)
        elif fact[:5] == 'pred(':
            name = fact[5:-1]
            answer.add_predicate(name)
            answer.add_atom(fact)
        elif fact[:9] == 'p_static(':
            name = fact[9:-1]
            answer.add_static(name)
        elif fact[:7] == 'action(':
            name = fact[7:-1]
            answer.add_action(name)
        elif fact[:8] == 'a_arity(':
            fields = parse(fact[8:-1])
            name = fields[0]
            arity = int(fields[1])
            answer.set_action_arity(name, arity)
            answer.add_atom(fact)
        elif fact[:5] == 'appl(': # appl(I,A,S,OO)
            fields = parse(fact[5:-1])
            assert len(fields) == 4
            instance = int(fields[0])
            name = fields[1]
            args = parse(fields[2][1:-1])
            node = int(fields[3])
            answer.add_appl(instance, name, args, node)
        elif fact[:5] == 'prec(':
            fields = parse(fact[5:-1])
            name = fields[0]
            atom = fields[1]
            value = int(fields[2])
            answer.add_precondition(name, atom, value)
            answer.add_atom(fact)
        elif fact[:6] == '-prec(':
            fields = parse(fact[6:-1])
        elif fact[:4] == 'eff(':
            fields = parse(fact[4:-1])
            name = fields[0]
            atom = fields[1]
            value = int(fields[2])
            answer.add_effect(name, atom, value)
            answer.add_atom(fact)
        elif fact[:5] == '-eff(':
            fields = parse(fact[5:-1])
        elif fact[:8] == 'tlabelR(':
            fields = parse(fact[8:-1])
            #answer.add_atom(fact)
        elif fact[:5] == 'repr(':
            fields = parse(fact[5:-1])
            #answer.add_atom(fact)
        elif fact == 'verification' or fact == 'synthesis':
            answer.set_mode(fact)
        else:
            print(colored('Unknown fact:', 'red') + f' {fact}')
    answer.set_static_preconditions()
    return answer

if __name__ == '__main__':
    if len(argv) < 2:
        print(f'Usage: {argv[0]} <filename> [<filename>]')
        exit(-1)
    filename = argv[1]
    pprint_filename = None if len(argv) < 3 else argv[2]

    # read/print input lines
    lines = []
    for line in stdin:
        print(line, end='')
        lines.append(line.strip('\n'))

    # read answer sets and final statistics
    answers = []
    stats = dict(num_models=0, optimun=0, optimization=[], calls=0, time='', cpu_time='')
    for i, line in enumerate(lines):
        if line[:7] == 'Answer:':
            answer = read_answer(lines[i+1])
            answer.set_optimization(lines[i+2])
            answers.append(answer)
        elif line[:14] == 'Models       :':
            stats['num_models'] = line[15:]
        elif line[:14] == '  Optimum    :':
            stats['optimun'] = 1 if line[15:] == 'yes' else 0
        elif line[:14] == 'Optimization :':
            stats['optimization'] = line[15:]
        elif line[:14] == 'Calls        :':
            stats['calls'] = int(line[15:])
        elif line[:14] == 'Time         :':
            stats['time'] = line[15:]
        elif line[:14] == 'CPU Time     :':
            stats['cpu_time'] = line[15:]
    #print(f"\n{colored('Stats: ', 'red')}{stats}")

    # print best model
    if answers:
        print('\n' + colored('Best model:', 'red'))
        answers[-1].print(2)
        answers[-1].dump(filename)
        answers[-1].print_appl(2)
        if pprint_filename:
            with Path(pprint_filename).open('a') as fd:
                print('', file=fd)
                answers[-1].print(2, use_colors=False, fd=fd)
                answers[-1].print_appl(2, use_colors=False, fd=fd)
    else:
        print('\n' + colored('No model found', 'red'))
    print('\n', end='')

