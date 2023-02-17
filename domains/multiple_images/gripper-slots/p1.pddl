(define (problem strips-gripper-x-1)
  (:domain gripper-slots)
  (:objects rr lr ball1 leftgrip rightgrip slotl1 slotl2 slotl3 slotl4 slotr1 slotr2 slotr3 slotr4)
  (:init (room rr) (room lr)
         (gripper leftgrip) (gripper rightgrip)
         (free leftgrip) (free rightgrip)
         (neq rr lr) (neq lr rr)
         (left lr rr)
         (ball ball1)
         (at_robby lr)
         (at ball1 lr)
         (at_robby_slot lr slotl1)
         (at_slot ball1 lr slotl2)
         (freeslot lr slotl3) (freeslot lr slotl4)
         (freeslot rr slotr1) (freeslot rr slotr2) (freeslot rr slotr3) (freeslot rr slotr4)
         (slot slotl1 lr) (slot slotl2 lr) (slot slotl3 lr) (slot slotl4 lr)
         (slot slotr1 rr) (slot slotr2 rr) (slot slotr3 rr) (slot slotr4 rr)
         (left slotl1 slotl2) (left slotl3 slotl4) (left slotr1 slotr2) (left slotr3 slotr4)
         (below slotl3 slotl1) (below slotl4 slotl2) (below slotr3 slotr1) (below slotr4 slotr2)
  )
  (:goal (and (at ball1 rr)))
)