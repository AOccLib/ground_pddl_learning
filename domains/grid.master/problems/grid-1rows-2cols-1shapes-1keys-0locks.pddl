(define (problem grid-1rows-2cols-1shapes-1keys-0locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1
    shape0
    key0
    )
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (open pos0_0)
       (open pos0_1)
       (at_robot pos0_1)
       (objshape shape0)
       (key key0)
       (left pos0_1 pos0_0)
       (key_shape  key0 shape0)
       (at key0 pos0_1)
    )
    (:goal (and
       (at key0 pos0_0)
    )))
