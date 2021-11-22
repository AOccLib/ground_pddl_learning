(define (problem grid-2rows-1cols-0shapes-0keys-0locks)
    (:domain grid)
    (:objects
    pos0_0 pos1_0
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos1_0)
       (open pos0_0)
       (open pos1_0)
       (at_robot pos1_0)
       (below pos1_0 pos0_0)
    (:goal (and
       (at_robot pos1_0)
