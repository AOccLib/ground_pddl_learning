(define (problem hanoi-2)
  (:domain hanoi-domain)
  (:objects p1 p2 p3 d1 d2 )
  (:init 
    (peg p1) (peg p2) (peg p3)
    (smaller d1 p1)(smaller d1 p2)(smaller d1 p3)
    (smaller d2 p1)(smaller d2 p2)(smaller d2 p3)

    (smaller d1 d2)
    
    (clear p1)(clear p2)(clear d1)
    (disk d1)(disk d2)
    (on d1 d2)(on d2 p3)
  )
  (:goal 
    (and (on d1 d2)(on d2 p1) )
  )
)
