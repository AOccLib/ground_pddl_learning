(define (problem sokoban-2rows-2cols-0boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos1_0 pos1_1
    )
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (location pos1_0)
       (location pos1_1)
       (clear pos0_0)
       (clear pos0_1)
       (clear pos1_0)
       (clear pos1_1)
       (at pos1_1)
       (left pos0_1 pos0_0)
       (left pos1_1 pos1_0)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
    )
    (:goal (and
       (at pos1_1)
    )))