(define (problem grid-3rows-1cols-1shapes-1keys-1locks)
    (:domain grid)
    (:objects
    pos0_0 pos1_0 pos2_0
    shape0
    key0
    )
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos1_0)
       (place pos2_0)
       (open pos0_0)
       (open pos1_0)
       (at_robot pos0_0)
       (objshape shape0)
       (key key0)
       (below pos1_0 pos0_0)
       (below pos2_0 pos1_0)
       (locked pos2_0)
       (lock_shape  pos2_0 shape0)
       (key_shape  key0 shape0)
       (at key0 pos0_0)
    )
    (:goal (and
       (at key0 pos1_0)
    )))
