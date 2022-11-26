(define (problem sokoban-5rows-2cols-2boxes)
    (:domain sokoban)
    (:objects
    sokoban1
    pos0_0 pos0_1 pos1_0 pos1_1 pos2_0 pos2_1 pos3_0 pos3_1 pos4_0 pos4_1
    crate0 crate1
    )
    (:init
       (sokoban sokoban1)
       (crate crate0)
       (crate crate1)
       (clear pos0_0)
       (clear pos0_1)
       (clear pos1_0)
       (clear pos1_1)
       (clear pos2_0)
       (clear pos3_1)
       (clear pos4_1)
       (at sokoban1 pos2_1)
       (left pos0_1 pos0_0)
       (left pos1_1 pos1_0)
       (left pos2_1 pos2_0)
       (left pos3_1 pos3_0)
       (left pos4_1 pos4_0)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos2_0 pos1_0)
       (below pos2_1 pos1_1)
       (below pos3_0 pos2_0)
       (below pos3_1 pos2_1)
       (below pos4_0 pos3_0)
       (below pos4_1 pos3_1)
       (at crate0 pos4_0)
       (at crate1 pos3_0)
    )
    (:goal (and
       (at sokoban1 pos2_1)
    )))