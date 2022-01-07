(define (domain grid)
  (:requirements :strips)
  (:predicates (below ?x ?y) (left ?x ?y)
            (key_shape ?k ?s) (lock_shape ?x ?s)
	       (at ?r ?x ) (at_robot ?x) (place ?p) (key ?k) (objshape ?s)
	       (locked ?x) (holding ?k)  (open ?x)  (arm_empty ))

  (:action unlock_from_below
    :parameters (?curpos ?lockpos ?key ?shape)
    :precondition (and (place ?curpos) (place ?lockpos) (key ?key)
    (below ?curpos ?lockpos)
		       (key_shape ?key ?shape) (lock_shape ?lockpos ?shape)
		       (at_robot ?curpos) (locked ?lockpos) (holding ?key))
    :effect (and (open ?lockpos) (not (locked ?lockpos))))

  (:action unlock_from_above
    :parameters (?curpos ?lockpos ?key ?shape)
    :precondition (and (place ?curpos) (place ?lockpos) (key ?key)
    (below ?lockpos ?curpos)
		       (key_shape ?key ?shape) (lock_shape ?lockpos ?shape)
		       (at_robot ?curpos) (locked ?lockpos) (holding ?key))
    :effect (and (open ?lockpos) (not (locked ?lockpos))))

  (:action unlock_from_left
    :parameters (?curpos ?lockpos ?key ?shape)
    :precondition (and (place ?curpos) (place ?lockpos) (key ?key)
		       (left ?curpos ?lockpos)
		       (key_shape ?key ?shape) (lock_shape ?lockpos ?shape)
		       (at_robot ?curpos) (locked ?lockpos) (holding ?key))
    :effect (and (open ?lockpos) (not (locked ?lockpos))))

  (:action unlock_from_right
    :parameters (?curpos ?lockpos ?key ?shape)
    :precondition (and (place ?curpos) (place ?lockpos) (key ?key)
		       (left ?lockpos ?curpos)
		       (key_shape ?key ?shape) (lock_shape ?lockpos ?shape)
		       (at_robot ?curpos) (locked ?lockpos) (holding ?key))
    :effect (and (open ?lockpos) (not (locked ?lockpos))))

  (:action move_left
    :parameters (?curpos ?nextpos)
    :precondition (and (place ?curpos) (place ?nextpos) (at_robot ?curpos)
		       (left ?nextpos ?curpos) (open ?nextpos))
    :effect (and (at_robot ?nextpos) (not (at_robot ?curpos))))

  (:action move_right
    :parameters (?curpos ?nextpos)
    :precondition (and (place ?curpos) (place ?nextpos) (at_robot ?curpos)
               (left ?curpos ?nextpos) (open ?nextpos))
    :effect (and (at_robot ?nextpos) (not (at_robot ?curpos))))

  (:action move_up
    :parameters (?curpos ?nextpos)
    :precondition (and (place ?curpos) (place ?nextpos) (at_robot ?curpos)
               (below ?curpos ?nextpos) (open ?nextpos))
    :effect (and (at_robot ?nextpos) (not (at_robot ?curpos))))

  (:action move_down
    :parameters (?curpos ?nextpos)
    :precondition (and (place ?curpos) (place ?nextpos) (at_robot ?curpos)
               (below ?nextpos ?curpos) (open ?nextpos))
    :effect (and (at_robot ?nextpos) (not (at_robot ?curpos))))

  (:action pickup
    :parameters (?curpos ?key)
    :precondition (and (place ?curpos) (key ?key) (at_robot ?curpos)
		       (at ?key ?curpos) (arm_empty ))
    :effect (and (holding ?key) (not (at ?key ?curpos)) (not (arm_empty ))))

  (:action putdown
    :parameters (?curpos ?key)
    :precondition (and (place ?curpos) (key ?key) (at_robot ?curpos)
		       (holding ?key))
    :effect (and (arm_empty ) (at ?key ?curpos) (not (holding ?key))))
  )