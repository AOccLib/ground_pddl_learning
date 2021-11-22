(define (problem grid-3rows-1cols-2shapes-2keys-2locks)
    (:domain grid)
    (:objects
    pos0_0 pos1_0 pos2_0
    shape0 shape1
    key0 key1
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos1_0)
       (place pos2_0)
       (open pos2_0)
       (at_robot pos2_0)
       (objshape shape0)
       (objshape shape1)
       (key key0)
       (key key1)
       (conn pos0_0 pos1_0)
       (conn pos1_0 pos2_0)
       (conn pos1_0 pos0_0)
       (conn pos2_0 pos1_0)
       (locked pos1_0)
       (locked pos0_0)
       (lock_shape  pos1_0 shape0)
       (lock_shape  pos0_0 shape1)
       (key_shape  key0 shape0)
       (key_shape  key1 shape1)
       (at key0 pos2_0)
       (at key1 pos2_0)
    (:goal (and
       (at key0 pos0_0)
       (at key1 pos0_0)
