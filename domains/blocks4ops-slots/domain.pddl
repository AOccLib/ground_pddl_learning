(define (domain blocks4ops-slots)
(:requirements )
(:predicates
    ; original blocksworld predicates
    (clear ?x)
    (handempty)
    (holding ?x)
    (ontable ?x)
    (on ?x ?y)
    ; new predicates
    (freetable ?s)  ; there is no block on the table at slot s
    (at ?s ?h ?x)   ; block x is at slot s, height h
    (succ ?n ?m)  ; n is the successor of m, used for heights and slots
)
;;;;;;;;;;;;;;;;;;;; ACTION SCHEMAS ;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;; PICKUP ;;;;;;;;;;;;;;;;;;;;
    ; pickup block x from slot s
    (:action pickup
     :parameters (?x ?s)
     :precondition( and (ontable ?x) (clear ?x) (at ?s h0 ?x) (handempty))
     :effect
     (and (not (at ?s h0 ?x))
     (not (clear ?x))
     (not (handempty))
     (holding ?x)
     (freetable ?s)
     (not (ontable ?x))
    ))
;;;;;;;;;;;;;;;;;;;; PUTDOWN ;;;;;;;;;;;;;;;;;;;;
    ; putdown block x in slot s
    (:action putdown
         :parameters (?x ?s)
         :precondition (and (holding ?x) (freetable ?s))
         :effect
         (and (not (holding ?x))
           (clear ?x)
           (handempty)
           (at ?s h0 ?x)
           (ontable ?x)
           (not (freetable ?s))
           ))
;;;;;;;;;;;;;;;;;;;; STACK ;;;;;;;;;;;;;;;;;;;;
    ; stack block x in slot s at height h1, on top of block y
    (:action stack
         :parameters (?x ?y ?s ?h1 ?h2)
         :precondition (and (holding ?x) (clear ?y) (at ?s ?h2 ?y) (succ ?h1 ?h2))
         :effect
         (and (not (holding ?x))
           (not (clear ?y))
           (clear ?x)
           (handempty)
           (at ?s ?h1 ?x)
           (on ?x ?y)
           ))
;;;;;;;;;;;;;;;;;;;; UNSTACK ;;;;;;;;;;;;;;;;;;;;
    ; unstack block x from slot s at height h1, on top of block y
     (:action unstack
             :parameters (?x ?y ?s ?h1 ?h2)
             :precondition (and (clear ?x) (handempty) (on ?x ?y) (at ?s ?h1 ?x) (at ?s ?h2 ?y) (succ ?h1 ?h2))
             :effect
             (and (holding ?x)
               (clear ?y)
               (not (on ?x ?y))
               (not (clear ?x))
               (not (handempty))
               (not (at ?s ?h1 ?x))
               ))
)