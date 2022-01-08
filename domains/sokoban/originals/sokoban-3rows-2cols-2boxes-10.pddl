(define (problem sokoban-3rows-2cols-2boxes-10)
                        (:domain sokoban)
                        (:objects
                          sokoban1
                          pos0_0 pos0_1 pos1_0 pos1_1 pos2_0 pos2_1
                          crate0 crate1
                        )
                        (:init
                           (sokoban sokoban1)
                           (crate crate0) (crate crate1)
                           (clear pos1_0) (clear pos1_1) (clear pos2_1)
                           (at sokoban1 pos0_0)
                           (left pos0_1 pos0_0) (left pos1_1 pos1_0) (left pos2_1 pos2_0)
                           (below pos1_0 pos0_0) (below pos1_1 pos0_1) (below pos2_0 pos1_0) (below pos2_1 pos1_1)
                           (at crate0 pos0_1) (at crate1 pos2_0)
                        )
                        (:goal (and
                           (at sokoban1 pos0_0)
                        )))