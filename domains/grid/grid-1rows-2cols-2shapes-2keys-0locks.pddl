(define (problem grid-1rows-2cols-2shapes-2keys-0locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1
    shape0 shape1
    key0 key1
    )
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (open pos0_0)
       (open pos0_1)
       (at_robot pos0_1)
       (objshape shape0)
       (objshape shape1)
       (key key0)
       (key key1)
       (left pos0_1 pos0_0)
       (key_shape  key0 shape0)
       (key_shape  key1 shape1)
       (at key0 pos0_1)
       (at key1 pos0_1)
    )
    (:goal (and
       (at key0 pos0_0)
       (at key1 pos0_0)
    )))
