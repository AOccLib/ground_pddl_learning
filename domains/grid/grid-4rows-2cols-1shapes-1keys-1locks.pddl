(define (problem grid-4rows-2cols-1shapes-1keys-1locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos1_0 pos1_1 pos2_0 pos2_1 pos3_0 pos3_1
    shape0
    key0
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos1_0)
       (place pos1_1)
       (place pos2_0)
       (place pos2_1)
       (place pos3_0)
       (place pos3_1)
       (open pos0_0)
       (open pos0_1)
       (open pos1_0)
       (open pos1_1)
       (open pos2_1)
       (open pos3_0)
       (open pos3_1)
       (at_robot pos0_1)
       (objshape shape0)
       (key key0)
       (conn pos0_0 pos1_0)
       (conn pos0_0 pos0_1)
       (conn pos0_1 pos1_1)
       (conn pos0_1 pos0_0)
       (conn pos1_0 pos2_0)
       (conn pos1_0 pos1_1)
       (conn pos1_0 pos0_0)
       (conn pos1_1 pos2_1)
       (conn pos1_1 pos0_1)
       (conn pos1_1 pos1_0)
       (conn pos2_0 pos3_0)
       (conn pos2_0 pos2_1)
       (conn pos2_0 pos1_0)
       (conn pos2_1 pos3_1)
       (conn pos2_1 pos1_1)
       (conn pos2_1 pos2_0)
       (conn pos3_0 pos3_1)
       (conn pos3_0 pos2_0)
       (conn pos3_1 pos2_1)
       (conn pos3_1 pos3_0)
       (locked pos2_0)
       (lock_shape  pos2_0 shape0)
       (key_shape  key0 shape0)
       (at key0 pos1_0)
    (:goal (and
       (at key0 pos0_0)
