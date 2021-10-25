(define (problem 2tilehoriz)
  (:domain strips-sliding-tile)
  (:objects t1 t2 x11 x12 x13)
  (:init
   (tile t1) (tile t2)
   (position x11) (position x12) (position x13)
   (blank x13)
   (at t1 x11) (at t2 x12)
   (left x11 x12) (left x12 x13)
   )
  (:goal
   (and (at t1 x11)))
  )