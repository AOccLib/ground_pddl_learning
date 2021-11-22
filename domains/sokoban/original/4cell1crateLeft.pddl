(define (problem 4cell1crateLeft)
	(:domain sokoban)
	(:objects sokoban1 crate1 l0 l1 l2 l3)
	(:init (sokoban sokoban1)
		   (crate crate1)

		   ;;horizontal relationships
		   (leftOf l0 l1)
		   (leftOf l1 l2)
		   (leftOf l2 l3)

 		   ;;initialize sokoban and crate
		   (at sokoban1 l3)
		   (at crate1 l2)

 		   ;;clear spaces
		   (clear l0) (clear l1))

	(:goal (and (at crate1 l0)))
)
