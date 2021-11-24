(define (problem sokoban-3rows-1cols-2boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos1_0 pos2_0
    box0 box1
    )
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos1_0)
       (location pos2_0)
       (clear pos2_0)
       (at pos2_0)
       (box box0)
       (box box1)
       (below pos1_0 pos0_0)
       (below pos2_0 pos1_0)
       (at box0 pos1_0)
       (at box1 pos0_0)
    )
    (:goal (and
       (at pos2_0)
    )))
