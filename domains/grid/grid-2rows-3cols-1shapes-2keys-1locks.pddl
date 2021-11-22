(define (problem grid-2rows-3cols-1shapes-2keys-1locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2 pos1_0 pos1_1 pos1_2
    shape0
    key0 key1
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos0_2)
       (place pos1_0)
       (place pos1_1)
       (place pos1_2)
       (open pos0_0)
       (open pos0_1)
       (open pos0_2)
       (open pos1_1)
       (open pos1_2)
       (at_robot pos1_2)
       (objshape shape0)
       (key key0)
       (key key1)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (below pos1_2 pos0_2)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos1_1 pos1_0)
       (left pos1_2 pos1_1)
       (locked pos1_0)
       (lock_shape  pos1_0 shape0)
       (key_shape  key0 shape0)
       (key_shape  key1 shape0)
       (at key0 pos0_1)
       (at key1 pos1_1)
    (:goal (and
       (at key0 pos1_1)
       (at key1 pos0_1)
