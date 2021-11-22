(define (problem sokoban-1rows-3cols-2boxes)
    (:domain sokoban-untyped)
    (:objects
    pos0_0 pos0_1 pos0_2
    box0 box1
    (:init
       (arm_empty)
       (location pos0_0)
       (location pos0_1)
       (location pos0_2)
       (clear pos0_0)
       (at_robot pos0_0)
       (box box0)
       (box box1)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (at box0 pos0_2)
       (at box1 pos0_1)
    (:goal (and
       (at_robot pos0_0)
