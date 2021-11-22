(define (problem grid-2rows-1cols-1shapes-1keys-1locks)
    (:domain grid)
    (:objects
    pos0_0 pos1_0
    shape0
    key0
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos1_0)
       (open pos1_0)
       (at_robot pos1_0)
       (objshape shape0)
       (key key0)
       (conn pos0_0 pos1_0)
       (conn pos1_0 pos0_0)
       (locked pos0_0)
       (lock_shape  pos0_0 shape0)
       (key_shape  key0 shape0)
       (at key0 pos1_0)
    (:goal (and
       (at key0 pos0_0)
