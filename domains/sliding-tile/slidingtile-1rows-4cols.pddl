(define (problem slidingtile-1rows-4cols)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos0_2 pos0_3
    tile0 tile1 tile2
    (:init
       (position pos0_0)
       (position pos0_1)
       (position pos0_2)
       (position pos0_3)
       (blank pos0_1)
       (tile tile0)
       (tile tile1)
       (tile tile2)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos0_3 pos0_2)
       (at tile0 pos0_3)
       (at tile1 pos0_0)
       (at tile2 pos0_2)
    (:goal (and
       (blank pos0_1)
