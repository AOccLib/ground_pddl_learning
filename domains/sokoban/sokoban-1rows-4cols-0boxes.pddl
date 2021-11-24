(define (problem sokoban-1rows-4cols-0boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos0_2 pos0_3
    )
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (location pos0_2)
       (location pos0_3)
       (clear pos0_0)
       (clear pos0_1)
       (clear pos0_2)
       (clear pos0_3)
       (at pos0_3)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos0_3 pos0_2)
    )
    (:goal (and
       (at pos0_3)
    )))
