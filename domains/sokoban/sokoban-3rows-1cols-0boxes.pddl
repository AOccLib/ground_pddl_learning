(define (problem sokoban-3rows-1cols-0boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos1_0 pos2_0
    )
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos1_0)
       (location pos2_0)
       (clear pos0_0)
       (clear pos1_0)
       (clear pos2_0)
       (at pos1_0)
       (below pos1_0 pos0_0)
       (below pos2_0 pos1_0)
    )
    (:goal (and
       (at pos1_0)
    )))
