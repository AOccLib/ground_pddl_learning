(define (problem pb1)
   (:domain blocksworld)
   (:objects a)
   (:init (ontable a) (clear a) (handempty))
   (:goal (and (clear a))))