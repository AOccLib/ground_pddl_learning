(define (problem grid-2rows-2cols-2shapes-2keys-2locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos1_0 pos1_1
    shape0 shape1
    key0 key1
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos1_0)
       (place pos1_1)
       (open pos0_1)
       (open pos1_1)
       (at_robot pos1_1)
       (objshape shape0)
       (objshape shape1)
       (key key0)
       (key key1)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (left pos0_1 pos0_0)
       (left pos1_1 pos1_0)
       (locked pos1_0)
       (locked pos0_0)
       (lock_shape  pos1_0 shape0)
       (lock_shape  pos0_0 shape1)
       (key_shape  key0 shape0)
       (key_shape  key1 shape1)
       (at key0 pos0_1)
       (at key1 pos1_1)
    (:goal (and
       (at key0 pos1_1)
       (at key1 pos0_0)
