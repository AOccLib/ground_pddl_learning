(define (domain strips-sliding-tile)
  (:requirements :strips)
  (:predicates
   (tile ?x) (position ?x)
   (at ?t ?x) (blank ?x)
   (below ?x ?y) (left ?x ?y))
  (:action moveup
    :parameters (?t ?px ?py)
    :precondition (and
		   (tile ?t) (position ?px) (position ?py) (blank ?py) (at ?t ?px) (below ?px ?py))
    :effect (and (not (blank ?py)) (not (at ?t ?px))
		 (blank ?px) (at ?t ?py)))

   (:action movedown
    :parameters (?t ?px ?py)
    :precondition (and
		   (tile ?t) (position ?px) (position ?py) (blank ?py) (at ?t ?px) (below ?py ?px))
    :effect (and (not (blank ?py)) (not (at ?t ?px))
		 (blank ?px) (at ?t ?py)))

   (:action moveleft
    :parameters (?t ?px ?py)
    :precondition (and
		   (tile ?t) (position ?px) (position ?py) (blank ?py) (at ?t ?px) (left ?py ?px))
    :effect (and (not (blank ?py)) (not (at ?t ?px))
		 (blank ?px) (at ?t ?py)))

   (:action moveright
    :parameters (?t ?px ?py)
    :precondition (and
		   (tile ?t) (position ?px) (position ?py) (blank ?py) (at ?t ?px) (left ?px ?py))
    :effect (and (not (blank ?py)) (not (at ?t ?px))
		 (blank ?px) (at ?t ?py)))
		 )
