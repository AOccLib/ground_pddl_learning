(define (problem sokoban-2rows-2cols-0boxes-1)
                        (:domain sokoban)
                        (:objects
                          sokoban1
                          pos0_0 pos0_1 pos1_0 pos1_1
                        )
                        (:init
                           (sokoban sokoban1)
                           (clear pos0_1) (clear pos1_0) (clear pos1_1)
                           (at sokoban1 pos0_0)
                           (left pos0_1 pos0_0) (left pos1_1 pos1_0)
                           (below pos1_0 pos0_0) (below pos1_1 pos0_1)
                        )
                        (:goal (and
                           (at sokoban1 pos0_0)
                        )))