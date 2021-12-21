(define (problem 3cell1locked1key1openableright)
  (:domain grid)
  (:objects node1 node2 node3 key0 triangle)
  (:init
     (place node1) (place node2) (place node3)
	 (arm_empty) (objshape triangle)
	 (right node1 node2) (left node2 node1)
	 (right node2 node3) (left node3 node2)
	 (open node1) (open node2)
	 (locked node3) (lock_shape node3 triangle)
	 (key key0)
	 (key_shape key0 triangle) (at key0 node1)
	 (at_robot node1))
  (:goal (at_robot node1))
  )
