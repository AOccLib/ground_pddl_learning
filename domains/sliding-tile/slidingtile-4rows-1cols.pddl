(define (problem slidingtile-4rows-1cols)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos1_0 pos2_0 pos3_0
    tile0 tile1 tile2
    (:init
       (position pos0_0)
       (position pos1_0)
       (position pos2_0)
       (position pos3_0)
       (blank pos0_0)
       (tile tile0)
       (tile tile1)
       (tile tile2)
       (below pos1_0 pos0_0)
       (below pos2_0 pos1_0)
       (below pos3_0 pos2_0)
       (at tile0 pos1_0)
       (at tile1 pos2_0)
       (at tile2 pos3_0)
    (:goal (and
       (blank pos0_0)
