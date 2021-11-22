(define (problem sokoban-1rows-4cols-2boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos0_2 pos0_3
    box0 box1
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (location pos0_2)
       (location pos0_3)
       (clear pos0_0)
       (clear pos0_2)
       (at_robot pos0_0)
       (box box0)
       (box box1)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos0_3 pos0_2)
       (at box0 pos0_1)
       (at box1 pos0_3)
    (:goal (and
       (at_robot pos0_0)
