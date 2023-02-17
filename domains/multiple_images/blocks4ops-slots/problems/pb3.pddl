(define (problem 3blocks-5slots)
  (:domain blocks4ops-slots)
  (:objects a0 a1 a2 - block
            s0 s1 s2 s3 s4 - slot
            h1 h2 - height
  )
  (:init (ontable a0) (ontable a1) (ontable a2) (clear a0) (clear a1) (clear a2) (handempty)
         (at s2 h0 a0) (at s3 h0 a1) (at s4 h0 a2)
         (freetable s0) (freetable s1)
         (succ_s s1 s0) (succ_s s2 s1) (succ_s s3 s2) (succ_s s4 s3)
         (succ_h h1 h0) (succ_h h2 h1)
         (neq a0 a1) (neq a0 a2)
         (neq a1 a0) (neq a1 a2)
         (neq a2 a0) (neq a2 a1)
  )
  (:goal (and (clear a0)))
)