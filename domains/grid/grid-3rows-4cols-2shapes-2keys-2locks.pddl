(define (problem grid-3rows-4cols-2shapes-2keys-2locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2 pos0_3 pos1_0 pos1_1 pos1_2 pos1_3 pos2_0 pos2_1 pos2_2 pos2_3
    shape0 shape1
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
       (open pos0_1)
       (open pos0_2)
       (open pos0_3)
       (open pos1_0)
       (open pos1_2)
       (open pos1_3)
       (open pos2_1)
       (open pos2_2)
       (open pos2_3)
       (at_robot pos0_1)
       (objshape shape0)
       (objshape shape1)
       (key key0)
       (key key1)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos1_2 pos0_2)
       (below pos1_3 pos0_3)
       (below pos2_0 pos1_0)
       (below pos2_1 pos1_1)
       (below pos2_2 pos1_2)
       (below pos2_3 pos1_3)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos0_3 pos0_2)
       (left pos1_1 pos1_0)
       (left pos1_2 pos1_1)
       (left pos1_3 pos1_2)
       (left pos2_1 pos2_0)
       (left pos2_2 pos2_1)
       (left pos2_3 pos2_2)
       (locked pos1_1)
       (locked pos2_0)
       (lock_shape  pos1_1 shape0)
       (lock_shape  pos2_0 shape1)
       (key_shape  key0 shape0)
       (key_shape  key1 shape1)
       (at key0 pos1_0)
       (at key1 pos1_0)
    (:goal (and
       (at key0 pos0_2)
       (at key1 pos2_3)
