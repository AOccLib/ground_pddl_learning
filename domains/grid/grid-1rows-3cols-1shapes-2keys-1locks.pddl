(define (problem grid-1rows-3cols-1shapes-2keys-1locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2
    shape0
    key0 key1
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos0_2)
       (open pos0_0)
       (open pos0_2)
       (at_robot pos0_2)
       (objshape shape0)
       (key key0)
       (key key1)
       (conn pos0_0 pos0_1)
       (conn pos0_1 pos0_2)
       (conn pos0_1 pos0_0)
       (conn pos0_2 pos0_1)
       (locked pos0_1)
       (lock_shape  pos0_1 shape0)
       (key_shape  key0 shape0)
       (key_shape  key1 shape0)
       (at key0 pos0_2)
       (at key1 pos0_2)
    (:goal (and
       (at key0 pos0_1)
       (at key1 pos0_0)
