(define (problem sokoban-3rows-4cols-2boxes-45)
                        (:domain sokoban)
                        (:objects
                          sokoban1
                          pos0_0 pos0_1 pos0_2 pos0_3 pos1_0 pos1_1 pos1_2 pos1_3 pos2_0 pos2_1 pos2_2 pos2_3
                          crate0 crate1
                        )
                        (:init
                           (sokoban sokoban1)
                           (crate crate0) (crate crate1)
                           (clear pos0_1) (clear pos0_2) (clear pos0_3) (clear pos1_1) (clear pos1_2) (clear pos1_3) (clear pos2_0) (clear pos2_2) (clear pos2_3)
                           (at sokoban1 pos0_0)
                           (left pos0_1 pos0_0) (left pos0_2 pos0_1) (left pos0_3 pos0_2) (left pos1_1 pos1_0) (left pos1_2 pos1_1) (left pos1_3 pos1_2) (left pos2_1 pos2_0) (left pos2_2 pos2_1) (left pos2_3 pos2_2)
                           (below pos1_0 pos0_0) (below pos1_1 pos0_1) (below pos1_2 pos0_2) (below pos1_3 pos0_3) (below pos2_0 pos1_0) (below pos2_1 pos1_1) (below pos2_2 pos1_2) (below pos2_3 pos1_3)
                           (at crate0 pos1_0) (at crate1 pos2_1)
                        )
                        (:goal (and
                           (at sokoban1 pos0_0)
                        )))