(define (problem 1blocks-5slots)
   (:domain blocks4ops-slots)
   (:objects a0 s0 s1 s2 s3 s4 h0)
   (:init (at s2 h0 a0) (ontable a0) (clear a0) (handempty) (freetable s0) (freetable s1) (freetable s3) (freetable s4) (succ s1 s0) (succ s2 s1) (succ s3 s2) (succ s4 s3))
   (:goal (and (clear a0))))