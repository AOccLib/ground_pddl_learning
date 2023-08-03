(define (domain blocks3ops-slots)
  (:requirements :strips)
  (:predicates
    (block ?x)
    (slot ?s)
    (on ?x ?y)
    (ontable ?x)
    (clear ?x)
    (neq ?x ?y)
    ; new predicates
    (freetable ?s)  ; there is no block on the table at slot s
    (at ?s ?x)      ; block x is at slot s
    (leftof ?n ?m)  ; slot n is to the left of slot m
  )

  (:action newtower
    :parameters (?x ?y ?s)
    :precondition (and (block ?x) (block ?y) (slot ?s)
                       (clear ?x) (on ?x ?y)
                       (freetable ?s))
    :effect (and (ontable ?x) (clear ?y) (not (on ?x ?y))
                 (not (freetable ?s)) (at ?s ?x))
  )

  (:action stack
    :parameters (?x ?y ?s)
    :precondition (and (block ?x) (block ?y) (slot ?s)
                       (clear ?x) (clear ?y) (ontable ?x) (neq ?x ?y)
                       (at ?s ?x))
    :effect (and (on ?x ?y) (not (ontable ?x)) (not (clear ?y))
                 (not (at ?s ?x)) (freetable ?s))
  )

  (:action move
    :parameters (?x ?y ?z)
    :precondition (and (block ?x) (block ?y) (block ?z)
                       (clear ?x) (clear ?z) (on ?x ?y) (neq ?x ?z))
    :effect (and (on ?x ?z) (not (clear ?z)) (clear ?y) (not (on ?x ?y)))
  )
)
