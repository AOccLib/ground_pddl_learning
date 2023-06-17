(define (problem strips-gripper-x-1)
   (:domain gripper)
   (:objects rr lr ball1 leftgrip rightgrip)
   (:init (room rr)
          (room lr)
          (left lr rr)
          (neq rr lr)
          (neq lr rr)
          (ball ball1)
          (at_robby lr)
          (free leftgrip)
          (free rightgrip)
          (at ball1 lr)
          (gripper leftgrip)
          (gripper rightgrip))
   (:goal (and 
               (at ball1 rr))))