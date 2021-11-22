(define (problem sokoban-2rows-2cols-2boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos1_0 pos1_1
    box0 box1
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (location pos1_0)
       (location pos1_1)
       (clear pos0_1)
       (clear pos1_0)
       (at_robot pos1_0)
       (box box0)
       (box box1)
       (left pos0_1 pos0_0)
       (left pos1_1 pos1_0)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (at box0 pos0_0)
       (at box1 pos1_1)
    (:goal (and
       (at_robot pos1_0)
