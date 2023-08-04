(define (domain gripper-slots)
  (:requirements :strips)
  (:predicates (room ?r)
               (ball ?b)
               (gripper ?g)
               (at_robby ?r)
               (at ?b ?r)
               (free ?g)
               (carry ?o ?g)
               (left ?l ?r)
               (neq ?l ?r)
               ; new predicates
               (freeslot ?room ?slot)       ; there is no object at slot s of room r
               (at_slot ?ball ?room ?slot)  ; ball b is at room r, slot s
               (at_robby_slot ?room ?slot)  ; robot is at room r, slot s
  )

  (:action move
    :parameters (?from ?to ?fromslot ?toslot)
    :precondition (and (neq ?from ?to)
                       (at_robby ?from) (at_robby_slot ?from ?fromslot)
                       (freeslot ?to ?toslot))
    :effect (and (at_robby ?to) (not (at_robby ?from))
                 (at_robby_slot ?to ?toslot) (not (at_robby_slot ?from ?fromslot))
                 (freeslot ?from ?fromslot) (not (freeslot ?to ?toslot)))
  )

  (:action pick
    :parameters (?obj ?room ?gripper ?slot)
    :precondition (and (at ?obj ?room) (at_robby ?room) (free ?gripper)
                       (at_slot ?obj ?room ?slot))
    :effect (and (carry ?obj ?gripper)
                 (not (at ?obj ?room))
                 (not (free ?gripper))
                 (not (at_slot ?obj ?room ?slot))
                 (freeslot ?room ?slot))
  )

  (:action drop
    :parameters (?obj ?room ?gripper ?slot)
    :precondition (and (carry ?obj ?gripper) (at_robby ?room) (freeslot ?room ?slot))
    :effect (and (at ?obj ?room) (free ?gripper) (not (carry ?obj ?gripper))
                 (not (freeslot ?room ?slot)) (at_slot ?obj ?room ?slot))
  )
)

