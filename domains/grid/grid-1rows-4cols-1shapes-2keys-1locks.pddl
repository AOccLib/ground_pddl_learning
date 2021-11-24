(define (problem grid-1rows-4cols-1shapes-2keys-1locks)
    (:domain grid)
    (:objects
    pos0_0 pos0_1 pos0_2 pos0_3
    shape0
    key0 key1
    )
    (:init
       (arm_empty)
       (place pos0_0)
       (place pos0_1)
       (place pos0_2)
       (place pos0_3)
       (open pos0_0)
       (open pos0_1)
       (open pos0_3)
       (at_robot pos0_0)
       (objshape shape0)
       (key key0)
       (key key1)
       (left pos0_1 pos0_0)
       (left pos0_2 pos0_1)
       (left pos0_3 pos0_2)
       (locked pos0_2)
       (lock_shape  pos0_2 shape0)
       (key_shape  key0 shape0)
       (key_shape  key1 shape0)
       (at key0 pos0_0)
       (at key1 pos0_0)
    )
    (:goal (and
       (at key0 pos0_1)
       (at key1 pos0_2)
    )))
