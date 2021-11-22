(define (problem grid-3rows-4cols-1shapes-2keys-1locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2 pos0_3 pos1_0 pos1_1 pos1_2 pos1_3 pos2_0 pos2_1 pos2_2 pos2_3
    shape0
    key0 key1
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
       (open pos0_0)
       (open pos0_2)
       (open pos0_3)
       (open pos1_0)
       (open pos1_1)
       (open pos1_2)
       (open pos1_3)
       (open pos2_0)
       (open pos2_1)
       (open pos2_2)
       (open pos2_3)
       (at_robot pos1_1)
       (objshape shape0)
       (key key0)
       (key key1)
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
       (conn pos2_0 pos2_1)
       (conn pos2_0 pos1_0)
       (conn pos2_1 pos2_2)
       (conn pos2_1 pos1_1)
       (conn pos2_1 pos2_0)
       (conn pos2_2 pos2_3)
       (conn pos2_2 pos1_2)
       (conn pos2_2 pos2_1)
       (conn pos2_3 pos1_3)
       (conn pos2_3 pos2_2)
       (locked pos0_1)
       (lock_shape  pos0_1 shape0)
       (key_shape  key0 shape0)
       (key_shape  key1 shape0)
       (at key0 pos0_2)
       (at key1 pos0_2)
    (:goal (and
       (at key0 pos2_1)
       (at key1 pos1_0)
