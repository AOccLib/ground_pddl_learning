(define (problem 2cell1locked2key1openablebelow)
  (:domain grid)
  (:objects node1 node2
	    triangle square
	    key0 key1)
  (:init
     (place node1) (place node2)
	 (objshape triangle) (objshape square)
	 (key key0) (key key1)
	 (arm_empty)
	 (below node1 node2) (above node2 node1)
	 (locked node2) (lock_shape node2 triangle)
	 (open node1)
	 (key_shape key0 square) (at key0 node1)
	 (key_shape key1 triangle) (at key1 node1)
	 (at_robot node1))
  (:goal (at key0 node1))
  )
