(define (problem sokoban-1rows-3cols-0boxes)
    (:domain sokoban)
    (:objects
    sokoban1
    pos0_0 pos0_1 pos0_2
    )
    (:init
       (sokoban sokoban1)
       (clear pos0_1)
       (clear pos0_2)
       (at sokoban1 pos0_0)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
    )
    (:goal (and
       (at sokoban1 pos0_0)
    )))
