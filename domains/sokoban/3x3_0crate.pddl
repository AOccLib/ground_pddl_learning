(define (problem 3x3_0crate)
	(:domain sokoban)
	(:objects sokoban1 l1 l2 l3 l4 l5 l6 l7 l8 l9)
	(:init (sokoban sokoban1)
		   ;;horizontal relationships
		   (leftOf l1 l2) (leftOf l2 l3)
		   (leftOf l4 l5) (leftOf l5 l6)
		   (leftOf l7 l8) (leftOf l8 l9)

 		   ;;vertical relationships
 		   (below l4 l1) (below l5 l2) (below l6 l3)
 		   (below l7 l4) (below l8 l5) (below l9 l6)

 		   ;;initialize sokoban and crate
		   (at sokoban1 l1)

 		   ;;clear spaces
		   (clear l2)
		   (clear l3)
		   (clear l4)
		   (clear l5)
		   (clear l6)
		   (clear l7)
		   (clear l8)
		   (clear l9))

	(:goal (and (at sokoban1 l2)))
)