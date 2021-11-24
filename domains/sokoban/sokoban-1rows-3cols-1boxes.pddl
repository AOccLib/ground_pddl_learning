(define (problem sokoban-1rows-3cols-1boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos0_2
    box0
    )
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (location pos0_2)
       (clear pos0_0)
       (clear pos0_2)
       (at pos0_0)
       (box box0)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (at box0 pos0_1)
    )
    (:goal (and
       (at pos0_0)
    )))
