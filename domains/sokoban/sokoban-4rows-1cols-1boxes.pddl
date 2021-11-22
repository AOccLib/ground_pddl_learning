(define (problem sokoban-4rows-1cols-1boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos1_0 pos2_0 pos3_0
    box0
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos1_0)
       (location pos2_0)
       (location pos3_0)
       (clear pos0_0)
       (clear pos1_0)
       (clear pos3_0)
       (at_robot pos3_0)
       (box box0)
       (below pos1_0 pos0_0)
       (below pos2_0 pos1_0)
       (below pos3_0 pos2_0)
       (at box0 pos2_0)
    (:goal (and
       (at_robot pos3_0)
