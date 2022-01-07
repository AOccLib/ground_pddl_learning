(define (problem sokoban-1rows-4cols-0boxes)
    (:domain sokoban)
    (:objects
    sokoban1
    pos0_0 pos0_1 pos0_2 pos0_3
    )
    (:init
       (sokoban sokoban1)
       (clear pos0_0)
       (clear pos0_1)
       (clear pos0_3)
       (at sokoban1 pos0_2)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos0_3 pos0_2)
    )
    (:goal (and
       (at sokoban1 pos0_2)
    )))
