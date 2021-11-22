(define (problem grid-4rows-3cols-2shapes-2keys-2locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2 pos1_0 pos1_1 pos1_2 pos2_0 pos2_1 pos2_2 pos3_0 pos3_1 pos3_2
    shape0 shape1
    key0 key1
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
       (place pos3_0)
       (place pos3_1)
       (place pos3_2)
       (open pos0_0)
       (open pos0_2)
       (open pos1_0)
       (open pos1_1)
       (open pos1_2)
       (open pos2_0)
       (open pos2_1)
       (open pos2_2)
       (open pos3_0)
       (open pos3_1)
       (at_robot pos3_0)
       (objshape shape0)
       (objshape shape1)
       (key key0)
       (key key1)
       (conn pos0_0 pos1_0)
       (conn pos0_0 pos0_1)
       (conn pos0_1 pos1_1)
       (conn pos0_1 pos0_2)
       (conn pos0_1 pos0_0)
       (conn pos0_2 pos1_2)
       (conn pos0_2 pos0_1)
       (conn pos1_0 pos2_0)
       (conn pos1_0 pos1_1)
       (conn pos1_0 pos0_0)
       (conn pos1_1 pos2_1)
       (conn pos1_1 pos1_2)
       (conn pos1_1 pos0_1)
       (conn pos1_1 pos1_0)
       (conn pos1_2 pos2_2)
       (conn pos1_2 pos0_2)
       (conn pos1_2 pos1_1)
       (conn pos2_0 pos3_0)
       (conn pos2_0 pos2_1)
       (conn pos2_0 pos1_0)
       (conn pos2_1 pos3_1)
       (conn pos2_1 pos2_2)
       (conn pos2_1 pos1_1)
       (conn pos2_1 pos2_0)
       (conn pos2_2 pos3_2)
       (conn pos2_2 pos1_2)
       (conn pos2_2 pos2_1)
       (conn pos3_0 pos3_1)
       (conn pos3_0 pos2_0)
       (conn pos3_1 pos3_2)
       (conn pos3_1 pos2_1)
       (conn pos3_1 pos3_0)
       (conn pos3_2 pos2_2)
       (conn pos3_2 pos3_1)
       (locked pos3_2)
       (locked pos0_1)
       (lock_shape  pos3_2 shape0)
       (lock_shape  pos0_1 shape1)
       (key_shape  key0 shape0)
       (key_shape  key1 shape1)
       (at key0 pos2_0)
       (at key1 pos2_1)
    (:goal (and
       (at key0 pos3_0)
       (at key1 pos2_2)
