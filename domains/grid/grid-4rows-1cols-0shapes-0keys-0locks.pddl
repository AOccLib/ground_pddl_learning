(define (problem grid-4rows-1cols-0shapes-0keys-0locks)
    (:domain grid)
    (:objects
    pos0_0 pos1_0 pos2_0 pos3_0
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos1_0)
       (place pos2_0)
       (place pos3_0)
       (open pos0_0)
       (open pos1_0)
       (open pos2_0)
       (open pos3_0)
       (at_robot pos0_0)
       (conn pos0_0 pos1_0)
       (conn pos1_0 pos2_0)
       (conn pos1_0 pos0_0)
       (conn pos2_0 pos3_0)
       (conn pos2_0 pos1_0)
       (conn pos3_0 pos2_0)
    (:goal (and
       (at_robot pos0_0)
