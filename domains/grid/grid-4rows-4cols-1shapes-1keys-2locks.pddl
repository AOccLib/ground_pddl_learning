(define (problem grid-4rows-4cols-1shapes-1keys-2locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2 pos0_3 pos1_0 pos1_1 pos1_2 pos1_3 pos2_0 pos2_1 pos2_2 pos2_3 pos3_0 pos3_1 pos3_2 pos3_3
    shape0
    key0
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos0_2)
       (place pos0_3)
       (place pos1_0)
       (place pos1_1)
       (place pos1_2)
       (place pos1_3)
       (place pos2_0)
       (place pos2_1)
       (place pos2_2)
       (place pos2_3)
       (place pos3_0)
       (place pos3_1)
       (place pos3_2)
       (place pos3_3)
       (open pos0_0)
       (open pos0_1)
       (open pos0_2)
       (open pos1_0)
       (open pos1_2)
       (open pos1_3)
       (open pos2_0)
       (open pos2_1)
       (open pos2_2)
       (open pos2_3)
       (open pos3_0)
       (open pos3_1)
       (open pos3_2)
       (open pos3_3)
       (at_robot pos3_1)
       (objshape shape0)
       (key key0)
       (conn pos0_0 pos1_0)
       (conn pos0_0 pos0_1)
       (conn pos0_1 pos1_1)
       (conn pos0_1 pos0_2)
       (conn pos0_1 pos0_0)
       (conn pos0_2 pos1_2)
       (conn pos0_2 pos0_3)
       (conn pos0_2 pos0_1)
       (conn pos0_3 pos1_3)
       (conn pos0_3 pos0_2)
       (conn pos1_0 pos2_0)
       (conn pos1_0 pos1_1)
       (conn pos1_0 pos0_0)
       (conn pos1_1 pos2_1)
       (conn pos1_1 pos1_2)
       (conn pos1_1 pos0_1)
       (conn pos1_1 pos1_0)
       (conn pos1_2 pos2_2)
       (conn pos1_2 pos1_3)
       (conn pos1_2 pos0_2)
       (conn pos1_2 pos1_1)
       (conn pos1_3 pos2_3)
       (conn pos1_3 pos0_3)
       (conn pos1_3 pos1_2)
       (conn pos2_0 pos3_0)
       (conn pos2_0 pos2_1)
       (conn pos2_0 pos1_0)
       (conn pos2_1 pos3_1)
       (conn pos2_1 pos2_2)
       (conn pos2_1 pos1_1)
       (conn pos2_1 pos2_0)
       (conn pos2_2 pos3_2)
       (conn pos2_2 pos2_3)
       (conn pos2_2 pos1_2)
       (conn pos2_2 pos2_1)
       (conn pos2_3 pos3_3)
       (conn pos2_3 pos1_3)
       (conn pos2_3 pos2_2)
       (conn pos3_0 pos3_1)
       (conn pos3_0 pos2_0)
       (conn pos3_1 pos3_2)
       (conn pos3_1 pos2_1)
       (conn pos3_1 pos3_0)
       (conn pos3_2 pos3_3)
       (conn pos3_2 pos2_2)
       (conn pos3_2 pos3_1)
       (conn pos3_3 pos2_3)
       (conn pos3_3 pos3_2)
       (locked pos0_3)
       (locked pos1_1)
       (lock_shape  pos0_3 shape0)
       (lock_shape  pos1_1 shape0)
       (key_shape  key0 shape0)
       (at key0 pos1_3)
    (:goal (and
       (at key0 pos1_0)
