(define (problem 5blocks-5slots)
  (:domain blocks3ops-slots)
  (:objects a0 a1 a2 a3 a4 - block
            s0 s1 s2 s3 s4 - slot
            h0 h1 h2 h3 h4 - height
  )
  (:init (ontable a0) (ontable a1) (ontable a2) (ontable a3) (ontable a4) (clear a0) (clear a1) (clear a2) (clear a3) (clear a4)
         (at s0 h0 a0) (at s1 h0 a1) (at s2 h0 a2) (at s3 h0 a3) (at s4 h0 a4)
         (succ_h h1 h0) (succ_h h2 h1) (succ_h h3 h2) (succ_h h4 h3)
         (succ_s s1 s0) (succ_s s2 s1) (succ_s s3 s2) (succ_s s4 s3)
         (neq a0 a1)  (neq a0 a2) (neq a0 a3) (neq a0 a4)
         (neq a1 a0)  (neq a1 a2) (neq a1 a3) (neq a1 a4)
         (neq a2 a0)  (neq a2 a1) (neq a2 a3) (neq a2 a4)
         (neq a3 a0)  (neq a3 a1) (neq a3 a2) (neq a3 a4)
         (neq a4 a0)  (neq a4 a1) (neq a4 a2) (neq a4 a3)
  )
  (:goal (and (clear a0)))
)
