(define (problem slidingtile-3rows-3cols)
    (:domain slidingtile)
    (:objects
    pos0_0 pos0_1 pos0_2 pos1_0 pos1_1 pos1_2 pos2_0 pos2_1 pos2_2
    tile0 tile1 tile2 tile3 tile4 tile5 tile6 tile7
    )
    (:init
       (position pos0_0)
       (position pos0_1)
       (position pos0_2)
       (position pos1_0)
       (position pos1_1)
       (position pos1_2)
       (position pos2_0)
       (position pos2_1)
       (position pos2_2)
       (blank pos0_1)
       (tile tile0)
       (tile tile1)
       (tile tile2)
       (tile tile3)
       (tile tile4)
       (tile tile5)
       (tile tile6)
       (tile tile7)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos1_1 pos1_0)
       (left pos1_2 pos1_1)
       (left pos2_1 pos2_0)
       (left pos2_2 pos2_1)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos1_2 pos0_2)
       (below pos2_0 pos1_0)
       (below pos2_1 pos1_1)
       (below pos2_2 pos1_2)
       (at tile0 pos2_0)
       (at tile1 pos1_1)
       (at tile2 pos2_2)
       (at tile3 pos0_2)
       (at tile4 pos1_2)
       (at tile5 pos2_1)
       (at tile6 pos0_0)
       (at tile7 pos1_0)
    )
    (:goal (and
       (blank pos0_1)
    )))
