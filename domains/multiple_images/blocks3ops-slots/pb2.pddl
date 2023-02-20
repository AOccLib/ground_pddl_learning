(define (problem 2blocks-5slots)
  (:domain blocks3ops-slots)
  (:objects a0 a1
            s0 s1 s2 s3 s4
            h1
  )
  (:init (block a0) (block a1) (slot s0) (slot s1) (slot s2) (slot s3) (slot s4) (height h0) (height h1)
         (ontable a0) (ontable a1) (clear a0) (clear a1)
         (at s0 h0 a0) (at s1 h0 a1)
         (freetable s2) (freetable s3) (freetable s4)
         (leftof s0 s1) (leftof s0 s2) (leftof s0 s3) (leftof s0 s4)
                        (leftof s1 s2) (leftof s1 s3) (leftof s1 s4)
                                       (leftof s2 s3) (leftof s2 s4)
                                                      (leftof s3 s4)
         (succ_h h1 h0)
         (neq a0 a1) (neq a1 a0)
  )
  (:goal (and (clear a0)))
)
