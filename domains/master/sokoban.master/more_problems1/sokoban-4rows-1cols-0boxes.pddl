(define (problem sokoban-4rows-1cols-0boxes)
    (:domain sokoban)
    (:objects
    sokoban1
    pos0_0 pos1_0 pos2_0 pos3_0
    )
    (:init
       (sokoban sokoban1)
       (clear pos1_0)
       (clear pos2_0)
       (clear pos3_0)
       (at sokoban1 pos0_0)
       (below pos1_0 pos0_0)
       (below pos2_0 pos1_0)
       (below pos3_0 pos2_0)
    )
    (:goal (and
       (at sokoban1 pos0_0)
    )))
