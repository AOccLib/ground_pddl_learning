(define (problem sokoban-5rows-1cols-1boxes-3)
                        (:domain sokoban)
                        (:objects
                          sokoban1
                          pos0_0 pos1_0 pos2_0 pos3_0 pos4_0
                          crate0
                        )
                        (:init
                           (sokoban sokoban1)
                           (crate crate0)
                           (clear pos0_0) (clear pos3_0) (clear pos4_0)
                           (at sokoban1 pos2_0)
                           (below pos1_0 pos0_0) (below pos2_0 pos1_0) (below pos3_0 pos2_0) (below pos4_0 pos3_0)
                           (at crate0 pos1_0)
                        )
                        (:goal (and
                           (at sokoban1 pos2_0)
                        )))