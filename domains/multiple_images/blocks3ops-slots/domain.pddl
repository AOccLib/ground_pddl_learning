(define (domain blocks3ops-slots)
  (:requirements :strips)
  (:constants h0) ; minimum height
  (:predicates
    (block ?x)
    (slot ?s)
    (height ?h)
    (on ?x ?y)
    (ontable ?x)
    (clear ?x)
    (neq ?x ?y)
    ; new predicates
    (freetable ?s)  ; there is no block on the table at slot s
    (at ?s ?h ?x)   ; block x is at slot s, height h
    (succ_h ?n ?m)  ; height n is successor of height m
    (succ_s ?n ?m)  ; slot n is successor of slot m
  )

  (:action newtower
    :parameters (?x ?y ?sx ?s ?hx)
    :precondition (and (block ?x) (block ?y) (slot ?sx) (slot ?s) (height ?hx)
                       (clear ?x) (on ?x ?y)
                       (at ?sx ?hx ?x) (freetable ?s))
    :effect (and (ontable ?x) (clear ?y) (not (on ?x ?y))
                 (not (at ?sx ?hx ?x)) (not (freetable ?s)) (at ?s h0 ?x))
  )

  (:action stack
    :parameters (?x ?y ?sx ?sy ?hy ?h)
    :precondition (and (block ?x) (block ?y) (slot ?sx) (slot ?sy) (height ?hx) (height ?h)
                       (clear ?x) (clear ?y) (ontable ?x) (neq ?x ?y)
                       (at ?sx h0 ?x) (at ?sy ?hy ?y) (succ_h ?h ?hy))
    :effect (and (on ?x ?y) (not (ontable ?x)) (not (clear ?y))
                 (not (at ?sx h0 ?x)) (at ?sy ?h ?x) (freetable ?sx))
  )

  (:action move
    :parameters (?x ?y ?z ?sx ?sz ?hx ?hz ?h)
    :precondition (and (block ?x) (block ?y) (block ?z) (slot ?sx) (slot ?sz) (height ?hx) (height ?hz) (height ?h)
                       (clear ?x) (clear ?z) (on ?x ?y) (neq ?x ?z)
                       (at ?sx ?hx ?x) (at ?sz ?hz ?z) (succ_h ?h ?hz))
    :effect (and (on ?x ?z) (not (clear ?z)) (clear ?y) (not (on ?x ?y))
                 (not (at ?sx ?hx ?x)) (at ?sz ?h ?x))
  )
)
