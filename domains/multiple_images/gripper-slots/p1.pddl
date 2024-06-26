(define (problem strips-gripper-x-1)
  (:domain gripper-slots)
  (:objects ball1 leftgrip rightgrip leftroom rightroom slot1 slot2 slot3 slot4)
  (:init (room leftroom) (room rightroom)
         (gripper leftgrip) (gripper rightgrip)
         (ball ball1)
         (neq rightroom leftroom) (neq leftroom rightroom)
         (free leftgrip) (free rightgrip)
         (at_robby leftroom) (at_robby_slot leftroom slot1)
         (at ball1 leftroom) (at_slot ball1 leftroom slot2)
         (freeslot leftroom slot3) (freeslot leftroom slot4)
         (freeslot rightroom slot1) (freeslot rightroom slot2) (freeslot rightroom slot3) (freeslot rightroom slot4)
         (left leftroom rightroom)
         (left slot1 slot2) (left slot3 slot4)
         (below slot3 slot1) (below slot4 slot2)
  )
  (:goal (and (at ball1 rightroom)))
)
