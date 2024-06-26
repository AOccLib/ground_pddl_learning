(define (problem slidingtile-3rows-2cols)
    (:domain slidingtile)
    (:objects
    pos0_0 pos0_1 pos1_0 pos1_1 pos2_0 pos2_1
    tile0 tile1 tile2 tile3 tile4
    )
    (:init
       (position pos0_0)
       (position pos0_1)
       (position pos1_0)
       (position pos1_1)
       (position pos2_0)
       (position pos2_1)
       (blank pos2_1)
       (tile tile0)
       (tile tile1)
       (tile tile2)
       (tile tile3)
       (tile tile4)
       (left pos0_1 pos0_0)
       (left pos1_1 pos1_0)
       (left pos2_1 pos2_0)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos2_0 pos1_0)
       (below pos2_1 pos1_1)
       (at tile0 pos0_0)
       (at tile1 pos1_0)
       (at tile2 pos1_1)
       (at tile3 pos0_1)
       (at tile4 pos2_0)
    )
    (:goal (and
       (blank pos2_1)
    )))
