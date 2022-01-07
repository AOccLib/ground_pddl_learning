(define (problem sokoban-1rows-2cols-0boxes-1)
                        (:domain sokoban)
                        (:objects
                          sokoban1
                          pos0_0 pos0_1
                        )
                        (:init
                           (sokoban sokoban1)
                           (clear pos0_1)
                           (at sokoban1 pos0_0)
                           (left pos0_1 pos0_0)
                        )
                        (:goal (and
                           (at sokoban1 pos0_0)
                        )))