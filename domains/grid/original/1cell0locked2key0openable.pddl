(define (problem 1cell0locked2key0openable)
  (:domain grid)
  (:objects node1
	    triangle diamond
	    key0 key1)
  (:init 
     (place node1)
	 (objshape triangle) (objshape diamond)
	 (key key0) (key key1)
	 (open node1) (holding key1)
	 (key_shape key0 triangle) (key_shape key1 triangle) (at key0 node1)
	 (at_robot node1))
  (:goal (at key0 node1))
  )

; grid map
; R/K0 L