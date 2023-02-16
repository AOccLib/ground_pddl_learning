;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 3 Op-blocks world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain blocks3ops-slots)
  (:requirements :strips :typing)
  (:types block slot height)
  (:predicates (on ?x ?y - block)
         (ontable ?x - block)
         (clear ?x - block)
           (neq ?x ?y - block)
           ; new predicates
           (freetable ?s - slot)  ; there is no block on the table at slot s
           (at ?s - slot ?h - height ?x - block)   ; block x is at slot s, height h
           (succ_h ?n ?m - height)  ; n is the successor of m, used for heights
           (succ_s ?n ?m - slot)  ; n is the successor of m, used for slots
         )

  (:action newtower
    :parameters (?x ?y - block ?s - slot)
    :precondition (and (clear ?x) (on ?x ?y) (freetable ?s))
    :effect (and (ontable ?x) (clear ?y) (not (on ?x ?y))
                 (not (freetable ?s))
                 (at ?s h0 ?x)
    ))

  (:action stack
    :parameters (?x ?y - block ?sx ?sy - slot ?h1 ?h2 ?h - height)
    :precondition (and (neq ?x ?y) (clear ?x) (clear ?y) (ontable ?x)
                       (at ?sx ?h ?x) (at ?sy ?h2 ?y) (succ_h ?h1 ?h2)

    )
    :effect (and (on ?x ?y) (not (ontable ?x)) (not (clear ?y))
                  (at ?sy ?h1 ?x) (not (at ?sx ?h ?x)) (freetable ?sx)
    ))

  (:action move
    :parameters (?x ?y ?z - block ?s1 ?s2 - slot ?h1 ?h2 ?h3 ?h4 - height)
    :precondition (and (neq ?x ?z) (clear ?x) (clear ?z) (on ?x ?y)
                       (at ?s1 ?h1 ?x) (at ?s1 ?h2 ?y) (succ_h ?h1 ?h2)
                       (at ?s2 ?h3 ?z) (succ_h ?h4 ?h3)
    )
    :effect (and (on ?x ?z) (not (clear ?z)) (clear ?y) (not (on ?x ?y))
                 (not (at ?s1 ?h1 ?x)) (at ?s2 ?h4 ?x)
    ))
)

