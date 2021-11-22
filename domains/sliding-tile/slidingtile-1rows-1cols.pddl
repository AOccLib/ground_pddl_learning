(define (problem slidingtile-1rows-1cols)
    (:domain sokoban-untyped)
    (:objects
    pos0_0
    (:init
       (position pos0_0)
       (blank pos0_0)
    (:goal (and
       (blank pos0_0)
