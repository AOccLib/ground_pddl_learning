(define (problem 1blocks-5slots)
  (:domain blocks3ops-slots)
  (:objects a0 - block
            s0 s1 s2 s3 s4 - slot
            h0 - height
  )
  (:init (ontable a0) (clear a0)
         (at s2 h0 a0)
         (freetable s0) (freetable s1) (freetable s3) (freetable s4)
         (succ_s s1 s0) (succ_s s2 s1) (succ_s s3 s2) (succ_s s4 s3)
  )
  (:goal (and (clear a0)))
)
