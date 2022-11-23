(define (problem sokoban-2rows-1cols-0boxes-1)
                        (:domain sokoban)
                        (:objects
                          sokoban1
                          pos0_0 pos1_0
                        )
                        (:init
                           (sokoban sokoban1)
                           (clear pos1_0)
                           (at sokoban1 pos0_0)
                           (below pos1_0 pos0_0)
                        )
                        (:goal (and
                           (at sokoban1 pos0_0)
                        )))