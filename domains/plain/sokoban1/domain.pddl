(define (domain sokoban)
	(:requirements :strips)
	(:predicates (sokoban ?x)   								;x is sokoban
				 (crate ?x)     								;x is crate
				 (left ?x ?y) 								;location x is to the left of location y
				 (below ?x ?y)  								;location x is below location y
				 (at ?x ?y)     								;object x is at location y
				 (clear ?x))									;x is a clear location

	(:action moveLeft
		:parameters (?sokoban ?x ?y)
		:precondition (and (sokoban ?sokoban)
						   (at ?sokoban ?x)
						   (left ?y ?x)   					;location y is to the left of location x
						   (clear ?y))      					;and y is empty/clear, so move left to y
		:effect (and (at ?sokoban ?y) (clear ?x)
				(not (at ?sokoban ?x)) (not (clear ?y))))

	(:action moveRight
		:parameters (?sokoban ?x ?y)
		:precondition (and (sokoban ?sokoban)
							(at ?sokoban ?x)
							(left ?x ?y)    					;location x is to the left of y
							(clear ?y))       					;and y is clear, so move right to y
		:effect (and (at ?sokoban ?y) (clear ?x)
				(not (at ?sokoban ?x)) (not (clear ?y))))

	(:action moveUp
		:parameters (?sokoban ?x ?y)
		:precondition (and (sokoban ?sokoban)
						  (at ?sokoban ?x)
						  (below ?x ?y)      					;location x is below location y
						  (clear ?y))        					;and y is clear, so move up to y
		:effect (and (at ?sokoban ?y) (clear ?x)
				(not (at ?sokoban ?x)) (not (clear ?y))))

	(:action moveDown
		:parameters (?sokoban ?x ?y)
		:precondition (and (sokoban ?sokoban)
						  (at ?sokoban ?x)
						  (below ?y ?x)      					;location y is below location x
						  (clear ?y))        					;and y is clear, so move down to y
		:effect (and (at ?sokoban ?y) (clear ?x)
				(not (at ?sokoban ?x)) (not (clear ?y))))

	(:action pushLeft
		:parameters (?sokoban ?x ?y ?z ?crate)
		:precondition (and (sokoban ?sokoban)
							(crate ?crate)
							(left ?y ?x)  					;location y is left of x
							(left ?z ?y)    					;z (destination for block) is left of where the block currently is
							(at ?sokoban ?x)   					;sokoban player is at x
							(at ?crate ?y)     					;crate is at y
							(clear ?z))        					;and location z is clear, so push crate left to z
		:effect (and (at ?sokoban ?y)
		        (at ?crate ?z)
				(clear ?x)
				(not (at ?sokoban ?x))
				(not (at ?crate ?y))
				(not (clear ?z))
				(not (clear ?y))))

	(:action pushRight
		:parameters (?sokoban ?x ?y ?z ?crate)
		:precondition (and (sokoban ?sokoban)
							(crate ?crate)
							(left ?x ?y)						;x is left of y
							(left ?y ?z)						;y is left of z
							(at ?sokoban ?x)					;sokoban is at x
							(at ?crate ?y)						;crate is at y
							(clear ?z))							;z is clear, so push crate right to z
		:effect (and (at ?sokoban ?y)
		        (at ?crate ?z)
				(clear ?x)
				(not (at ?sokoban ?x))
				(not (at ?crate ?y))
				(not (clear ?z))
				(not (clear ?y))))

	(:action pushUp
		:parameters (?sokoban ?x ?y ?z ?crate)
		:precondition (and (sokoban ?sokoban)
							(crate ?crate)
							(below ?x ?y)						;x is below y
							(below ?y ?z)						;y is below z
							(at ?sokoban ?x)					;sokoban is at x
							(at ?crate ?y)						;crate is at y
							(clear ?z))							;z is clear, so push crate up to z
		:effect (and (at ?sokoban ?y) (at ?crate ?z)
				(clear ?x)
				(not (at ?sokoban ?x))
				(not (at ?crate ?y))
				(not (clear ?y))
				(not (clear ?z))))


	(:action pushDown
		:parameters (?sokoban ?x ?y ?z ?crate)
		:precondition (and (sokoban ?sokoban)
							(crate ?crate)
							(below ?y ?x)						;y is below x
							(below ?z ?y)						;z is below y
							(at ?sokoban ?x)					;sokoban is at x
							(at ?crate ?y)						;crate is at y
							(clear ?z))							;z is clear, so push crate down to z
		:effect (and (at ?sokoban ?y) (at ?crate ?z)
				(clear ?x)
				(not (at ?sokoban ?x))
				(not (at ?crate ?y))
				(not (clear ?y))
				(not (clear ?z))))
)