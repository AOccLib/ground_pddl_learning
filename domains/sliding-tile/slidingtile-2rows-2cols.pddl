(define (problem slidingtile-2rows-2cols)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos1_0 pos1_1
    tile0 tile1 tile2
    (:init
       (position pos0_0)
       (position pos0_1)
       (position pos1_0)
       (position pos1_1)
       (blank pos1_1)
       (tile tile0)
       (tile tile1)
       (tile tile2)
       (left pos0_1 pos0_0)
       (left pos1_1 pos1_0)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (at tile0 pos0_1)
       (at tile1 pos1_0)
       (at tile2 pos0_0)
    (:goal (and
       (blank pos1_1)
