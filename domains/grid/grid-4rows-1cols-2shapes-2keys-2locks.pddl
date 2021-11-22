(define (problem grid-4rows-1cols-2shapes-2keys-2locks)
    (:domain grid)
    (:objects
    pos0_0 pos1_0 pos2_0 pos3_0
    shape0 shape1
    key0 key1
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos1_0)
       (place pos2_0)
       (place pos3_0)
       (open pos1_0)
       (open pos2_0)
       (at_robot pos2_0)
       (objshape shape0)
       (objshape shape1)
       (key key0)
       (key key1)
       (below pos1_0 pos0_0)
       (below pos2_0 pos1_0)
       (below pos3_0 pos2_0)
       (locked pos0_0)
       (locked pos3_0)
       (lock_shape  pos0_0 shape0)
       (lock_shape  pos3_0 shape1)
       (key_shape  key0 shape0)
       (key_shape  key1 shape1)
       (at key0 pos3_0)
       (at key1 pos2_0)
    (:goal (and
       (at key0 pos1_0)
       (at key1 pos1_0)
