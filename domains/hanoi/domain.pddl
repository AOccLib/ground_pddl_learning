(define (domain hanoi)
  (:requirements :strips)
  (:predicates (clear ?x) (on ?x ?y) (smaller ?x ?y) (peg ?x) (disk ?x))

  (:action move_from_peg_to_disk
    :parameters (?disc ?from ?to)
    :precondition (and (peg ?from) (disk ?to) (smaller ?to ?disc) (on ?disc ?from)
		       (clear ?disc) (clear ?to))
    :effect  (and (clear ?from) (on ?disc ?to) (not (on ?disc ?from))
		  (not (clear ?to))))

  (:action move_from_peg_to_peg
    :parameters (?disc ?from ?to)
    :precondition (and (peg ?from) (peg ?to) (smaller ?to ?disc) (on ?disc ?from)
		       (clear ?disc) (clear ?to))
    :effect  (and (clear ?from) (on ?disc ?to) (not (on ?disc ?from))
		  (not (clear ?to))))

  (:action move_from_disk_to_peg
    :parameters (?disc ?from ?to)
    :precondition (and (disk ?from) (peg ?to) (smaller ?to ?disc) (on ?disc ?from)
		       (clear ?disc) (clear ?to))
    :effect  (and (clear ?from) (on ?disc ?to) (not (on ?disc ?from))
		  (not (clear ?to))))

  (:action move_from_disk_to_disk
    :parameters (?disc ?from ?to)
    :precondition (and (disk ?from) (disk ?to) (smaller ?to ?disc) (on ?disc ?from)
		       (clear ?disc) (clear ?to))
    :effect  (and (clear ?from) (on ?disc ?to) (not (on ?disc ?from))
		  (not (clear ?to))))
  )