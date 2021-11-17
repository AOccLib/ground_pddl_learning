(define (problem hanoi-1)
  (:domain hanoi-domain)
  (:objects p1 p2 p3 d1 )
  (:init 
    (peg p1) (peg p2) (peg p3)
    (smaller d1 p1)(smaller d1 p2)(smaller d1 p3)

    
    (clear p1)(clear p2)(clear d1)
    (disk d1)
    (on d1 p3)
  )
  (:goal 
    (and (on d1 p1) )
  )
)
