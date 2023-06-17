(define (problem sokoban-1rows-4cols-1boxes-3)
                        (:domain sokoban)
                        (:objects
                          sokoban1
                          pos0_0 pos0_1 pos0_2 pos0_3
                          crate0
                        )
                        (:init
                           (sokoban sokoban1)
                           (crate crate0)
                           (clear pos0_0) (clear pos0_3)
                           (at sokoban1 pos0_2)
                           (left pos0_1 pos0_0) (left pos0_2 pos0_1) (left pos0_3 pos0_2)
                           (at crate0 pos0_1)
                        )
                        (:goal (and
                           (at sokoban1 pos0_2)
                        )))