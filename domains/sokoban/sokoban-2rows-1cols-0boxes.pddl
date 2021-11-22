(define (problem sokoban-2rows-1cols-0boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos1_0
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos1_0)
       (clear pos0_0)
       (clear pos1_0)
       (at_robot pos0_0)
       (below pos1_0 pos0_0)
    (:goal (and
       (at_robot pos0_0)
