(define (domain gripper)
   (:predicates (room ?r)
		(ball ?b)
		(gripper ?g)
		(at_robby ?r)
		(at ?b ?r)
		(free ?g)
		(carry ?o ?g)
		(left ?l ?r)
		(lroom ?l)
		(rroom ?r)
		)

   (:action moveright
       :parameters  (?from ?to)
       :precondition (and  (room ?from) (room ?to) (at_robby ?from) (left ?from ?to))
       :effect (and  (at_robby ?to)
		     (not (at_robby ?from))))

   (:action moveleft
       :parameters  (?from ?to)
       :precondition (and  (room ?from) (room ?to) (at_robby ?from) (left ?to ?from))
       :effect (and  (at_robby ?to)
		     (not (at_robby ?from))))

   (:action pickleft
       :parameters (?obj ?room ?gripper)
       :precondition  (and  (ball ?obj) (lroom ?room) (gripper ?gripper)
			    (at ?obj ?room) (at_robby ?room) (free ?gripper))
       :effect (and (carry ?obj ?gripper)
		    (not (at ?obj ?room)) 
		    (not (free ?gripper))))

   (:action pickright
       :parameters (?obj ?room ?gripper)
       :precondition  (and  (ball ?obj) (rroom ?room) (gripper ?gripper)
			    (at ?obj ?room) (at_robby ?room) (free ?gripper))
       :effect (and (carry ?obj ?gripper)
		    (not (at ?obj ?room)) 
		    (not (free ?gripper))))


   (:action dropleft
       :parameters  (?obj  ?room ?gripper)
       :precondition  (and  (ball ?obj) (lroom ?room) (gripper ?gripper)
			    (carry ?obj ?gripper) (at_robby ?room))
       :effect (and (at ?obj ?room)
		    (free ?gripper)
		    (not (carry ?obj ?gripper))))

	   (:action dropright
       :parameters  (?obj  ?room ?gripper)
       :precondition  (and  (ball ?obj) (rroom ?room) (gripper ?gripper)
			    (carry ?obj ?gripper) (at_robby ?room))
       :effect (and (at ?obj ?room)
		    (free ?gripper)
		    (not (carry ?obj ?gripper))))

		    )

