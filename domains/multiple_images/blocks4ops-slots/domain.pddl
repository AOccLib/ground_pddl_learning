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
    (leftof ?n ?m)  ; slot n is to the left of slot m
  )

  (:action pickup
    :parameters (?x ?sx)
    :precondition (and (block ?x) (slot ?sx) (ontable ?x) (clear ?x) (handempty) (at ?sx h0 ?x))
    :effect (and (not (clear ?x)) (not (handempty)) (not (ontable ?x)) (holding ?x)
                 (not (at ?sx h0 ?x)) (freetable ?sx))
  )

  (:action putdown
    :parameters (?x ?sx)
    :precondition (and (block ?x) (slot ?sx) (holding ?x) (freetable ?sx))
    :effect (and (not (holding ?x)) (clear ?x) (ontable ?x) (handempty)
                 (at ?sx h0 ?x) (not (freetable ?sx)))
  )

  (:action stack
    :parameters (?x ?y ?sy ?hy ?h)
    :precondition (and (block ?x) (block ?y) (slot ?sy) (height ?hy) (height ?h) (holding ?x) (clear ?y) (at ?sy ?hy ?y) (succ_h ?h ?hy))
    :effect (and (not (holding ?x)) (not (clear ?y)) (clear ?x) (handempty) (on ?x ?y)
                 (at ?sy ?h ?x))
  )

  (:action unstack
    :parameters (?x ?y ?sx ?hx)
    :precondition (and (block ?x) (block ?y) (slot ?sx) (height ?hx) (clear ?x) (on ?x ?y) (handempty) (at ?sx ?hx ?x))
    :effect (and (not (clear ?x)) (not (on ?x ?y)) (not (handempty))
                 (holding ?x) (clear ?y)
                 (not (at ?sx ?hx ?x)))
  )
)
