(define (problem 2blocks-5slots)
  (:domain blocks4ops-slots)
  (:objects a0 a1 - block
            s0 s1 s2 s3 s4 - slot
            h1 - height
  )
  (:init (ontable a0) (ontable a1) (clear a0) (clear a1) (handempty)
         (at s2 h0 a0) (at s4 h0 a1)
         (freetable s0) (freetable s1) (freetable s3)
         (succ_s s1 s0) (succ_s s2 s1) (succ_s s3 s2) (succ_s s4 s3)
         (succ_h h1 h0)
         (neq a0 a1) (neq a1 a0)
  )
  (:goal (and (clear a0)))
)
