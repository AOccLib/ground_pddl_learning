(define (domain blocks3ops-slots)
  (:requirements :strips :typing)
  (:types block slot height)
  (:constants h0 - height) ; minimum height
  (:predicates
    (on ?x ?y - block)
    (ontable ?x - block)
    (clear ?x - block)
    (neq ?x ?y - block)
    ; new predicates
    (freetable ?s - slot)                  ; there is no block on the table at slot s
    (at ?s - slot ?h - height ?x - block)  ; block x is at slot s, height h
    (succ_h ?n ?m - height)                ; height n is successor of height m
    (succ_s ?n ?m - slot)                  ; slot n is successor of slot m
  )

  (:action newtower
    :parameters (?x ?y - block ?sx ?s - slot ?hx - height)
    :precondition (and (clear ?x) (on ?x ?y)
                       (at ?sx ?hx ?x) (freetable ?s))
    :effect (and (ontable ?x) (clear ?y) (not (on ?x ?y))
                 (not (at ?sx ?hx ?x)) (not (freetable ?s)) (at ?s h0 ?x))
  )

  (:action stack
    :parameters (?x ?y - block ?sx ?sy - slot ?hy ?h - height)
    :precondition (and (clear ?x) (clear ?y) (ontable ?x) (neq ?x ?y)
                       (at ?sx h0 ?x) (at ?sy ?hy ?y) (succ_h ?h ?hy))
    :effect (and (on ?x ?y) (not (ontable ?x)) (not (clear ?y))
                 (not (at ?sx h0 ?x)) (at ?sy ?h ?x) (freetable ?sx))
  )

  (:action move
    :parameters (?x ?y ?z - block ?sx ?sz - slot ?hx ?hz ?h - height)
    :precondition (and (clear ?x) (clear ?z) (on ?x ?y) (neq ?x ?z)
                       (at ?sx ?hx ?x) (at ?sz ?hz ?z) (succ_h ?h ?hz))
    :effect (and (on ?x ?z) (not (clear ?z)) (clear ?y) (not (on ?x ?y))
                 (not (at ?sx ?hx ?x)) (at ?sz ?h ?x))
  )
)
