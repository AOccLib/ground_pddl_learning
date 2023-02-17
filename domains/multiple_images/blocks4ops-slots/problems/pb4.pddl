(define (problem 4blocks-5slots)
  (:domain blocks4ops-slots)
  (:objects a0 a1 a2 a3
            s0 s1 s2 s3 s4
            h1 h2 h3
  )
  (:init (block a0) (block a1) (block a2) (block a3) (slot s0) (slot s1) (slot s2) (slot s3) (slot s4) (height h0) (height h1) (height h2) (height h3)
         (ontable a0) (ontable a1) (ontable a2) (ontable a3) (clear a0) (clear a1) (clear a2) (clear a3) (handempty)
         (at s0 h0 a0) (at s2 h0 a1) (at s3 h0 a2) (at s4 h0 a3)
         (freetable s1)
         (succ_s s1 s0) (succ_s s2 s1) (succ_s s3 s2) (succ_s s4 s3)
         (succ_h h1 h0) (succ_h h2 h1) (succ_h h3 h2)
         (neq a0 a1) (neq a0 a2) (neq a0 a3)
         (neq a1 a0) (neq a1 a2) (neq a1 a3)
         (neq a2 a0) (neq a2 a1) (neq a2 a3)
         (neq a3 a0) (neq a3 a1) (neq a3 a2)
  )
  (:goal (and (clear a0)))
)
