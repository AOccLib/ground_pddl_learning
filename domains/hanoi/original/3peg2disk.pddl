(define (problem 3peg2disk)
  (:domain hanoi)
  (:objects peg1 peg2 peg3 d1 d2)
  (:init
   (peg peg1) (peg peg2) (peg peg3)
   (disk d1) (disk d2)
   (smaller peg1 d1) (smaller peg1 d2)
   (smaller peg2 d1) (smaller peg2 d2)
   (smaller peg3 d1) (smaller peg3 d2)
   (smaller d2 d1)
   (clear peg2) (clear peg3) (clear d1)
   (on d2 peg1) (on d1 d2))
  (:goal (and (on d2 peg3) (on d1 d2)))
  )