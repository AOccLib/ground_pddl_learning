(define (problem slidingtile-2rows-3cols)
    (:domain slidingtile)
    (:objects
    pos0_0 pos0_1 pos0_2 pos1_0 pos1_1 pos1_2
    tile0 tile1 tile2 tile3 tile4
    )
    (:init
       (position pos0_0)
       (position pos0_1)
       (position pos0_2)
       (position pos1_0)
       (position pos1_1)
       (position pos1_2)
       (blank pos1_0)
       (tile tile0)
       (tile tile1)
       (tile tile2)
       (tile tile3)
       (tile tile4)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos1_1 pos1_0)
       (left pos1_2 pos1_1)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos1_2 pos0_2)
       (at tile0 pos1_1)
       (at tile1 pos0_1)
       (at tile2 pos0_0)
       (at tile3 pos0_2)
       (at tile4 pos1_2)
    )
    (:goal (and
       (blank pos1_0)
    )))
