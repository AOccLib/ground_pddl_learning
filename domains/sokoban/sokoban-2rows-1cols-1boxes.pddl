(define (problem sokoban-2rows-1cols-1boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos1_0
    box0
    )
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos1_0)
       (clear pos0_0)
       (at pos0_0)
       (box box0)
       (below pos1_0 pos0_0)
       (at box0 pos1_0)
    )
    (:goal (and
       (at pos0_0)
    )))
