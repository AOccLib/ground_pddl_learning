(define (problem grid-1rows-3cols-0shapes-0keys-0locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos0_2)
       (open pos0_0)
       (open pos0_1)
       (open pos0_2)
       (at_robot pos0_0)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
    (:goal (and
       (at_robot pos0_1)
