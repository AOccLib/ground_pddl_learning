(define (problem grid-4rows-1cols-1shapes-2keys-1locks)
    (:domain grid)
    (:objects
    pos0_0 pos1_0 pos2_0 pos3_0
    shape0
    key0 key1
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos1_0)
       (place pos2_0)
       (place pos3_0)
       (open pos0_0)
       (open pos2_0)
       (open pos3_0)
       (at_robot pos0_0)
       (objshape shape0)
       (key key0)
       (key key1)
       (below pos1_0 pos0_0)
       (below pos2_0 pos1_0)
       (below pos3_0 pos2_0)
       (locked pos1_0)
       (lock_shape  pos1_0 shape0)
       (key_shape  key0 shape0)
       (key_shape  key1 shape0)
       (at key0 pos0_0)
       (at key1 pos3_0)
    (:goal (and
       (at key0 pos3_0)
       (at key1 pos1_0)
