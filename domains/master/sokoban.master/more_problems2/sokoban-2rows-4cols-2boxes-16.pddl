(define (problem sokoban-2rows-4cols-2boxes-16)
                        (:domain sokoban)
                        (:objects
                          sokoban1
                          pos0_0 pos0_1 pos0_2 pos0_3 pos1_0 pos1_1 pos1_2 pos1_3
                          crate0 crate1
                        )
                        (:init
                           (sokoban sokoban1)
                           (crate crate0) (crate crate1)
                           (clear pos0_0) (clear pos0_3) (clear pos1_0) (clear pos1_1) (clear pos1_3)
                           (at sokoban1 pos0_2)
                           (left pos0_1 pos0_0) (left pos0_2 pos0_1) (left pos0_3 pos0_2) (left pos1_1 pos1_0) (left pos1_2 pos1_1) (left pos1_3 pos1_2)
                           (below pos1_0 pos0_0) (below pos1_1 pos0_1) (below pos1_2 pos0_2) (below pos1_3 pos0_3)
                           (at crate0 pos0_1) (at crate1 pos1_2)
                        )
                        (:goal (and
                           (at sokoban1 pos0_2)
                        )))