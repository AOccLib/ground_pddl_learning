(define (domain hanoi)
  (:requirements :strips)
  (:predicates (clear ?x) (on ?x ?y) (smaller ?x ?y) (peg ?x) (disk ?x))

  (:action move
    :parameters (?disc ?from ?to)
    :precondition (and (disk ?disc) (clear ?disc) (on ?disc ?from) (clear ?to) (smaller ?disc ?to))
    :effect  (and (clear ?from) (on ?disc ?to) (not (on ?disc ?from)) (not (clear ?to))))
)

