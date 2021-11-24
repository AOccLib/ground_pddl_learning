(define (problem sokoban-1rows-2cols-0boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1
    )
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (clear pos0_0)
       (clear pos0_1)
       (at pos0_0)
       (left pos0_1 pos0_0)
    )
    (:goal (and
       (at pos0_0)
    )))
