(define (problem hanoi-3peg-3disk)
  (:domain hanoi)
  (:objects p1 p2 p3 d1 d2 d3 )
  (:init 
    (peg p1) (peg p2) (peg p3)
    (smaller d1 p1)(smaller d1 p2)(smaller d1 p3)
    (smaller d2 p1)(smaller d2 p2)(smaller d2 p3)
    (smaller d3 p1)(smaller d3 p2)(smaller d3 p3)

    (smaller d1 d2)(smaller d1 d3)
    (smaller d2 d3)
    
    (clear p1)(clear p2)(clear d1)
    (disk d1)(disk d2)(disk d3)
    (on d1 d2)(on d2 d3)(on d3 p3)
  )
  (:goal 
    (and (on d1 d2)(on d2 d3)(on d3 p1) )
  )
)
