(define (problem sokoban-3rows-4cols-1boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos0_2 pos0_3 pos1_0 pos1_1 pos1_2 pos1_3 pos2_0 pos2_1 pos2_2 pos2_3
    box0
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (location pos0_2)
       (location pos0_3)
       (location pos1_0)
       (location pos1_1)
       (location pos1_2)
       (location pos1_3)
       (location pos2_0)
       (location pos2_1)
       (location pos2_2)
       (location pos2_3)
       (clear pos0_0)
       (clear pos0_1)
       (clear pos0_2)
       (clear pos0_3)
       (clear pos1_0)
       (clear pos1_1)
       (clear pos1_2)
       (clear pos1_3)
       (clear pos2_0)
       (clear pos2_1)
       (clear pos2_3)
       (at_robot pos0_2)
       (box box0)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos0_3 pos0_2)
       (left pos1_1 pos1_0)
       (left pos1_2 pos1_1)
       (left pos1_3 pos1_2)
       (left pos2_1 pos2_0)
       (left pos2_2 pos2_1)
       (left pos2_3 pos2_2)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos1_2 pos0_2)
       (below pos1_3 pos0_3)
       (below pos2_0 pos1_0)
       (below pos2_1 pos1_1)
       (below pos2_2 pos1_2)
       (below pos2_3 pos1_3)
       (at box0 pos2_2)
    (:goal (and
       (at_robot pos0_2)
