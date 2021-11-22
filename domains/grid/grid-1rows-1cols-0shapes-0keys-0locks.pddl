(define (problem grid-1rows-1cols-0shapes-0keys-0locks)
    (:domain grid)
    (:objects
    pos0_0
    (:init
       (arm_empty)
       (place pos0_0)
       (open pos0_0)
       (at_robot pos0_0)
    (:goal (and
       (at_robot pos0_0)
