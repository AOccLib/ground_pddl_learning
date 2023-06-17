(define (problem sokoban-5rows-1cols-2boxes-10)
                        (:domain sokoban)
                        (:objects
                          sokoban1
                          pos0_0 pos1_0 pos2_0 pos3_0 pos4_0
                          crate0 crate1
                        )
                        (:init
                           (sokoban sokoban1)
                           (crate crate0) (crate crate1)
                           (clear pos1_0) (clear pos4_0)
                           (at sokoban1 pos0_0)
                           (below pos1_0 pos0_0) (below pos2_0 pos1_0) (below pos3_0 pos2_0) (below pos4_0 pos3_0)
                           (at crate0 pos2_0) (at crate1 pos3_0)
                        )
                        (:goal (and
                           (at sokoban1 pos0_0)
                        )))