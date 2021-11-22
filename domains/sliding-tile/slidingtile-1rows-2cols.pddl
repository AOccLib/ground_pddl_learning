(define (problem slidingtile-1rows-2cols)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1
    tile0
    (:init
       (position pos0_0)
       (position pos0_1)
       (blank pos0_0)
       (tile tile0)
       (left pos0_1 pos0_0)
       (at tile0 pos0_1)
    (:goal (and
       (blank pos0_0)
