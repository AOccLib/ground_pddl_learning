(define (domain blocks4ops-slots)
  (:requirements :strips)
  (:constants h0) ; minimum height
  (:predicates
    (block ?x)
    (slot ?s)
    (height ?h)
    (on ?x ?y)
    (ontable ?x)
    (clear ?x)
    (holding ?x)
    (handempty)
    (neq ?x ?y)
    ; new predicates
    (freetable ?s)  ; there is no block on the table at slot s
    (at ?s ?h ?x)   ; block x is at slot s, height h
    (succ_h ?n ?m)  ; height n is successor of height m
    (succ_s ?n ?m)  ; slot n is successor of slot m
  )

  (:action pickup
    :parameters (?x ?sx)
    :precondition (and (ontable ?x) (clear ?x) (handempty) (at ?sx h0 ?x))
    :effect (and (not (clear ?x)) (not (handempty)) (not (ontable ?x)) (holding ?x)
                 (not (at ?sx h0 ?x)) (freetable ?sx))
  )

  (:action putdown
    :parameters (?x ?sx)
    :precondition (and (holding ?x) (freetable ?sx))
    :effect (and (not (holding ?x)) (clear ?x) (ontable ?x) (handempty)
                 (at ?sx h0 ?x) (not (freetable ?sx)))
  )

  (:action stack
    :parameters (?x ?y ?sy ?hy ?h)
    :precondition (and (holding ?x) (clear ?y) (at ?sy ?hy ?y) (succ_h ?h ?hy))
    :effect (and (not (holding ?x)) (not (clear ?y)) (clear ?x) (handempty) (on ?x ?y)
                 (at ?sy ?h ?x))
  )

  (:action unstack
    :parameters (?x ?y ?sx ?hx)
    :precondition (and (clear ?x) (on ?x ?y) (handempty) (at ?sx ?hx ?x))
    :effect (and (not (clear ?x)) (not (on ?x ?y)) (not (handempty))
                 (holding ?x) (clear ?y)
                 (not (at ?sx ?hx ?x)))
  )
)
