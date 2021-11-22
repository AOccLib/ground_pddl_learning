(define (problem sokoban-1rows-3cols-0boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos0_2
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (location pos0_2)
       (clear pos0_0)
       (clear pos0_1)
       (clear pos0_2)
       (at_robot pos0_2)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
    (:goal (and
       (at_robot pos0_2)
