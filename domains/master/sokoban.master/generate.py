#!/usr/bin/env python3

import argparse
from itertools import product
import random
import itertools

from collections import defaultdict
import sys


def parse():
    parser = argparse.ArgumentParser()
    parser.add_argument("x", type=int, help="x scale (minimal 1)")
    parser.add_argument("y", type=int, help="y scale (minimal 1)")
    parser.add_argument("--boxes", type=int, default=0, help="num boxes")
    parser.add_argument("--typed", action="store_true", help="Typed domain")
    parser.add_argument("--seed", type=int, default=random.randint(0,1000), help="random seed")
    parser.add_argument("--output", default=None)

    return parser.parse_args()


def backslash_join(x):
    return "\n       ".join(x)



def adjacent_positions(x, y, positions):
    return [
        adj_pos
        for adj_pos in [(x + 1, y), (x, y + 1), (x - 1, y), (x, y - 1)]
        if adj_pos in positions
    ]

def adjacent_left(x, y, positions):
    if  (x, y - 1) in positions:
        return [(x, y - 1)]
    else:
        return []

def adjacent_below(x, y, positions):
    if  (x - 1, y) in positions:
        return [(x - 1, y)]
    else:
        return []

def pos_name(p):
    return f"pos{p[0]}_{p[1]}"


def main():
    args = parse()
    random.seed(args.seed)

    if args.output:
        sys.stdout = open(f"{args.output}/{instance_name}.pddl", "w")

    positions = [(x, y) for x in range(args.x) for y in range(args.y)]
    assert args.boxes < len(positions), "There cannot be more boxes than positions"

    box_positions = random.sample([p for p in positions], k=args.boxes)
    open_positions = [p for p in positions if p not in box_positions]
    robot_pos = random.choice(open_positions)
    #open_positions.remove(robot_pos)

    instance_name = f"sokoban-{args.x}rows-{args.y}cols-{args.boxes}boxes"
    nodes = [pos_name(p) for p in positions]
    boxes = [f"box{k}" for k in range(args.boxes)]

    if args.typed:
        place_facts = []
        shape_facts = []
        box_facts = []
    else:
        place_facts = [f"(location {pos_name(pos)})" for pos in positions]
        box_facts = [f"(box {box})" for box in boxes]

    conn_facts = [
        f"(conn {pos_name(p1)} {pos_name(p2)})"
        for p1 in positions
        for p2 in adjacent_positions(p1[0], p1[1], positions)
    ]

    left_facts = [
        f"(left {pos_name(p1)} {pos_name(p2)})"
        for p1 in positions
        for p2 in adjacent_left(p1[0], p1[1], positions) if adjacent_left(p1[0], p1[1], positions)
    ]

    below_facts = [
        f"(below {pos_name(p1)} {pos_name(p2)})"
        for p1 in positions
        for p2 in adjacent_below(p1[0], p1[1], positions) if adjacent_below(p1[0], p1[1], positions)
    ]

    clear_facts = [f"(clear {pos_name(pos)})" for pos in open_positions]

    box_at_facts = [f"(at {boxes[k]} {pos_name(box_positions[k])})" for k in range(args.boxes)]

    at_robot_fact = f"(at sokoban1 {pos_name(robot_pos)})"

    goal_facts = [at_robot_fact]

    pddl_string =f"""(define (problem {instance_name})
    (:domain sokoban)
    (:objects
    {" ".join(nodes)}
    {" ".join(boxes)}
    )

    (:init
       (arm_empty)
       {backslash_join(place_facts)}
       {backslash_join(clear_facts)}
       {at_robot_fact}
       {backslash_join(box_facts)}
       {backslash_join(left_facts)}
       {backslash_join(below_facts)}
       {backslash_join(box_at_facts)}
    )

    (:goal (and
       {backslash_join(goal_facts)}
    )))
    """
    pddl_string_no_emptylines = "\n".join([s for s in pddl_string.split("\n") if any(letter.isalnum() for letter in s) or ")" in s])
    print(pddl_string_no_emptylines)

if __name__ == "__main__":
    main()


