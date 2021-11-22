(define (problem grid-1rows-3cols-2shapes-2keys-2locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2
    shape0 shape1
    key0 key1
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos0_2)
       (open pos0_2)
       (at_robot pos0_2)
       (objshape shape0)
       (objshape shape1)
       (key key0)
       (key key1)
       (conn pos0_0 pos0_1)
       (conn pos0_1 pos0_2)
       (conn pos0_1 pos0_0)
       (conn pos0_2 pos0_1)
       (locked pos0_0)
       (locked pos0_1)
       (lock_shape  pos0_0 shape0)
       (lock_shape  pos0_1 shape1)
       (key_shape  key0 shape0)
       (key_shape  key1 shape1)
       (at key0 pos0_1)
       (at key1 pos0_2)
    (:goal (and
       (at key0 pos0_2)
       (at key1 pos0_0)
