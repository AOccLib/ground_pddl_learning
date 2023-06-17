(define (problem sokoban-4rows-3cols-2boxes-19)
                        (:domain sokoban)
                        (:objects
                          sokoban1
                          pos0_0 pos0_1 pos0_2 pos1_0 pos1_1 pos1_2 pos2_0 pos2_1 pos2_2 pos3_0 pos3_1 pos3_2
                          crate0 crate1
                        )
                        (:init
                           (sokoban sokoban1)
                           (crate crate0) (crate crate1)
                           (clear pos0_2) (clear pos1_0) (clear pos1_1) (clear pos1_2) (clear pos2_0) (clear pos2_2) (clear pos3_0) (clear pos3_1) (clear pos3_2)
                           (at sokoban1 pos0_0)
                           (left pos0_1 pos0_0) (left pos0_2 pos0_1) (left pos1_1 pos1_0) (left pos1_2 pos1_1) (left pos2_1 pos2_0) (left pos2_2 pos2_1) (left pos3_1 pos3_0) (left pos3_2 pos3_1)
                           (below pos1_0 pos0_0) (below pos1_1 pos0_1) (below pos1_2 pos0_2) (below pos2_0 pos1_0) (below pos2_1 pos1_1) (below pos2_2 pos1_2) (below pos3_0 pos2_0) (below pos3_1 pos2_1) (below pos3_2 pos2_2)
                           (at crate0 pos0_1) (at crate1 pos2_1)
                        )
                        (:goal (and
                           (at sokoban1 pos0_0)
                        )))