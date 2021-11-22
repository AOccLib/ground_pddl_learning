(define (problem grid-1rows-4cols-1shapes-1keys-2locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2 pos0_3
    shape0
    key0
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos0_2)
       (place pos0_3)
       (open pos0_1)
       (open pos0_2)
       (at_robot pos0_2)
       (objshape shape0)
       (key key0)
       (conn pos0_0 pos0_1)
       (conn pos0_1 pos0_2)
       (conn pos0_1 pos0_0)
       (conn pos0_2 pos0_3)
       (conn pos0_2 pos0_1)
       (conn pos0_3 pos0_2)
       (locked pos0_3)
       (locked pos0_0)
       (lock_shape  pos0_3 shape0)
       (lock_shape  pos0_0 shape0)
       (key_shape  key0 shape0)
       (at key0 pos0_2)
    (:goal (and
       (at key0 pos0_1)
