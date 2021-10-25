(define (problem 4cell1crateBelow)
	(:domain sokoban)
	(:objects sokoban1 crate1 l0 l1 l2 l3)
	(:init (sokoban sokoban1)
		   (crate crate1)

		   ;;vertical relationships
		   (below l1 l0)
		   (below l2 l1)
		   (below l3 l2)

 		   ;;initialize sokoban and crate
		   (at sokoban1 l3)
		   (at crate1 l2)

 		   ;;clear spaces
		   (clear l0) (clear l1))

	(:goal (and (at crate1 l0)))
)
