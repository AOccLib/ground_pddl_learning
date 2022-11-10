(define (problem strips-gripper-x-4)
   (:domain gripper)
   (:objects lr rr ball4
             ball3 ball2 ball1 leftgrip rightgrip)
   (:init (room lr)
          (room rr)
          (left lr rr)
          (lroom lr)
          (rroom rr)
          (ball ball4)
          (ball ball3)
          (ball ball2)
          (ball ball1)
          (at_robby lr)
          (free leftgrip)
          (free rightgrip)
          (at ball4 lr)
          (at ball3 lr)
          (at ball2 lr)
          (at ball1 lr)
          (gripper leftgrip)
          (gripper rightgrip))
   (:goal (and 
               (at ball4 rr)
               (at ball3 rr)
               (at ball2 rr)
               (at ball1 rr))))