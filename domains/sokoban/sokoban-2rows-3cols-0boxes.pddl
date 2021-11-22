(define (problem sokoban-2rows-3cols-0boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos0_2 pos1_0 pos1_1 pos1_2
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (location pos0_2)
       (location pos1_0)
       (location pos1_1)
       (location pos1_2)
       (clear pos0_0)
       (clear pos0_1)
       (clear pos0_2)
       (clear pos1_0)
       (clear pos1_1)
       (clear pos1_2)
       (at_robot pos0_2)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos1_1 pos1_0)
       (left pos1_2 pos1_1)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos1_2 pos0_2)
    (:goal (and
       (at_robot pos0_2)
