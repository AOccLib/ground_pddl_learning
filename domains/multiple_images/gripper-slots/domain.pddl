(define (domain gripper-slots)
   (:predicates
        (room ?r)
		(ball ?b)
		(gripper ?g)
		(at_robby ?r)
		(at ?b ?r)
		(free ?g)
		(carry ?o ?g)
		(left ?l ?r)
		(neq ?l ?r)
		; new predicates
        (free_slot ?r ?s)  ; there is no object at slot s of room r
        (at_slot ?b ?r ?s)   ; ball b is at room r, slot s
        (at_robby_slot ?r ?s)   ; robot is at room r, slot s
        (slotof ?s ?r) ; slot s is in room r
		)

    (:action move
       :parameters  (?from ?to ?fromslot ?toslot)
       :precondition (and  (room ?from) (room ?to) (at_robby ?from) (neq ?from ?to)
                           (slotof ?toslot ?to) (free_slot ?to ?toslot) (at_robby_slot ?from ?fromslot)
       )
       :effect (and  (at_robby ?to)
		     (not (at_robby ?from))
		     (not (at_robby_slot ?from ?fromslot))
		     (at_robby_slot ?to ?toslot)
		     (not (free_slot ?to ?toslot))
		     (free_slot ?from ?fromslot)
		     ))


   (:action pick
       :parameters (?obj ?room ?gripper ?slot)
       :precondition  (and  (ball ?obj) (room ?room) (gripper ?gripper)
			    (at ?obj ?room) (at_robby ?room) (free ?gripper)
			    (at_slot ?obj ?room ?slot)
			    )
       :effect (and (carry ?obj ?gripper)
		    (not (at ?obj ?room))
		    (not (free ?gripper))
		    (not (at_slot ?obj ?room ?slot))
		    (free_slot ?room ?slot)
		    )
		    )


   (:action drop
       :parameters  (?obj  ?room ?gripper ?slot)
       :precondition  (and  (ball ?obj) (room ?room) (gripper ?gripper)
			    (carry ?obj ?gripper) (at_robby ?room)
			    (free_slot ?room ?slot) (slotof ?slot ?room)
			    )
       :effect (and (at ?obj ?room)
		    (free ?gripper)
		    (not (carry ?obj ?gripper))
		    (not (free_slot ?room ?slot))
		    (at_slot ?obj ?room ?slot)
		    ))

		    )

