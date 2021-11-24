(define (problem sokoban-1rows-2cols-1boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1
    box0
    )
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (clear pos0_0)
       (at pos0_0)
       (box box0)
       (left pos0_1 pos0_0)
       (at box0 pos0_1)
    )
    (:goal (and
       (at pos0_0)
    )))
