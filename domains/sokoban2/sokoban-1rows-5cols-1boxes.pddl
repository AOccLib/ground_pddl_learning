(define (problem sokoban-1rows-5cols-1boxes)
    (:domain sokoban)
    (:objects
    sokoban1
    pos0_0 pos0_1 pos0_2 pos0_3 pos0_4
    crate0
    )
    (:init
       (sokoban sokoban1)
       (crate crate0)
       (clear pos0_1)
       (clear pos0_2)
       (clear pos0_3)
       (at sokoban1 pos0_4)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos0_3 pos0_2)
       (left pos0_4 pos0_3)
       (at crate0 pos0_0)
    )
    (:goal (and
       (at sokoban1 pos0_4)
    )))
