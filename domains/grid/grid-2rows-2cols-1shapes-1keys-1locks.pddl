(define (problem grid-2rows-2cols-1shapes-1keys-1locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos1_0 pos1_1
    shape0
    key0
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos1_0)
       (place pos1_1)
       (open pos0_1)
       (open pos1_0)
       (open pos1_1)
       (at_robot pos1_1)
       (objshape shape0)
       (key key0)
       (below pos1_0 pos0_0)
       (below pos1_1 pos0_1)
       (left pos0_1 pos0_0)
       (left pos1_1 pos1_0)
       (locked pos0_0)
       (lock_shape  pos0_0 shape0)
       (key_shape  key0 shape0)
       (at key0 pos0_1)
    (:goal (and
       (at key0 pos0_0)
