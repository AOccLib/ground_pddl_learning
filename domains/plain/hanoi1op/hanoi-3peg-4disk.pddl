(define (problem hanoi-3peg-4disk)
  (:domain hanoi)
  (:objects p1 p2 p3 d1 d2 d3 d4 )
  (:init 
    (peg p1) (peg p2) (peg p3)
    (smaller d1 p1)(smaller d1 p2)(smaller d1 p3)
    (smaller d2 p1)(smaller d2 p2)(smaller d2 p3)
    (smaller d3 p1)(smaller d3 p2)(smaller d3 p3)
    (smaller d4 p1)(smaller d4 p2)(smaller d4 p3)

    (smaller d1 d2)(smaller d1 d3)(smaller d1 d4)
    (smaller d2 d3)(smaller d2 d4)
    (smaller d3 d4)
    
    (clear p1)(clear p2)(clear d1)
    (disk d1)(disk d2)(disk d3)(disk d4)
    (on d1 d2)(on d2 d3)(on d3 d4)(on d4 p3)
  )
  (:goal 
    (and (on d1 d2)(on d2 d3)(on d3 d4)(on d4 p1) )
  )
)
