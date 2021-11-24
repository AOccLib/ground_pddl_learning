(define (problem sokoban-3rows-2cols-1boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos1_0 pos1_1 pos2_0 pos2_1
    box0
    )
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (location pos1_0)
       (location pos1_1)
       (location pos2_0)
       (location pos2_1)
       (clear pos0_0)
       (clear pos1_0)
       (clear pos1_1)
       (clear pos2_0)
       (clear pos2_1)
       (at pos0_0)
       (box box0)
       (left pos0_1 pos0_0)
       (left pos1_1 pos1_0)
       (left pos2_1 pos2_0)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos2_0 pos1_0)
       (below pos2_1 pos1_1)
       (at box0 pos0_1)
    )
    (:goal (and
       (at pos0_0)
    )))
