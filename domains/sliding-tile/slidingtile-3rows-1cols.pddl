(define (problem slidingtile-3rows-1cols)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos1_0 pos2_0
    tile0 tile1
    (:init
       (position pos0_0)
       (position pos1_0)
       (position pos2_0)
       (blank pos0_0)
       (tile tile0)
       (tile tile1)
       (below pos1_0 pos0_0)
       (below pos2_0 pos1_0)
       (at tile0 pos2_0)
       (at tile1 pos1_0)
    (:goal (and
       (blank pos0_0)
