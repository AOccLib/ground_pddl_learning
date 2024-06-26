(define (problem slidingtile-4rows-4cols)
    (:domain slidingtile)
    (:objects
    pos0_0 pos0_1 pos0_2 pos0_3 pos1_0 pos1_1 pos1_2 pos1_3 pos2_0 pos2_1 pos2_2 pos2_3 pos3_0 pos3_1 pos3_2 pos3_3
    tile0 tile1 tile2 tile3 tile4 tile5 tile6 tile7 tile8 tile9 tile10 tile11 tile12 tile13 tile14
    )
    (:init
       (position pos0_0)
       (position pos0_1)
       (position pos0_2)
       (position pos0_3)
       (position pos1_0)
       (position pos1_1)
       (position pos1_2)
       (position pos1_3)
       (position pos2_0)
       (position pos2_1)
       (position pos2_2)
       (position pos2_3)
       (position pos3_0)
       (position pos3_1)
       (position pos3_2)
       (position pos3_3)
       (blank pos2_1)
       (tile tile0)
       (tile tile1)
       (tile tile2)
       (tile tile3)
       (tile tile4)
       (tile tile5)
       (tile tile6)
       (tile tile7)
       (tile tile8)
       (tile tile9)
       (tile tile10)
       (tile tile11)
       (tile tile12)
       (tile tile13)
       (tile tile14)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos0_3 pos0_2)
       (left pos1_1 pos1_0)
       (left pos1_2 pos1_1)
       (left pos1_3 pos1_2)
       (left pos2_1 pos2_0)
       (left pos2_2 pos2_1)
       (left pos2_3 pos2_2)
       (left pos3_1 pos3_0)
       (left pos3_2 pos3_1)
       (left pos3_3 pos3_2)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos1_2 pos0_2)
       (below pos1_3 pos0_3)
       (below pos2_0 pos1_0)
       (below pos2_1 pos1_1)
       (below pos2_2 pos1_2)
       (below pos2_3 pos1_3)
       (below pos3_0 pos2_0)
       (below pos3_1 pos2_1)
       (below pos3_2 pos2_2)
       (below pos3_3 pos2_3)
       (at tile0 pos3_2)
       (at tile1 pos0_2)
       (at tile2 pos3_0)
       (at tile3 pos0_3)
       (at tile4 pos0_1)
       (at tile5 pos1_1)
       (at tile6 pos3_3)
       (at tile7 pos2_3)
       (at tile8 pos2_0)
       (at tile9 pos1_3)
       (at tile10 pos2_2)
       (at tile11 pos1_0)
       (at tile12 pos0_0)
       (at tile13 pos1_2)
       (at tile14 pos3_1)
    )
    (:goal (and
       (blank pos2_1)
    )))
