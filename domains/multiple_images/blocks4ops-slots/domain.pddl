(define (domain blocks4ops-slots)
  (:requirements :strips)
  (:predicates
    (block ?x)
    (slot ?s)
    (on ?x ?y)
    (ontable ?x)
    (clear ?x)
    (holding ?x)
    (handempty)
    (neq ?x ?y)
    ; new predicates
    (freetable ?s)  ; there is no block on the table at slot s
    (at ?s ?x)      ; block x is at slot s
    (leftof ?n ?m)  ; slot n is to the left of slot m
  )

  (:action pickup
    :parameters (?x ?s)
    :precondition (and (block ?x) (slot ?s) (ontable ?x) (clear ?x) (handempty) (at ?s ?x))
    :effect (and (not (clear ?x)) (not (handempty)) (not (ontable ?x)) (holding ?x)
                 (not (at ?s ?x)) (freetable ?s))
  )

  (:action putdown
    :parameters (?x ?s)
    :precondition (and (block ?x) (slot ?s) (holding ?x) (freetable ?s))
    :effect (and (not (holding ?x)) (clear ?x) (ontable ?x) (handempty)
                 (at ?s ?x) (not (freetable ?s)))
  )

  (:action stack
    :parameters (?x ?y)
    :precondition (and (block ?x) (block ?y) (holding ?x) (clear ?y))
    :effect (and (not (holding ?x)) (not (clear ?y)) (clear ?x) (handempty) (on ?x ?y))
  )

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (block ?x) (block ?y) (clear ?x) (on ?x ?y) (handempty))
    :effect (and (not (clear ?x)) (not (on ?x ?y)) (not (handempty)) (holding ?x) (clear ?y))
  )
)
