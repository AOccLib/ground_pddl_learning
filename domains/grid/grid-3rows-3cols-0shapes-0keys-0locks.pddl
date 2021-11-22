(define (problem grid-3rows-3cols-0shapes-0keys-0locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2 pos1_0 pos1_1 pos1_2 pos2_0 pos2_1 pos2_2
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos0_2)
       (place pos1_0)
       (place pos1_1)
       (place pos1_2)
       (place pos2_0)
       (place pos2_1)
       (place pos2_2)
       (open pos0_0)
       (open pos0_1)
       (open pos0_2)
       (open pos1_0)
       (open pos1_1)
       (open pos1_2)
       (open pos2_0)
       (open pos2_1)
       (open pos2_2)
       (at_robot pos0_0)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos1_2 pos0_2)
       (below pos2_0 pos1_0)
       (below pos2_1 pos1_1)
       (below pos2_2 pos1_2)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos1_1 pos1_0)
       (left pos1_2 pos1_1)
       (left pos2_1 pos2_0)
       (left pos2_2 pos2_1)
    (:goal (and
       (at_robot pos2_1)
