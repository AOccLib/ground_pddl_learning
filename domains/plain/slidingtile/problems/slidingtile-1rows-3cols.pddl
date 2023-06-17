(define (problem slidingtile-1rows-3cols)
    (:domain slidingtile)
    (:objects
    pos0_0 pos0_1 pos0_2
    tile0 tile1
    )
    (:init
       (position pos0_0)
       (position pos0_1)
       (position pos0_2)
       (blank pos0_0)
       (tile tile0)
       (tile tile1)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (at tile0 pos0_2)
       (at tile1 pos0_1)
    )
    (:goal (and
       (blank pos0_0)
    )))
