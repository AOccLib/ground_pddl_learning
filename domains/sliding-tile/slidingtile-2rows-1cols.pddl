(define (problem slidingtile-2rows-1cols)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos1_0
    tile0
    (:init
       (position pos0_0)
       (position pos1_0)
       (blank pos1_0)
       (tile tile0)
       (below pos1_0 pos0_0)
       (at tile0 pos0_0)
    (:goal (and
       (blank pos1_0)
