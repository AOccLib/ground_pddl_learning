(define (problem grid-4rows-1cols-1shapes-1keys-2locks)
    (:domain grid)
    (:objects
    pos0_0 pos1_0 pos2_0 pos3_0
    shape0
    key0
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos1_0)
       (place pos2_0)
       (place pos3_0)
       (open pos1_0)
       (open pos3_0)
       (at_robot pos3_0)
       (objshape shape0)
       (key key0)
       (conn pos0_0 pos1_0)
       (conn pos1_0 pos2_0)
       (conn pos1_0 pos0_0)
       (conn pos2_0 pos3_0)
       (conn pos2_0 pos1_0)
       (conn pos3_0 pos2_0)
       (locked pos0_0)
       (locked pos2_0)
       (lock_shape  pos0_0 shape0)
       (lock_shape  pos2_0 shape0)
       (key_shape  key0 shape0)
       (at key0 pos3_0)
    (:goal (and
       (at key0 pos0_0)
