(define (problem grid-2rows-1cols-1shapes-2keys-0locks)
    (:domain grid)
    (:objects
    pos0_0 pos1_0
    shape0
    key0 key1
    )
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos1_0)
       (open pos0_0)
       (open pos1_0)
       (at_robot pos1_0)
       (objshape shape0)
       (key key0)
       (key key1)
       (below pos1_0 pos0_0)
       (key_shape  key0 shape0)
       (key_shape  key1 shape0)
       (at key0 pos1_0)
       (at key1 pos1_0)
    )
    (:goal (and
       (at key0 pos0_0)
       (at key1 pos0_0)
    )))
