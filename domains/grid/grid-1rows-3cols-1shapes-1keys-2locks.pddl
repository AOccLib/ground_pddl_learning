(define (problem grid-1rows-3cols-1shapes-1keys-2locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2
    shape0
    key0
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos0_2)
       (open pos0_0)
       (at_robot pos0_0)
       (objshape shape0)
       (key key0)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (locked pos0_1)
       (locked pos0_2)
       (lock_shape  pos0_1 shape0)
       (lock_shape  pos0_2 shape0)
       (key_shape  key0 shape0)
       (at key0 pos0_0)
    (:goal (and
       (at key0 pos0_1)
