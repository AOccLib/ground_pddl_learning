(define (domain blocks4ops-slots)
  (:requirements :strips :typing)
  (:types block slot height)
  (:constants h0 - height) ; minimum height
  (:predicates
    (on ?x ?y - block)
    (ontable ?x - block)
    (clear ?x - block)
    (holding ?x - block)
    (handempty)
    (neq ?x ?y - block)
    ; new predicates
    (freetable ?s - slot)                  ; there is no block on the table at slot s
    (at ?s - slot ?h - height ?x - block)  ; block x is at slot s, height h
    (succ_h ?n ?m - height)                ; height n is successor of height m
    (succ_s ?n ?m - slot)                  ; slot n is successor of slot m
  )

  (:action pickup
    :parameters (?x - block ?sx - slot)
    :precondition (and (ontable ?x) (clear ?x) (handempty) (at ?sx h0 ?x))
    :effect (and (not (clear ?x)) (not (handempty)) (not (ontable ?x)) (holding ?x)
                 (not (at ?sx h0 ?x)) (freetable ?sx))
  )

  (:action putdown
    :parameters (?x - block ?sx - slot)
    :precondition (and (holding ?x) (freetable ?sx))
    :effect (and (not (holding ?x)) (clear ?x) (ontable ?x) (handempty)
                 (at ?sx h0 ?x) (not (freetable ?s)))
  )

  (:action stack
    :parameters (?x ?y - block ?sy - slot ?hy ?h - height)
    :precondition (and (holding ?x) (clear ?y) (at ?sy ?hy ?y) (succ ?h ?hy))
    :effect (and (not (holding ?x)) (not (clear ?y)) (clear ?x) (handempty) (on ?x ?y)
                 (at ?sy ?h ?x))
  )

  (:action unstack
    :parameters (?x ?y - block ?sx ?hx - height)
    :precondition (and (clear ?x) (on ?x ?y) (handempty) (at ?sx ?hx ?x))
    :effect (and (not (clear ?x)) (not (on ?x ?y)) (not (handempty))
                 (holding ?x) (clear ?y)
                 (not (at ?sx ?hx ?x)))
  )
)
