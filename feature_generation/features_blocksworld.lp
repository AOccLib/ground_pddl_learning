%%%%%%%%%%%%%%%%%%% LEVEL 0 CONCEPTS %%%%%%%%%%%%%%%%%%%
er_smaller_verum(X0) :- verum(X1),smaller(X0,X1).
-er_smaller_verum(X0) :- object(X0),not er_smaller_verum(X0).
er_below_verum(X0) :- verum(X1),below(X0,X1).
-er_below_verum(X0) :- object(X0),not er_below_verum(X0).
er_left_verum(X0) :- verum(X1),left(X0,X1).
-er_left_verum(X0) :- object(X0),not er_left_verum(X0).
er_overlap_verum(X0) :- verum(X1),overlap(X0,X1).
-er_overlap_verum(X0) :- object(X0),not er_overlap_verum(X0).
er_shape_verum(X0) :- verum(X1),shape(X0,X1).
-er_shape_verum(X0) :- object(X0),not er_shape_verum(X0).
er_smaller_falsum(X0) :- falsum(X1),smaller(X0,X1).
-er_smaller_falsum(X0) :- object(X0),not er_smaller_falsum(X0).
er_below_falsum(X0) :- falsum(X1),below(X0,X1).
-er_below_falsum(X0) :- object(X0),not er_below_falsum(X0).
er_left_falsum(X0) :- falsum(X1),left(X0,X1).
-er_left_falsum(X0) :- object(X0),not er_left_falsum(X0).
er_overlap_falsum(X0) :- falsum(X1),overlap(X0,X1).
-er_overlap_falsum(X0) :- object(X0),not er_overlap_falsum(X0).
er_shape_falsum(X0) :- falsum(X1),shape(X0,X1).
-er_shape_falsum(X0) :- object(X0),not er_shape_falsum(X0).
er_smaller_robot(X0) :- robot(X1),smaller(X0,X1).
-er_smaller_robot(X0) :- object(X0),not er_smaller_robot(X0).
er_below_robot(X0) :- robot(X1),below(X0,X1).
-er_below_robot(X0) :- object(X0),not er_below_robot(X0).
er_left_robot(X0) :- robot(X1),left(X0,X1).
-er_left_robot(X0) :- object(X0),not er_left_robot(X0).
er_overlap_robot(X0) :- robot(X1),overlap(X0,X1).
-er_overlap_robot(X0) :- object(X0),not er_overlap_robot(X0).
er_shape_robot(X0) :- robot(X1),shape(X0,X1).
-er_shape_robot(X0) :- object(X0),not er_shape_robot(X0).
er_smaller_block(X0) :- block(X1),smaller(X0,X1).
-er_smaller_block(X0) :- object(X0),not er_smaller_block(X0).
er_below_block(X0) :- block(X1),below(X0,X1).
-er_below_block(X0) :- object(X0),not er_below_block(X0).
er_left_block(X0) :- block(X1),left(X0,X1).
-er_left_block(X0) :- object(X0),not er_left_block(X0).
er_overlap_block(X0) :- block(X1),overlap(X0,X1).
-er_overlap_block(X0) :- object(X0),not er_overlap_block(X0).
er_shape_block(X0) :- block(X1),shape(X0,X1).
-er_shape_block(X0) :- object(X0),not er_shape_block(X0).
er_smaller_table(X0) :- table(X1),smaller(X0,X1).
-er_smaller_table(X0) :- object(X0),not er_smaller_table(X0).
er_below_table(X0) :- table(X1),below(X0,X1).
-er_below_table(X0) :- object(X0),not er_below_table(X0).
er_left_table(X0) :- table(X1),left(X0,X1).
-er_left_table(X0) :- object(X0),not er_left_table(X0).
er_overlap_table(X0) :- table(X1),overlap(X0,X1).
-er_overlap_table(X0) :- object(X0),not er_overlap_table(X0).
er_shape_table(X0) :- table(X1),shape(X0,X1).
-er_shape_table(X0) :- object(X0),not er_shape_table(X0).
inter_verum_falsum(X0) :- verum(X0),falsum(X0).
-inter_verum_falsum(X0) :- object(X0),not inter_verum_falsum(X0).
inter_verum_robot(X0) :- verum(X0),robot(X0).
-inter_verum_robot(X0) :- object(X0),not inter_verum_robot(X0).
inter_verum_block(X0) :- verum(X0),block(X0).
-inter_verum_block(X0) :- object(X0),not inter_verum_block(X0).
inter_verum_table(X0) :- verum(X0),table(X0).
-inter_verum_table(X0) :- object(X0),not inter_verum_table(X0).
inter_falsum_robot(X0) :- falsum(X0),robot(X0).
-inter_falsum_robot(X0) :- object(X0),not inter_falsum_robot(X0).
inter_falsum_block(X0) :- falsum(X0),block(X0).
-inter_falsum_block(X0) :- object(X0),not inter_falsum_block(X0).
inter_falsum_table(X0) :- falsum(X0),table(X0).
-inter_falsum_table(X0) :- object(X0),not inter_falsum_table(X0).
inter_robot_block(X0) :- robot(X0),block(X0).
-inter_robot_block(X0) :- object(X0),not inter_robot_block(X0).
inter_robot_table(X0) :- robot(X0),table(X0).
-inter_robot_table(X0) :- object(X0),not inter_robot_table(X0).
inter_block_table(X0) :- block(X0),table(X0).
-inter_block_table(X0) :- object(X0),not inter_block_table(X0).
subset_verum_falsum(null) :- falsum(X0) : verum(X0).
-subset_verum_falsum(null) :- not subset_verum_falsum(null).
subset_verum_robot(null) :- robot(X0) : verum(X0).
-subset_verum_robot(null) :- not subset_verum_robot(null).
subset_verum_block(null) :- block(X0) : verum(X0).
-subset_verum_block(null) :- not subset_verum_block(null).
subset_verum_table(null) :- table(X0) : verum(X0).
-subset_verum_table(null) :- not subset_verum_table(null).
subset_falsum_robot(null) :- robot(X0) : falsum(X0).
-subset_falsum_robot(null) :- not subset_falsum_robot(null).
subset_falsum_block(null) :- block(X0) : falsum(X0).
-subset_falsum_block(null) :- not subset_falsum_block(null).
subset_falsum_table(null) :- table(X0) : falsum(X0).
-subset_falsum_table(null) :- not subset_falsum_table(null).
subset_robot_block(null) :- block(X0) : robot(X0).
-subset_robot_block(null) :- not subset_robot_block(null).
subset_robot_table(null) :- table(X0) : robot(X0).
-subset_robot_table(null) :- not subset_robot_table(null).
subset_block_table(null) :- table(X0) : block(X0).
-subset_block_table(null) :- not subset_block_table(null).

%%%%%%%%%%%%%%%%%%% LEVEL 0 ROLES %%%%%%%%%%%%%%%%%%%
inv_smaller(X0,X1) :- smaller(X1,X0).
-inv_smaller(X0,X1) :- object(X0),object(X1),not inv_smaller(X0,X1).
inv_below(X0,X1) :- below(X1,X0).
-inv_below(X0,X1) :- object(X0),object(X1),not inv_below(X0,X1).
inv_left(X0,X1) :- left(X1,X0).
-inv_left(X0,X1) :- object(X0),object(X1),not inv_left(X0,X1).
inv_overlap(X0,X1) :- overlap(X1,X0).
-inv_overlap(X0,X1) :- object(X0),object(X1),not inv_overlap(X0,X1).
inv_shape(X0,X1) :- shape(X1,X0).
-inv_shape(X0,X1) :- object(X0),object(X1),not inv_shape(X0,X1).
comp_smaller_below(X0,X1) :- smaller(X0,X2),below(X2,X1).
-comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_smaller_below(X0,X1).
comp_smaller_left(X0,X1) :- smaller(X0,X2),left(X2,X1).
-comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_smaller_left(X0,X1).
comp_smaller_overlap(X0,X1) :- smaller(X0,X2),overlap(X2,X1).
-comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_smaller_overlap(X0,X1).
comp_smaller_shape(X0,X1) :- smaller(X0,X2),shape(X2,X1).
-comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_smaller_shape(X0,X1).
comp_below_left(X0,X1) :- below(X0,X2),left(X2,X1).
-comp_below_left(X0,X1) :- object(X0),object(X1),not comp_below_left(X0,X1).
comp_below_overlap(X0,X1) :- below(X0,X2),overlap(X2,X1).
-comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_below_overlap(X0,X1).
comp_below_shape(X0,X1) :- below(X0,X2),shape(X2,X1).
-comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_below_shape(X0,X1).
comp_left_overlap(X0,X1) :- left(X0,X2),overlap(X2,X1).
-comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_left_overlap(X0,X1).
comp_left_shape(X0,X1) :- left(X0,X2),shape(X2,X1).
-comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_left_shape(X0,X1).
comp_overlap_shape(X0,X1) :- overlap(X0,X2),shape(X2,X1).
-comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_overlap_shape(X0,X1).

%%%%%%%%%%%%%%%%%%% LEVEL 1 CONCEPTS %%%%%%%%%%%%%%%%%%%
er_inv_smaller_verum(X0) :- verum(X1),inv_smaller(X0,X1).
-er_inv_smaller_verum(X0) :- object(X0),not er_inv_smaller_verum(X0).
er_inv_below_verum(X0) :- verum(X1),inv_below(X0,X1).
-er_inv_below_verum(X0) :- object(X0),not er_inv_below_verum(X0).
er_inv_left_verum(X0) :- verum(X1),inv_left(X0,X1).
-er_inv_left_verum(X0) :- object(X0),not er_inv_left_verum(X0).
er_inv_overlap_verum(X0) :- verum(X1),inv_overlap(X0,X1).
-er_inv_overlap_verum(X0) :- object(X0),not er_inv_overlap_verum(X0).
er_inv_shape_verum(X0) :- verum(X1),inv_shape(X0,X1).
-er_inv_shape_verum(X0) :- object(X0),not er_inv_shape_verum(X0).
er_comp_smaller_below_verum(X0) :- verum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_verum(X0) :- object(X0),not er_comp_smaller_below_verum(X0).
er_comp_smaller_left_verum(X0) :- verum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_verum(X0) :- object(X0),not er_comp_smaller_left_verum(X0).
er_comp_smaller_overlap_verum(X0) :- verum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_verum(X0) :- object(X0),not er_comp_smaller_overlap_verum(X0).
er_comp_smaller_shape_verum(X0) :- verum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_verum(X0) :- object(X0),not er_comp_smaller_shape_verum(X0).
er_comp_below_left_verum(X0) :- verum(X1),comp_below_left(X0,X1).
-er_comp_below_left_verum(X0) :- object(X0),not er_comp_below_left_verum(X0).
er_comp_below_overlap_verum(X0) :- verum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_verum(X0) :- object(X0),not er_comp_below_overlap_verum(X0).
er_comp_below_shape_verum(X0) :- verum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_verum(X0) :- object(X0),not er_comp_below_shape_verum(X0).
er_comp_left_overlap_verum(X0) :- verum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_verum(X0) :- object(X0),not er_comp_left_overlap_verum(X0).
er_comp_left_shape_verum(X0) :- verum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_verum(X0) :- object(X0),not er_comp_left_shape_verum(X0).
er_comp_overlap_shape_verum(X0) :- verum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_verum(X0) :- object(X0),not er_comp_overlap_shape_verum(X0).
er_inv_smaller_falsum(X0) :- falsum(X1),inv_smaller(X0,X1).
-er_inv_smaller_falsum(X0) :- object(X0),not er_inv_smaller_falsum(X0).
er_inv_below_falsum(X0) :- falsum(X1),inv_below(X0,X1).
-er_inv_below_falsum(X0) :- object(X0),not er_inv_below_falsum(X0).
er_inv_left_falsum(X0) :- falsum(X1),inv_left(X0,X1).
-er_inv_left_falsum(X0) :- object(X0),not er_inv_left_falsum(X0).
er_inv_overlap_falsum(X0) :- falsum(X1),inv_overlap(X0,X1).
-er_inv_overlap_falsum(X0) :- object(X0),not er_inv_overlap_falsum(X0).
er_inv_shape_falsum(X0) :- falsum(X1),inv_shape(X0,X1).
-er_inv_shape_falsum(X0) :- object(X0),not er_inv_shape_falsum(X0).
er_comp_smaller_below_falsum(X0) :- falsum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_falsum(X0) :- object(X0),not er_comp_smaller_below_falsum(X0).
er_comp_smaller_left_falsum(X0) :- falsum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_falsum(X0) :- object(X0),not er_comp_smaller_left_falsum(X0).
er_comp_smaller_overlap_falsum(X0) :- falsum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_falsum(X0) :- object(X0),not er_comp_smaller_overlap_falsum(X0).
er_comp_smaller_shape_falsum(X0) :- falsum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_falsum(X0) :- object(X0),not er_comp_smaller_shape_falsum(X0).
er_comp_below_left_falsum(X0) :- falsum(X1),comp_below_left(X0,X1).
-er_comp_below_left_falsum(X0) :- object(X0),not er_comp_below_left_falsum(X0).
er_comp_below_overlap_falsum(X0) :- falsum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_falsum(X0) :- object(X0),not er_comp_below_overlap_falsum(X0).
er_comp_below_shape_falsum(X0) :- falsum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_falsum(X0) :- object(X0),not er_comp_below_shape_falsum(X0).
er_comp_left_overlap_falsum(X0) :- falsum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_falsum(X0) :- object(X0),not er_comp_left_overlap_falsum(X0).
er_comp_left_shape_falsum(X0) :- falsum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_falsum(X0) :- object(X0),not er_comp_left_shape_falsum(X0).
er_comp_overlap_shape_falsum(X0) :- falsum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_falsum(X0) :- object(X0),not er_comp_overlap_shape_falsum(X0).
er_inv_smaller_robot(X0) :- robot(X1),inv_smaller(X0,X1).
-er_inv_smaller_robot(X0) :- object(X0),not er_inv_smaller_robot(X0).
er_inv_below_robot(X0) :- robot(X1),inv_below(X0,X1).
-er_inv_below_robot(X0) :- object(X0),not er_inv_below_robot(X0).
er_inv_left_robot(X0) :- robot(X1),inv_left(X0,X1).
-er_inv_left_robot(X0) :- object(X0),not er_inv_left_robot(X0).
er_inv_overlap_robot(X0) :- robot(X1),inv_overlap(X0,X1).
-er_inv_overlap_robot(X0) :- object(X0),not er_inv_overlap_robot(X0).
er_inv_shape_robot(X0) :- robot(X1),inv_shape(X0,X1).
-er_inv_shape_robot(X0) :- object(X0),not er_inv_shape_robot(X0).
er_comp_smaller_below_robot(X0) :- robot(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_robot(X0) :- object(X0),not er_comp_smaller_below_robot(X0).
er_comp_smaller_left_robot(X0) :- robot(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_robot(X0) :- object(X0),not er_comp_smaller_left_robot(X0).
er_comp_smaller_overlap_robot(X0) :- robot(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_robot(X0) :- object(X0),not er_comp_smaller_overlap_robot(X0).
er_comp_smaller_shape_robot(X0) :- robot(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_robot(X0) :- object(X0),not er_comp_smaller_shape_robot(X0).
er_comp_below_left_robot(X0) :- robot(X1),comp_below_left(X0,X1).
-er_comp_below_left_robot(X0) :- object(X0),not er_comp_below_left_robot(X0).
er_comp_below_overlap_robot(X0) :- robot(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_robot(X0) :- object(X0),not er_comp_below_overlap_robot(X0).
er_comp_below_shape_robot(X0) :- robot(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_robot(X0) :- object(X0),not er_comp_below_shape_robot(X0).
er_comp_left_overlap_robot(X0) :- robot(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_robot(X0) :- object(X0),not er_comp_left_overlap_robot(X0).
er_comp_left_shape_robot(X0) :- robot(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_robot(X0) :- object(X0),not er_comp_left_shape_robot(X0).
er_comp_overlap_shape_robot(X0) :- robot(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_robot(X0) :- object(X0),not er_comp_overlap_shape_robot(X0).
er_inv_smaller_block(X0) :- block(X1),inv_smaller(X0,X1).
-er_inv_smaller_block(X0) :- object(X0),not er_inv_smaller_block(X0).
er_inv_below_block(X0) :- block(X1),inv_below(X0,X1).
-er_inv_below_block(X0) :- object(X0),not er_inv_below_block(X0).
er_inv_left_block(X0) :- block(X1),inv_left(X0,X1).
-er_inv_left_block(X0) :- object(X0),not er_inv_left_block(X0).
er_inv_overlap_block(X0) :- block(X1),inv_overlap(X0,X1).
-er_inv_overlap_block(X0) :- object(X0),not er_inv_overlap_block(X0).
er_inv_shape_block(X0) :- block(X1),inv_shape(X0,X1).
-er_inv_shape_block(X0) :- object(X0),not er_inv_shape_block(X0).
er_comp_smaller_below_block(X0) :- block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_block(X0) :- object(X0),not er_comp_smaller_below_block(X0).
er_comp_smaller_left_block(X0) :- block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_block(X0) :- object(X0),not er_comp_smaller_left_block(X0).
er_comp_smaller_overlap_block(X0) :- block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_block(X0) :- object(X0),not er_comp_smaller_overlap_block(X0).
er_comp_smaller_shape_block(X0) :- block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_block(X0) :- object(X0),not er_comp_smaller_shape_block(X0).
er_comp_below_left_block(X0) :- block(X1),comp_below_left(X0,X1).
-er_comp_below_left_block(X0) :- object(X0),not er_comp_below_left_block(X0).
er_comp_below_overlap_block(X0) :- block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_block(X0) :- object(X0),not er_comp_below_overlap_block(X0).
er_comp_below_shape_block(X0) :- block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_block(X0) :- object(X0),not er_comp_below_shape_block(X0).
er_comp_left_overlap_block(X0) :- block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_block(X0) :- object(X0),not er_comp_left_overlap_block(X0).
er_comp_left_shape_block(X0) :- block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_block(X0) :- object(X0),not er_comp_left_shape_block(X0).
er_comp_overlap_shape_block(X0) :- block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_block(X0) :- object(X0),not er_comp_overlap_shape_block(X0).
er_inv_smaller_table(X0) :- table(X1),inv_smaller(X0,X1).
-er_inv_smaller_table(X0) :- object(X0),not er_inv_smaller_table(X0).
er_inv_below_table(X0) :- table(X1),inv_below(X0,X1).
-er_inv_below_table(X0) :- object(X0),not er_inv_below_table(X0).
er_inv_left_table(X0) :- table(X1),inv_left(X0,X1).
-er_inv_left_table(X0) :- object(X0),not er_inv_left_table(X0).
er_inv_overlap_table(X0) :- table(X1),inv_overlap(X0,X1).
-er_inv_overlap_table(X0) :- object(X0),not er_inv_overlap_table(X0).
er_inv_shape_table(X0) :- table(X1),inv_shape(X0,X1).
-er_inv_shape_table(X0) :- object(X0),not er_inv_shape_table(X0).
er_comp_smaller_below_table(X0) :- table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_table(X0) :- object(X0),not er_comp_smaller_below_table(X0).
er_comp_smaller_left_table(X0) :- table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_table(X0) :- object(X0),not er_comp_smaller_left_table(X0).
er_comp_smaller_overlap_table(X0) :- table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_table(X0) :- object(X0),not er_comp_smaller_overlap_table(X0).
er_comp_smaller_shape_table(X0) :- table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_table(X0) :- object(X0),not er_comp_smaller_shape_table(X0).
er_comp_below_left_table(X0) :- table(X1),comp_below_left(X0,X1).
-er_comp_below_left_table(X0) :- object(X0),not er_comp_below_left_table(X0).
er_comp_below_overlap_table(X0) :- table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_table(X0) :- object(X0),not er_comp_below_overlap_table(X0).
er_comp_below_shape_table(X0) :- table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_table(X0) :- object(X0),not er_comp_below_shape_table(X0).
er_comp_left_overlap_table(X0) :- table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_table(X0) :- object(X0),not er_comp_left_overlap_table(X0).
er_comp_left_shape_table(X0) :- table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_table(X0) :- object(X0),not er_comp_left_shape_table(X0).
er_comp_overlap_shape_table(X0) :- table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_table(X0) :- object(X0),not er_comp_overlap_shape_table(X0).
er_smaller_er_smaller_verum(X0) :- er_smaller_verum(X1),smaller(X0,X1).
-er_smaller_er_smaller_verum(X0) :- object(X0),not er_smaller_er_smaller_verum(X0).
er_below_er_smaller_verum(X0) :- er_smaller_verum(X1),below(X0,X1).
-er_below_er_smaller_verum(X0) :- object(X0),not er_below_er_smaller_verum(X0).
er_left_er_smaller_verum(X0) :- er_smaller_verum(X1),left(X0,X1).
-er_left_er_smaller_verum(X0) :- object(X0),not er_left_er_smaller_verum(X0).
er_overlap_er_smaller_verum(X0) :- er_smaller_verum(X1),overlap(X0,X1).
-er_overlap_er_smaller_verum(X0) :- object(X0),not er_overlap_er_smaller_verum(X0).
er_shape_er_smaller_verum(X0) :- er_smaller_verum(X1),shape(X0,X1).
-er_shape_er_smaller_verum(X0) :- object(X0),not er_shape_er_smaller_verum(X0).
er_inv_smaller_er_smaller_verum(X0) :- er_smaller_verum(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_smaller_verum(X0) :- object(X0),not er_inv_smaller_er_smaller_verum(X0).
er_inv_below_er_smaller_verum(X0) :- er_smaller_verum(X1),inv_below(X0,X1).
-er_inv_below_er_smaller_verum(X0) :- object(X0),not er_inv_below_er_smaller_verum(X0).
er_inv_left_er_smaller_verum(X0) :- er_smaller_verum(X1),inv_left(X0,X1).
-er_inv_left_er_smaller_verum(X0) :- object(X0),not er_inv_left_er_smaller_verum(X0).
er_inv_overlap_er_smaller_verum(X0) :- er_smaller_verum(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_smaller_verum(X0) :- object(X0),not er_inv_overlap_er_smaller_verum(X0).
er_inv_shape_er_smaller_verum(X0) :- er_smaller_verum(X1),inv_shape(X0,X1).
-er_inv_shape_er_smaller_verum(X0) :- object(X0),not er_inv_shape_er_smaller_verum(X0).
er_comp_smaller_below_er_smaller_verum(X0) :- er_smaller_verum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_smaller_verum(X0) :- object(X0),not er_comp_smaller_below_er_smaller_verum(X0).
er_comp_smaller_left_er_smaller_verum(X0) :- er_smaller_verum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_smaller_verum(X0) :- object(X0),not er_comp_smaller_left_er_smaller_verum(X0).
er_comp_smaller_overlap_er_smaller_verum(X0) :- er_smaller_verum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_smaller_verum(X0) :- object(X0),not er_comp_smaller_overlap_er_smaller_verum(X0).
er_comp_smaller_shape_er_smaller_verum(X0) :- er_smaller_verum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_smaller_verum(X0) :- object(X0),not er_comp_smaller_shape_er_smaller_verum(X0).
er_comp_below_left_er_smaller_verum(X0) :- er_smaller_verum(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_smaller_verum(X0) :- object(X0),not er_comp_below_left_er_smaller_verum(X0).
er_comp_below_overlap_er_smaller_verum(X0) :- er_smaller_verum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_smaller_verum(X0) :- object(X0),not er_comp_below_overlap_er_smaller_verum(X0).
er_comp_below_shape_er_smaller_verum(X0) :- er_smaller_verum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_smaller_verum(X0) :- object(X0),not er_comp_below_shape_er_smaller_verum(X0).
er_comp_left_overlap_er_smaller_verum(X0) :- er_smaller_verum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_smaller_verum(X0) :- object(X0),not er_comp_left_overlap_er_smaller_verum(X0).
er_comp_left_shape_er_smaller_verum(X0) :- er_smaller_verum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_smaller_verum(X0) :- object(X0),not er_comp_left_shape_er_smaller_verum(X0).
er_comp_overlap_shape_er_smaller_verum(X0) :- er_smaller_verum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_smaller_verum(X0) :- object(X0),not er_comp_overlap_shape_er_smaller_verum(X0).
er_smaller_er_below_verum(X0) :- er_below_verum(X1),smaller(X0,X1).
-er_smaller_er_below_verum(X0) :- object(X0),not er_smaller_er_below_verum(X0).
er_below_er_below_verum(X0) :- er_below_verum(X1),below(X0,X1).
-er_below_er_below_verum(X0) :- object(X0),not er_below_er_below_verum(X0).
er_left_er_below_verum(X0) :- er_below_verum(X1),left(X0,X1).
-er_left_er_below_verum(X0) :- object(X0),not er_left_er_below_verum(X0).
er_overlap_er_below_verum(X0) :- er_below_verum(X1),overlap(X0,X1).
-er_overlap_er_below_verum(X0) :- object(X0),not er_overlap_er_below_verum(X0).
er_shape_er_below_verum(X0) :- er_below_verum(X1),shape(X0,X1).
-er_shape_er_below_verum(X0) :- object(X0),not er_shape_er_below_verum(X0).
er_inv_smaller_er_below_verum(X0) :- er_below_verum(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_below_verum(X0) :- object(X0),not er_inv_smaller_er_below_verum(X0).
er_inv_below_er_below_verum(X0) :- er_below_verum(X1),inv_below(X0,X1).
-er_inv_below_er_below_verum(X0) :- object(X0),not er_inv_below_er_below_verum(X0).
er_inv_left_er_below_verum(X0) :- er_below_verum(X1),inv_left(X0,X1).
-er_inv_left_er_below_verum(X0) :- object(X0),not er_inv_left_er_below_verum(X0).
er_inv_overlap_er_below_verum(X0) :- er_below_verum(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_below_verum(X0) :- object(X0),not er_inv_overlap_er_below_verum(X0).
er_inv_shape_er_below_verum(X0) :- er_below_verum(X1),inv_shape(X0,X1).
-er_inv_shape_er_below_verum(X0) :- object(X0),not er_inv_shape_er_below_verum(X0).
er_comp_smaller_below_er_below_verum(X0) :- er_below_verum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_below_verum(X0) :- object(X0),not er_comp_smaller_below_er_below_verum(X0).
er_comp_smaller_left_er_below_verum(X0) :- er_below_verum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_below_verum(X0) :- object(X0),not er_comp_smaller_left_er_below_verum(X0).
er_comp_smaller_overlap_er_below_verum(X0) :- er_below_verum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_below_verum(X0) :- object(X0),not er_comp_smaller_overlap_er_below_verum(X0).
er_comp_smaller_shape_er_below_verum(X0) :- er_below_verum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_below_verum(X0) :- object(X0),not er_comp_smaller_shape_er_below_verum(X0).
er_comp_below_left_er_below_verum(X0) :- er_below_verum(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_below_verum(X0) :- object(X0),not er_comp_below_left_er_below_verum(X0).
er_comp_below_overlap_er_below_verum(X0) :- er_below_verum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_below_verum(X0) :- object(X0),not er_comp_below_overlap_er_below_verum(X0).
er_comp_below_shape_er_below_verum(X0) :- er_below_verum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_below_verum(X0) :- object(X0),not er_comp_below_shape_er_below_verum(X0).
er_comp_left_overlap_er_below_verum(X0) :- er_below_verum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_below_verum(X0) :- object(X0),not er_comp_left_overlap_er_below_verum(X0).
er_comp_left_shape_er_below_verum(X0) :- er_below_verum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_below_verum(X0) :- object(X0),not er_comp_left_shape_er_below_verum(X0).
er_comp_overlap_shape_er_below_verum(X0) :- er_below_verum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_below_verum(X0) :- object(X0),not er_comp_overlap_shape_er_below_verum(X0).
er_smaller_er_left_verum(X0) :- er_left_verum(X1),smaller(X0,X1).
-er_smaller_er_left_verum(X0) :- object(X0),not er_smaller_er_left_verum(X0).
er_below_er_left_verum(X0) :- er_left_verum(X1),below(X0,X1).
-er_below_er_left_verum(X0) :- object(X0),not er_below_er_left_verum(X0).
er_left_er_left_verum(X0) :- er_left_verum(X1),left(X0,X1).
-er_left_er_left_verum(X0) :- object(X0),not er_left_er_left_verum(X0).
er_overlap_er_left_verum(X0) :- er_left_verum(X1),overlap(X0,X1).
-er_overlap_er_left_verum(X0) :- object(X0),not er_overlap_er_left_verum(X0).
er_shape_er_left_verum(X0) :- er_left_verum(X1),shape(X0,X1).
-er_shape_er_left_verum(X0) :- object(X0),not er_shape_er_left_verum(X0).
er_inv_smaller_er_left_verum(X0) :- er_left_verum(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_left_verum(X0) :- object(X0),not er_inv_smaller_er_left_verum(X0).
er_inv_below_er_left_verum(X0) :- er_left_verum(X1),inv_below(X0,X1).
-er_inv_below_er_left_verum(X0) :- object(X0),not er_inv_below_er_left_verum(X0).
er_inv_left_er_left_verum(X0) :- er_left_verum(X1),inv_left(X0,X1).
-er_inv_left_er_left_verum(X0) :- object(X0),not er_inv_left_er_left_verum(X0).
er_inv_overlap_er_left_verum(X0) :- er_left_verum(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_left_verum(X0) :- object(X0),not er_inv_overlap_er_left_verum(X0).
er_inv_shape_er_left_verum(X0) :- er_left_verum(X1),inv_shape(X0,X1).
-er_inv_shape_er_left_verum(X0) :- object(X0),not er_inv_shape_er_left_verum(X0).
er_comp_smaller_below_er_left_verum(X0) :- er_left_verum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_left_verum(X0) :- object(X0),not er_comp_smaller_below_er_left_verum(X0).
er_comp_smaller_left_er_left_verum(X0) :- er_left_verum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_left_verum(X0) :- object(X0),not er_comp_smaller_left_er_left_verum(X0).
er_comp_smaller_overlap_er_left_verum(X0) :- er_left_verum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_left_verum(X0) :- object(X0),not er_comp_smaller_overlap_er_left_verum(X0).
er_comp_smaller_shape_er_left_verum(X0) :- er_left_verum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_left_verum(X0) :- object(X0),not er_comp_smaller_shape_er_left_verum(X0).
er_comp_below_left_er_left_verum(X0) :- er_left_verum(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_left_verum(X0) :- object(X0),not er_comp_below_left_er_left_verum(X0).
er_comp_below_overlap_er_left_verum(X0) :- er_left_verum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_left_verum(X0) :- object(X0),not er_comp_below_overlap_er_left_verum(X0).
er_comp_below_shape_er_left_verum(X0) :- er_left_verum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_left_verum(X0) :- object(X0),not er_comp_below_shape_er_left_verum(X0).
er_comp_left_overlap_er_left_verum(X0) :- er_left_verum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_left_verum(X0) :- object(X0),not er_comp_left_overlap_er_left_verum(X0).
er_comp_left_shape_er_left_verum(X0) :- er_left_verum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_left_verum(X0) :- object(X0),not er_comp_left_shape_er_left_verum(X0).
er_comp_overlap_shape_er_left_verum(X0) :- er_left_verum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_left_verum(X0) :- object(X0),not er_comp_overlap_shape_er_left_verum(X0).
er_smaller_er_overlap_verum(X0) :- er_overlap_verum(X1),smaller(X0,X1).
-er_smaller_er_overlap_verum(X0) :- object(X0),not er_smaller_er_overlap_verum(X0).
er_below_er_overlap_verum(X0) :- er_overlap_verum(X1),below(X0,X1).
-er_below_er_overlap_verum(X0) :- object(X0),not er_below_er_overlap_verum(X0).
er_left_er_overlap_verum(X0) :- er_overlap_verum(X1),left(X0,X1).
-er_left_er_overlap_verum(X0) :- object(X0),not er_left_er_overlap_verum(X0).
er_overlap_er_overlap_verum(X0) :- er_overlap_verum(X1),overlap(X0,X1).
-er_overlap_er_overlap_verum(X0) :- object(X0),not er_overlap_er_overlap_verum(X0).
er_shape_er_overlap_verum(X0) :- er_overlap_verum(X1),shape(X0,X1).
-er_shape_er_overlap_verum(X0) :- object(X0),not er_shape_er_overlap_verum(X0).
er_inv_smaller_er_overlap_verum(X0) :- er_overlap_verum(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_overlap_verum(X0) :- object(X0),not er_inv_smaller_er_overlap_verum(X0).
er_inv_below_er_overlap_verum(X0) :- er_overlap_verum(X1),inv_below(X0,X1).
-er_inv_below_er_overlap_verum(X0) :- object(X0),not er_inv_below_er_overlap_verum(X0).
er_inv_left_er_overlap_verum(X0) :- er_overlap_verum(X1),inv_left(X0,X1).
-er_inv_left_er_overlap_verum(X0) :- object(X0),not er_inv_left_er_overlap_verum(X0).
er_inv_overlap_er_overlap_verum(X0) :- er_overlap_verum(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_overlap_verum(X0) :- object(X0),not er_inv_overlap_er_overlap_verum(X0).
er_inv_shape_er_overlap_verum(X0) :- er_overlap_verum(X1),inv_shape(X0,X1).
-er_inv_shape_er_overlap_verum(X0) :- object(X0),not er_inv_shape_er_overlap_verum(X0).
er_comp_smaller_below_er_overlap_verum(X0) :- er_overlap_verum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_overlap_verum(X0) :- object(X0),not er_comp_smaller_below_er_overlap_verum(X0).
er_comp_smaller_left_er_overlap_verum(X0) :- er_overlap_verum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_overlap_verum(X0) :- object(X0),not er_comp_smaller_left_er_overlap_verum(X0).
er_comp_smaller_overlap_er_overlap_verum(X0) :- er_overlap_verum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_overlap_verum(X0) :- object(X0),not er_comp_smaller_overlap_er_overlap_verum(X0).
er_comp_smaller_shape_er_overlap_verum(X0) :- er_overlap_verum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_overlap_verum(X0) :- object(X0),not er_comp_smaller_shape_er_overlap_verum(X0).
er_comp_below_left_er_overlap_verum(X0) :- er_overlap_verum(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_overlap_verum(X0) :- object(X0),not er_comp_below_left_er_overlap_verum(X0).
er_comp_below_overlap_er_overlap_verum(X0) :- er_overlap_verum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_overlap_verum(X0) :- object(X0),not er_comp_below_overlap_er_overlap_verum(X0).
er_comp_below_shape_er_overlap_verum(X0) :- er_overlap_verum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_overlap_verum(X0) :- object(X0),not er_comp_below_shape_er_overlap_verum(X0).
er_comp_left_overlap_er_overlap_verum(X0) :- er_overlap_verum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_overlap_verum(X0) :- object(X0),not er_comp_left_overlap_er_overlap_verum(X0).
er_comp_left_shape_er_overlap_verum(X0) :- er_overlap_verum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_overlap_verum(X0) :- object(X0),not er_comp_left_shape_er_overlap_verum(X0).
er_comp_overlap_shape_er_overlap_verum(X0) :- er_overlap_verum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_overlap_verum(X0) :- object(X0),not er_comp_overlap_shape_er_overlap_verum(X0).
er_smaller_er_shape_verum(X0) :- er_shape_verum(X1),smaller(X0,X1).
-er_smaller_er_shape_verum(X0) :- object(X0),not er_smaller_er_shape_verum(X0).
er_below_er_shape_verum(X0) :- er_shape_verum(X1),below(X0,X1).
-er_below_er_shape_verum(X0) :- object(X0),not er_below_er_shape_verum(X0).
er_left_er_shape_verum(X0) :- er_shape_verum(X1),left(X0,X1).
-er_left_er_shape_verum(X0) :- object(X0),not er_left_er_shape_verum(X0).
er_overlap_er_shape_verum(X0) :- er_shape_verum(X1),overlap(X0,X1).
-er_overlap_er_shape_verum(X0) :- object(X0),not er_overlap_er_shape_verum(X0).
er_shape_er_shape_verum(X0) :- er_shape_verum(X1),shape(X0,X1).
-er_shape_er_shape_verum(X0) :- object(X0),not er_shape_er_shape_verum(X0).
er_inv_smaller_er_shape_verum(X0) :- er_shape_verum(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_shape_verum(X0) :- object(X0),not er_inv_smaller_er_shape_verum(X0).
er_inv_below_er_shape_verum(X0) :- er_shape_verum(X1),inv_below(X0,X1).
-er_inv_below_er_shape_verum(X0) :- object(X0),not er_inv_below_er_shape_verum(X0).
er_inv_left_er_shape_verum(X0) :- er_shape_verum(X1),inv_left(X0,X1).
-er_inv_left_er_shape_verum(X0) :- object(X0),not er_inv_left_er_shape_verum(X0).
er_inv_overlap_er_shape_verum(X0) :- er_shape_verum(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_shape_verum(X0) :- object(X0),not er_inv_overlap_er_shape_verum(X0).
er_inv_shape_er_shape_verum(X0) :- er_shape_verum(X1),inv_shape(X0,X1).
-er_inv_shape_er_shape_verum(X0) :- object(X0),not er_inv_shape_er_shape_verum(X0).
er_comp_smaller_below_er_shape_verum(X0) :- er_shape_verum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_shape_verum(X0) :- object(X0),not er_comp_smaller_below_er_shape_verum(X0).
er_comp_smaller_left_er_shape_verum(X0) :- er_shape_verum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_shape_verum(X0) :- object(X0),not er_comp_smaller_left_er_shape_verum(X0).
er_comp_smaller_overlap_er_shape_verum(X0) :- er_shape_verum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_shape_verum(X0) :- object(X0),not er_comp_smaller_overlap_er_shape_verum(X0).
er_comp_smaller_shape_er_shape_verum(X0) :- er_shape_verum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_shape_verum(X0) :- object(X0),not er_comp_smaller_shape_er_shape_verum(X0).
er_comp_below_left_er_shape_verum(X0) :- er_shape_verum(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_shape_verum(X0) :- object(X0),not er_comp_below_left_er_shape_verum(X0).
er_comp_below_overlap_er_shape_verum(X0) :- er_shape_verum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_shape_verum(X0) :- object(X0),not er_comp_below_overlap_er_shape_verum(X0).
er_comp_below_shape_er_shape_verum(X0) :- er_shape_verum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_shape_verum(X0) :- object(X0),not er_comp_below_shape_er_shape_verum(X0).
er_comp_left_overlap_er_shape_verum(X0) :- er_shape_verum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_shape_verum(X0) :- object(X0),not er_comp_left_overlap_er_shape_verum(X0).
er_comp_left_shape_er_shape_verum(X0) :- er_shape_verum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_shape_verum(X0) :- object(X0),not er_comp_left_shape_er_shape_verum(X0).
er_comp_overlap_shape_er_shape_verum(X0) :- er_shape_verum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_shape_verum(X0) :- object(X0),not er_comp_overlap_shape_er_shape_verum(X0).
er_smaller_er_smaller_falsum(X0) :- er_smaller_falsum(X1),smaller(X0,X1).
-er_smaller_er_smaller_falsum(X0) :- object(X0),not er_smaller_er_smaller_falsum(X0).
er_below_er_smaller_falsum(X0) :- er_smaller_falsum(X1),below(X0,X1).
-er_below_er_smaller_falsum(X0) :- object(X0),not er_below_er_smaller_falsum(X0).
er_left_er_smaller_falsum(X0) :- er_smaller_falsum(X1),left(X0,X1).
-er_left_er_smaller_falsum(X0) :- object(X0),not er_left_er_smaller_falsum(X0).
er_overlap_er_smaller_falsum(X0) :- er_smaller_falsum(X1),overlap(X0,X1).
-er_overlap_er_smaller_falsum(X0) :- object(X0),not er_overlap_er_smaller_falsum(X0).
er_shape_er_smaller_falsum(X0) :- er_smaller_falsum(X1),shape(X0,X1).
-er_shape_er_smaller_falsum(X0) :- object(X0),not er_shape_er_smaller_falsum(X0).
er_inv_smaller_er_smaller_falsum(X0) :- er_smaller_falsum(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_smaller_falsum(X0) :- object(X0),not er_inv_smaller_er_smaller_falsum(X0).
er_inv_below_er_smaller_falsum(X0) :- er_smaller_falsum(X1),inv_below(X0,X1).
-er_inv_below_er_smaller_falsum(X0) :- object(X0),not er_inv_below_er_smaller_falsum(X0).
er_inv_left_er_smaller_falsum(X0) :- er_smaller_falsum(X1),inv_left(X0,X1).
-er_inv_left_er_smaller_falsum(X0) :- object(X0),not er_inv_left_er_smaller_falsum(X0).
er_inv_overlap_er_smaller_falsum(X0) :- er_smaller_falsum(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_smaller_falsum(X0) :- object(X0),not er_inv_overlap_er_smaller_falsum(X0).
er_inv_shape_er_smaller_falsum(X0) :- er_smaller_falsum(X1),inv_shape(X0,X1).
-er_inv_shape_er_smaller_falsum(X0) :- object(X0),not er_inv_shape_er_smaller_falsum(X0).
er_comp_smaller_below_er_smaller_falsum(X0) :- er_smaller_falsum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_smaller_falsum(X0) :- object(X0),not er_comp_smaller_below_er_smaller_falsum(X0).
er_comp_smaller_left_er_smaller_falsum(X0) :- er_smaller_falsum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_smaller_falsum(X0) :- object(X0),not er_comp_smaller_left_er_smaller_falsum(X0).
er_comp_smaller_overlap_er_smaller_falsum(X0) :- er_smaller_falsum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_smaller_falsum(X0) :- object(X0),not er_comp_smaller_overlap_er_smaller_falsum(X0).
er_comp_smaller_shape_er_smaller_falsum(X0) :- er_smaller_falsum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_smaller_falsum(X0) :- object(X0),not er_comp_smaller_shape_er_smaller_falsum(X0).
er_comp_below_left_er_smaller_falsum(X0) :- er_smaller_falsum(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_smaller_falsum(X0) :- object(X0),not er_comp_below_left_er_smaller_falsum(X0).
er_comp_below_overlap_er_smaller_falsum(X0) :- er_smaller_falsum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_smaller_falsum(X0) :- object(X0),not er_comp_below_overlap_er_smaller_falsum(X0).
er_comp_below_shape_er_smaller_falsum(X0) :- er_smaller_falsum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_smaller_falsum(X0) :- object(X0),not er_comp_below_shape_er_smaller_falsum(X0).
er_comp_left_overlap_er_smaller_falsum(X0) :- er_smaller_falsum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_smaller_falsum(X0) :- object(X0),not er_comp_left_overlap_er_smaller_falsum(X0).
er_comp_left_shape_er_smaller_falsum(X0) :- er_smaller_falsum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_smaller_falsum(X0) :- object(X0),not er_comp_left_shape_er_smaller_falsum(X0).
er_comp_overlap_shape_er_smaller_falsum(X0) :- er_smaller_falsum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_smaller_falsum(X0) :- object(X0),not er_comp_overlap_shape_er_smaller_falsum(X0).
er_smaller_er_below_falsum(X0) :- er_below_falsum(X1),smaller(X0,X1).
-er_smaller_er_below_falsum(X0) :- object(X0),not er_smaller_er_below_falsum(X0).
er_below_er_below_falsum(X0) :- er_below_falsum(X1),below(X0,X1).
-er_below_er_below_falsum(X0) :- object(X0),not er_below_er_below_falsum(X0).
er_left_er_below_falsum(X0) :- er_below_falsum(X1),left(X0,X1).
-er_left_er_below_falsum(X0) :- object(X0),not er_left_er_below_falsum(X0).
er_overlap_er_below_falsum(X0) :- er_below_falsum(X1),overlap(X0,X1).
-er_overlap_er_below_falsum(X0) :- object(X0),not er_overlap_er_below_falsum(X0).
er_shape_er_below_falsum(X0) :- er_below_falsum(X1),shape(X0,X1).
-er_shape_er_below_falsum(X0) :- object(X0),not er_shape_er_below_falsum(X0).
er_inv_smaller_er_below_falsum(X0) :- er_below_falsum(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_below_falsum(X0) :- object(X0),not er_inv_smaller_er_below_falsum(X0).
er_inv_below_er_below_falsum(X0) :- er_below_falsum(X1),inv_below(X0,X1).
-er_inv_below_er_below_falsum(X0) :- object(X0),not er_inv_below_er_below_falsum(X0).
er_inv_left_er_below_falsum(X0) :- er_below_falsum(X1),inv_left(X0,X1).
-er_inv_left_er_below_falsum(X0) :- object(X0),not er_inv_left_er_below_falsum(X0).
er_inv_overlap_er_below_falsum(X0) :- er_below_falsum(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_below_falsum(X0) :- object(X0),not er_inv_overlap_er_below_falsum(X0).
er_inv_shape_er_below_falsum(X0) :- er_below_falsum(X1),inv_shape(X0,X1).
-er_inv_shape_er_below_falsum(X0) :- object(X0),not er_inv_shape_er_below_falsum(X0).
er_comp_smaller_below_er_below_falsum(X0) :- er_below_falsum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_below_falsum(X0) :- object(X0),not er_comp_smaller_below_er_below_falsum(X0).
er_comp_smaller_left_er_below_falsum(X0) :- er_below_falsum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_below_falsum(X0) :- object(X0),not er_comp_smaller_left_er_below_falsum(X0).
er_comp_smaller_overlap_er_below_falsum(X0) :- er_below_falsum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_below_falsum(X0) :- object(X0),not er_comp_smaller_overlap_er_below_falsum(X0).
er_comp_smaller_shape_er_below_falsum(X0) :- er_below_falsum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_below_falsum(X0) :- object(X0),not er_comp_smaller_shape_er_below_falsum(X0).
er_comp_below_left_er_below_falsum(X0) :- er_below_falsum(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_below_falsum(X0) :- object(X0),not er_comp_below_left_er_below_falsum(X0).
er_comp_below_overlap_er_below_falsum(X0) :- er_below_falsum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_below_falsum(X0) :- object(X0),not er_comp_below_overlap_er_below_falsum(X0).
er_comp_below_shape_er_below_falsum(X0) :- er_below_falsum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_below_falsum(X0) :- object(X0),not er_comp_below_shape_er_below_falsum(X0).
er_comp_left_overlap_er_below_falsum(X0) :- er_below_falsum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_below_falsum(X0) :- object(X0),not er_comp_left_overlap_er_below_falsum(X0).
er_comp_left_shape_er_below_falsum(X0) :- er_below_falsum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_below_falsum(X0) :- object(X0),not er_comp_left_shape_er_below_falsum(X0).
er_comp_overlap_shape_er_below_falsum(X0) :- er_below_falsum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_below_falsum(X0) :- object(X0),not er_comp_overlap_shape_er_below_falsum(X0).
er_smaller_er_left_falsum(X0) :- er_left_falsum(X1),smaller(X0,X1).
-er_smaller_er_left_falsum(X0) :- object(X0),not er_smaller_er_left_falsum(X0).
er_below_er_left_falsum(X0) :- er_left_falsum(X1),below(X0,X1).
-er_below_er_left_falsum(X0) :- object(X0),not er_below_er_left_falsum(X0).
er_left_er_left_falsum(X0) :- er_left_falsum(X1),left(X0,X1).
-er_left_er_left_falsum(X0) :- object(X0),not er_left_er_left_falsum(X0).
er_overlap_er_left_falsum(X0) :- er_left_falsum(X1),overlap(X0,X1).
-er_overlap_er_left_falsum(X0) :- object(X0),not er_overlap_er_left_falsum(X0).
er_shape_er_left_falsum(X0) :- er_left_falsum(X1),shape(X0,X1).
-er_shape_er_left_falsum(X0) :- object(X0),not er_shape_er_left_falsum(X0).
er_inv_smaller_er_left_falsum(X0) :- er_left_falsum(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_left_falsum(X0) :- object(X0),not er_inv_smaller_er_left_falsum(X0).
er_inv_below_er_left_falsum(X0) :- er_left_falsum(X1),inv_below(X0,X1).
-er_inv_below_er_left_falsum(X0) :- object(X0),not er_inv_below_er_left_falsum(X0).
er_inv_left_er_left_falsum(X0) :- er_left_falsum(X1),inv_left(X0,X1).
-er_inv_left_er_left_falsum(X0) :- object(X0),not er_inv_left_er_left_falsum(X0).
er_inv_overlap_er_left_falsum(X0) :- er_left_falsum(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_left_falsum(X0) :- object(X0),not er_inv_overlap_er_left_falsum(X0).
er_inv_shape_er_left_falsum(X0) :- er_left_falsum(X1),inv_shape(X0,X1).
-er_inv_shape_er_left_falsum(X0) :- object(X0),not er_inv_shape_er_left_falsum(X0).
er_comp_smaller_below_er_left_falsum(X0) :- er_left_falsum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_left_falsum(X0) :- object(X0),not er_comp_smaller_below_er_left_falsum(X0).
er_comp_smaller_left_er_left_falsum(X0) :- er_left_falsum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_left_falsum(X0) :- object(X0),not er_comp_smaller_left_er_left_falsum(X0).
er_comp_smaller_overlap_er_left_falsum(X0) :- er_left_falsum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_left_falsum(X0) :- object(X0),not er_comp_smaller_overlap_er_left_falsum(X0).
er_comp_smaller_shape_er_left_falsum(X0) :- er_left_falsum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_left_falsum(X0) :- object(X0),not er_comp_smaller_shape_er_left_falsum(X0).
er_comp_below_left_er_left_falsum(X0) :- er_left_falsum(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_left_falsum(X0) :- object(X0),not er_comp_below_left_er_left_falsum(X0).
er_comp_below_overlap_er_left_falsum(X0) :- er_left_falsum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_left_falsum(X0) :- object(X0),not er_comp_below_overlap_er_left_falsum(X0).
er_comp_below_shape_er_left_falsum(X0) :- er_left_falsum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_left_falsum(X0) :- object(X0),not er_comp_below_shape_er_left_falsum(X0).
er_comp_left_overlap_er_left_falsum(X0) :- er_left_falsum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_left_falsum(X0) :- object(X0),not er_comp_left_overlap_er_left_falsum(X0).
er_comp_left_shape_er_left_falsum(X0) :- er_left_falsum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_left_falsum(X0) :- object(X0),not er_comp_left_shape_er_left_falsum(X0).
er_comp_overlap_shape_er_left_falsum(X0) :- er_left_falsum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_left_falsum(X0) :- object(X0),not er_comp_overlap_shape_er_left_falsum(X0).
er_smaller_er_overlap_falsum(X0) :- er_overlap_falsum(X1),smaller(X0,X1).
-er_smaller_er_overlap_falsum(X0) :- object(X0),not er_smaller_er_overlap_falsum(X0).
er_below_er_overlap_falsum(X0) :- er_overlap_falsum(X1),below(X0,X1).
-er_below_er_overlap_falsum(X0) :- object(X0),not er_below_er_overlap_falsum(X0).
er_left_er_overlap_falsum(X0) :- er_overlap_falsum(X1),left(X0,X1).
-er_left_er_overlap_falsum(X0) :- object(X0),not er_left_er_overlap_falsum(X0).
er_overlap_er_overlap_falsum(X0) :- er_overlap_falsum(X1),overlap(X0,X1).
-er_overlap_er_overlap_falsum(X0) :- object(X0),not er_overlap_er_overlap_falsum(X0).
er_shape_er_overlap_falsum(X0) :- er_overlap_falsum(X1),shape(X0,X1).
-er_shape_er_overlap_falsum(X0) :- object(X0),not er_shape_er_overlap_falsum(X0).
er_inv_smaller_er_overlap_falsum(X0) :- er_overlap_falsum(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_overlap_falsum(X0) :- object(X0),not er_inv_smaller_er_overlap_falsum(X0).
er_inv_below_er_overlap_falsum(X0) :- er_overlap_falsum(X1),inv_below(X0,X1).
-er_inv_below_er_overlap_falsum(X0) :- object(X0),not er_inv_below_er_overlap_falsum(X0).
er_inv_left_er_overlap_falsum(X0) :- er_overlap_falsum(X1),inv_left(X0,X1).
-er_inv_left_er_overlap_falsum(X0) :- object(X0),not er_inv_left_er_overlap_falsum(X0).
er_inv_overlap_er_overlap_falsum(X0) :- er_overlap_falsum(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_overlap_falsum(X0) :- object(X0),not er_inv_overlap_er_overlap_falsum(X0).
er_inv_shape_er_overlap_falsum(X0) :- er_overlap_falsum(X1),inv_shape(X0,X1).
-er_inv_shape_er_overlap_falsum(X0) :- object(X0),not er_inv_shape_er_overlap_falsum(X0).
er_comp_smaller_below_er_overlap_falsum(X0) :- er_overlap_falsum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_overlap_falsum(X0) :- object(X0),not er_comp_smaller_below_er_overlap_falsum(X0).
er_comp_smaller_left_er_overlap_falsum(X0) :- er_overlap_falsum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_overlap_falsum(X0) :- object(X0),not er_comp_smaller_left_er_overlap_falsum(X0).
er_comp_smaller_overlap_er_overlap_falsum(X0) :- er_overlap_falsum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_overlap_falsum(X0) :- object(X0),not er_comp_smaller_overlap_er_overlap_falsum(X0).
er_comp_smaller_shape_er_overlap_falsum(X0) :- er_overlap_falsum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_overlap_falsum(X0) :- object(X0),not er_comp_smaller_shape_er_overlap_falsum(X0).
er_comp_below_left_er_overlap_falsum(X0) :- er_overlap_falsum(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_overlap_falsum(X0) :- object(X0),not er_comp_below_left_er_overlap_falsum(X0).
er_comp_below_overlap_er_overlap_falsum(X0) :- er_overlap_falsum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_overlap_falsum(X0) :- object(X0),not er_comp_below_overlap_er_overlap_falsum(X0).
er_comp_below_shape_er_overlap_falsum(X0) :- er_overlap_falsum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_overlap_falsum(X0) :- object(X0),not er_comp_below_shape_er_overlap_falsum(X0).
er_comp_left_overlap_er_overlap_falsum(X0) :- er_overlap_falsum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_overlap_falsum(X0) :- object(X0),not er_comp_left_overlap_er_overlap_falsum(X0).
er_comp_left_shape_er_overlap_falsum(X0) :- er_overlap_falsum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_overlap_falsum(X0) :- object(X0),not er_comp_left_shape_er_overlap_falsum(X0).
er_comp_overlap_shape_er_overlap_falsum(X0) :- er_overlap_falsum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_overlap_falsum(X0) :- object(X0),not er_comp_overlap_shape_er_overlap_falsum(X0).
er_smaller_er_shape_falsum(X0) :- er_shape_falsum(X1),smaller(X0,X1).
-er_smaller_er_shape_falsum(X0) :- object(X0),not er_smaller_er_shape_falsum(X0).
er_below_er_shape_falsum(X0) :- er_shape_falsum(X1),below(X0,X1).
-er_below_er_shape_falsum(X0) :- object(X0),not er_below_er_shape_falsum(X0).
er_left_er_shape_falsum(X0) :- er_shape_falsum(X1),left(X0,X1).
-er_left_er_shape_falsum(X0) :- object(X0),not er_left_er_shape_falsum(X0).
er_overlap_er_shape_falsum(X0) :- er_shape_falsum(X1),overlap(X0,X1).
-er_overlap_er_shape_falsum(X0) :- object(X0),not er_overlap_er_shape_falsum(X0).
er_shape_er_shape_falsum(X0) :- er_shape_falsum(X1),shape(X0,X1).
-er_shape_er_shape_falsum(X0) :- object(X0),not er_shape_er_shape_falsum(X0).
er_inv_smaller_er_shape_falsum(X0) :- er_shape_falsum(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_shape_falsum(X0) :- object(X0),not er_inv_smaller_er_shape_falsum(X0).
er_inv_below_er_shape_falsum(X0) :- er_shape_falsum(X1),inv_below(X0,X1).
-er_inv_below_er_shape_falsum(X0) :- object(X0),not er_inv_below_er_shape_falsum(X0).
er_inv_left_er_shape_falsum(X0) :- er_shape_falsum(X1),inv_left(X0,X1).
-er_inv_left_er_shape_falsum(X0) :- object(X0),not er_inv_left_er_shape_falsum(X0).
er_inv_overlap_er_shape_falsum(X0) :- er_shape_falsum(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_shape_falsum(X0) :- object(X0),not er_inv_overlap_er_shape_falsum(X0).
er_inv_shape_er_shape_falsum(X0) :- er_shape_falsum(X1),inv_shape(X0,X1).
-er_inv_shape_er_shape_falsum(X0) :- object(X0),not er_inv_shape_er_shape_falsum(X0).
er_comp_smaller_below_er_shape_falsum(X0) :- er_shape_falsum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_shape_falsum(X0) :- object(X0),not er_comp_smaller_below_er_shape_falsum(X0).
er_comp_smaller_left_er_shape_falsum(X0) :- er_shape_falsum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_shape_falsum(X0) :- object(X0),not er_comp_smaller_left_er_shape_falsum(X0).
er_comp_smaller_overlap_er_shape_falsum(X0) :- er_shape_falsum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_shape_falsum(X0) :- object(X0),not er_comp_smaller_overlap_er_shape_falsum(X0).
er_comp_smaller_shape_er_shape_falsum(X0) :- er_shape_falsum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_shape_falsum(X0) :- object(X0),not er_comp_smaller_shape_er_shape_falsum(X0).
er_comp_below_left_er_shape_falsum(X0) :- er_shape_falsum(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_shape_falsum(X0) :- object(X0),not er_comp_below_left_er_shape_falsum(X0).
er_comp_below_overlap_er_shape_falsum(X0) :- er_shape_falsum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_shape_falsum(X0) :- object(X0),not er_comp_below_overlap_er_shape_falsum(X0).
er_comp_below_shape_er_shape_falsum(X0) :- er_shape_falsum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_shape_falsum(X0) :- object(X0),not er_comp_below_shape_er_shape_falsum(X0).
er_comp_left_overlap_er_shape_falsum(X0) :- er_shape_falsum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_shape_falsum(X0) :- object(X0),not er_comp_left_overlap_er_shape_falsum(X0).
er_comp_left_shape_er_shape_falsum(X0) :- er_shape_falsum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_shape_falsum(X0) :- object(X0),not er_comp_left_shape_er_shape_falsum(X0).
er_comp_overlap_shape_er_shape_falsum(X0) :- er_shape_falsum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_shape_falsum(X0) :- object(X0),not er_comp_overlap_shape_er_shape_falsum(X0).
er_smaller_er_smaller_robot(X0) :- er_smaller_robot(X1),smaller(X0,X1).
-er_smaller_er_smaller_robot(X0) :- object(X0),not er_smaller_er_smaller_robot(X0).
er_below_er_smaller_robot(X0) :- er_smaller_robot(X1),below(X0,X1).
-er_below_er_smaller_robot(X0) :- object(X0),not er_below_er_smaller_robot(X0).
er_left_er_smaller_robot(X0) :- er_smaller_robot(X1),left(X0,X1).
-er_left_er_smaller_robot(X0) :- object(X0),not er_left_er_smaller_robot(X0).
er_overlap_er_smaller_robot(X0) :- er_smaller_robot(X1),overlap(X0,X1).
-er_overlap_er_smaller_robot(X0) :- object(X0),not er_overlap_er_smaller_robot(X0).
er_shape_er_smaller_robot(X0) :- er_smaller_robot(X1),shape(X0,X1).
-er_shape_er_smaller_robot(X0) :- object(X0),not er_shape_er_smaller_robot(X0).
er_inv_smaller_er_smaller_robot(X0) :- er_smaller_robot(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_smaller_robot(X0) :- object(X0),not er_inv_smaller_er_smaller_robot(X0).
er_inv_below_er_smaller_robot(X0) :- er_smaller_robot(X1),inv_below(X0,X1).
-er_inv_below_er_smaller_robot(X0) :- object(X0),not er_inv_below_er_smaller_robot(X0).
er_inv_left_er_smaller_robot(X0) :- er_smaller_robot(X1),inv_left(X0,X1).
-er_inv_left_er_smaller_robot(X0) :- object(X0),not er_inv_left_er_smaller_robot(X0).
er_inv_overlap_er_smaller_robot(X0) :- er_smaller_robot(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_smaller_robot(X0) :- object(X0),not er_inv_overlap_er_smaller_robot(X0).
er_inv_shape_er_smaller_robot(X0) :- er_smaller_robot(X1),inv_shape(X0,X1).
-er_inv_shape_er_smaller_robot(X0) :- object(X0),not er_inv_shape_er_smaller_robot(X0).
er_comp_smaller_below_er_smaller_robot(X0) :- er_smaller_robot(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_smaller_robot(X0) :- object(X0),not er_comp_smaller_below_er_smaller_robot(X0).
er_comp_smaller_left_er_smaller_robot(X0) :- er_smaller_robot(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_smaller_robot(X0) :- object(X0),not er_comp_smaller_left_er_smaller_robot(X0).
er_comp_smaller_overlap_er_smaller_robot(X0) :- er_smaller_robot(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_smaller_robot(X0) :- object(X0),not er_comp_smaller_overlap_er_smaller_robot(X0).
er_comp_smaller_shape_er_smaller_robot(X0) :- er_smaller_robot(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_smaller_robot(X0) :- object(X0),not er_comp_smaller_shape_er_smaller_robot(X0).
er_comp_below_left_er_smaller_robot(X0) :- er_smaller_robot(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_smaller_robot(X0) :- object(X0),not er_comp_below_left_er_smaller_robot(X0).
er_comp_below_overlap_er_smaller_robot(X0) :- er_smaller_robot(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_smaller_robot(X0) :- object(X0),not er_comp_below_overlap_er_smaller_robot(X0).
er_comp_below_shape_er_smaller_robot(X0) :- er_smaller_robot(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_smaller_robot(X0) :- object(X0),not er_comp_below_shape_er_smaller_robot(X0).
er_comp_left_overlap_er_smaller_robot(X0) :- er_smaller_robot(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_smaller_robot(X0) :- object(X0),not er_comp_left_overlap_er_smaller_robot(X0).
er_comp_left_shape_er_smaller_robot(X0) :- er_smaller_robot(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_smaller_robot(X0) :- object(X0),not er_comp_left_shape_er_smaller_robot(X0).
er_comp_overlap_shape_er_smaller_robot(X0) :- er_smaller_robot(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_smaller_robot(X0) :- object(X0),not er_comp_overlap_shape_er_smaller_robot(X0).
er_smaller_er_below_robot(X0) :- er_below_robot(X1),smaller(X0,X1).
-er_smaller_er_below_robot(X0) :- object(X0),not er_smaller_er_below_robot(X0).
er_below_er_below_robot(X0) :- er_below_robot(X1),below(X0,X1).
-er_below_er_below_robot(X0) :- object(X0),not er_below_er_below_robot(X0).
er_left_er_below_robot(X0) :- er_below_robot(X1),left(X0,X1).
-er_left_er_below_robot(X0) :- object(X0),not er_left_er_below_robot(X0).
er_overlap_er_below_robot(X0) :- er_below_robot(X1),overlap(X0,X1).
-er_overlap_er_below_robot(X0) :- object(X0),not er_overlap_er_below_robot(X0).
er_shape_er_below_robot(X0) :- er_below_robot(X1),shape(X0,X1).
-er_shape_er_below_robot(X0) :- object(X0),not er_shape_er_below_robot(X0).
er_inv_smaller_er_below_robot(X0) :- er_below_robot(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_below_robot(X0) :- object(X0),not er_inv_smaller_er_below_robot(X0).
er_inv_below_er_below_robot(X0) :- er_below_robot(X1),inv_below(X0,X1).
-er_inv_below_er_below_robot(X0) :- object(X0),not er_inv_below_er_below_robot(X0).
er_inv_left_er_below_robot(X0) :- er_below_robot(X1),inv_left(X0,X1).
-er_inv_left_er_below_robot(X0) :- object(X0),not er_inv_left_er_below_robot(X0).
er_inv_overlap_er_below_robot(X0) :- er_below_robot(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_below_robot(X0) :- object(X0),not er_inv_overlap_er_below_robot(X0).
er_inv_shape_er_below_robot(X0) :- er_below_robot(X1),inv_shape(X0,X1).
-er_inv_shape_er_below_robot(X0) :- object(X0),not er_inv_shape_er_below_robot(X0).
er_comp_smaller_below_er_below_robot(X0) :- er_below_robot(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_below_robot(X0) :- object(X0),not er_comp_smaller_below_er_below_robot(X0).
er_comp_smaller_left_er_below_robot(X0) :- er_below_robot(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_below_robot(X0) :- object(X0),not er_comp_smaller_left_er_below_robot(X0).
er_comp_smaller_overlap_er_below_robot(X0) :- er_below_robot(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_below_robot(X0) :- object(X0),not er_comp_smaller_overlap_er_below_robot(X0).
er_comp_smaller_shape_er_below_robot(X0) :- er_below_robot(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_below_robot(X0) :- object(X0),not er_comp_smaller_shape_er_below_robot(X0).
er_comp_below_left_er_below_robot(X0) :- er_below_robot(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_below_robot(X0) :- object(X0),not er_comp_below_left_er_below_robot(X0).
er_comp_below_overlap_er_below_robot(X0) :- er_below_robot(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_below_robot(X0) :- object(X0),not er_comp_below_overlap_er_below_robot(X0).
er_comp_below_shape_er_below_robot(X0) :- er_below_robot(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_below_robot(X0) :- object(X0),not er_comp_below_shape_er_below_robot(X0).
er_comp_left_overlap_er_below_robot(X0) :- er_below_robot(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_below_robot(X0) :- object(X0),not er_comp_left_overlap_er_below_robot(X0).
er_comp_left_shape_er_below_robot(X0) :- er_below_robot(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_below_robot(X0) :- object(X0),not er_comp_left_shape_er_below_robot(X0).
er_comp_overlap_shape_er_below_robot(X0) :- er_below_robot(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_below_robot(X0) :- object(X0),not er_comp_overlap_shape_er_below_robot(X0).
er_smaller_er_left_robot(X0) :- er_left_robot(X1),smaller(X0,X1).
-er_smaller_er_left_robot(X0) :- object(X0),not er_smaller_er_left_robot(X0).
er_below_er_left_robot(X0) :- er_left_robot(X1),below(X0,X1).
-er_below_er_left_robot(X0) :- object(X0),not er_below_er_left_robot(X0).
er_left_er_left_robot(X0) :- er_left_robot(X1),left(X0,X1).
-er_left_er_left_robot(X0) :- object(X0),not er_left_er_left_robot(X0).
er_overlap_er_left_robot(X0) :- er_left_robot(X1),overlap(X0,X1).
-er_overlap_er_left_robot(X0) :- object(X0),not er_overlap_er_left_robot(X0).
er_shape_er_left_robot(X0) :- er_left_robot(X1),shape(X0,X1).
-er_shape_er_left_robot(X0) :- object(X0),not er_shape_er_left_robot(X0).
er_inv_smaller_er_left_robot(X0) :- er_left_robot(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_left_robot(X0) :- object(X0),not er_inv_smaller_er_left_robot(X0).
er_inv_below_er_left_robot(X0) :- er_left_robot(X1),inv_below(X0,X1).
-er_inv_below_er_left_robot(X0) :- object(X0),not er_inv_below_er_left_robot(X0).
er_inv_left_er_left_robot(X0) :- er_left_robot(X1),inv_left(X0,X1).
-er_inv_left_er_left_robot(X0) :- object(X0),not er_inv_left_er_left_robot(X0).
er_inv_overlap_er_left_robot(X0) :- er_left_robot(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_left_robot(X0) :- object(X0),not er_inv_overlap_er_left_robot(X0).
er_inv_shape_er_left_robot(X0) :- er_left_robot(X1),inv_shape(X0,X1).
-er_inv_shape_er_left_robot(X0) :- object(X0),not er_inv_shape_er_left_robot(X0).
er_comp_smaller_below_er_left_robot(X0) :- er_left_robot(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_left_robot(X0) :- object(X0),not er_comp_smaller_below_er_left_robot(X0).
er_comp_smaller_left_er_left_robot(X0) :- er_left_robot(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_left_robot(X0) :- object(X0),not er_comp_smaller_left_er_left_robot(X0).
er_comp_smaller_overlap_er_left_robot(X0) :- er_left_robot(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_left_robot(X0) :- object(X0),not er_comp_smaller_overlap_er_left_robot(X0).
er_comp_smaller_shape_er_left_robot(X0) :- er_left_robot(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_left_robot(X0) :- object(X0),not er_comp_smaller_shape_er_left_robot(X0).
er_comp_below_left_er_left_robot(X0) :- er_left_robot(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_left_robot(X0) :- object(X0),not er_comp_below_left_er_left_robot(X0).
er_comp_below_overlap_er_left_robot(X0) :- er_left_robot(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_left_robot(X0) :- object(X0),not er_comp_below_overlap_er_left_robot(X0).
er_comp_below_shape_er_left_robot(X0) :- er_left_robot(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_left_robot(X0) :- object(X0),not er_comp_below_shape_er_left_robot(X0).
er_comp_left_overlap_er_left_robot(X0) :- er_left_robot(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_left_robot(X0) :- object(X0),not er_comp_left_overlap_er_left_robot(X0).
er_comp_left_shape_er_left_robot(X0) :- er_left_robot(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_left_robot(X0) :- object(X0),not er_comp_left_shape_er_left_robot(X0).
er_comp_overlap_shape_er_left_robot(X0) :- er_left_robot(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_left_robot(X0) :- object(X0),not er_comp_overlap_shape_er_left_robot(X0).
er_smaller_er_overlap_robot(X0) :- er_overlap_robot(X1),smaller(X0,X1).
-er_smaller_er_overlap_robot(X0) :- object(X0),not er_smaller_er_overlap_robot(X0).
er_below_er_overlap_robot(X0) :- er_overlap_robot(X1),below(X0,X1).
-er_below_er_overlap_robot(X0) :- object(X0),not er_below_er_overlap_robot(X0).
er_left_er_overlap_robot(X0) :- er_overlap_robot(X1),left(X0,X1).
-er_left_er_overlap_robot(X0) :- object(X0),not er_left_er_overlap_robot(X0).
er_overlap_er_overlap_robot(X0) :- er_overlap_robot(X1),overlap(X0,X1).
-er_overlap_er_overlap_robot(X0) :- object(X0),not er_overlap_er_overlap_robot(X0).
er_shape_er_overlap_robot(X0) :- er_overlap_robot(X1),shape(X0,X1).
-er_shape_er_overlap_robot(X0) :- object(X0),not er_shape_er_overlap_robot(X0).
er_inv_smaller_er_overlap_robot(X0) :- er_overlap_robot(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_overlap_robot(X0) :- object(X0),not er_inv_smaller_er_overlap_robot(X0).
er_inv_below_er_overlap_robot(X0) :- er_overlap_robot(X1),inv_below(X0,X1).
-er_inv_below_er_overlap_robot(X0) :- object(X0),not er_inv_below_er_overlap_robot(X0).
er_inv_left_er_overlap_robot(X0) :- er_overlap_robot(X1),inv_left(X0,X1).
-er_inv_left_er_overlap_robot(X0) :- object(X0),not er_inv_left_er_overlap_robot(X0).
er_inv_overlap_er_overlap_robot(X0) :- er_overlap_robot(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_overlap_robot(X0) :- object(X0),not er_inv_overlap_er_overlap_robot(X0).
er_inv_shape_er_overlap_robot(X0) :- er_overlap_robot(X1),inv_shape(X0,X1).
-er_inv_shape_er_overlap_robot(X0) :- object(X0),not er_inv_shape_er_overlap_robot(X0).
er_comp_smaller_below_er_overlap_robot(X0) :- er_overlap_robot(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_overlap_robot(X0) :- object(X0),not er_comp_smaller_below_er_overlap_robot(X0).
er_comp_smaller_left_er_overlap_robot(X0) :- er_overlap_robot(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_overlap_robot(X0) :- object(X0),not er_comp_smaller_left_er_overlap_robot(X0).
er_comp_smaller_overlap_er_overlap_robot(X0) :- er_overlap_robot(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_overlap_robot(X0) :- object(X0),not er_comp_smaller_overlap_er_overlap_robot(X0).
er_comp_smaller_shape_er_overlap_robot(X0) :- er_overlap_robot(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_overlap_robot(X0) :- object(X0),not er_comp_smaller_shape_er_overlap_robot(X0).
er_comp_below_left_er_overlap_robot(X0) :- er_overlap_robot(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_overlap_robot(X0) :- object(X0),not er_comp_below_left_er_overlap_robot(X0).
er_comp_below_overlap_er_overlap_robot(X0) :- er_overlap_robot(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_overlap_robot(X0) :- object(X0),not er_comp_below_overlap_er_overlap_robot(X0).
er_comp_below_shape_er_overlap_robot(X0) :- er_overlap_robot(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_overlap_robot(X0) :- object(X0),not er_comp_below_shape_er_overlap_robot(X0).
er_comp_left_overlap_er_overlap_robot(X0) :- er_overlap_robot(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_overlap_robot(X0) :- object(X0),not er_comp_left_overlap_er_overlap_robot(X0).
er_comp_left_shape_er_overlap_robot(X0) :- er_overlap_robot(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_overlap_robot(X0) :- object(X0),not er_comp_left_shape_er_overlap_robot(X0).
er_comp_overlap_shape_er_overlap_robot(X0) :- er_overlap_robot(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_overlap_robot(X0) :- object(X0),not er_comp_overlap_shape_er_overlap_robot(X0).
er_smaller_er_shape_robot(X0) :- er_shape_robot(X1),smaller(X0,X1).
-er_smaller_er_shape_robot(X0) :- object(X0),not er_smaller_er_shape_robot(X0).
er_below_er_shape_robot(X0) :- er_shape_robot(X1),below(X0,X1).
-er_below_er_shape_robot(X0) :- object(X0),not er_below_er_shape_robot(X0).
er_left_er_shape_robot(X0) :- er_shape_robot(X1),left(X0,X1).
-er_left_er_shape_robot(X0) :- object(X0),not er_left_er_shape_robot(X0).
er_overlap_er_shape_robot(X0) :- er_shape_robot(X1),overlap(X0,X1).
-er_overlap_er_shape_robot(X0) :- object(X0),not er_overlap_er_shape_robot(X0).
er_shape_er_shape_robot(X0) :- er_shape_robot(X1),shape(X0,X1).
-er_shape_er_shape_robot(X0) :- object(X0),not er_shape_er_shape_robot(X0).
er_inv_smaller_er_shape_robot(X0) :- er_shape_robot(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_shape_robot(X0) :- object(X0),not er_inv_smaller_er_shape_robot(X0).
er_inv_below_er_shape_robot(X0) :- er_shape_robot(X1),inv_below(X0,X1).
-er_inv_below_er_shape_robot(X0) :- object(X0),not er_inv_below_er_shape_robot(X0).
er_inv_left_er_shape_robot(X0) :- er_shape_robot(X1),inv_left(X0,X1).
-er_inv_left_er_shape_robot(X0) :- object(X0),not er_inv_left_er_shape_robot(X0).
er_inv_overlap_er_shape_robot(X0) :- er_shape_robot(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_shape_robot(X0) :- object(X0),not er_inv_overlap_er_shape_robot(X0).
er_inv_shape_er_shape_robot(X0) :- er_shape_robot(X1),inv_shape(X0,X1).
-er_inv_shape_er_shape_robot(X0) :- object(X0),not er_inv_shape_er_shape_robot(X0).
er_comp_smaller_below_er_shape_robot(X0) :- er_shape_robot(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_shape_robot(X0) :- object(X0),not er_comp_smaller_below_er_shape_robot(X0).
er_comp_smaller_left_er_shape_robot(X0) :- er_shape_robot(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_shape_robot(X0) :- object(X0),not er_comp_smaller_left_er_shape_robot(X0).
er_comp_smaller_overlap_er_shape_robot(X0) :- er_shape_robot(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_shape_robot(X0) :- object(X0),not er_comp_smaller_overlap_er_shape_robot(X0).
er_comp_smaller_shape_er_shape_robot(X0) :- er_shape_robot(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_shape_robot(X0) :- object(X0),not er_comp_smaller_shape_er_shape_robot(X0).
er_comp_below_left_er_shape_robot(X0) :- er_shape_robot(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_shape_robot(X0) :- object(X0),not er_comp_below_left_er_shape_robot(X0).
er_comp_below_overlap_er_shape_robot(X0) :- er_shape_robot(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_shape_robot(X0) :- object(X0),not er_comp_below_overlap_er_shape_robot(X0).
er_comp_below_shape_er_shape_robot(X0) :- er_shape_robot(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_shape_robot(X0) :- object(X0),not er_comp_below_shape_er_shape_robot(X0).
er_comp_left_overlap_er_shape_robot(X0) :- er_shape_robot(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_shape_robot(X0) :- object(X0),not er_comp_left_overlap_er_shape_robot(X0).
er_comp_left_shape_er_shape_robot(X0) :- er_shape_robot(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_shape_robot(X0) :- object(X0),not er_comp_left_shape_er_shape_robot(X0).
er_comp_overlap_shape_er_shape_robot(X0) :- er_shape_robot(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_shape_robot(X0) :- object(X0),not er_comp_overlap_shape_er_shape_robot(X0).
er_smaller_er_smaller_block(X0) :- er_smaller_block(X1),smaller(X0,X1).
-er_smaller_er_smaller_block(X0) :- object(X0),not er_smaller_er_smaller_block(X0).
er_below_er_smaller_block(X0) :- er_smaller_block(X1),below(X0,X1).
-er_below_er_smaller_block(X0) :- object(X0),not er_below_er_smaller_block(X0).
er_left_er_smaller_block(X0) :- er_smaller_block(X1),left(X0,X1).
-er_left_er_smaller_block(X0) :- object(X0),not er_left_er_smaller_block(X0).
er_overlap_er_smaller_block(X0) :- er_smaller_block(X1),overlap(X0,X1).
-er_overlap_er_smaller_block(X0) :- object(X0),not er_overlap_er_smaller_block(X0).
er_shape_er_smaller_block(X0) :- er_smaller_block(X1),shape(X0,X1).
-er_shape_er_smaller_block(X0) :- object(X0),not er_shape_er_smaller_block(X0).
er_inv_smaller_er_smaller_block(X0) :- er_smaller_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_smaller_block(X0) :- object(X0),not er_inv_smaller_er_smaller_block(X0).
er_inv_below_er_smaller_block(X0) :- er_smaller_block(X1),inv_below(X0,X1).
-er_inv_below_er_smaller_block(X0) :- object(X0),not er_inv_below_er_smaller_block(X0).
er_inv_left_er_smaller_block(X0) :- er_smaller_block(X1),inv_left(X0,X1).
-er_inv_left_er_smaller_block(X0) :- object(X0),not er_inv_left_er_smaller_block(X0).
er_inv_overlap_er_smaller_block(X0) :- er_smaller_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_smaller_block(X0) :- object(X0),not er_inv_overlap_er_smaller_block(X0).
er_inv_shape_er_smaller_block(X0) :- er_smaller_block(X1),inv_shape(X0,X1).
-er_inv_shape_er_smaller_block(X0) :- object(X0),not er_inv_shape_er_smaller_block(X0).
er_comp_smaller_below_er_smaller_block(X0) :- er_smaller_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_smaller_block(X0) :- object(X0),not er_comp_smaller_below_er_smaller_block(X0).
er_comp_smaller_left_er_smaller_block(X0) :- er_smaller_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_smaller_block(X0) :- object(X0),not er_comp_smaller_left_er_smaller_block(X0).
er_comp_smaller_overlap_er_smaller_block(X0) :- er_smaller_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_smaller_block(X0) :- object(X0),not er_comp_smaller_overlap_er_smaller_block(X0).
er_comp_smaller_shape_er_smaller_block(X0) :- er_smaller_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_smaller_block(X0) :- object(X0),not er_comp_smaller_shape_er_smaller_block(X0).
er_comp_below_left_er_smaller_block(X0) :- er_smaller_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_smaller_block(X0) :- object(X0),not er_comp_below_left_er_smaller_block(X0).
er_comp_below_overlap_er_smaller_block(X0) :- er_smaller_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_smaller_block(X0) :- object(X0),not er_comp_below_overlap_er_smaller_block(X0).
er_comp_below_shape_er_smaller_block(X0) :- er_smaller_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_smaller_block(X0) :- object(X0),not er_comp_below_shape_er_smaller_block(X0).
er_comp_left_overlap_er_smaller_block(X0) :- er_smaller_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_smaller_block(X0) :- object(X0),not er_comp_left_overlap_er_smaller_block(X0).
er_comp_left_shape_er_smaller_block(X0) :- er_smaller_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_smaller_block(X0) :- object(X0),not er_comp_left_shape_er_smaller_block(X0).
er_comp_overlap_shape_er_smaller_block(X0) :- er_smaller_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_smaller_block(X0) :- object(X0),not er_comp_overlap_shape_er_smaller_block(X0).
er_smaller_er_below_block(X0) :- er_below_block(X1),smaller(X0,X1).
-er_smaller_er_below_block(X0) :- object(X0),not er_smaller_er_below_block(X0).
er_below_er_below_block(X0) :- er_below_block(X1),below(X0,X1).
-er_below_er_below_block(X0) :- object(X0),not er_below_er_below_block(X0).
er_left_er_below_block(X0) :- er_below_block(X1),left(X0,X1).
-er_left_er_below_block(X0) :- object(X0),not er_left_er_below_block(X0).
er_overlap_er_below_block(X0) :- er_below_block(X1),overlap(X0,X1).
-er_overlap_er_below_block(X0) :- object(X0),not er_overlap_er_below_block(X0).
er_shape_er_below_block(X0) :- er_below_block(X1),shape(X0,X1).
-er_shape_er_below_block(X0) :- object(X0),not er_shape_er_below_block(X0).
er_inv_smaller_er_below_block(X0) :- er_below_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_below_block(X0) :- object(X0),not er_inv_smaller_er_below_block(X0).
er_inv_below_er_below_block(X0) :- er_below_block(X1),inv_below(X0,X1).
-er_inv_below_er_below_block(X0) :- object(X0),not er_inv_below_er_below_block(X0).
er_inv_left_er_below_block(X0) :- er_below_block(X1),inv_left(X0,X1).
-er_inv_left_er_below_block(X0) :- object(X0),not er_inv_left_er_below_block(X0).
er_inv_overlap_er_below_block(X0) :- er_below_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_below_block(X0) :- object(X0),not er_inv_overlap_er_below_block(X0).
er_inv_shape_er_below_block(X0) :- er_below_block(X1),inv_shape(X0,X1).
-er_inv_shape_er_below_block(X0) :- object(X0),not er_inv_shape_er_below_block(X0).
er_comp_smaller_below_er_below_block(X0) :- er_below_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_below_block(X0) :- object(X0),not er_comp_smaller_below_er_below_block(X0).
er_comp_smaller_left_er_below_block(X0) :- er_below_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_below_block(X0) :- object(X0),not er_comp_smaller_left_er_below_block(X0).
er_comp_smaller_overlap_er_below_block(X0) :- er_below_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_below_block(X0) :- object(X0),not er_comp_smaller_overlap_er_below_block(X0).
er_comp_smaller_shape_er_below_block(X0) :- er_below_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_below_block(X0) :- object(X0),not er_comp_smaller_shape_er_below_block(X0).
er_comp_below_left_er_below_block(X0) :- er_below_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_below_block(X0) :- object(X0),not er_comp_below_left_er_below_block(X0).
er_comp_below_overlap_er_below_block(X0) :- er_below_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_below_block(X0) :- object(X0),not er_comp_below_overlap_er_below_block(X0).
er_comp_below_shape_er_below_block(X0) :- er_below_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_below_block(X0) :- object(X0),not er_comp_below_shape_er_below_block(X0).
er_comp_left_overlap_er_below_block(X0) :- er_below_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_below_block(X0) :- object(X0),not er_comp_left_overlap_er_below_block(X0).
er_comp_left_shape_er_below_block(X0) :- er_below_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_below_block(X0) :- object(X0),not er_comp_left_shape_er_below_block(X0).
er_comp_overlap_shape_er_below_block(X0) :- er_below_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_below_block(X0) :- object(X0),not er_comp_overlap_shape_er_below_block(X0).
er_smaller_er_left_block(X0) :- er_left_block(X1),smaller(X0,X1).
-er_smaller_er_left_block(X0) :- object(X0),not er_smaller_er_left_block(X0).
er_below_er_left_block(X0) :- er_left_block(X1),below(X0,X1).
-er_below_er_left_block(X0) :- object(X0),not er_below_er_left_block(X0).
er_left_er_left_block(X0) :- er_left_block(X1),left(X0,X1).
-er_left_er_left_block(X0) :- object(X0),not er_left_er_left_block(X0).
er_overlap_er_left_block(X0) :- er_left_block(X1),overlap(X0,X1).
-er_overlap_er_left_block(X0) :- object(X0),not er_overlap_er_left_block(X0).
er_shape_er_left_block(X0) :- er_left_block(X1),shape(X0,X1).
-er_shape_er_left_block(X0) :- object(X0),not er_shape_er_left_block(X0).
er_inv_smaller_er_left_block(X0) :- er_left_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_left_block(X0) :- object(X0),not er_inv_smaller_er_left_block(X0).
er_inv_below_er_left_block(X0) :- er_left_block(X1),inv_below(X0,X1).
-er_inv_below_er_left_block(X0) :- object(X0),not er_inv_below_er_left_block(X0).
er_inv_left_er_left_block(X0) :- er_left_block(X1),inv_left(X0,X1).
-er_inv_left_er_left_block(X0) :- object(X0),not er_inv_left_er_left_block(X0).
er_inv_overlap_er_left_block(X0) :- er_left_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_left_block(X0) :- object(X0),not er_inv_overlap_er_left_block(X0).
er_inv_shape_er_left_block(X0) :- er_left_block(X1),inv_shape(X0,X1).
-er_inv_shape_er_left_block(X0) :- object(X0),not er_inv_shape_er_left_block(X0).
er_comp_smaller_below_er_left_block(X0) :- er_left_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_left_block(X0) :- object(X0),not er_comp_smaller_below_er_left_block(X0).
er_comp_smaller_left_er_left_block(X0) :- er_left_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_left_block(X0) :- object(X0),not er_comp_smaller_left_er_left_block(X0).
er_comp_smaller_overlap_er_left_block(X0) :- er_left_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_left_block(X0) :- object(X0),not er_comp_smaller_overlap_er_left_block(X0).
er_comp_smaller_shape_er_left_block(X0) :- er_left_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_left_block(X0) :- object(X0),not er_comp_smaller_shape_er_left_block(X0).
er_comp_below_left_er_left_block(X0) :- er_left_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_left_block(X0) :- object(X0),not er_comp_below_left_er_left_block(X0).
er_comp_below_overlap_er_left_block(X0) :- er_left_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_left_block(X0) :- object(X0),not er_comp_below_overlap_er_left_block(X0).
er_comp_below_shape_er_left_block(X0) :- er_left_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_left_block(X0) :- object(X0),not er_comp_below_shape_er_left_block(X0).
er_comp_left_overlap_er_left_block(X0) :- er_left_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_left_block(X0) :- object(X0),not er_comp_left_overlap_er_left_block(X0).
er_comp_left_shape_er_left_block(X0) :- er_left_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_left_block(X0) :- object(X0),not er_comp_left_shape_er_left_block(X0).
er_comp_overlap_shape_er_left_block(X0) :- er_left_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_left_block(X0) :- object(X0),not er_comp_overlap_shape_er_left_block(X0).
er_smaller_er_overlap_block(X0) :- er_overlap_block(X1),smaller(X0,X1).
-er_smaller_er_overlap_block(X0) :- object(X0),not er_smaller_er_overlap_block(X0).
er_below_er_overlap_block(X0) :- er_overlap_block(X1),below(X0,X1).
-er_below_er_overlap_block(X0) :- object(X0),not er_below_er_overlap_block(X0).
er_left_er_overlap_block(X0) :- er_overlap_block(X1),left(X0,X1).
-er_left_er_overlap_block(X0) :- object(X0),not er_left_er_overlap_block(X0).
er_overlap_er_overlap_block(X0) :- er_overlap_block(X1),overlap(X0,X1).
-er_overlap_er_overlap_block(X0) :- object(X0),not er_overlap_er_overlap_block(X0).
er_shape_er_overlap_block(X0) :- er_overlap_block(X1),shape(X0,X1).
-er_shape_er_overlap_block(X0) :- object(X0),not er_shape_er_overlap_block(X0).
er_inv_smaller_er_overlap_block(X0) :- er_overlap_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_overlap_block(X0) :- object(X0),not er_inv_smaller_er_overlap_block(X0).
er_inv_below_er_overlap_block(X0) :- er_overlap_block(X1),inv_below(X0,X1).
-er_inv_below_er_overlap_block(X0) :- object(X0),not er_inv_below_er_overlap_block(X0).
er_inv_left_er_overlap_block(X0) :- er_overlap_block(X1),inv_left(X0,X1).
-er_inv_left_er_overlap_block(X0) :- object(X0),not er_inv_left_er_overlap_block(X0).
er_inv_overlap_er_overlap_block(X0) :- er_overlap_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_overlap_block(X0) :- object(X0),not er_inv_overlap_er_overlap_block(X0).
er_inv_shape_er_overlap_block(X0) :- er_overlap_block(X1),inv_shape(X0,X1).
-er_inv_shape_er_overlap_block(X0) :- object(X0),not er_inv_shape_er_overlap_block(X0).
er_comp_smaller_below_er_overlap_block(X0) :- er_overlap_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_overlap_block(X0) :- object(X0),not er_comp_smaller_below_er_overlap_block(X0).
er_comp_smaller_left_er_overlap_block(X0) :- er_overlap_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_overlap_block(X0) :- object(X0),not er_comp_smaller_left_er_overlap_block(X0).
er_comp_smaller_overlap_er_overlap_block(X0) :- er_overlap_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_overlap_block(X0) :- object(X0),not er_comp_smaller_overlap_er_overlap_block(X0).
er_comp_smaller_shape_er_overlap_block(X0) :- er_overlap_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_overlap_block(X0) :- object(X0),not er_comp_smaller_shape_er_overlap_block(X0).
er_comp_below_left_er_overlap_block(X0) :- er_overlap_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_overlap_block(X0) :- object(X0),not er_comp_below_left_er_overlap_block(X0).
er_comp_below_overlap_er_overlap_block(X0) :- er_overlap_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_overlap_block(X0) :- object(X0),not er_comp_below_overlap_er_overlap_block(X0).
er_comp_below_shape_er_overlap_block(X0) :- er_overlap_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_overlap_block(X0) :- object(X0),not er_comp_below_shape_er_overlap_block(X0).
er_comp_left_overlap_er_overlap_block(X0) :- er_overlap_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_overlap_block(X0) :- object(X0),not er_comp_left_overlap_er_overlap_block(X0).
er_comp_left_shape_er_overlap_block(X0) :- er_overlap_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_overlap_block(X0) :- object(X0),not er_comp_left_shape_er_overlap_block(X0).
er_comp_overlap_shape_er_overlap_block(X0) :- er_overlap_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_overlap_block(X0) :- object(X0),not er_comp_overlap_shape_er_overlap_block(X0).
er_smaller_er_shape_block(X0) :- er_shape_block(X1),smaller(X0,X1).
-er_smaller_er_shape_block(X0) :- object(X0),not er_smaller_er_shape_block(X0).
er_below_er_shape_block(X0) :- er_shape_block(X1),below(X0,X1).
-er_below_er_shape_block(X0) :- object(X0),not er_below_er_shape_block(X0).
er_left_er_shape_block(X0) :- er_shape_block(X1),left(X0,X1).
-er_left_er_shape_block(X0) :- object(X0),not er_left_er_shape_block(X0).
er_overlap_er_shape_block(X0) :- er_shape_block(X1),overlap(X0,X1).
-er_overlap_er_shape_block(X0) :- object(X0),not er_overlap_er_shape_block(X0).
er_shape_er_shape_block(X0) :- er_shape_block(X1),shape(X0,X1).
-er_shape_er_shape_block(X0) :- object(X0),not er_shape_er_shape_block(X0).
er_inv_smaller_er_shape_block(X0) :- er_shape_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_shape_block(X0) :- object(X0),not er_inv_smaller_er_shape_block(X0).
er_inv_below_er_shape_block(X0) :- er_shape_block(X1),inv_below(X0,X1).
-er_inv_below_er_shape_block(X0) :- object(X0),not er_inv_below_er_shape_block(X0).
er_inv_left_er_shape_block(X0) :- er_shape_block(X1),inv_left(X0,X1).
-er_inv_left_er_shape_block(X0) :- object(X0),not er_inv_left_er_shape_block(X0).
er_inv_overlap_er_shape_block(X0) :- er_shape_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_shape_block(X0) :- object(X0),not er_inv_overlap_er_shape_block(X0).
er_inv_shape_er_shape_block(X0) :- er_shape_block(X1),inv_shape(X0,X1).
-er_inv_shape_er_shape_block(X0) :- object(X0),not er_inv_shape_er_shape_block(X0).
er_comp_smaller_below_er_shape_block(X0) :- er_shape_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_shape_block(X0) :- object(X0),not er_comp_smaller_below_er_shape_block(X0).
er_comp_smaller_left_er_shape_block(X0) :- er_shape_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_shape_block(X0) :- object(X0),not er_comp_smaller_left_er_shape_block(X0).
er_comp_smaller_overlap_er_shape_block(X0) :- er_shape_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_shape_block(X0) :- object(X0),not er_comp_smaller_overlap_er_shape_block(X0).
er_comp_smaller_shape_er_shape_block(X0) :- er_shape_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_shape_block(X0) :- object(X0),not er_comp_smaller_shape_er_shape_block(X0).
er_comp_below_left_er_shape_block(X0) :- er_shape_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_shape_block(X0) :- object(X0),not er_comp_below_left_er_shape_block(X0).
er_comp_below_overlap_er_shape_block(X0) :- er_shape_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_shape_block(X0) :- object(X0),not er_comp_below_overlap_er_shape_block(X0).
er_comp_below_shape_er_shape_block(X0) :- er_shape_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_shape_block(X0) :- object(X0),not er_comp_below_shape_er_shape_block(X0).
er_comp_left_overlap_er_shape_block(X0) :- er_shape_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_shape_block(X0) :- object(X0),not er_comp_left_overlap_er_shape_block(X0).
er_comp_left_shape_er_shape_block(X0) :- er_shape_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_shape_block(X0) :- object(X0),not er_comp_left_shape_er_shape_block(X0).
er_comp_overlap_shape_er_shape_block(X0) :- er_shape_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_shape_block(X0) :- object(X0),not er_comp_overlap_shape_er_shape_block(X0).
er_smaller_er_smaller_table(X0) :- er_smaller_table(X1),smaller(X0,X1).
-er_smaller_er_smaller_table(X0) :- object(X0),not er_smaller_er_smaller_table(X0).
er_below_er_smaller_table(X0) :- er_smaller_table(X1),below(X0,X1).
-er_below_er_smaller_table(X0) :- object(X0),not er_below_er_smaller_table(X0).
er_left_er_smaller_table(X0) :- er_smaller_table(X1),left(X0,X1).
-er_left_er_smaller_table(X0) :- object(X0),not er_left_er_smaller_table(X0).
er_overlap_er_smaller_table(X0) :- er_smaller_table(X1),overlap(X0,X1).
-er_overlap_er_smaller_table(X0) :- object(X0),not er_overlap_er_smaller_table(X0).
er_shape_er_smaller_table(X0) :- er_smaller_table(X1),shape(X0,X1).
-er_shape_er_smaller_table(X0) :- object(X0),not er_shape_er_smaller_table(X0).
er_inv_smaller_er_smaller_table(X0) :- er_smaller_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_smaller_table(X0) :- object(X0),not er_inv_smaller_er_smaller_table(X0).
er_inv_below_er_smaller_table(X0) :- er_smaller_table(X1),inv_below(X0,X1).
-er_inv_below_er_smaller_table(X0) :- object(X0),not er_inv_below_er_smaller_table(X0).
er_inv_left_er_smaller_table(X0) :- er_smaller_table(X1),inv_left(X0,X1).
-er_inv_left_er_smaller_table(X0) :- object(X0),not er_inv_left_er_smaller_table(X0).
er_inv_overlap_er_smaller_table(X0) :- er_smaller_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_smaller_table(X0) :- object(X0),not er_inv_overlap_er_smaller_table(X0).
er_inv_shape_er_smaller_table(X0) :- er_smaller_table(X1),inv_shape(X0,X1).
-er_inv_shape_er_smaller_table(X0) :- object(X0),not er_inv_shape_er_smaller_table(X0).
er_comp_smaller_below_er_smaller_table(X0) :- er_smaller_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_smaller_table(X0) :- object(X0),not er_comp_smaller_below_er_smaller_table(X0).
er_comp_smaller_left_er_smaller_table(X0) :- er_smaller_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_smaller_table(X0) :- object(X0),not er_comp_smaller_left_er_smaller_table(X0).
er_comp_smaller_overlap_er_smaller_table(X0) :- er_smaller_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_smaller_table(X0) :- object(X0),not er_comp_smaller_overlap_er_smaller_table(X0).
er_comp_smaller_shape_er_smaller_table(X0) :- er_smaller_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_smaller_table(X0) :- object(X0),not er_comp_smaller_shape_er_smaller_table(X0).
er_comp_below_left_er_smaller_table(X0) :- er_smaller_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_smaller_table(X0) :- object(X0),not er_comp_below_left_er_smaller_table(X0).
er_comp_below_overlap_er_smaller_table(X0) :- er_smaller_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_smaller_table(X0) :- object(X0),not er_comp_below_overlap_er_smaller_table(X0).
er_comp_below_shape_er_smaller_table(X0) :- er_smaller_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_smaller_table(X0) :- object(X0),not er_comp_below_shape_er_smaller_table(X0).
er_comp_left_overlap_er_smaller_table(X0) :- er_smaller_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_smaller_table(X0) :- object(X0),not er_comp_left_overlap_er_smaller_table(X0).
er_comp_left_shape_er_smaller_table(X0) :- er_smaller_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_smaller_table(X0) :- object(X0),not er_comp_left_shape_er_smaller_table(X0).
er_comp_overlap_shape_er_smaller_table(X0) :- er_smaller_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_smaller_table(X0) :- object(X0),not er_comp_overlap_shape_er_smaller_table(X0).
er_smaller_er_below_table(X0) :- er_below_table(X1),smaller(X0,X1).
-er_smaller_er_below_table(X0) :- object(X0),not er_smaller_er_below_table(X0).
er_below_er_below_table(X0) :- er_below_table(X1),below(X0,X1).
-er_below_er_below_table(X0) :- object(X0),not er_below_er_below_table(X0).
er_left_er_below_table(X0) :- er_below_table(X1),left(X0,X1).
-er_left_er_below_table(X0) :- object(X0),not er_left_er_below_table(X0).
er_overlap_er_below_table(X0) :- er_below_table(X1),overlap(X0,X1).
-er_overlap_er_below_table(X0) :- object(X0),not er_overlap_er_below_table(X0).
er_shape_er_below_table(X0) :- er_below_table(X1),shape(X0,X1).
-er_shape_er_below_table(X0) :- object(X0),not er_shape_er_below_table(X0).
er_inv_smaller_er_below_table(X0) :- er_below_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_below_table(X0) :- object(X0),not er_inv_smaller_er_below_table(X0).
er_inv_below_er_below_table(X0) :- er_below_table(X1),inv_below(X0,X1).
-er_inv_below_er_below_table(X0) :- object(X0),not er_inv_below_er_below_table(X0).
er_inv_left_er_below_table(X0) :- er_below_table(X1),inv_left(X0,X1).
-er_inv_left_er_below_table(X0) :- object(X0),not er_inv_left_er_below_table(X0).
er_inv_overlap_er_below_table(X0) :- er_below_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_below_table(X0) :- object(X0),not er_inv_overlap_er_below_table(X0).
er_inv_shape_er_below_table(X0) :- er_below_table(X1),inv_shape(X0,X1).
-er_inv_shape_er_below_table(X0) :- object(X0),not er_inv_shape_er_below_table(X0).
er_comp_smaller_below_er_below_table(X0) :- er_below_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_below_table(X0) :- object(X0),not er_comp_smaller_below_er_below_table(X0).
er_comp_smaller_left_er_below_table(X0) :- er_below_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_below_table(X0) :- object(X0),not er_comp_smaller_left_er_below_table(X0).
er_comp_smaller_overlap_er_below_table(X0) :- er_below_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_below_table(X0) :- object(X0),not er_comp_smaller_overlap_er_below_table(X0).
er_comp_smaller_shape_er_below_table(X0) :- er_below_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_below_table(X0) :- object(X0),not er_comp_smaller_shape_er_below_table(X0).
er_comp_below_left_er_below_table(X0) :- er_below_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_below_table(X0) :- object(X0),not er_comp_below_left_er_below_table(X0).
er_comp_below_overlap_er_below_table(X0) :- er_below_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_below_table(X0) :- object(X0),not er_comp_below_overlap_er_below_table(X0).
er_comp_below_shape_er_below_table(X0) :- er_below_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_below_table(X0) :- object(X0),not er_comp_below_shape_er_below_table(X0).
er_comp_left_overlap_er_below_table(X0) :- er_below_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_below_table(X0) :- object(X0),not er_comp_left_overlap_er_below_table(X0).
er_comp_left_shape_er_below_table(X0) :- er_below_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_below_table(X0) :- object(X0),not er_comp_left_shape_er_below_table(X0).
er_comp_overlap_shape_er_below_table(X0) :- er_below_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_below_table(X0) :- object(X0),not er_comp_overlap_shape_er_below_table(X0).
er_smaller_er_left_table(X0) :- er_left_table(X1),smaller(X0,X1).
-er_smaller_er_left_table(X0) :- object(X0),not er_smaller_er_left_table(X0).
er_below_er_left_table(X0) :- er_left_table(X1),below(X0,X1).
-er_below_er_left_table(X0) :- object(X0),not er_below_er_left_table(X0).
er_left_er_left_table(X0) :- er_left_table(X1),left(X0,X1).
-er_left_er_left_table(X0) :- object(X0),not er_left_er_left_table(X0).
er_overlap_er_left_table(X0) :- er_left_table(X1),overlap(X0,X1).
-er_overlap_er_left_table(X0) :- object(X0),not er_overlap_er_left_table(X0).
er_shape_er_left_table(X0) :- er_left_table(X1),shape(X0,X1).
-er_shape_er_left_table(X0) :- object(X0),not er_shape_er_left_table(X0).
er_inv_smaller_er_left_table(X0) :- er_left_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_left_table(X0) :- object(X0),not er_inv_smaller_er_left_table(X0).
er_inv_below_er_left_table(X0) :- er_left_table(X1),inv_below(X0,X1).
-er_inv_below_er_left_table(X0) :- object(X0),not er_inv_below_er_left_table(X0).
er_inv_left_er_left_table(X0) :- er_left_table(X1),inv_left(X0,X1).
-er_inv_left_er_left_table(X0) :- object(X0),not er_inv_left_er_left_table(X0).
er_inv_overlap_er_left_table(X0) :- er_left_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_left_table(X0) :- object(X0),not er_inv_overlap_er_left_table(X0).
er_inv_shape_er_left_table(X0) :- er_left_table(X1),inv_shape(X0,X1).
-er_inv_shape_er_left_table(X0) :- object(X0),not er_inv_shape_er_left_table(X0).
er_comp_smaller_below_er_left_table(X0) :- er_left_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_left_table(X0) :- object(X0),not er_comp_smaller_below_er_left_table(X0).
er_comp_smaller_left_er_left_table(X0) :- er_left_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_left_table(X0) :- object(X0),not er_comp_smaller_left_er_left_table(X0).
er_comp_smaller_overlap_er_left_table(X0) :- er_left_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_left_table(X0) :- object(X0),not er_comp_smaller_overlap_er_left_table(X0).
er_comp_smaller_shape_er_left_table(X0) :- er_left_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_left_table(X0) :- object(X0),not er_comp_smaller_shape_er_left_table(X0).
er_comp_below_left_er_left_table(X0) :- er_left_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_left_table(X0) :- object(X0),not er_comp_below_left_er_left_table(X0).
er_comp_below_overlap_er_left_table(X0) :- er_left_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_left_table(X0) :- object(X0),not er_comp_below_overlap_er_left_table(X0).
er_comp_below_shape_er_left_table(X0) :- er_left_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_left_table(X0) :- object(X0),not er_comp_below_shape_er_left_table(X0).
er_comp_left_overlap_er_left_table(X0) :- er_left_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_left_table(X0) :- object(X0),not er_comp_left_overlap_er_left_table(X0).
er_comp_left_shape_er_left_table(X0) :- er_left_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_left_table(X0) :- object(X0),not er_comp_left_shape_er_left_table(X0).
er_comp_overlap_shape_er_left_table(X0) :- er_left_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_left_table(X0) :- object(X0),not er_comp_overlap_shape_er_left_table(X0).
er_smaller_er_overlap_table(X0) :- er_overlap_table(X1),smaller(X0,X1).
-er_smaller_er_overlap_table(X0) :- object(X0),not er_smaller_er_overlap_table(X0).
er_below_er_overlap_table(X0) :- er_overlap_table(X1),below(X0,X1).
-er_below_er_overlap_table(X0) :- object(X0),not er_below_er_overlap_table(X0).
er_left_er_overlap_table(X0) :- er_overlap_table(X1),left(X0,X1).
-er_left_er_overlap_table(X0) :- object(X0),not er_left_er_overlap_table(X0).
er_overlap_er_overlap_table(X0) :- er_overlap_table(X1),overlap(X0,X1).
-er_overlap_er_overlap_table(X0) :- object(X0),not er_overlap_er_overlap_table(X0).
er_shape_er_overlap_table(X0) :- er_overlap_table(X1),shape(X0,X1).
-er_shape_er_overlap_table(X0) :- object(X0),not er_shape_er_overlap_table(X0).
er_inv_smaller_er_overlap_table(X0) :- er_overlap_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_overlap_table(X0) :- object(X0),not er_inv_smaller_er_overlap_table(X0).
er_inv_below_er_overlap_table(X0) :- er_overlap_table(X1),inv_below(X0,X1).
-er_inv_below_er_overlap_table(X0) :- object(X0),not er_inv_below_er_overlap_table(X0).
er_inv_left_er_overlap_table(X0) :- er_overlap_table(X1),inv_left(X0,X1).
-er_inv_left_er_overlap_table(X0) :- object(X0),not er_inv_left_er_overlap_table(X0).
er_inv_overlap_er_overlap_table(X0) :- er_overlap_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_overlap_table(X0) :- object(X0),not er_inv_overlap_er_overlap_table(X0).
er_inv_shape_er_overlap_table(X0) :- er_overlap_table(X1),inv_shape(X0,X1).
-er_inv_shape_er_overlap_table(X0) :- object(X0),not er_inv_shape_er_overlap_table(X0).
er_comp_smaller_below_er_overlap_table(X0) :- er_overlap_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_overlap_table(X0) :- object(X0),not er_comp_smaller_below_er_overlap_table(X0).
er_comp_smaller_left_er_overlap_table(X0) :- er_overlap_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_overlap_table(X0) :- object(X0),not er_comp_smaller_left_er_overlap_table(X0).
er_comp_smaller_overlap_er_overlap_table(X0) :- er_overlap_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_overlap_table(X0) :- object(X0),not er_comp_smaller_overlap_er_overlap_table(X0).
er_comp_smaller_shape_er_overlap_table(X0) :- er_overlap_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_overlap_table(X0) :- object(X0),not er_comp_smaller_shape_er_overlap_table(X0).
er_comp_below_left_er_overlap_table(X0) :- er_overlap_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_overlap_table(X0) :- object(X0),not er_comp_below_left_er_overlap_table(X0).
er_comp_below_overlap_er_overlap_table(X0) :- er_overlap_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_overlap_table(X0) :- object(X0),not er_comp_below_overlap_er_overlap_table(X0).
er_comp_below_shape_er_overlap_table(X0) :- er_overlap_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_overlap_table(X0) :- object(X0),not er_comp_below_shape_er_overlap_table(X0).
er_comp_left_overlap_er_overlap_table(X0) :- er_overlap_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_overlap_table(X0) :- object(X0),not er_comp_left_overlap_er_overlap_table(X0).
er_comp_left_shape_er_overlap_table(X0) :- er_overlap_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_overlap_table(X0) :- object(X0),not er_comp_left_shape_er_overlap_table(X0).
er_comp_overlap_shape_er_overlap_table(X0) :- er_overlap_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_overlap_table(X0) :- object(X0),not er_comp_overlap_shape_er_overlap_table(X0).
er_smaller_er_shape_table(X0) :- er_shape_table(X1),smaller(X0,X1).
-er_smaller_er_shape_table(X0) :- object(X0),not er_smaller_er_shape_table(X0).
er_below_er_shape_table(X0) :- er_shape_table(X1),below(X0,X1).
-er_below_er_shape_table(X0) :- object(X0),not er_below_er_shape_table(X0).
er_left_er_shape_table(X0) :- er_shape_table(X1),left(X0,X1).
-er_left_er_shape_table(X0) :- object(X0),not er_left_er_shape_table(X0).
er_overlap_er_shape_table(X0) :- er_shape_table(X1),overlap(X0,X1).
-er_overlap_er_shape_table(X0) :- object(X0),not er_overlap_er_shape_table(X0).
er_shape_er_shape_table(X0) :- er_shape_table(X1),shape(X0,X1).
-er_shape_er_shape_table(X0) :- object(X0),not er_shape_er_shape_table(X0).
er_inv_smaller_er_shape_table(X0) :- er_shape_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_shape_table(X0) :- object(X0),not er_inv_smaller_er_shape_table(X0).
er_inv_below_er_shape_table(X0) :- er_shape_table(X1),inv_below(X0,X1).
-er_inv_below_er_shape_table(X0) :- object(X0),not er_inv_below_er_shape_table(X0).
er_inv_left_er_shape_table(X0) :- er_shape_table(X1),inv_left(X0,X1).
-er_inv_left_er_shape_table(X0) :- object(X0),not er_inv_left_er_shape_table(X0).
er_inv_overlap_er_shape_table(X0) :- er_shape_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_shape_table(X0) :- object(X0),not er_inv_overlap_er_shape_table(X0).
er_inv_shape_er_shape_table(X0) :- er_shape_table(X1),inv_shape(X0,X1).
-er_inv_shape_er_shape_table(X0) :- object(X0),not er_inv_shape_er_shape_table(X0).
er_comp_smaller_below_er_shape_table(X0) :- er_shape_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_shape_table(X0) :- object(X0),not er_comp_smaller_below_er_shape_table(X0).
er_comp_smaller_left_er_shape_table(X0) :- er_shape_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_shape_table(X0) :- object(X0),not er_comp_smaller_left_er_shape_table(X0).
er_comp_smaller_overlap_er_shape_table(X0) :- er_shape_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_shape_table(X0) :- object(X0),not er_comp_smaller_overlap_er_shape_table(X0).
er_comp_smaller_shape_er_shape_table(X0) :- er_shape_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_shape_table(X0) :- object(X0),not er_comp_smaller_shape_er_shape_table(X0).
er_comp_below_left_er_shape_table(X0) :- er_shape_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_shape_table(X0) :- object(X0),not er_comp_below_left_er_shape_table(X0).
er_comp_below_overlap_er_shape_table(X0) :- er_shape_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_shape_table(X0) :- object(X0),not er_comp_below_overlap_er_shape_table(X0).
er_comp_below_shape_er_shape_table(X0) :- er_shape_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_shape_table(X0) :- object(X0),not er_comp_below_shape_er_shape_table(X0).
er_comp_left_overlap_er_shape_table(X0) :- er_shape_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_shape_table(X0) :- object(X0),not er_comp_left_overlap_er_shape_table(X0).
er_comp_left_shape_er_shape_table(X0) :- er_shape_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_shape_table(X0) :- object(X0),not er_comp_left_shape_er_shape_table(X0).
er_comp_overlap_shape_er_shape_table(X0) :- er_shape_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_shape_table(X0) :- object(X0),not er_comp_overlap_shape_er_shape_table(X0).
er_smaller_inter_verum_falsum(X0) :- inter_verum_falsum(X1),smaller(X0,X1).
-er_smaller_inter_verum_falsum(X0) :- object(X0),not er_smaller_inter_verum_falsum(X0).
er_below_inter_verum_falsum(X0) :- inter_verum_falsum(X1),below(X0,X1).
-er_below_inter_verum_falsum(X0) :- object(X0),not er_below_inter_verum_falsum(X0).
er_left_inter_verum_falsum(X0) :- inter_verum_falsum(X1),left(X0,X1).
-er_left_inter_verum_falsum(X0) :- object(X0),not er_left_inter_verum_falsum(X0).
er_overlap_inter_verum_falsum(X0) :- inter_verum_falsum(X1),overlap(X0,X1).
-er_overlap_inter_verum_falsum(X0) :- object(X0),not er_overlap_inter_verum_falsum(X0).
er_shape_inter_verum_falsum(X0) :- inter_verum_falsum(X1),shape(X0,X1).
-er_shape_inter_verum_falsum(X0) :- object(X0),not er_shape_inter_verum_falsum(X0).
er_inv_smaller_inter_verum_falsum(X0) :- inter_verum_falsum(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_verum_falsum(X0) :- object(X0),not er_inv_smaller_inter_verum_falsum(X0).
er_inv_below_inter_verum_falsum(X0) :- inter_verum_falsum(X1),inv_below(X0,X1).
-er_inv_below_inter_verum_falsum(X0) :- object(X0),not er_inv_below_inter_verum_falsum(X0).
er_inv_left_inter_verum_falsum(X0) :- inter_verum_falsum(X1),inv_left(X0,X1).
-er_inv_left_inter_verum_falsum(X0) :- object(X0),not er_inv_left_inter_verum_falsum(X0).
er_inv_overlap_inter_verum_falsum(X0) :- inter_verum_falsum(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_verum_falsum(X0) :- object(X0),not er_inv_overlap_inter_verum_falsum(X0).
er_inv_shape_inter_verum_falsum(X0) :- inter_verum_falsum(X1),inv_shape(X0,X1).
-er_inv_shape_inter_verum_falsum(X0) :- object(X0),not er_inv_shape_inter_verum_falsum(X0).
er_comp_smaller_below_inter_verum_falsum(X0) :- inter_verum_falsum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_verum_falsum(X0) :- object(X0),not er_comp_smaller_below_inter_verum_falsum(X0).
er_comp_smaller_left_inter_verum_falsum(X0) :- inter_verum_falsum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_verum_falsum(X0) :- object(X0),not er_comp_smaller_left_inter_verum_falsum(X0).
er_comp_smaller_overlap_inter_verum_falsum(X0) :- inter_verum_falsum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_verum_falsum(X0) :- object(X0),not er_comp_smaller_overlap_inter_verum_falsum(X0).
er_comp_smaller_shape_inter_verum_falsum(X0) :- inter_verum_falsum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_verum_falsum(X0) :- object(X0),not er_comp_smaller_shape_inter_verum_falsum(X0).
er_comp_below_left_inter_verum_falsum(X0) :- inter_verum_falsum(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_verum_falsum(X0) :- object(X0),not er_comp_below_left_inter_verum_falsum(X0).
er_comp_below_overlap_inter_verum_falsum(X0) :- inter_verum_falsum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_verum_falsum(X0) :- object(X0),not er_comp_below_overlap_inter_verum_falsum(X0).
er_comp_below_shape_inter_verum_falsum(X0) :- inter_verum_falsum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_verum_falsum(X0) :- object(X0),not er_comp_below_shape_inter_verum_falsum(X0).
er_comp_left_overlap_inter_verum_falsum(X0) :- inter_verum_falsum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_verum_falsum(X0) :- object(X0),not er_comp_left_overlap_inter_verum_falsum(X0).
er_comp_left_shape_inter_verum_falsum(X0) :- inter_verum_falsum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_verum_falsum(X0) :- object(X0),not er_comp_left_shape_inter_verum_falsum(X0).
er_comp_overlap_shape_inter_verum_falsum(X0) :- inter_verum_falsum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_verum_falsum(X0) :- object(X0),not er_comp_overlap_shape_inter_verum_falsum(X0).
er_smaller_inter_verum_robot(X0) :- inter_verum_robot(X1),smaller(X0,X1).
-er_smaller_inter_verum_robot(X0) :- object(X0),not er_smaller_inter_verum_robot(X0).
er_below_inter_verum_robot(X0) :- inter_verum_robot(X1),below(X0,X1).
-er_below_inter_verum_robot(X0) :- object(X0),not er_below_inter_verum_robot(X0).
er_left_inter_verum_robot(X0) :- inter_verum_robot(X1),left(X0,X1).
-er_left_inter_verum_robot(X0) :- object(X0),not er_left_inter_verum_robot(X0).
er_overlap_inter_verum_robot(X0) :- inter_verum_robot(X1),overlap(X0,X1).
-er_overlap_inter_verum_robot(X0) :- object(X0),not er_overlap_inter_verum_robot(X0).
er_shape_inter_verum_robot(X0) :- inter_verum_robot(X1),shape(X0,X1).
-er_shape_inter_verum_robot(X0) :- object(X0),not er_shape_inter_verum_robot(X0).
er_inv_smaller_inter_verum_robot(X0) :- inter_verum_robot(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_verum_robot(X0) :- object(X0),not er_inv_smaller_inter_verum_robot(X0).
er_inv_below_inter_verum_robot(X0) :- inter_verum_robot(X1),inv_below(X0,X1).
-er_inv_below_inter_verum_robot(X0) :- object(X0),not er_inv_below_inter_verum_robot(X0).
er_inv_left_inter_verum_robot(X0) :- inter_verum_robot(X1),inv_left(X0,X1).
-er_inv_left_inter_verum_robot(X0) :- object(X0),not er_inv_left_inter_verum_robot(X0).
er_inv_overlap_inter_verum_robot(X0) :- inter_verum_robot(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_verum_robot(X0) :- object(X0),not er_inv_overlap_inter_verum_robot(X0).
er_inv_shape_inter_verum_robot(X0) :- inter_verum_robot(X1),inv_shape(X0,X1).
-er_inv_shape_inter_verum_robot(X0) :- object(X0),not er_inv_shape_inter_verum_robot(X0).
er_comp_smaller_below_inter_verum_robot(X0) :- inter_verum_robot(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_verum_robot(X0) :- object(X0),not er_comp_smaller_below_inter_verum_robot(X0).
er_comp_smaller_left_inter_verum_robot(X0) :- inter_verum_robot(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_verum_robot(X0) :- object(X0),not er_comp_smaller_left_inter_verum_robot(X0).
er_comp_smaller_overlap_inter_verum_robot(X0) :- inter_verum_robot(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_verum_robot(X0) :- object(X0),not er_comp_smaller_overlap_inter_verum_robot(X0).
er_comp_smaller_shape_inter_verum_robot(X0) :- inter_verum_robot(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_verum_robot(X0) :- object(X0),not er_comp_smaller_shape_inter_verum_robot(X0).
er_comp_below_left_inter_verum_robot(X0) :- inter_verum_robot(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_verum_robot(X0) :- object(X0),not er_comp_below_left_inter_verum_robot(X0).
er_comp_below_overlap_inter_verum_robot(X0) :- inter_verum_robot(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_verum_robot(X0) :- object(X0),not er_comp_below_overlap_inter_verum_robot(X0).
er_comp_below_shape_inter_verum_robot(X0) :- inter_verum_robot(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_verum_robot(X0) :- object(X0),not er_comp_below_shape_inter_verum_robot(X0).
er_comp_left_overlap_inter_verum_robot(X0) :- inter_verum_robot(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_verum_robot(X0) :- object(X0),not er_comp_left_overlap_inter_verum_robot(X0).
er_comp_left_shape_inter_verum_robot(X0) :- inter_verum_robot(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_verum_robot(X0) :- object(X0),not er_comp_left_shape_inter_verum_robot(X0).
er_comp_overlap_shape_inter_verum_robot(X0) :- inter_verum_robot(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_verum_robot(X0) :- object(X0),not er_comp_overlap_shape_inter_verum_robot(X0).
er_smaller_inter_verum_block(X0) :- inter_verum_block(X1),smaller(X0,X1).
-er_smaller_inter_verum_block(X0) :- object(X0),not er_smaller_inter_verum_block(X0).
er_below_inter_verum_block(X0) :- inter_verum_block(X1),below(X0,X1).
-er_below_inter_verum_block(X0) :- object(X0),not er_below_inter_verum_block(X0).
er_left_inter_verum_block(X0) :- inter_verum_block(X1),left(X0,X1).
-er_left_inter_verum_block(X0) :- object(X0),not er_left_inter_verum_block(X0).
er_overlap_inter_verum_block(X0) :- inter_verum_block(X1),overlap(X0,X1).
-er_overlap_inter_verum_block(X0) :- object(X0),not er_overlap_inter_verum_block(X0).
er_shape_inter_verum_block(X0) :- inter_verum_block(X1),shape(X0,X1).
-er_shape_inter_verum_block(X0) :- object(X0),not er_shape_inter_verum_block(X0).
er_inv_smaller_inter_verum_block(X0) :- inter_verum_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_verum_block(X0) :- object(X0),not er_inv_smaller_inter_verum_block(X0).
er_inv_below_inter_verum_block(X0) :- inter_verum_block(X1),inv_below(X0,X1).
-er_inv_below_inter_verum_block(X0) :- object(X0),not er_inv_below_inter_verum_block(X0).
er_inv_left_inter_verum_block(X0) :- inter_verum_block(X1),inv_left(X0,X1).
-er_inv_left_inter_verum_block(X0) :- object(X0),not er_inv_left_inter_verum_block(X0).
er_inv_overlap_inter_verum_block(X0) :- inter_verum_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_verum_block(X0) :- object(X0),not er_inv_overlap_inter_verum_block(X0).
er_inv_shape_inter_verum_block(X0) :- inter_verum_block(X1),inv_shape(X0,X1).
-er_inv_shape_inter_verum_block(X0) :- object(X0),not er_inv_shape_inter_verum_block(X0).
er_comp_smaller_below_inter_verum_block(X0) :- inter_verum_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_verum_block(X0) :- object(X0),not er_comp_smaller_below_inter_verum_block(X0).
er_comp_smaller_left_inter_verum_block(X0) :- inter_verum_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_verum_block(X0) :- object(X0),not er_comp_smaller_left_inter_verum_block(X0).
er_comp_smaller_overlap_inter_verum_block(X0) :- inter_verum_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_verum_block(X0) :- object(X0),not er_comp_smaller_overlap_inter_verum_block(X0).
er_comp_smaller_shape_inter_verum_block(X0) :- inter_verum_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_verum_block(X0) :- object(X0),not er_comp_smaller_shape_inter_verum_block(X0).
er_comp_below_left_inter_verum_block(X0) :- inter_verum_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_verum_block(X0) :- object(X0),not er_comp_below_left_inter_verum_block(X0).
er_comp_below_overlap_inter_verum_block(X0) :- inter_verum_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_verum_block(X0) :- object(X0),not er_comp_below_overlap_inter_verum_block(X0).
er_comp_below_shape_inter_verum_block(X0) :- inter_verum_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_verum_block(X0) :- object(X0),not er_comp_below_shape_inter_verum_block(X0).
er_comp_left_overlap_inter_verum_block(X0) :- inter_verum_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_verum_block(X0) :- object(X0),not er_comp_left_overlap_inter_verum_block(X0).
er_comp_left_shape_inter_verum_block(X0) :- inter_verum_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_verum_block(X0) :- object(X0),not er_comp_left_shape_inter_verum_block(X0).
er_comp_overlap_shape_inter_verum_block(X0) :- inter_verum_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_verum_block(X0) :- object(X0),not er_comp_overlap_shape_inter_verum_block(X0).
er_smaller_inter_verum_table(X0) :- inter_verum_table(X1),smaller(X0,X1).
-er_smaller_inter_verum_table(X0) :- object(X0),not er_smaller_inter_verum_table(X0).
er_below_inter_verum_table(X0) :- inter_verum_table(X1),below(X0,X1).
-er_below_inter_verum_table(X0) :- object(X0),not er_below_inter_verum_table(X0).
er_left_inter_verum_table(X0) :- inter_verum_table(X1),left(X0,X1).
-er_left_inter_verum_table(X0) :- object(X0),not er_left_inter_verum_table(X0).
er_overlap_inter_verum_table(X0) :- inter_verum_table(X1),overlap(X0,X1).
-er_overlap_inter_verum_table(X0) :- object(X0),not er_overlap_inter_verum_table(X0).
er_shape_inter_verum_table(X0) :- inter_verum_table(X1),shape(X0,X1).
-er_shape_inter_verum_table(X0) :- object(X0),not er_shape_inter_verum_table(X0).
er_inv_smaller_inter_verum_table(X0) :- inter_verum_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_verum_table(X0) :- object(X0),not er_inv_smaller_inter_verum_table(X0).
er_inv_below_inter_verum_table(X0) :- inter_verum_table(X1),inv_below(X0,X1).
-er_inv_below_inter_verum_table(X0) :- object(X0),not er_inv_below_inter_verum_table(X0).
er_inv_left_inter_verum_table(X0) :- inter_verum_table(X1),inv_left(X0,X1).
-er_inv_left_inter_verum_table(X0) :- object(X0),not er_inv_left_inter_verum_table(X0).
er_inv_overlap_inter_verum_table(X0) :- inter_verum_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_verum_table(X0) :- object(X0),not er_inv_overlap_inter_verum_table(X0).
er_inv_shape_inter_verum_table(X0) :- inter_verum_table(X1),inv_shape(X0,X1).
-er_inv_shape_inter_verum_table(X0) :- object(X0),not er_inv_shape_inter_verum_table(X0).
er_comp_smaller_below_inter_verum_table(X0) :- inter_verum_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_verum_table(X0) :- object(X0),not er_comp_smaller_below_inter_verum_table(X0).
er_comp_smaller_left_inter_verum_table(X0) :- inter_verum_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_verum_table(X0) :- object(X0),not er_comp_smaller_left_inter_verum_table(X0).
er_comp_smaller_overlap_inter_verum_table(X0) :- inter_verum_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_verum_table(X0) :- object(X0),not er_comp_smaller_overlap_inter_verum_table(X0).
er_comp_smaller_shape_inter_verum_table(X0) :- inter_verum_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_verum_table(X0) :- object(X0),not er_comp_smaller_shape_inter_verum_table(X0).
er_comp_below_left_inter_verum_table(X0) :- inter_verum_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_verum_table(X0) :- object(X0),not er_comp_below_left_inter_verum_table(X0).
er_comp_below_overlap_inter_verum_table(X0) :- inter_verum_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_verum_table(X0) :- object(X0),not er_comp_below_overlap_inter_verum_table(X0).
er_comp_below_shape_inter_verum_table(X0) :- inter_verum_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_verum_table(X0) :- object(X0),not er_comp_below_shape_inter_verum_table(X0).
er_comp_left_overlap_inter_verum_table(X0) :- inter_verum_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_verum_table(X0) :- object(X0),not er_comp_left_overlap_inter_verum_table(X0).
er_comp_left_shape_inter_verum_table(X0) :- inter_verum_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_verum_table(X0) :- object(X0),not er_comp_left_shape_inter_verum_table(X0).
er_comp_overlap_shape_inter_verum_table(X0) :- inter_verum_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_verum_table(X0) :- object(X0),not er_comp_overlap_shape_inter_verum_table(X0).
er_smaller_inter_falsum_robot(X0) :- inter_falsum_robot(X1),smaller(X0,X1).
-er_smaller_inter_falsum_robot(X0) :- object(X0),not er_smaller_inter_falsum_robot(X0).
er_below_inter_falsum_robot(X0) :- inter_falsum_robot(X1),below(X0,X1).
-er_below_inter_falsum_robot(X0) :- object(X0),not er_below_inter_falsum_robot(X0).
er_left_inter_falsum_robot(X0) :- inter_falsum_robot(X1),left(X0,X1).
-er_left_inter_falsum_robot(X0) :- object(X0),not er_left_inter_falsum_robot(X0).
er_overlap_inter_falsum_robot(X0) :- inter_falsum_robot(X1),overlap(X0,X1).
-er_overlap_inter_falsum_robot(X0) :- object(X0),not er_overlap_inter_falsum_robot(X0).
er_shape_inter_falsum_robot(X0) :- inter_falsum_robot(X1),shape(X0,X1).
-er_shape_inter_falsum_robot(X0) :- object(X0),not er_shape_inter_falsum_robot(X0).
er_inv_smaller_inter_falsum_robot(X0) :- inter_falsum_robot(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_falsum_robot(X0) :- object(X0),not er_inv_smaller_inter_falsum_robot(X0).
er_inv_below_inter_falsum_robot(X0) :- inter_falsum_robot(X1),inv_below(X0,X1).
-er_inv_below_inter_falsum_robot(X0) :- object(X0),not er_inv_below_inter_falsum_robot(X0).
er_inv_left_inter_falsum_robot(X0) :- inter_falsum_robot(X1),inv_left(X0,X1).
-er_inv_left_inter_falsum_robot(X0) :- object(X0),not er_inv_left_inter_falsum_robot(X0).
er_inv_overlap_inter_falsum_robot(X0) :- inter_falsum_robot(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_falsum_robot(X0) :- object(X0),not er_inv_overlap_inter_falsum_robot(X0).
er_inv_shape_inter_falsum_robot(X0) :- inter_falsum_robot(X1),inv_shape(X0,X1).
-er_inv_shape_inter_falsum_robot(X0) :- object(X0),not er_inv_shape_inter_falsum_robot(X0).
er_comp_smaller_below_inter_falsum_robot(X0) :- inter_falsum_robot(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_falsum_robot(X0) :- object(X0),not er_comp_smaller_below_inter_falsum_robot(X0).
er_comp_smaller_left_inter_falsum_robot(X0) :- inter_falsum_robot(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_falsum_robot(X0) :- object(X0),not er_comp_smaller_left_inter_falsum_robot(X0).
er_comp_smaller_overlap_inter_falsum_robot(X0) :- inter_falsum_robot(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_falsum_robot(X0) :- object(X0),not er_comp_smaller_overlap_inter_falsum_robot(X0).
er_comp_smaller_shape_inter_falsum_robot(X0) :- inter_falsum_robot(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_falsum_robot(X0) :- object(X0),not er_comp_smaller_shape_inter_falsum_robot(X0).
er_comp_below_left_inter_falsum_robot(X0) :- inter_falsum_robot(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_falsum_robot(X0) :- object(X0),not er_comp_below_left_inter_falsum_robot(X0).
er_comp_below_overlap_inter_falsum_robot(X0) :- inter_falsum_robot(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_falsum_robot(X0) :- object(X0),not er_comp_below_overlap_inter_falsum_robot(X0).
er_comp_below_shape_inter_falsum_robot(X0) :- inter_falsum_robot(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_falsum_robot(X0) :- object(X0),not er_comp_below_shape_inter_falsum_robot(X0).
er_comp_left_overlap_inter_falsum_robot(X0) :- inter_falsum_robot(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_falsum_robot(X0) :- object(X0),not er_comp_left_overlap_inter_falsum_robot(X0).
er_comp_left_shape_inter_falsum_robot(X0) :- inter_falsum_robot(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_falsum_robot(X0) :- object(X0),not er_comp_left_shape_inter_falsum_robot(X0).
er_comp_overlap_shape_inter_falsum_robot(X0) :- inter_falsum_robot(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_falsum_robot(X0) :- object(X0),not er_comp_overlap_shape_inter_falsum_robot(X0).
er_smaller_inter_falsum_block(X0) :- inter_falsum_block(X1),smaller(X0,X1).
-er_smaller_inter_falsum_block(X0) :- object(X0),not er_smaller_inter_falsum_block(X0).
er_below_inter_falsum_block(X0) :- inter_falsum_block(X1),below(X0,X1).
-er_below_inter_falsum_block(X0) :- object(X0),not er_below_inter_falsum_block(X0).
er_left_inter_falsum_block(X0) :- inter_falsum_block(X1),left(X0,X1).
-er_left_inter_falsum_block(X0) :- object(X0),not er_left_inter_falsum_block(X0).
er_overlap_inter_falsum_block(X0) :- inter_falsum_block(X1),overlap(X0,X1).
-er_overlap_inter_falsum_block(X0) :- object(X0),not er_overlap_inter_falsum_block(X0).
er_shape_inter_falsum_block(X0) :- inter_falsum_block(X1),shape(X0,X1).
-er_shape_inter_falsum_block(X0) :- object(X0),not er_shape_inter_falsum_block(X0).
er_inv_smaller_inter_falsum_block(X0) :- inter_falsum_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_falsum_block(X0) :- object(X0),not er_inv_smaller_inter_falsum_block(X0).
er_inv_below_inter_falsum_block(X0) :- inter_falsum_block(X1),inv_below(X0,X1).
-er_inv_below_inter_falsum_block(X0) :- object(X0),not er_inv_below_inter_falsum_block(X0).
er_inv_left_inter_falsum_block(X0) :- inter_falsum_block(X1),inv_left(X0,X1).
-er_inv_left_inter_falsum_block(X0) :- object(X0),not er_inv_left_inter_falsum_block(X0).
er_inv_overlap_inter_falsum_block(X0) :- inter_falsum_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_falsum_block(X0) :- object(X0),not er_inv_overlap_inter_falsum_block(X0).
er_inv_shape_inter_falsum_block(X0) :- inter_falsum_block(X1),inv_shape(X0,X1).
-er_inv_shape_inter_falsum_block(X0) :- object(X0),not er_inv_shape_inter_falsum_block(X0).
er_comp_smaller_below_inter_falsum_block(X0) :- inter_falsum_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_falsum_block(X0) :- object(X0),not er_comp_smaller_below_inter_falsum_block(X0).
er_comp_smaller_left_inter_falsum_block(X0) :- inter_falsum_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_falsum_block(X0) :- object(X0),not er_comp_smaller_left_inter_falsum_block(X0).
er_comp_smaller_overlap_inter_falsum_block(X0) :- inter_falsum_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_falsum_block(X0) :- object(X0),not er_comp_smaller_overlap_inter_falsum_block(X0).
er_comp_smaller_shape_inter_falsum_block(X0) :- inter_falsum_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_falsum_block(X0) :- object(X0),not er_comp_smaller_shape_inter_falsum_block(X0).
er_comp_below_left_inter_falsum_block(X0) :- inter_falsum_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_falsum_block(X0) :- object(X0),not er_comp_below_left_inter_falsum_block(X0).
er_comp_below_overlap_inter_falsum_block(X0) :- inter_falsum_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_falsum_block(X0) :- object(X0),not er_comp_below_overlap_inter_falsum_block(X0).
er_comp_below_shape_inter_falsum_block(X0) :- inter_falsum_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_falsum_block(X0) :- object(X0),not er_comp_below_shape_inter_falsum_block(X0).
er_comp_left_overlap_inter_falsum_block(X0) :- inter_falsum_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_falsum_block(X0) :- object(X0),not er_comp_left_overlap_inter_falsum_block(X0).
er_comp_left_shape_inter_falsum_block(X0) :- inter_falsum_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_falsum_block(X0) :- object(X0),not er_comp_left_shape_inter_falsum_block(X0).
er_comp_overlap_shape_inter_falsum_block(X0) :- inter_falsum_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_falsum_block(X0) :- object(X0),not er_comp_overlap_shape_inter_falsum_block(X0).
er_smaller_inter_falsum_table(X0) :- inter_falsum_table(X1),smaller(X0,X1).
-er_smaller_inter_falsum_table(X0) :- object(X0),not er_smaller_inter_falsum_table(X0).
er_below_inter_falsum_table(X0) :- inter_falsum_table(X1),below(X0,X1).
-er_below_inter_falsum_table(X0) :- object(X0),not er_below_inter_falsum_table(X0).
er_left_inter_falsum_table(X0) :- inter_falsum_table(X1),left(X0,X1).
-er_left_inter_falsum_table(X0) :- object(X0),not er_left_inter_falsum_table(X0).
er_overlap_inter_falsum_table(X0) :- inter_falsum_table(X1),overlap(X0,X1).
-er_overlap_inter_falsum_table(X0) :- object(X0),not er_overlap_inter_falsum_table(X0).
er_shape_inter_falsum_table(X0) :- inter_falsum_table(X1),shape(X0,X1).
-er_shape_inter_falsum_table(X0) :- object(X0),not er_shape_inter_falsum_table(X0).
er_inv_smaller_inter_falsum_table(X0) :- inter_falsum_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_falsum_table(X0) :- object(X0),not er_inv_smaller_inter_falsum_table(X0).
er_inv_below_inter_falsum_table(X0) :- inter_falsum_table(X1),inv_below(X0,X1).
-er_inv_below_inter_falsum_table(X0) :- object(X0),not er_inv_below_inter_falsum_table(X0).
er_inv_left_inter_falsum_table(X0) :- inter_falsum_table(X1),inv_left(X0,X1).
-er_inv_left_inter_falsum_table(X0) :- object(X0),not er_inv_left_inter_falsum_table(X0).
er_inv_overlap_inter_falsum_table(X0) :- inter_falsum_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_falsum_table(X0) :- object(X0),not er_inv_overlap_inter_falsum_table(X0).
er_inv_shape_inter_falsum_table(X0) :- inter_falsum_table(X1),inv_shape(X0,X1).
-er_inv_shape_inter_falsum_table(X0) :- object(X0),not er_inv_shape_inter_falsum_table(X0).
er_comp_smaller_below_inter_falsum_table(X0) :- inter_falsum_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_falsum_table(X0) :- object(X0),not er_comp_smaller_below_inter_falsum_table(X0).
er_comp_smaller_left_inter_falsum_table(X0) :- inter_falsum_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_falsum_table(X0) :- object(X0),not er_comp_smaller_left_inter_falsum_table(X0).
er_comp_smaller_overlap_inter_falsum_table(X0) :- inter_falsum_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_falsum_table(X0) :- object(X0),not er_comp_smaller_overlap_inter_falsum_table(X0).
er_comp_smaller_shape_inter_falsum_table(X0) :- inter_falsum_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_falsum_table(X0) :- object(X0),not er_comp_smaller_shape_inter_falsum_table(X0).
er_comp_below_left_inter_falsum_table(X0) :- inter_falsum_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_falsum_table(X0) :- object(X0),not er_comp_below_left_inter_falsum_table(X0).
er_comp_below_overlap_inter_falsum_table(X0) :- inter_falsum_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_falsum_table(X0) :- object(X0),not er_comp_below_overlap_inter_falsum_table(X0).
er_comp_below_shape_inter_falsum_table(X0) :- inter_falsum_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_falsum_table(X0) :- object(X0),not er_comp_below_shape_inter_falsum_table(X0).
er_comp_left_overlap_inter_falsum_table(X0) :- inter_falsum_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_falsum_table(X0) :- object(X0),not er_comp_left_overlap_inter_falsum_table(X0).
er_comp_left_shape_inter_falsum_table(X0) :- inter_falsum_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_falsum_table(X0) :- object(X0),not er_comp_left_shape_inter_falsum_table(X0).
er_comp_overlap_shape_inter_falsum_table(X0) :- inter_falsum_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_falsum_table(X0) :- object(X0),not er_comp_overlap_shape_inter_falsum_table(X0).
er_smaller_inter_robot_block(X0) :- inter_robot_block(X1),smaller(X0,X1).
-er_smaller_inter_robot_block(X0) :- object(X0),not er_smaller_inter_robot_block(X0).
er_below_inter_robot_block(X0) :- inter_robot_block(X1),below(X0,X1).
-er_below_inter_robot_block(X0) :- object(X0),not er_below_inter_robot_block(X0).
er_left_inter_robot_block(X0) :- inter_robot_block(X1),left(X0,X1).
-er_left_inter_robot_block(X0) :- object(X0),not er_left_inter_robot_block(X0).
er_overlap_inter_robot_block(X0) :- inter_robot_block(X1),overlap(X0,X1).
-er_overlap_inter_robot_block(X0) :- object(X0),not er_overlap_inter_robot_block(X0).
er_shape_inter_robot_block(X0) :- inter_robot_block(X1),shape(X0,X1).
-er_shape_inter_robot_block(X0) :- object(X0),not er_shape_inter_robot_block(X0).
er_inv_smaller_inter_robot_block(X0) :- inter_robot_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_robot_block(X0) :- object(X0),not er_inv_smaller_inter_robot_block(X0).
er_inv_below_inter_robot_block(X0) :- inter_robot_block(X1),inv_below(X0,X1).
-er_inv_below_inter_robot_block(X0) :- object(X0),not er_inv_below_inter_robot_block(X0).
er_inv_left_inter_robot_block(X0) :- inter_robot_block(X1),inv_left(X0,X1).
-er_inv_left_inter_robot_block(X0) :- object(X0),not er_inv_left_inter_robot_block(X0).
er_inv_overlap_inter_robot_block(X0) :- inter_robot_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_robot_block(X0) :- object(X0),not er_inv_overlap_inter_robot_block(X0).
er_inv_shape_inter_robot_block(X0) :- inter_robot_block(X1),inv_shape(X0,X1).
-er_inv_shape_inter_robot_block(X0) :- object(X0),not er_inv_shape_inter_robot_block(X0).
er_comp_smaller_below_inter_robot_block(X0) :- inter_robot_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_robot_block(X0) :- object(X0),not er_comp_smaller_below_inter_robot_block(X0).
er_comp_smaller_left_inter_robot_block(X0) :- inter_robot_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_robot_block(X0) :- object(X0),not er_comp_smaller_left_inter_robot_block(X0).
er_comp_smaller_overlap_inter_robot_block(X0) :- inter_robot_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_robot_block(X0) :- object(X0),not er_comp_smaller_overlap_inter_robot_block(X0).
er_comp_smaller_shape_inter_robot_block(X0) :- inter_robot_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_robot_block(X0) :- object(X0),not er_comp_smaller_shape_inter_robot_block(X0).
er_comp_below_left_inter_robot_block(X0) :- inter_robot_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_robot_block(X0) :- object(X0),not er_comp_below_left_inter_robot_block(X0).
er_comp_below_overlap_inter_robot_block(X0) :- inter_robot_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_robot_block(X0) :- object(X0),not er_comp_below_overlap_inter_robot_block(X0).
er_comp_below_shape_inter_robot_block(X0) :- inter_robot_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_robot_block(X0) :- object(X0),not er_comp_below_shape_inter_robot_block(X0).
er_comp_left_overlap_inter_robot_block(X0) :- inter_robot_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_robot_block(X0) :- object(X0),not er_comp_left_overlap_inter_robot_block(X0).
er_comp_left_shape_inter_robot_block(X0) :- inter_robot_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_robot_block(X0) :- object(X0),not er_comp_left_shape_inter_robot_block(X0).
er_comp_overlap_shape_inter_robot_block(X0) :- inter_robot_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_robot_block(X0) :- object(X0),not er_comp_overlap_shape_inter_robot_block(X0).
er_smaller_inter_robot_table(X0) :- inter_robot_table(X1),smaller(X0,X1).
-er_smaller_inter_robot_table(X0) :- object(X0),not er_smaller_inter_robot_table(X0).
er_below_inter_robot_table(X0) :- inter_robot_table(X1),below(X0,X1).
-er_below_inter_robot_table(X0) :- object(X0),not er_below_inter_robot_table(X0).
er_left_inter_robot_table(X0) :- inter_robot_table(X1),left(X0,X1).
-er_left_inter_robot_table(X0) :- object(X0),not er_left_inter_robot_table(X0).
er_overlap_inter_robot_table(X0) :- inter_robot_table(X1),overlap(X0,X1).
-er_overlap_inter_robot_table(X0) :- object(X0),not er_overlap_inter_robot_table(X0).
er_shape_inter_robot_table(X0) :- inter_robot_table(X1),shape(X0,X1).
-er_shape_inter_robot_table(X0) :- object(X0),not er_shape_inter_robot_table(X0).
er_inv_smaller_inter_robot_table(X0) :- inter_robot_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_robot_table(X0) :- object(X0),not er_inv_smaller_inter_robot_table(X0).
er_inv_below_inter_robot_table(X0) :- inter_robot_table(X1),inv_below(X0,X1).
-er_inv_below_inter_robot_table(X0) :- object(X0),not er_inv_below_inter_robot_table(X0).
er_inv_left_inter_robot_table(X0) :- inter_robot_table(X1),inv_left(X0,X1).
-er_inv_left_inter_robot_table(X0) :- object(X0),not er_inv_left_inter_robot_table(X0).
er_inv_overlap_inter_robot_table(X0) :- inter_robot_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_robot_table(X0) :- object(X0),not er_inv_overlap_inter_robot_table(X0).
er_inv_shape_inter_robot_table(X0) :- inter_robot_table(X1),inv_shape(X0,X1).
-er_inv_shape_inter_robot_table(X0) :- object(X0),not er_inv_shape_inter_robot_table(X0).
er_comp_smaller_below_inter_robot_table(X0) :- inter_robot_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_robot_table(X0) :- object(X0),not er_comp_smaller_below_inter_robot_table(X0).
er_comp_smaller_left_inter_robot_table(X0) :- inter_robot_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_robot_table(X0) :- object(X0),not er_comp_smaller_left_inter_robot_table(X0).
er_comp_smaller_overlap_inter_robot_table(X0) :- inter_robot_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_robot_table(X0) :- object(X0),not er_comp_smaller_overlap_inter_robot_table(X0).
er_comp_smaller_shape_inter_robot_table(X0) :- inter_robot_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_robot_table(X0) :- object(X0),not er_comp_smaller_shape_inter_robot_table(X0).
er_comp_below_left_inter_robot_table(X0) :- inter_robot_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_robot_table(X0) :- object(X0),not er_comp_below_left_inter_robot_table(X0).
er_comp_below_overlap_inter_robot_table(X0) :- inter_robot_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_robot_table(X0) :- object(X0),not er_comp_below_overlap_inter_robot_table(X0).
er_comp_below_shape_inter_robot_table(X0) :- inter_robot_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_robot_table(X0) :- object(X0),not er_comp_below_shape_inter_robot_table(X0).
er_comp_left_overlap_inter_robot_table(X0) :- inter_robot_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_robot_table(X0) :- object(X0),not er_comp_left_overlap_inter_robot_table(X0).
er_comp_left_shape_inter_robot_table(X0) :- inter_robot_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_robot_table(X0) :- object(X0),not er_comp_left_shape_inter_robot_table(X0).
er_comp_overlap_shape_inter_robot_table(X0) :- inter_robot_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_robot_table(X0) :- object(X0),not er_comp_overlap_shape_inter_robot_table(X0).
er_smaller_inter_block_table(X0) :- inter_block_table(X1),smaller(X0,X1).
-er_smaller_inter_block_table(X0) :- object(X0),not er_smaller_inter_block_table(X0).
er_below_inter_block_table(X0) :- inter_block_table(X1),below(X0,X1).
-er_below_inter_block_table(X0) :- object(X0),not er_below_inter_block_table(X0).
er_left_inter_block_table(X0) :- inter_block_table(X1),left(X0,X1).
-er_left_inter_block_table(X0) :- object(X0),not er_left_inter_block_table(X0).
er_overlap_inter_block_table(X0) :- inter_block_table(X1),overlap(X0,X1).
-er_overlap_inter_block_table(X0) :- object(X0),not er_overlap_inter_block_table(X0).
er_shape_inter_block_table(X0) :- inter_block_table(X1),shape(X0,X1).
-er_shape_inter_block_table(X0) :- object(X0),not er_shape_inter_block_table(X0).
er_inv_smaller_inter_block_table(X0) :- inter_block_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_block_table(X0) :- object(X0),not er_inv_smaller_inter_block_table(X0).
er_inv_below_inter_block_table(X0) :- inter_block_table(X1),inv_below(X0,X1).
-er_inv_below_inter_block_table(X0) :- object(X0),not er_inv_below_inter_block_table(X0).
er_inv_left_inter_block_table(X0) :- inter_block_table(X1),inv_left(X0,X1).
-er_inv_left_inter_block_table(X0) :- object(X0),not er_inv_left_inter_block_table(X0).
er_inv_overlap_inter_block_table(X0) :- inter_block_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_block_table(X0) :- object(X0),not er_inv_overlap_inter_block_table(X0).
er_inv_shape_inter_block_table(X0) :- inter_block_table(X1),inv_shape(X0,X1).
-er_inv_shape_inter_block_table(X0) :- object(X0),not er_inv_shape_inter_block_table(X0).
er_comp_smaller_below_inter_block_table(X0) :- inter_block_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_block_table(X0) :- object(X0),not er_comp_smaller_below_inter_block_table(X0).
er_comp_smaller_left_inter_block_table(X0) :- inter_block_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_block_table(X0) :- object(X0),not er_comp_smaller_left_inter_block_table(X0).
er_comp_smaller_overlap_inter_block_table(X0) :- inter_block_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_block_table(X0) :- object(X0),not er_comp_smaller_overlap_inter_block_table(X0).
er_comp_smaller_shape_inter_block_table(X0) :- inter_block_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_block_table(X0) :- object(X0),not er_comp_smaller_shape_inter_block_table(X0).
er_comp_below_left_inter_block_table(X0) :- inter_block_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_block_table(X0) :- object(X0),not er_comp_below_left_inter_block_table(X0).
er_comp_below_overlap_inter_block_table(X0) :- inter_block_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_block_table(X0) :- object(X0),not er_comp_below_overlap_inter_block_table(X0).
er_comp_below_shape_inter_block_table(X0) :- inter_block_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_block_table(X0) :- object(X0),not er_comp_below_shape_inter_block_table(X0).
er_comp_left_overlap_inter_block_table(X0) :- inter_block_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_block_table(X0) :- object(X0),not er_comp_left_overlap_inter_block_table(X0).
er_comp_left_shape_inter_block_table(X0) :- inter_block_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_block_table(X0) :- object(X0),not er_comp_left_shape_inter_block_table(X0).
er_comp_overlap_shape_inter_block_table(X0) :- inter_block_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_block_table(X0) :- object(X0),not er_comp_overlap_shape_inter_block_table(X0).
er_smaller_subset_verum_falsum(X0) :- subset_verum_falsum(X1),smaller(X0,X1).
-er_smaller_subset_verum_falsum(X0) :- object(X0),not er_smaller_subset_verum_falsum(X0).
er_below_subset_verum_falsum(X0) :- subset_verum_falsum(X1),below(X0,X1).
-er_below_subset_verum_falsum(X0) :- object(X0),not er_below_subset_verum_falsum(X0).
er_left_subset_verum_falsum(X0) :- subset_verum_falsum(X1),left(X0,X1).
-er_left_subset_verum_falsum(X0) :- object(X0),not er_left_subset_verum_falsum(X0).
er_overlap_subset_verum_falsum(X0) :- subset_verum_falsum(X1),overlap(X0,X1).
-er_overlap_subset_verum_falsum(X0) :- object(X0),not er_overlap_subset_verum_falsum(X0).
er_shape_subset_verum_falsum(X0) :- subset_verum_falsum(X1),shape(X0,X1).
-er_shape_subset_verum_falsum(X0) :- object(X0),not er_shape_subset_verum_falsum(X0).
er_inv_smaller_subset_verum_falsum(X0) :- subset_verum_falsum(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_verum_falsum(X0) :- object(X0),not er_inv_smaller_subset_verum_falsum(X0).
er_inv_below_subset_verum_falsum(X0) :- subset_verum_falsum(X1),inv_below(X0,X1).
-er_inv_below_subset_verum_falsum(X0) :- object(X0),not er_inv_below_subset_verum_falsum(X0).
er_inv_left_subset_verum_falsum(X0) :- subset_verum_falsum(X1),inv_left(X0,X1).
-er_inv_left_subset_verum_falsum(X0) :- object(X0),not er_inv_left_subset_verum_falsum(X0).
er_inv_overlap_subset_verum_falsum(X0) :- subset_verum_falsum(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_verum_falsum(X0) :- object(X0),not er_inv_overlap_subset_verum_falsum(X0).
er_inv_shape_subset_verum_falsum(X0) :- subset_verum_falsum(X1),inv_shape(X0,X1).
-er_inv_shape_subset_verum_falsum(X0) :- object(X0),not er_inv_shape_subset_verum_falsum(X0).
er_comp_smaller_below_subset_verum_falsum(X0) :- subset_verum_falsum(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_verum_falsum(X0) :- object(X0),not er_comp_smaller_below_subset_verum_falsum(X0).
er_comp_smaller_left_subset_verum_falsum(X0) :- subset_verum_falsum(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_verum_falsum(X0) :- object(X0),not er_comp_smaller_left_subset_verum_falsum(X0).
er_comp_smaller_overlap_subset_verum_falsum(X0) :- subset_verum_falsum(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_verum_falsum(X0) :- object(X0),not er_comp_smaller_overlap_subset_verum_falsum(X0).
er_comp_smaller_shape_subset_verum_falsum(X0) :- subset_verum_falsum(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_verum_falsum(X0) :- object(X0),not er_comp_smaller_shape_subset_verum_falsum(X0).
er_comp_below_left_subset_verum_falsum(X0) :- subset_verum_falsum(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_verum_falsum(X0) :- object(X0),not er_comp_below_left_subset_verum_falsum(X0).
er_comp_below_overlap_subset_verum_falsum(X0) :- subset_verum_falsum(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_verum_falsum(X0) :- object(X0),not er_comp_below_overlap_subset_verum_falsum(X0).
er_comp_below_shape_subset_verum_falsum(X0) :- subset_verum_falsum(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_verum_falsum(X0) :- object(X0),not er_comp_below_shape_subset_verum_falsum(X0).
er_comp_left_overlap_subset_verum_falsum(X0) :- subset_verum_falsum(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_verum_falsum(X0) :- object(X0),not er_comp_left_overlap_subset_verum_falsum(X0).
er_comp_left_shape_subset_verum_falsum(X0) :- subset_verum_falsum(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_verum_falsum(X0) :- object(X0),not er_comp_left_shape_subset_verum_falsum(X0).
er_comp_overlap_shape_subset_verum_falsum(X0) :- subset_verum_falsum(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_verum_falsum(X0) :- object(X0),not er_comp_overlap_shape_subset_verum_falsum(X0).
er_smaller_subset_verum_robot(X0) :- subset_verum_robot(X1),smaller(X0,X1).
-er_smaller_subset_verum_robot(X0) :- object(X0),not er_smaller_subset_verum_robot(X0).
er_below_subset_verum_robot(X0) :- subset_verum_robot(X1),below(X0,X1).
-er_below_subset_verum_robot(X0) :- object(X0),not er_below_subset_verum_robot(X0).
er_left_subset_verum_robot(X0) :- subset_verum_robot(X1),left(X0,X1).
-er_left_subset_verum_robot(X0) :- object(X0),not er_left_subset_verum_robot(X0).
er_overlap_subset_verum_robot(X0) :- subset_verum_robot(X1),overlap(X0,X1).
-er_overlap_subset_verum_robot(X0) :- object(X0),not er_overlap_subset_verum_robot(X0).
er_shape_subset_verum_robot(X0) :- subset_verum_robot(X1),shape(X0,X1).
-er_shape_subset_verum_robot(X0) :- object(X0),not er_shape_subset_verum_robot(X0).
er_inv_smaller_subset_verum_robot(X0) :- subset_verum_robot(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_verum_robot(X0) :- object(X0),not er_inv_smaller_subset_verum_robot(X0).
er_inv_below_subset_verum_robot(X0) :- subset_verum_robot(X1),inv_below(X0,X1).
-er_inv_below_subset_verum_robot(X0) :- object(X0),not er_inv_below_subset_verum_robot(X0).
er_inv_left_subset_verum_robot(X0) :- subset_verum_robot(X1),inv_left(X0,X1).
-er_inv_left_subset_verum_robot(X0) :- object(X0),not er_inv_left_subset_verum_robot(X0).
er_inv_overlap_subset_verum_robot(X0) :- subset_verum_robot(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_verum_robot(X0) :- object(X0),not er_inv_overlap_subset_verum_robot(X0).
er_inv_shape_subset_verum_robot(X0) :- subset_verum_robot(X1),inv_shape(X0,X1).
-er_inv_shape_subset_verum_robot(X0) :- object(X0),not er_inv_shape_subset_verum_robot(X0).
er_comp_smaller_below_subset_verum_robot(X0) :- subset_verum_robot(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_verum_robot(X0) :- object(X0),not er_comp_smaller_below_subset_verum_robot(X0).
er_comp_smaller_left_subset_verum_robot(X0) :- subset_verum_robot(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_verum_robot(X0) :- object(X0),not er_comp_smaller_left_subset_verum_robot(X0).
er_comp_smaller_overlap_subset_verum_robot(X0) :- subset_verum_robot(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_verum_robot(X0) :- object(X0),not er_comp_smaller_overlap_subset_verum_robot(X0).
er_comp_smaller_shape_subset_verum_robot(X0) :- subset_verum_robot(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_verum_robot(X0) :- object(X0),not er_comp_smaller_shape_subset_verum_robot(X0).
er_comp_below_left_subset_verum_robot(X0) :- subset_verum_robot(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_verum_robot(X0) :- object(X0),not er_comp_below_left_subset_verum_robot(X0).
er_comp_below_overlap_subset_verum_robot(X0) :- subset_verum_robot(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_verum_robot(X0) :- object(X0),not er_comp_below_overlap_subset_verum_robot(X0).
er_comp_below_shape_subset_verum_robot(X0) :- subset_verum_robot(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_verum_robot(X0) :- object(X0),not er_comp_below_shape_subset_verum_robot(X0).
er_comp_left_overlap_subset_verum_robot(X0) :- subset_verum_robot(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_verum_robot(X0) :- object(X0),not er_comp_left_overlap_subset_verum_robot(X0).
er_comp_left_shape_subset_verum_robot(X0) :- subset_verum_robot(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_verum_robot(X0) :- object(X0),not er_comp_left_shape_subset_verum_robot(X0).
er_comp_overlap_shape_subset_verum_robot(X0) :- subset_verum_robot(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_verum_robot(X0) :- object(X0),not er_comp_overlap_shape_subset_verum_robot(X0).
er_smaller_subset_verum_block(X0) :- subset_verum_block(X1),smaller(X0,X1).
-er_smaller_subset_verum_block(X0) :- object(X0),not er_smaller_subset_verum_block(X0).
er_below_subset_verum_block(X0) :- subset_verum_block(X1),below(X0,X1).
-er_below_subset_verum_block(X0) :- object(X0),not er_below_subset_verum_block(X0).
er_left_subset_verum_block(X0) :- subset_verum_block(X1),left(X0,X1).
-er_left_subset_verum_block(X0) :- object(X0),not er_left_subset_verum_block(X0).
er_overlap_subset_verum_block(X0) :- subset_verum_block(X1),overlap(X0,X1).
-er_overlap_subset_verum_block(X0) :- object(X0),not er_overlap_subset_verum_block(X0).
er_shape_subset_verum_block(X0) :- subset_verum_block(X1),shape(X0,X1).
-er_shape_subset_verum_block(X0) :- object(X0),not er_shape_subset_verum_block(X0).
er_inv_smaller_subset_verum_block(X0) :- subset_verum_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_verum_block(X0) :- object(X0),not er_inv_smaller_subset_verum_block(X0).
er_inv_below_subset_verum_block(X0) :- subset_verum_block(X1),inv_below(X0,X1).
-er_inv_below_subset_verum_block(X0) :- object(X0),not er_inv_below_subset_verum_block(X0).
er_inv_left_subset_verum_block(X0) :- subset_verum_block(X1),inv_left(X0,X1).
-er_inv_left_subset_verum_block(X0) :- object(X0),not er_inv_left_subset_verum_block(X0).
er_inv_overlap_subset_verum_block(X0) :- subset_verum_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_verum_block(X0) :- object(X0),not er_inv_overlap_subset_verum_block(X0).
er_inv_shape_subset_verum_block(X0) :- subset_verum_block(X1),inv_shape(X0,X1).
-er_inv_shape_subset_verum_block(X0) :- object(X0),not er_inv_shape_subset_verum_block(X0).
er_comp_smaller_below_subset_verum_block(X0) :- subset_verum_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_verum_block(X0) :- object(X0),not er_comp_smaller_below_subset_verum_block(X0).
er_comp_smaller_left_subset_verum_block(X0) :- subset_verum_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_verum_block(X0) :- object(X0),not er_comp_smaller_left_subset_verum_block(X0).
er_comp_smaller_overlap_subset_verum_block(X0) :- subset_verum_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_verum_block(X0) :- object(X0),not er_comp_smaller_overlap_subset_verum_block(X0).
er_comp_smaller_shape_subset_verum_block(X0) :- subset_verum_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_verum_block(X0) :- object(X0),not er_comp_smaller_shape_subset_verum_block(X0).
er_comp_below_left_subset_verum_block(X0) :- subset_verum_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_verum_block(X0) :- object(X0),not er_comp_below_left_subset_verum_block(X0).
er_comp_below_overlap_subset_verum_block(X0) :- subset_verum_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_verum_block(X0) :- object(X0),not er_comp_below_overlap_subset_verum_block(X0).
er_comp_below_shape_subset_verum_block(X0) :- subset_verum_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_verum_block(X0) :- object(X0),not er_comp_below_shape_subset_verum_block(X0).
er_comp_left_overlap_subset_verum_block(X0) :- subset_verum_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_verum_block(X0) :- object(X0),not er_comp_left_overlap_subset_verum_block(X0).
er_comp_left_shape_subset_verum_block(X0) :- subset_verum_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_verum_block(X0) :- object(X0),not er_comp_left_shape_subset_verum_block(X0).
er_comp_overlap_shape_subset_verum_block(X0) :- subset_verum_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_verum_block(X0) :- object(X0),not er_comp_overlap_shape_subset_verum_block(X0).
er_smaller_subset_verum_table(X0) :- subset_verum_table(X1),smaller(X0,X1).
-er_smaller_subset_verum_table(X0) :- object(X0),not er_smaller_subset_verum_table(X0).
er_below_subset_verum_table(X0) :- subset_verum_table(X1),below(X0,X1).
-er_below_subset_verum_table(X0) :- object(X0),not er_below_subset_verum_table(X0).
er_left_subset_verum_table(X0) :- subset_verum_table(X1),left(X0,X1).
-er_left_subset_verum_table(X0) :- object(X0),not er_left_subset_verum_table(X0).
er_overlap_subset_verum_table(X0) :- subset_verum_table(X1),overlap(X0,X1).
-er_overlap_subset_verum_table(X0) :- object(X0),not er_overlap_subset_verum_table(X0).
er_shape_subset_verum_table(X0) :- subset_verum_table(X1),shape(X0,X1).
-er_shape_subset_verum_table(X0) :- object(X0),not er_shape_subset_verum_table(X0).
er_inv_smaller_subset_verum_table(X0) :- subset_verum_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_verum_table(X0) :- object(X0),not er_inv_smaller_subset_verum_table(X0).
er_inv_below_subset_verum_table(X0) :- subset_verum_table(X1),inv_below(X0,X1).
-er_inv_below_subset_verum_table(X0) :- object(X0),not er_inv_below_subset_verum_table(X0).
er_inv_left_subset_verum_table(X0) :- subset_verum_table(X1),inv_left(X0,X1).
-er_inv_left_subset_verum_table(X0) :- object(X0),not er_inv_left_subset_verum_table(X0).
er_inv_overlap_subset_verum_table(X0) :- subset_verum_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_verum_table(X0) :- object(X0),not er_inv_overlap_subset_verum_table(X0).
er_inv_shape_subset_verum_table(X0) :- subset_verum_table(X1),inv_shape(X0,X1).
-er_inv_shape_subset_verum_table(X0) :- object(X0),not er_inv_shape_subset_verum_table(X0).
er_comp_smaller_below_subset_verum_table(X0) :- subset_verum_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_verum_table(X0) :- object(X0),not er_comp_smaller_below_subset_verum_table(X0).
er_comp_smaller_left_subset_verum_table(X0) :- subset_verum_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_verum_table(X0) :- object(X0),not er_comp_smaller_left_subset_verum_table(X0).
er_comp_smaller_overlap_subset_verum_table(X0) :- subset_verum_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_verum_table(X0) :- object(X0),not er_comp_smaller_overlap_subset_verum_table(X0).
er_comp_smaller_shape_subset_verum_table(X0) :- subset_verum_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_verum_table(X0) :- object(X0),not er_comp_smaller_shape_subset_verum_table(X0).
er_comp_below_left_subset_verum_table(X0) :- subset_verum_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_verum_table(X0) :- object(X0),not er_comp_below_left_subset_verum_table(X0).
er_comp_below_overlap_subset_verum_table(X0) :- subset_verum_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_verum_table(X0) :- object(X0),not er_comp_below_overlap_subset_verum_table(X0).
er_comp_below_shape_subset_verum_table(X0) :- subset_verum_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_verum_table(X0) :- object(X0),not er_comp_below_shape_subset_verum_table(X0).
er_comp_left_overlap_subset_verum_table(X0) :- subset_verum_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_verum_table(X0) :- object(X0),not er_comp_left_overlap_subset_verum_table(X0).
er_comp_left_shape_subset_verum_table(X0) :- subset_verum_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_verum_table(X0) :- object(X0),not er_comp_left_shape_subset_verum_table(X0).
er_comp_overlap_shape_subset_verum_table(X0) :- subset_verum_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_verum_table(X0) :- object(X0),not er_comp_overlap_shape_subset_verum_table(X0).
er_smaller_subset_falsum_robot(X0) :- subset_falsum_robot(X1),smaller(X0,X1).
-er_smaller_subset_falsum_robot(X0) :- object(X0),not er_smaller_subset_falsum_robot(X0).
er_below_subset_falsum_robot(X0) :- subset_falsum_robot(X1),below(X0,X1).
-er_below_subset_falsum_robot(X0) :- object(X0),not er_below_subset_falsum_robot(X0).
er_left_subset_falsum_robot(X0) :- subset_falsum_robot(X1),left(X0,X1).
-er_left_subset_falsum_robot(X0) :- object(X0),not er_left_subset_falsum_robot(X0).
er_overlap_subset_falsum_robot(X0) :- subset_falsum_robot(X1),overlap(X0,X1).
-er_overlap_subset_falsum_robot(X0) :- object(X0),not er_overlap_subset_falsum_robot(X0).
er_shape_subset_falsum_robot(X0) :- subset_falsum_robot(X1),shape(X0,X1).
-er_shape_subset_falsum_robot(X0) :- object(X0),not er_shape_subset_falsum_robot(X0).
er_inv_smaller_subset_falsum_robot(X0) :- subset_falsum_robot(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_falsum_robot(X0) :- object(X0),not er_inv_smaller_subset_falsum_robot(X0).
er_inv_below_subset_falsum_robot(X0) :- subset_falsum_robot(X1),inv_below(X0,X1).
-er_inv_below_subset_falsum_robot(X0) :- object(X0),not er_inv_below_subset_falsum_robot(X0).
er_inv_left_subset_falsum_robot(X0) :- subset_falsum_robot(X1),inv_left(X0,X1).
-er_inv_left_subset_falsum_robot(X0) :- object(X0),not er_inv_left_subset_falsum_robot(X0).
er_inv_overlap_subset_falsum_robot(X0) :- subset_falsum_robot(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_falsum_robot(X0) :- object(X0),not er_inv_overlap_subset_falsum_robot(X0).
er_inv_shape_subset_falsum_robot(X0) :- subset_falsum_robot(X1),inv_shape(X0,X1).
-er_inv_shape_subset_falsum_robot(X0) :- object(X0),not er_inv_shape_subset_falsum_robot(X0).
er_comp_smaller_below_subset_falsum_robot(X0) :- subset_falsum_robot(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_falsum_robot(X0) :- object(X0),not er_comp_smaller_below_subset_falsum_robot(X0).
er_comp_smaller_left_subset_falsum_robot(X0) :- subset_falsum_robot(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_falsum_robot(X0) :- object(X0),not er_comp_smaller_left_subset_falsum_robot(X0).
er_comp_smaller_overlap_subset_falsum_robot(X0) :- subset_falsum_robot(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_falsum_robot(X0) :- object(X0),not er_comp_smaller_overlap_subset_falsum_robot(X0).
er_comp_smaller_shape_subset_falsum_robot(X0) :- subset_falsum_robot(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_falsum_robot(X0) :- object(X0),not er_comp_smaller_shape_subset_falsum_robot(X0).
er_comp_below_left_subset_falsum_robot(X0) :- subset_falsum_robot(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_falsum_robot(X0) :- object(X0),not er_comp_below_left_subset_falsum_robot(X0).
er_comp_below_overlap_subset_falsum_robot(X0) :- subset_falsum_robot(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_falsum_robot(X0) :- object(X0),not er_comp_below_overlap_subset_falsum_robot(X0).
er_comp_below_shape_subset_falsum_robot(X0) :- subset_falsum_robot(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_falsum_robot(X0) :- object(X0),not er_comp_below_shape_subset_falsum_robot(X0).
er_comp_left_overlap_subset_falsum_robot(X0) :- subset_falsum_robot(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_falsum_robot(X0) :- object(X0),not er_comp_left_overlap_subset_falsum_robot(X0).
er_comp_left_shape_subset_falsum_robot(X0) :- subset_falsum_robot(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_falsum_robot(X0) :- object(X0),not er_comp_left_shape_subset_falsum_robot(X0).
er_comp_overlap_shape_subset_falsum_robot(X0) :- subset_falsum_robot(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_falsum_robot(X0) :- object(X0),not er_comp_overlap_shape_subset_falsum_robot(X0).
er_smaller_subset_falsum_block(X0) :- subset_falsum_block(X1),smaller(X0,X1).
-er_smaller_subset_falsum_block(X0) :- object(X0),not er_smaller_subset_falsum_block(X0).
er_below_subset_falsum_block(X0) :- subset_falsum_block(X1),below(X0,X1).
-er_below_subset_falsum_block(X0) :- object(X0),not er_below_subset_falsum_block(X0).
er_left_subset_falsum_block(X0) :- subset_falsum_block(X1),left(X0,X1).
-er_left_subset_falsum_block(X0) :- object(X0),not er_left_subset_falsum_block(X0).
er_overlap_subset_falsum_block(X0) :- subset_falsum_block(X1),overlap(X0,X1).
-er_overlap_subset_falsum_block(X0) :- object(X0),not er_overlap_subset_falsum_block(X0).
er_shape_subset_falsum_block(X0) :- subset_falsum_block(X1),shape(X0,X1).
-er_shape_subset_falsum_block(X0) :- object(X0),not er_shape_subset_falsum_block(X0).
er_inv_smaller_subset_falsum_block(X0) :- subset_falsum_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_falsum_block(X0) :- object(X0),not er_inv_smaller_subset_falsum_block(X0).
er_inv_below_subset_falsum_block(X0) :- subset_falsum_block(X1),inv_below(X0,X1).
-er_inv_below_subset_falsum_block(X0) :- object(X0),not er_inv_below_subset_falsum_block(X0).
er_inv_left_subset_falsum_block(X0) :- subset_falsum_block(X1),inv_left(X0,X1).
-er_inv_left_subset_falsum_block(X0) :- object(X0),not er_inv_left_subset_falsum_block(X0).
er_inv_overlap_subset_falsum_block(X0) :- subset_falsum_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_falsum_block(X0) :- object(X0),not er_inv_overlap_subset_falsum_block(X0).
er_inv_shape_subset_falsum_block(X0) :- subset_falsum_block(X1),inv_shape(X0,X1).
-er_inv_shape_subset_falsum_block(X0) :- object(X0),not er_inv_shape_subset_falsum_block(X0).
er_comp_smaller_below_subset_falsum_block(X0) :- subset_falsum_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_falsum_block(X0) :- object(X0),not er_comp_smaller_below_subset_falsum_block(X0).
er_comp_smaller_left_subset_falsum_block(X0) :- subset_falsum_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_falsum_block(X0) :- object(X0),not er_comp_smaller_left_subset_falsum_block(X0).
er_comp_smaller_overlap_subset_falsum_block(X0) :- subset_falsum_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_falsum_block(X0) :- object(X0),not er_comp_smaller_overlap_subset_falsum_block(X0).
er_comp_smaller_shape_subset_falsum_block(X0) :- subset_falsum_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_falsum_block(X0) :- object(X0),not er_comp_smaller_shape_subset_falsum_block(X0).
er_comp_below_left_subset_falsum_block(X0) :- subset_falsum_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_falsum_block(X0) :- object(X0),not er_comp_below_left_subset_falsum_block(X0).
er_comp_below_overlap_subset_falsum_block(X0) :- subset_falsum_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_falsum_block(X0) :- object(X0),not er_comp_below_overlap_subset_falsum_block(X0).
er_comp_below_shape_subset_falsum_block(X0) :- subset_falsum_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_falsum_block(X0) :- object(X0),not er_comp_below_shape_subset_falsum_block(X0).
er_comp_left_overlap_subset_falsum_block(X0) :- subset_falsum_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_falsum_block(X0) :- object(X0),not er_comp_left_overlap_subset_falsum_block(X0).
er_comp_left_shape_subset_falsum_block(X0) :- subset_falsum_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_falsum_block(X0) :- object(X0),not er_comp_left_shape_subset_falsum_block(X0).
er_comp_overlap_shape_subset_falsum_block(X0) :- subset_falsum_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_falsum_block(X0) :- object(X0),not er_comp_overlap_shape_subset_falsum_block(X0).
er_smaller_subset_falsum_table(X0) :- subset_falsum_table(X1),smaller(X0,X1).
-er_smaller_subset_falsum_table(X0) :- object(X0),not er_smaller_subset_falsum_table(X0).
er_below_subset_falsum_table(X0) :- subset_falsum_table(X1),below(X0,X1).
-er_below_subset_falsum_table(X0) :- object(X0),not er_below_subset_falsum_table(X0).
er_left_subset_falsum_table(X0) :- subset_falsum_table(X1),left(X0,X1).
-er_left_subset_falsum_table(X0) :- object(X0),not er_left_subset_falsum_table(X0).
er_overlap_subset_falsum_table(X0) :- subset_falsum_table(X1),overlap(X0,X1).
-er_overlap_subset_falsum_table(X0) :- object(X0),not er_overlap_subset_falsum_table(X0).
er_shape_subset_falsum_table(X0) :- subset_falsum_table(X1),shape(X0,X1).
-er_shape_subset_falsum_table(X0) :- object(X0),not er_shape_subset_falsum_table(X0).
er_inv_smaller_subset_falsum_table(X0) :- subset_falsum_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_falsum_table(X0) :- object(X0),not er_inv_smaller_subset_falsum_table(X0).
er_inv_below_subset_falsum_table(X0) :- subset_falsum_table(X1),inv_below(X0,X1).
-er_inv_below_subset_falsum_table(X0) :- object(X0),not er_inv_below_subset_falsum_table(X0).
er_inv_left_subset_falsum_table(X0) :- subset_falsum_table(X1),inv_left(X0,X1).
-er_inv_left_subset_falsum_table(X0) :- object(X0),not er_inv_left_subset_falsum_table(X0).
er_inv_overlap_subset_falsum_table(X0) :- subset_falsum_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_falsum_table(X0) :- object(X0),not er_inv_overlap_subset_falsum_table(X0).
er_inv_shape_subset_falsum_table(X0) :- subset_falsum_table(X1),inv_shape(X0,X1).
-er_inv_shape_subset_falsum_table(X0) :- object(X0),not er_inv_shape_subset_falsum_table(X0).
er_comp_smaller_below_subset_falsum_table(X0) :- subset_falsum_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_falsum_table(X0) :- object(X0),not er_comp_smaller_below_subset_falsum_table(X0).
er_comp_smaller_left_subset_falsum_table(X0) :- subset_falsum_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_falsum_table(X0) :- object(X0),not er_comp_smaller_left_subset_falsum_table(X0).
er_comp_smaller_overlap_subset_falsum_table(X0) :- subset_falsum_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_falsum_table(X0) :- object(X0),not er_comp_smaller_overlap_subset_falsum_table(X0).
er_comp_smaller_shape_subset_falsum_table(X0) :- subset_falsum_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_falsum_table(X0) :- object(X0),not er_comp_smaller_shape_subset_falsum_table(X0).
er_comp_below_left_subset_falsum_table(X0) :- subset_falsum_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_falsum_table(X0) :- object(X0),not er_comp_below_left_subset_falsum_table(X0).
er_comp_below_overlap_subset_falsum_table(X0) :- subset_falsum_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_falsum_table(X0) :- object(X0),not er_comp_below_overlap_subset_falsum_table(X0).
er_comp_below_shape_subset_falsum_table(X0) :- subset_falsum_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_falsum_table(X0) :- object(X0),not er_comp_below_shape_subset_falsum_table(X0).
er_comp_left_overlap_subset_falsum_table(X0) :- subset_falsum_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_falsum_table(X0) :- object(X0),not er_comp_left_overlap_subset_falsum_table(X0).
er_comp_left_shape_subset_falsum_table(X0) :- subset_falsum_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_falsum_table(X0) :- object(X0),not er_comp_left_shape_subset_falsum_table(X0).
er_comp_overlap_shape_subset_falsum_table(X0) :- subset_falsum_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_falsum_table(X0) :- object(X0),not er_comp_overlap_shape_subset_falsum_table(X0).
er_smaller_subset_robot_block(X0) :- subset_robot_block(X1),smaller(X0,X1).
-er_smaller_subset_robot_block(X0) :- object(X0),not er_smaller_subset_robot_block(X0).
er_below_subset_robot_block(X0) :- subset_robot_block(X1),below(X0,X1).
-er_below_subset_robot_block(X0) :- object(X0),not er_below_subset_robot_block(X0).
er_left_subset_robot_block(X0) :- subset_robot_block(X1),left(X0,X1).
-er_left_subset_robot_block(X0) :- object(X0),not er_left_subset_robot_block(X0).
er_overlap_subset_robot_block(X0) :- subset_robot_block(X1),overlap(X0,X1).
-er_overlap_subset_robot_block(X0) :- object(X0),not er_overlap_subset_robot_block(X0).
er_shape_subset_robot_block(X0) :- subset_robot_block(X1),shape(X0,X1).
-er_shape_subset_robot_block(X0) :- object(X0),not er_shape_subset_robot_block(X0).
er_inv_smaller_subset_robot_block(X0) :- subset_robot_block(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_robot_block(X0) :- object(X0),not er_inv_smaller_subset_robot_block(X0).
er_inv_below_subset_robot_block(X0) :- subset_robot_block(X1),inv_below(X0,X1).
-er_inv_below_subset_robot_block(X0) :- object(X0),not er_inv_below_subset_robot_block(X0).
er_inv_left_subset_robot_block(X0) :- subset_robot_block(X1),inv_left(X0,X1).
-er_inv_left_subset_robot_block(X0) :- object(X0),not er_inv_left_subset_robot_block(X0).
er_inv_overlap_subset_robot_block(X0) :- subset_robot_block(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_robot_block(X0) :- object(X0),not er_inv_overlap_subset_robot_block(X0).
er_inv_shape_subset_robot_block(X0) :- subset_robot_block(X1),inv_shape(X0,X1).
-er_inv_shape_subset_robot_block(X0) :- object(X0),not er_inv_shape_subset_robot_block(X0).
er_comp_smaller_below_subset_robot_block(X0) :- subset_robot_block(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_robot_block(X0) :- object(X0),not er_comp_smaller_below_subset_robot_block(X0).
er_comp_smaller_left_subset_robot_block(X0) :- subset_robot_block(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_robot_block(X0) :- object(X0),not er_comp_smaller_left_subset_robot_block(X0).
er_comp_smaller_overlap_subset_robot_block(X0) :- subset_robot_block(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_robot_block(X0) :- object(X0),not er_comp_smaller_overlap_subset_robot_block(X0).
er_comp_smaller_shape_subset_robot_block(X0) :- subset_robot_block(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_robot_block(X0) :- object(X0),not er_comp_smaller_shape_subset_robot_block(X0).
er_comp_below_left_subset_robot_block(X0) :- subset_robot_block(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_robot_block(X0) :- object(X0),not er_comp_below_left_subset_robot_block(X0).
er_comp_below_overlap_subset_robot_block(X0) :- subset_robot_block(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_robot_block(X0) :- object(X0),not er_comp_below_overlap_subset_robot_block(X0).
er_comp_below_shape_subset_robot_block(X0) :- subset_robot_block(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_robot_block(X0) :- object(X0),not er_comp_below_shape_subset_robot_block(X0).
er_comp_left_overlap_subset_robot_block(X0) :- subset_robot_block(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_robot_block(X0) :- object(X0),not er_comp_left_overlap_subset_robot_block(X0).
er_comp_left_shape_subset_robot_block(X0) :- subset_robot_block(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_robot_block(X0) :- object(X0),not er_comp_left_shape_subset_robot_block(X0).
er_comp_overlap_shape_subset_robot_block(X0) :- subset_robot_block(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_robot_block(X0) :- object(X0),not er_comp_overlap_shape_subset_robot_block(X0).
er_smaller_subset_robot_table(X0) :- subset_robot_table(X1),smaller(X0,X1).
-er_smaller_subset_robot_table(X0) :- object(X0),not er_smaller_subset_robot_table(X0).
er_below_subset_robot_table(X0) :- subset_robot_table(X1),below(X0,X1).
-er_below_subset_robot_table(X0) :- object(X0),not er_below_subset_robot_table(X0).
er_left_subset_robot_table(X0) :- subset_robot_table(X1),left(X0,X1).
-er_left_subset_robot_table(X0) :- object(X0),not er_left_subset_robot_table(X0).
er_overlap_subset_robot_table(X0) :- subset_robot_table(X1),overlap(X0,X1).
-er_overlap_subset_robot_table(X0) :- object(X0),not er_overlap_subset_robot_table(X0).
er_shape_subset_robot_table(X0) :- subset_robot_table(X1),shape(X0,X1).
-er_shape_subset_robot_table(X0) :- object(X0),not er_shape_subset_robot_table(X0).
er_inv_smaller_subset_robot_table(X0) :- subset_robot_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_robot_table(X0) :- object(X0),not er_inv_smaller_subset_robot_table(X0).
er_inv_below_subset_robot_table(X0) :- subset_robot_table(X1),inv_below(X0,X1).
-er_inv_below_subset_robot_table(X0) :- object(X0),not er_inv_below_subset_robot_table(X0).
er_inv_left_subset_robot_table(X0) :- subset_robot_table(X1),inv_left(X0,X1).
-er_inv_left_subset_robot_table(X0) :- object(X0),not er_inv_left_subset_robot_table(X0).
er_inv_overlap_subset_robot_table(X0) :- subset_robot_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_robot_table(X0) :- object(X0),not er_inv_overlap_subset_robot_table(X0).
er_inv_shape_subset_robot_table(X0) :- subset_robot_table(X1),inv_shape(X0,X1).
-er_inv_shape_subset_robot_table(X0) :- object(X0),not er_inv_shape_subset_robot_table(X0).
er_comp_smaller_below_subset_robot_table(X0) :- subset_robot_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_robot_table(X0) :- object(X0),not er_comp_smaller_below_subset_robot_table(X0).
er_comp_smaller_left_subset_robot_table(X0) :- subset_robot_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_robot_table(X0) :- object(X0),not er_comp_smaller_left_subset_robot_table(X0).
er_comp_smaller_overlap_subset_robot_table(X0) :- subset_robot_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_robot_table(X0) :- object(X0),not er_comp_smaller_overlap_subset_robot_table(X0).
er_comp_smaller_shape_subset_robot_table(X0) :- subset_robot_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_robot_table(X0) :- object(X0),not er_comp_smaller_shape_subset_robot_table(X0).
er_comp_below_left_subset_robot_table(X0) :- subset_robot_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_robot_table(X0) :- object(X0),not er_comp_below_left_subset_robot_table(X0).
er_comp_below_overlap_subset_robot_table(X0) :- subset_robot_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_robot_table(X0) :- object(X0),not er_comp_below_overlap_subset_robot_table(X0).
er_comp_below_shape_subset_robot_table(X0) :- subset_robot_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_robot_table(X0) :- object(X0),not er_comp_below_shape_subset_robot_table(X0).
er_comp_left_overlap_subset_robot_table(X0) :- subset_robot_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_robot_table(X0) :- object(X0),not er_comp_left_overlap_subset_robot_table(X0).
er_comp_left_shape_subset_robot_table(X0) :- subset_robot_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_robot_table(X0) :- object(X0),not er_comp_left_shape_subset_robot_table(X0).
er_comp_overlap_shape_subset_robot_table(X0) :- subset_robot_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_robot_table(X0) :- object(X0),not er_comp_overlap_shape_subset_robot_table(X0).
er_smaller_subset_block_table(X0) :- subset_block_table(X1),smaller(X0,X1).
-er_smaller_subset_block_table(X0) :- object(X0),not er_smaller_subset_block_table(X0).
er_below_subset_block_table(X0) :- subset_block_table(X1),below(X0,X1).
-er_below_subset_block_table(X0) :- object(X0),not er_below_subset_block_table(X0).
er_left_subset_block_table(X0) :- subset_block_table(X1),left(X0,X1).
-er_left_subset_block_table(X0) :- object(X0),not er_left_subset_block_table(X0).
er_overlap_subset_block_table(X0) :- subset_block_table(X1),overlap(X0,X1).
-er_overlap_subset_block_table(X0) :- object(X0),not er_overlap_subset_block_table(X0).
er_shape_subset_block_table(X0) :- subset_block_table(X1),shape(X0,X1).
-er_shape_subset_block_table(X0) :- object(X0),not er_shape_subset_block_table(X0).
er_inv_smaller_subset_block_table(X0) :- subset_block_table(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_block_table(X0) :- object(X0),not er_inv_smaller_subset_block_table(X0).
er_inv_below_subset_block_table(X0) :- subset_block_table(X1),inv_below(X0,X1).
-er_inv_below_subset_block_table(X0) :- object(X0),not er_inv_below_subset_block_table(X0).
er_inv_left_subset_block_table(X0) :- subset_block_table(X1),inv_left(X0,X1).
-er_inv_left_subset_block_table(X0) :- object(X0),not er_inv_left_subset_block_table(X0).
er_inv_overlap_subset_block_table(X0) :- subset_block_table(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_block_table(X0) :- object(X0),not er_inv_overlap_subset_block_table(X0).
er_inv_shape_subset_block_table(X0) :- subset_block_table(X1),inv_shape(X0,X1).
-er_inv_shape_subset_block_table(X0) :- object(X0),not er_inv_shape_subset_block_table(X0).
er_comp_smaller_below_subset_block_table(X0) :- subset_block_table(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_block_table(X0) :- object(X0),not er_comp_smaller_below_subset_block_table(X0).
er_comp_smaller_left_subset_block_table(X0) :- subset_block_table(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_block_table(X0) :- object(X0),not er_comp_smaller_left_subset_block_table(X0).
er_comp_smaller_overlap_subset_block_table(X0) :- subset_block_table(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_block_table(X0) :- object(X0),not er_comp_smaller_overlap_subset_block_table(X0).
er_comp_smaller_shape_subset_block_table(X0) :- subset_block_table(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_block_table(X0) :- object(X0),not er_comp_smaller_shape_subset_block_table(X0).
er_comp_below_left_subset_block_table(X0) :- subset_block_table(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_block_table(X0) :- object(X0),not er_comp_below_left_subset_block_table(X0).
er_comp_below_overlap_subset_block_table(X0) :- subset_block_table(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_block_table(X0) :- object(X0),not er_comp_below_overlap_subset_block_table(X0).
er_comp_below_shape_subset_block_table(X0) :- subset_block_table(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_block_table(X0) :- object(X0),not er_comp_below_shape_subset_block_table(X0).
er_comp_left_overlap_subset_block_table(X0) :- subset_block_table(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_block_table(X0) :- object(X0),not er_comp_left_overlap_subset_block_table(X0).
er_comp_left_shape_subset_block_table(X0) :- subset_block_table(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_block_table(X0) :- object(X0),not er_comp_left_shape_subset_block_table(X0).
er_comp_overlap_shape_subset_block_table(X0) :- subset_block_table(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_block_table(X0) :- object(X0),not er_comp_overlap_shape_subset_block_table(X0).
inter_verum_er_smaller_verum(X0) :- verum(X0),er_smaller_verum(X0).
-inter_verum_er_smaller_verum(X0) :- object(X0),not inter_verum_er_smaller_verum(X0).
inter_verum_er_below_verum(X0) :- verum(X0),er_below_verum(X0).
-inter_verum_er_below_verum(X0) :- object(X0),not inter_verum_er_below_verum(X0).
inter_verum_er_left_verum(X0) :- verum(X0),er_left_verum(X0).
-inter_verum_er_left_verum(X0) :- object(X0),not inter_verum_er_left_verum(X0).
inter_verum_er_overlap_verum(X0) :- verum(X0),er_overlap_verum(X0).
-inter_verum_er_overlap_verum(X0) :- object(X0),not inter_verum_er_overlap_verum(X0).
inter_verum_er_shape_verum(X0) :- verum(X0),er_shape_verum(X0).
-inter_verum_er_shape_verum(X0) :- object(X0),not inter_verum_er_shape_verum(X0).
inter_verum_er_smaller_falsum(X0) :- verum(X0),er_smaller_falsum(X0).
-inter_verum_er_smaller_falsum(X0) :- object(X0),not inter_verum_er_smaller_falsum(X0).
inter_verum_er_below_falsum(X0) :- verum(X0),er_below_falsum(X0).
-inter_verum_er_below_falsum(X0) :- object(X0),not inter_verum_er_below_falsum(X0).
inter_verum_er_left_falsum(X0) :- verum(X0),er_left_falsum(X0).
-inter_verum_er_left_falsum(X0) :- object(X0),not inter_verum_er_left_falsum(X0).
inter_verum_er_overlap_falsum(X0) :- verum(X0),er_overlap_falsum(X0).
-inter_verum_er_overlap_falsum(X0) :- object(X0),not inter_verum_er_overlap_falsum(X0).
inter_verum_er_shape_falsum(X0) :- verum(X0),er_shape_falsum(X0).
-inter_verum_er_shape_falsum(X0) :- object(X0),not inter_verum_er_shape_falsum(X0).
inter_verum_er_smaller_robot(X0) :- verum(X0),er_smaller_robot(X0).
-inter_verum_er_smaller_robot(X0) :- object(X0),not inter_verum_er_smaller_robot(X0).
inter_verum_er_below_robot(X0) :- verum(X0),er_below_robot(X0).
-inter_verum_er_below_robot(X0) :- object(X0),not inter_verum_er_below_robot(X0).
inter_verum_er_left_robot(X0) :- verum(X0),er_left_robot(X0).
-inter_verum_er_left_robot(X0) :- object(X0),not inter_verum_er_left_robot(X0).
inter_verum_er_overlap_robot(X0) :- verum(X0),er_overlap_robot(X0).
-inter_verum_er_overlap_robot(X0) :- object(X0),not inter_verum_er_overlap_robot(X0).
inter_verum_er_shape_robot(X0) :- verum(X0),er_shape_robot(X0).
-inter_verum_er_shape_robot(X0) :- object(X0),not inter_verum_er_shape_robot(X0).
inter_verum_er_smaller_block(X0) :- verum(X0),er_smaller_block(X0).
-inter_verum_er_smaller_block(X0) :- object(X0),not inter_verum_er_smaller_block(X0).
inter_verum_er_below_block(X0) :- verum(X0),er_below_block(X0).
-inter_verum_er_below_block(X0) :- object(X0),not inter_verum_er_below_block(X0).
inter_verum_er_left_block(X0) :- verum(X0),er_left_block(X0).
-inter_verum_er_left_block(X0) :- object(X0),not inter_verum_er_left_block(X0).
inter_verum_er_overlap_block(X0) :- verum(X0),er_overlap_block(X0).
-inter_verum_er_overlap_block(X0) :- object(X0),not inter_verum_er_overlap_block(X0).
inter_verum_er_shape_block(X0) :- verum(X0),er_shape_block(X0).
-inter_verum_er_shape_block(X0) :- object(X0),not inter_verum_er_shape_block(X0).
inter_verum_er_smaller_table(X0) :- verum(X0),er_smaller_table(X0).
-inter_verum_er_smaller_table(X0) :- object(X0),not inter_verum_er_smaller_table(X0).
inter_verum_er_below_table(X0) :- verum(X0),er_below_table(X0).
-inter_verum_er_below_table(X0) :- object(X0),not inter_verum_er_below_table(X0).
inter_verum_er_left_table(X0) :- verum(X0),er_left_table(X0).
-inter_verum_er_left_table(X0) :- object(X0),not inter_verum_er_left_table(X0).
inter_verum_er_overlap_table(X0) :- verum(X0),er_overlap_table(X0).
-inter_verum_er_overlap_table(X0) :- object(X0),not inter_verum_er_overlap_table(X0).
inter_verum_er_shape_table(X0) :- verum(X0),er_shape_table(X0).
-inter_verum_er_shape_table(X0) :- object(X0),not inter_verum_er_shape_table(X0).
inter_verum_inter_verum_falsum(X0) :- verum(X0),inter_verum_falsum(X0).
-inter_verum_inter_verum_falsum(X0) :- object(X0),not inter_verum_inter_verum_falsum(X0).
inter_verum_inter_verum_robot(X0) :- verum(X0),inter_verum_robot(X0).
-inter_verum_inter_verum_robot(X0) :- object(X0),not inter_verum_inter_verum_robot(X0).
inter_verum_inter_verum_block(X0) :- verum(X0),inter_verum_block(X0).
-inter_verum_inter_verum_block(X0) :- object(X0),not inter_verum_inter_verum_block(X0).
inter_verum_inter_verum_table(X0) :- verum(X0),inter_verum_table(X0).
-inter_verum_inter_verum_table(X0) :- object(X0),not inter_verum_inter_verum_table(X0).
inter_verum_inter_falsum_robot(X0) :- verum(X0),inter_falsum_robot(X0).
-inter_verum_inter_falsum_robot(X0) :- object(X0),not inter_verum_inter_falsum_robot(X0).
inter_verum_inter_falsum_block(X0) :- verum(X0),inter_falsum_block(X0).
-inter_verum_inter_falsum_block(X0) :- object(X0),not inter_verum_inter_falsum_block(X0).
inter_verum_inter_falsum_table(X0) :- verum(X0),inter_falsum_table(X0).
-inter_verum_inter_falsum_table(X0) :- object(X0),not inter_verum_inter_falsum_table(X0).
inter_verum_inter_robot_block(X0) :- verum(X0),inter_robot_block(X0).
-inter_verum_inter_robot_block(X0) :- object(X0),not inter_verum_inter_robot_block(X0).
inter_verum_inter_robot_table(X0) :- verum(X0),inter_robot_table(X0).
-inter_verum_inter_robot_table(X0) :- object(X0),not inter_verum_inter_robot_table(X0).
inter_verum_inter_block_table(X0) :- verum(X0),inter_block_table(X0).
-inter_verum_inter_block_table(X0) :- object(X0),not inter_verum_inter_block_table(X0).
inter_verum_subset_verum_falsum(X0) :- verum(X0),subset_verum_falsum(null).
-inter_verum_subset_verum_falsum(X0) :- object(X0),not inter_verum_subset_verum_falsum(X0).
inter_verum_subset_verum_robot(X0) :- verum(X0),subset_verum_robot(null).
-inter_verum_subset_verum_robot(X0) :- object(X0),not inter_verum_subset_verum_robot(X0).
inter_verum_subset_verum_block(X0) :- verum(X0),subset_verum_block(null).
-inter_verum_subset_verum_block(X0) :- object(X0),not inter_verum_subset_verum_block(X0).
inter_verum_subset_verum_table(X0) :- verum(X0),subset_verum_table(null).
-inter_verum_subset_verum_table(X0) :- object(X0),not inter_verum_subset_verum_table(X0).
inter_verum_subset_falsum_robot(X0) :- verum(X0),subset_falsum_robot(null).
-inter_verum_subset_falsum_robot(X0) :- object(X0),not inter_verum_subset_falsum_robot(X0).
inter_verum_subset_falsum_block(X0) :- verum(X0),subset_falsum_block(null).
-inter_verum_subset_falsum_block(X0) :- object(X0),not inter_verum_subset_falsum_block(X0).
inter_verum_subset_falsum_table(X0) :- verum(X0),subset_falsum_table(null).
-inter_verum_subset_falsum_table(X0) :- object(X0),not inter_verum_subset_falsum_table(X0).
inter_verum_subset_robot_block(X0) :- verum(X0),subset_robot_block(null).
-inter_verum_subset_robot_block(X0) :- object(X0),not inter_verum_subset_robot_block(X0).
inter_verum_subset_robot_table(X0) :- verum(X0),subset_robot_table(null).
-inter_verum_subset_robot_table(X0) :- object(X0),not inter_verum_subset_robot_table(X0).
inter_verum_subset_block_table(X0) :- verum(X0),subset_block_table(null).
-inter_verum_subset_block_table(X0) :- object(X0),not inter_verum_subset_block_table(X0).
inter_falsum_er_smaller_verum(X0) :- falsum(X0),er_smaller_verum(X0).
-inter_falsum_er_smaller_verum(X0) :- object(X0),not inter_falsum_er_smaller_verum(X0).
inter_falsum_er_below_verum(X0) :- falsum(X0),er_below_verum(X0).
-inter_falsum_er_below_verum(X0) :- object(X0),not inter_falsum_er_below_verum(X0).
inter_falsum_er_left_verum(X0) :- falsum(X0),er_left_verum(X0).
-inter_falsum_er_left_verum(X0) :- object(X0),not inter_falsum_er_left_verum(X0).
inter_falsum_er_overlap_verum(X0) :- falsum(X0),er_overlap_verum(X0).
-inter_falsum_er_overlap_verum(X0) :- object(X0),not inter_falsum_er_overlap_verum(X0).
inter_falsum_er_shape_verum(X0) :- falsum(X0),er_shape_verum(X0).
-inter_falsum_er_shape_verum(X0) :- object(X0),not inter_falsum_er_shape_verum(X0).
inter_falsum_er_smaller_falsum(X0) :- falsum(X0),er_smaller_falsum(X0).
-inter_falsum_er_smaller_falsum(X0) :- object(X0),not inter_falsum_er_smaller_falsum(X0).
inter_falsum_er_below_falsum(X0) :- falsum(X0),er_below_falsum(X0).
-inter_falsum_er_below_falsum(X0) :- object(X0),not inter_falsum_er_below_falsum(X0).
inter_falsum_er_left_falsum(X0) :- falsum(X0),er_left_falsum(X0).
-inter_falsum_er_left_falsum(X0) :- object(X0),not inter_falsum_er_left_falsum(X0).
inter_falsum_er_overlap_falsum(X0) :- falsum(X0),er_overlap_falsum(X0).
-inter_falsum_er_overlap_falsum(X0) :- object(X0),not inter_falsum_er_overlap_falsum(X0).
inter_falsum_er_shape_falsum(X0) :- falsum(X0),er_shape_falsum(X0).
-inter_falsum_er_shape_falsum(X0) :- object(X0),not inter_falsum_er_shape_falsum(X0).
inter_falsum_er_smaller_robot(X0) :- falsum(X0),er_smaller_robot(X0).
-inter_falsum_er_smaller_robot(X0) :- object(X0),not inter_falsum_er_smaller_robot(X0).
inter_falsum_er_below_robot(X0) :- falsum(X0),er_below_robot(X0).
-inter_falsum_er_below_robot(X0) :- object(X0),not inter_falsum_er_below_robot(X0).
inter_falsum_er_left_robot(X0) :- falsum(X0),er_left_robot(X0).
-inter_falsum_er_left_robot(X0) :- object(X0),not inter_falsum_er_left_robot(X0).
inter_falsum_er_overlap_robot(X0) :- falsum(X0),er_overlap_robot(X0).
-inter_falsum_er_overlap_robot(X0) :- object(X0),not inter_falsum_er_overlap_robot(X0).
inter_falsum_er_shape_robot(X0) :- falsum(X0),er_shape_robot(X0).
-inter_falsum_er_shape_robot(X0) :- object(X0),not inter_falsum_er_shape_robot(X0).
inter_falsum_er_smaller_block(X0) :- falsum(X0),er_smaller_block(X0).
-inter_falsum_er_smaller_block(X0) :- object(X0),not inter_falsum_er_smaller_block(X0).
inter_falsum_er_below_block(X0) :- falsum(X0),er_below_block(X0).
-inter_falsum_er_below_block(X0) :- object(X0),not inter_falsum_er_below_block(X0).
inter_falsum_er_left_block(X0) :- falsum(X0),er_left_block(X0).
-inter_falsum_er_left_block(X0) :- object(X0),not inter_falsum_er_left_block(X0).
inter_falsum_er_overlap_block(X0) :- falsum(X0),er_overlap_block(X0).
-inter_falsum_er_overlap_block(X0) :- object(X0),not inter_falsum_er_overlap_block(X0).
inter_falsum_er_shape_block(X0) :- falsum(X0),er_shape_block(X0).
-inter_falsum_er_shape_block(X0) :- object(X0),not inter_falsum_er_shape_block(X0).
inter_falsum_er_smaller_table(X0) :- falsum(X0),er_smaller_table(X0).
-inter_falsum_er_smaller_table(X0) :- object(X0),not inter_falsum_er_smaller_table(X0).
inter_falsum_er_below_table(X0) :- falsum(X0),er_below_table(X0).
-inter_falsum_er_below_table(X0) :- object(X0),not inter_falsum_er_below_table(X0).
inter_falsum_er_left_table(X0) :- falsum(X0),er_left_table(X0).
-inter_falsum_er_left_table(X0) :- object(X0),not inter_falsum_er_left_table(X0).
inter_falsum_er_overlap_table(X0) :- falsum(X0),er_overlap_table(X0).
-inter_falsum_er_overlap_table(X0) :- object(X0),not inter_falsum_er_overlap_table(X0).
inter_falsum_er_shape_table(X0) :- falsum(X0),er_shape_table(X0).
-inter_falsum_er_shape_table(X0) :- object(X0),not inter_falsum_er_shape_table(X0).
inter_falsum_inter_verum_falsum(X0) :- falsum(X0),inter_verum_falsum(X0).
-inter_falsum_inter_verum_falsum(X0) :- object(X0),not inter_falsum_inter_verum_falsum(X0).
inter_falsum_inter_verum_robot(X0) :- falsum(X0),inter_verum_robot(X0).
-inter_falsum_inter_verum_robot(X0) :- object(X0),not inter_falsum_inter_verum_robot(X0).
inter_falsum_inter_verum_block(X0) :- falsum(X0),inter_verum_block(X0).
-inter_falsum_inter_verum_block(X0) :- object(X0),not inter_falsum_inter_verum_block(X0).
inter_falsum_inter_verum_table(X0) :- falsum(X0),inter_verum_table(X0).
-inter_falsum_inter_verum_table(X0) :- object(X0),not inter_falsum_inter_verum_table(X0).
inter_falsum_inter_falsum_robot(X0) :- falsum(X0),inter_falsum_robot(X0).
-inter_falsum_inter_falsum_robot(X0) :- object(X0),not inter_falsum_inter_falsum_robot(X0).
inter_falsum_inter_falsum_block(X0) :- falsum(X0),inter_falsum_block(X0).
-inter_falsum_inter_falsum_block(X0) :- object(X0),not inter_falsum_inter_falsum_block(X0).
inter_falsum_inter_falsum_table(X0) :- falsum(X0),inter_falsum_table(X0).
-inter_falsum_inter_falsum_table(X0) :- object(X0),not inter_falsum_inter_falsum_table(X0).
inter_falsum_inter_robot_block(X0) :- falsum(X0),inter_robot_block(X0).
-inter_falsum_inter_robot_block(X0) :- object(X0),not inter_falsum_inter_robot_block(X0).
inter_falsum_inter_robot_table(X0) :- falsum(X0),inter_robot_table(X0).
-inter_falsum_inter_robot_table(X0) :- object(X0),not inter_falsum_inter_robot_table(X0).
inter_falsum_inter_block_table(X0) :- falsum(X0),inter_block_table(X0).
-inter_falsum_inter_block_table(X0) :- object(X0),not inter_falsum_inter_block_table(X0).
inter_falsum_subset_verum_falsum(X0) :- falsum(X0),subset_verum_falsum(null).
-inter_falsum_subset_verum_falsum(X0) :- object(X0),not inter_falsum_subset_verum_falsum(X0).
inter_falsum_subset_verum_robot(X0) :- falsum(X0),subset_verum_robot(null).
-inter_falsum_subset_verum_robot(X0) :- object(X0),not inter_falsum_subset_verum_robot(X0).
inter_falsum_subset_verum_block(X0) :- falsum(X0),subset_verum_block(null).
-inter_falsum_subset_verum_block(X0) :- object(X0),not inter_falsum_subset_verum_block(X0).
inter_falsum_subset_verum_table(X0) :- falsum(X0),subset_verum_table(null).
-inter_falsum_subset_verum_table(X0) :- object(X0),not inter_falsum_subset_verum_table(X0).
inter_falsum_subset_falsum_robot(X0) :- falsum(X0),subset_falsum_robot(null).
-inter_falsum_subset_falsum_robot(X0) :- object(X0),not inter_falsum_subset_falsum_robot(X0).
inter_falsum_subset_falsum_block(X0) :- falsum(X0),subset_falsum_block(null).
-inter_falsum_subset_falsum_block(X0) :- object(X0),not inter_falsum_subset_falsum_block(X0).
inter_falsum_subset_falsum_table(X0) :- falsum(X0),subset_falsum_table(null).
-inter_falsum_subset_falsum_table(X0) :- object(X0),not inter_falsum_subset_falsum_table(X0).
inter_falsum_subset_robot_block(X0) :- falsum(X0),subset_robot_block(null).
-inter_falsum_subset_robot_block(X0) :- object(X0),not inter_falsum_subset_robot_block(X0).
inter_falsum_subset_robot_table(X0) :- falsum(X0),subset_robot_table(null).
-inter_falsum_subset_robot_table(X0) :- object(X0),not inter_falsum_subset_robot_table(X0).
inter_falsum_subset_block_table(X0) :- falsum(X0),subset_block_table(null).
-inter_falsum_subset_block_table(X0) :- object(X0),not inter_falsum_subset_block_table(X0).
inter_robot_er_smaller_verum(X0) :- robot(X0),er_smaller_verum(X0).
-inter_robot_er_smaller_verum(X0) :- object(X0),not inter_robot_er_smaller_verum(X0).
inter_robot_er_below_verum(X0) :- robot(X0),er_below_verum(X0).
-inter_robot_er_below_verum(X0) :- object(X0),not inter_robot_er_below_verum(X0).
inter_robot_er_left_verum(X0) :- robot(X0),er_left_verum(X0).
-inter_robot_er_left_verum(X0) :- object(X0),not inter_robot_er_left_verum(X0).
inter_robot_er_overlap_verum(X0) :- robot(X0),er_overlap_verum(X0).
-inter_robot_er_overlap_verum(X0) :- object(X0),not inter_robot_er_overlap_verum(X0).
inter_robot_er_shape_verum(X0) :- robot(X0),er_shape_verum(X0).
-inter_robot_er_shape_verum(X0) :- object(X0),not inter_robot_er_shape_verum(X0).
inter_robot_er_smaller_falsum(X0) :- robot(X0),er_smaller_falsum(X0).
-inter_robot_er_smaller_falsum(X0) :- object(X0),not inter_robot_er_smaller_falsum(X0).
inter_robot_er_below_falsum(X0) :- robot(X0),er_below_falsum(X0).
-inter_robot_er_below_falsum(X0) :- object(X0),not inter_robot_er_below_falsum(X0).
inter_robot_er_left_falsum(X0) :- robot(X0),er_left_falsum(X0).
-inter_robot_er_left_falsum(X0) :- object(X0),not inter_robot_er_left_falsum(X0).
inter_robot_er_overlap_falsum(X0) :- robot(X0),er_overlap_falsum(X0).
-inter_robot_er_overlap_falsum(X0) :- object(X0),not inter_robot_er_overlap_falsum(X0).
inter_robot_er_shape_falsum(X0) :- robot(X0),er_shape_falsum(X0).
-inter_robot_er_shape_falsum(X0) :- object(X0),not inter_robot_er_shape_falsum(X0).
inter_robot_er_smaller_robot(X0) :- robot(X0),er_smaller_robot(X0).
-inter_robot_er_smaller_robot(X0) :- object(X0),not inter_robot_er_smaller_robot(X0).
inter_robot_er_below_robot(X0) :- robot(X0),er_below_robot(X0).
-inter_robot_er_below_robot(X0) :- object(X0),not inter_robot_er_below_robot(X0).
inter_robot_er_left_robot(X0) :- robot(X0),er_left_robot(X0).
-inter_robot_er_left_robot(X0) :- object(X0),not inter_robot_er_left_robot(X0).
inter_robot_er_overlap_robot(X0) :- robot(X0),er_overlap_robot(X0).
-inter_robot_er_overlap_robot(X0) :- object(X0),not inter_robot_er_overlap_robot(X0).
inter_robot_er_shape_robot(X0) :- robot(X0),er_shape_robot(X0).
-inter_robot_er_shape_robot(X0) :- object(X0),not inter_robot_er_shape_robot(X0).
inter_robot_er_smaller_block(X0) :- robot(X0),er_smaller_block(X0).
-inter_robot_er_smaller_block(X0) :- object(X0),not inter_robot_er_smaller_block(X0).
inter_robot_er_below_block(X0) :- robot(X0),er_below_block(X0).
-inter_robot_er_below_block(X0) :- object(X0),not inter_robot_er_below_block(X0).
inter_robot_er_left_block(X0) :- robot(X0),er_left_block(X0).
-inter_robot_er_left_block(X0) :- object(X0),not inter_robot_er_left_block(X0).
inter_robot_er_overlap_block(X0) :- robot(X0),er_overlap_block(X0).
-inter_robot_er_overlap_block(X0) :- object(X0),not inter_robot_er_overlap_block(X0).
inter_robot_er_shape_block(X0) :- robot(X0),er_shape_block(X0).
-inter_robot_er_shape_block(X0) :- object(X0),not inter_robot_er_shape_block(X0).
inter_robot_er_smaller_table(X0) :- robot(X0),er_smaller_table(X0).
-inter_robot_er_smaller_table(X0) :- object(X0),not inter_robot_er_smaller_table(X0).
inter_robot_er_below_table(X0) :- robot(X0),er_below_table(X0).
-inter_robot_er_below_table(X0) :- object(X0),not inter_robot_er_below_table(X0).
inter_robot_er_left_table(X0) :- robot(X0),er_left_table(X0).
-inter_robot_er_left_table(X0) :- object(X0),not inter_robot_er_left_table(X0).
inter_robot_er_overlap_table(X0) :- robot(X0),er_overlap_table(X0).
-inter_robot_er_overlap_table(X0) :- object(X0),not inter_robot_er_overlap_table(X0).
inter_robot_er_shape_table(X0) :- robot(X0),er_shape_table(X0).
-inter_robot_er_shape_table(X0) :- object(X0),not inter_robot_er_shape_table(X0).
inter_robot_inter_verum_falsum(X0) :- robot(X0),inter_verum_falsum(X0).
-inter_robot_inter_verum_falsum(X0) :- object(X0),not inter_robot_inter_verum_falsum(X0).
inter_robot_inter_verum_robot(X0) :- robot(X0),inter_verum_robot(X0).
-inter_robot_inter_verum_robot(X0) :- object(X0),not inter_robot_inter_verum_robot(X0).
inter_robot_inter_verum_block(X0) :- robot(X0),inter_verum_block(X0).
-inter_robot_inter_verum_block(X0) :- object(X0),not inter_robot_inter_verum_block(X0).
inter_robot_inter_verum_table(X0) :- robot(X0),inter_verum_table(X0).
-inter_robot_inter_verum_table(X0) :- object(X0),not inter_robot_inter_verum_table(X0).
inter_robot_inter_falsum_robot(X0) :- robot(X0),inter_falsum_robot(X0).
-inter_robot_inter_falsum_robot(X0) :- object(X0),not inter_robot_inter_falsum_robot(X0).
inter_robot_inter_falsum_block(X0) :- robot(X0),inter_falsum_block(X0).
-inter_robot_inter_falsum_block(X0) :- object(X0),not inter_robot_inter_falsum_block(X0).
inter_robot_inter_falsum_table(X0) :- robot(X0),inter_falsum_table(X0).
-inter_robot_inter_falsum_table(X0) :- object(X0),not inter_robot_inter_falsum_table(X0).
inter_robot_inter_robot_block(X0) :- robot(X0),inter_robot_block(X0).
-inter_robot_inter_robot_block(X0) :- object(X0),not inter_robot_inter_robot_block(X0).
inter_robot_inter_robot_table(X0) :- robot(X0),inter_robot_table(X0).
-inter_robot_inter_robot_table(X0) :- object(X0),not inter_robot_inter_robot_table(X0).
inter_robot_inter_block_table(X0) :- robot(X0),inter_block_table(X0).
-inter_robot_inter_block_table(X0) :- object(X0),not inter_robot_inter_block_table(X0).
inter_robot_subset_verum_falsum(X0) :- robot(X0),subset_verum_falsum(null).
-inter_robot_subset_verum_falsum(X0) :- object(X0),not inter_robot_subset_verum_falsum(X0).
inter_robot_subset_verum_robot(X0) :- robot(X0),subset_verum_robot(null).
-inter_robot_subset_verum_robot(X0) :- object(X0),not inter_robot_subset_verum_robot(X0).
inter_robot_subset_verum_block(X0) :- robot(X0),subset_verum_block(null).
-inter_robot_subset_verum_block(X0) :- object(X0),not inter_robot_subset_verum_block(X0).
inter_robot_subset_verum_table(X0) :- robot(X0),subset_verum_table(null).
-inter_robot_subset_verum_table(X0) :- object(X0),not inter_robot_subset_verum_table(X0).
inter_robot_subset_falsum_robot(X0) :- robot(X0),subset_falsum_robot(null).
-inter_robot_subset_falsum_robot(X0) :- object(X0),not inter_robot_subset_falsum_robot(X0).
inter_robot_subset_falsum_block(X0) :- robot(X0),subset_falsum_block(null).
-inter_robot_subset_falsum_block(X0) :- object(X0),not inter_robot_subset_falsum_block(X0).
inter_robot_subset_falsum_table(X0) :- robot(X0),subset_falsum_table(null).
-inter_robot_subset_falsum_table(X0) :- object(X0),not inter_robot_subset_falsum_table(X0).
inter_robot_subset_robot_block(X0) :- robot(X0),subset_robot_block(null).
-inter_robot_subset_robot_block(X0) :- object(X0),not inter_robot_subset_robot_block(X0).
inter_robot_subset_robot_table(X0) :- robot(X0),subset_robot_table(null).
-inter_robot_subset_robot_table(X0) :- object(X0),not inter_robot_subset_robot_table(X0).
inter_robot_subset_block_table(X0) :- robot(X0),subset_block_table(null).
-inter_robot_subset_block_table(X0) :- object(X0),not inter_robot_subset_block_table(X0).
inter_block_er_smaller_verum(X0) :- block(X0),er_smaller_verum(X0).
-inter_block_er_smaller_verum(X0) :- object(X0),not inter_block_er_smaller_verum(X0).
inter_block_er_below_verum(X0) :- block(X0),er_below_verum(X0).
-inter_block_er_below_verum(X0) :- object(X0),not inter_block_er_below_verum(X0).
inter_block_er_left_verum(X0) :- block(X0),er_left_verum(X0).
-inter_block_er_left_verum(X0) :- object(X0),not inter_block_er_left_verum(X0).
inter_block_er_overlap_verum(X0) :- block(X0),er_overlap_verum(X0).
-inter_block_er_overlap_verum(X0) :- object(X0),not inter_block_er_overlap_verum(X0).
inter_block_er_shape_verum(X0) :- block(X0),er_shape_verum(X0).
-inter_block_er_shape_verum(X0) :- object(X0),not inter_block_er_shape_verum(X0).
inter_block_er_smaller_falsum(X0) :- block(X0),er_smaller_falsum(X0).
-inter_block_er_smaller_falsum(X0) :- object(X0),not inter_block_er_smaller_falsum(X0).
inter_block_er_below_falsum(X0) :- block(X0),er_below_falsum(X0).
-inter_block_er_below_falsum(X0) :- object(X0),not inter_block_er_below_falsum(X0).
inter_block_er_left_falsum(X0) :- block(X0),er_left_falsum(X0).
-inter_block_er_left_falsum(X0) :- object(X0),not inter_block_er_left_falsum(X0).
inter_block_er_overlap_falsum(X0) :- block(X0),er_overlap_falsum(X0).
-inter_block_er_overlap_falsum(X0) :- object(X0),not inter_block_er_overlap_falsum(X0).
inter_block_er_shape_falsum(X0) :- block(X0),er_shape_falsum(X0).
-inter_block_er_shape_falsum(X0) :- object(X0),not inter_block_er_shape_falsum(X0).
inter_block_er_smaller_robot(X0) :- block(X0),er_smaller_robot(X0).
-inter_block_er_smaller_robot(X0) :- object(X0),not inter_block_er_smaller_robot(X0).
inter_block_er_below_robot(X0) :- block(X0),er_below_robot(X0).
-inter_block_er_below_robot(X0) :- object(X0),not inter_block_er_below_robot(X0).
inter_block_er_left_robot(X0) :- block(X0),er_left_robot(X0).
-inter_block_er_left_robot(X0) :- object(X0),not inter_block_er_left_robot(X0).
inter_block_er_overlap_robot(X0) :- block(X0),er_overlap_robot(X0).
-inter_block_er_overlap_robot(X0) :- object(X0),not inter_block_er_overlap_robot(X0).
inter_block_er_shape_robot(X0) :- block(X0),er_shape_robot(X0).
-inter_block_er_shape_robot(X0) :- object(X0),not inter_block_er_shape_robot(X0).
inter_block_er_smaller_block(X0) :- block(X0),er_smaller_block(X0).
-inter_block_er_smaller_block(X0) :- object(X0),not inter_block_er_smaller_block(X0).
inter_block_er_below_block(X0) :- block(X0),er_below_block(X0).
-inter_block_er_below_block(X0) :- object(X0),not inter_block_er_below_block(X0).
inter_block_er_left_block(X0) :- block(X0),er_left_block(X0).
-inter_block_er_left_block(X0) :- object(X0),not inter_block_er_left_block(X0).
inter_block_er_overlap_block(X0) :- block(X0),er_overlap_block(X0).
-inter_block_er_overlap_block(X0) :- object(X0),not inter_block_er_overlap_block(X0).
inter_block_er_shape_block(X0) :- block(X0),er_shape_block(X0).
-inter_block_er_shape_block(X0) :- object(X0),not inter_block_er_shape_block(X0).
inter_block_er_smaller_table(X0) :- block(X0),er_smaller_table(X0).
-inter_block_er_smaller_table(X0) :- object(X0),not inter_block_er_smaller_table(X0).
inter_block_er_below_table(X0) :- block(X0),er_below_table(X0).
-inter_block_er_below_table(X0) :- object(X0),not inter_block_er_below_table(X0).
inter_block_er_left_table(X0) :- block(X0),er_left_table(X0).
-inter_block_er_left_table(X0) :- object(X0),not inter_block_er_left_table(X0).
inter_block_er_overlap_table(X0) :- block(X0),er_overlap_table(X0).
-inter_block_er_overlap_table(X0) :- object(X0),not inter_block_er_overlap_table(X0).
inter_block_er_shape_table(X0) :- block(X0),er_shape_table(X0).
-inter_block_er_shape_table(X0) :- object(X0),not inter_block_er_shape_table(X0).
inter_block_inter_verum_falsum(X0) :- block(X0),inter_verum_falsum(X0).
-inter_block_inter_verum_falsum(X0) :- object(X0),not inter_block_inter_verum_falsum(X0).
inter_block_inter_verum_robot(X0) :- block(X0),inter_verum_robot(X0).
-inter_block_inter_verum_robot(X0) :- object(X0),not inter_block_inter_verum_robot(X0).
inter_block_inter_verum_block(X0) :- block(X0),inter_verum_block(X0).
-inter_block_inter_verum_block(X0) :- object(X0),not inter_block_inter_verum_block(X0).
inter_block_inter_verum_table(X0) :- block(X0),inter_verum_table(X0).
-inter_block_inter_verum_table(X0) :- object(X0),not inter_block_inter_verum_table(X0).
inter_block_inter_falsum_robot(X0) :- block(X0),inter_falsum_robot(X0).
-inter_block_inter_falsum_robot(X0) :- object(X0),not inter_block_inter_falsum_robot(X0).
inter_block_inter_falsum_block(X0) :- block(X0),inter_falsum_block(X0).
-inter_block_inter_falsum_block(X0) :- object(X0),not inter_block_inter_falsum_block(X0).
inter_block_inter_falsum_table(X0) :- block(X0),inter_falsum_table(X0).
-inter_block_inter_falsum_table(X0) :- object(X0),not inter_block_inter_falsum_table(X0).
inter_block_inter_robot_block(X0) :- block(X0),inter_robot_block(X0).
-inter_block_inter_robot_block(X0) :- object(X0),not inter_block_inter_robot_block(X0).
inter_block_inter_robot_table(X0) :- block(X0),inter_robot_table(X0).
-inter_block_inter_robot_table(X0) :- object(X0),not inter_block_inter_robot_table(X0).
inter_block_inter_block_table(X0) :- block(X0),inter_block_table(X0).
-inter_block_inter_block_table(X0) :- object(X0),not inter_block_inter_block_table(X0).
inter_block_subset_verum_falsum(X0) :- block(X0),subset_verum_falsum(null).
-inter_block_subset_verum_falsum(X0) :- object(X0),not inter_block_subset_verum_falsum(X0).
inter_block_subset_verum_robot(X0) :- block(X0),subset_verum_robot(null).
-inter_block_subset_verum_robot(X0) :- object(X0),not inter_block_subset_verum_robot(X0).
inter_block_subset_verum_block(X0) :- block(X0),subset_verum_block(null).
-inter_block_subset_verum_block(X0) :- object(X0),not inter_block_subset_verum_block(X0).
inter_block_subset_verum_table(X0) :- block(X0),subset_verum_table(null).
-inter_block_subset_verum_table(X0) :- object(X0),not inter_block_subset_verum_table(X0).
inter_block_subset_falsum_robot(X0) :- block(X0),subset_falsum_robot(null).
-inter_block_subset_falsum_robot(X0) :- object(X0),not inter_block_subset_falsum_robot(X0).
inter_block_subset_falsum_block(X0) :- block(X0),subset_falsum_block(null).
-inter_block_subset_falsum_block(X0) :- object(X0),not inter_block_subset_falsum_block(X0).
inter_block_subset_falsum_table(X0) :- block(X0),subset_falsum_table(null).
-inter_block_subset_falsum_table(X0) :- object(X0),not inter_block_subset_falsum_table(X0).
inter_block_subset_robot_block(X0) :- block(X0),subset_robot_block(null).
-inter_block_subset_robot_block(X0) :- object(X0),not inter_block_subset_robot_block(X0).
inter_block_subset_robot_table(X0) :- block(X0),subset_robot_table(null).
-inter_block_subset_robot_table(X0) :- object(X0),not inter_block_subset_robot_table(X0).
inter_block_subset_block_table(X0) :- block(X0),subset_block_table(null).
-inter_block_subset_block_table(X0) :- object(X0),not inter_block_subset_block_table(X0).
inter_table_er_smaller_verum(X0) :- table(X0),er_smaller_verum(X0).
-inter_table_er_smaller_verum(X0) :- object(X0),not inter_table_er_smaller_verum(X0).
inter_table_er_below_verum(X0) :- table(X0),er_below_verum(X0).
-inter_table_er_below_verum(X0) :- object(X0),not inter_table_er_below_verum(X0).
inter_table_er_left_verum(X0) :- table(X0),er_left_verum(X0).
-inter_table_er_left_verum(X0) :- object(X0),not inter_table_er_left_verum(X0).
inter_table_er_overlap_verum(X0) :- table(X0),er_overlap_verum(X0).
-inter_table_er_overlap_verum(X0) :- object(X0),not inter_table_er_overlap_verum(X0).
inter_table_er_shape_verum(X0) :- table(X0),er_shape_verum(X0).
-inter_table_er_shape_verum(X0) :- object(X0),not inter_table_er_shape_verum(X0).
inter_table_er_smaller_falsum(X0) :- table(X0),er_smaller_falsum(X0).
-inter_table_er_smaller_falsum(X0) :- object(X0),not inter_table_er_smaller_falsum(X0).
inter_table_er_below_falsum(X0) :- table(X0),er_below_falsum(X0).
-inter_table_er_below_falsum(X0) :- object(X0),not inter_table_er_below_falsum(X0).
inter_table_er_left_falsum(X0) :- table(X0),er_left_falsum(X0).
-inter_table_er_left_falsum(X0) :- object(X0),not inter_table_er_left_falsum(X0).
inter_table_er_overlap_falsum(X0) :- table(X0),er_overlap_falsum(X0).
-inter_table_er_overlap_falsum(X0) :- object(X0),not inter_table_er_overlap_falsum(X0).
inter_table_er_shape_falsum(X0) :- table(X0),er_shape_falsum(X0).
-inter_table_er_shape_falsum(X0) :- object(X0),not inter_table_er_shape_falsum(X0).
inter_table_er_smaller_robot(X0) :- table(X0),er_smaller_robot(X0).
-inter_table_er_smaller_robot(X0) :- object(X0),not inter_table_er_smaller_robot(X0).
inter_table_er_below_robot(X0) :- table(X0),er_below_robot(X0).
-inter_table_er_below_robot(X0) :- object(X0),not inter_table_er_below_robot(X0).
inter_table_er_left_robot(X0) :- table(X0),er_left_robot(X0).
-inter_table_er_left_robot(X0) :- object(X0),not inter_table_er_left_robot(X0).
inter_table_er_overlap_robot(X0) :- table(X0),er_overlap_robot(X0).
-inter_table_er_overlap_robot(X0) :- object(X0),not inter_table_er_overlap_robot(X0).
inter_table_er_shape_robot(X0) :- table(X0),er_shape_robot(X0).
-inter_table_er_shape_robot(X0) :- object(X0),not inter_table_er_shape_robot(X0).
inter_table_er_smaller_block(X0) :- table(X0),er_smaller_block(X0).
-inter_table_er_smaller_block(X0) :- object(X0),not inter_table_er_smaller_block(X0).
inter_table_er_below_block(X0) :- table(X0),er_below_block(X0).
-inter_table_er_below_block(X0) :- object(X0),not inter_table_er_below_block(X0).
inter_table_er_left_block(X0) :- table(X0),er_left_block(X0).
-inter_table_er_left_block(X0) :- object(X0),not inter_table_er_left_block(X0).
inter_table_er_overlap_block(X0) :- table(X0),er_overlap_block(X0).
-inter_table_er_overlap_block(X0) :- object(X0),not inter_table_er_overlap_block(X0).
inter_table_er_shape_block(X0) :- table(X0),er_shape_block(X0).
-inter_table_er_shape_block(X0) :- object(X0),not inter_table_er_shape_block(X0).
inter_table_er_smaller_table(X0) :- table(X0),er_smaller_table(X0).
-inter_table_er_smaller_table(X0) :- object(X0),not inter_table_er_smaller_table(X0).
inter_table_er_below_table(X0) :- table(X0),er_below_table(X0).
-inter_table_er_below_table(X0) :- object(X0),not inter_table_er_below_table(X0).
inter_table_er_left_table(X0) :- table(X0),er_left_table(X0).
-inter_table_er_left_table(X0) :- object(X0),not inter_table_er_left_table(X0).
inter_table_er_overlap_table(X0) :- table(X0),er_overlap_table(X0).
-inter_table_er_overlap_table(X0) :- object(X0),not inter_table_er_overlap_table(X0).
inter_table_er_shape_table(X0) :- table(X0),er_shape_table(X0).
-inter_table_er_shape_table(X0) :- object(X0),not inter_table_er_shape_table(X0).
inter_table_inter_verum_falsum(X0) :- table(X0),inter_verum_falsum(X0).
-inter_table_inter_verum_falsum(X0) :- object(X0),not inter_table_inter_verum_falsum(X0).
inter_table_inter_verum_robot(X0) :- table(X0),inter_verum_robot(X0).
-inter_table_inter_verum_robot(X0) :- object(X0),not inter_table_inter_verum_robot(X0).
inter_table_inter_verum_block(X0) :- table(X0),inter_verum_block(X0).
-inter_table_inter_verum_block(X0) :- object(X0),not inter_table_inter_verum_block(X0).
inter_table_inter_verum_table(X0) :- table(X0),inter_verum_table(X0).
-inter_table_inter_verum_table(X0) :- object(X0),not inter_table_inter_verum_table(X0).
inter_table_inter_falsum_robot(X0) :- table(X0),inter_falsum_robot(X0).
-inter_table_inter_falsum_robot(X0) :- object(X0),not inter_table_inter_falsum_robot(X0).
inter_table_inter_falsum_block(X0) :- table(X0),inter_falsum_block(X0).
-inter_table_inter_falsum_block(X0) :- object(X0),not inter_table_inter_falsum_block(X0).
inter_table_inter_falsum_table(X0) :- table(X0),inter_falsum_table(X0).
-inter_table_inter_falsum_table(X0) :- object(X0),not inter_table_inter_falsum_table(X0).
inter_table_inter_robot_block(X0) :- table(X0),inter_robot_block(X0).
-inter_table_inter_robot_block(X0) :- object(X0),not inter_table_inter_robot_block(X0).
inter_table_inter_robot_table(X0) :- table(X0),inter_robot_table(X0).
-inter_table_inter_robot_table(X0) :- object(X0),not inter_table_inter_robot_table(X0).
inter_table_inter_block_table(X0) :- table(X0),inter_block_table(X0).
-inter_table_inter_block_table(X0) :- object(X0),not inter_table_inter_block_table(X0).
inter_table_subset_verum_falsum(X0) :- table(X0),subset_verum_falsum(null).
-inter_table_subset_verum_falsum(X0) :- object(X0),not inter_table_subset_verum_falsum(X0).
inter_table_subset_verum_robot(X0) :- table(X0),subset_verum_robot(null).
-inter_table_subset_verum_robot(X0) :- object(X0),not inter_table_subset_verum_robot(X0).
inter_table_subset_verum_block(X0) :- table(X0),subset_verum_block(null).
-inter_table_subset_verum_block(X0) :- object(X0),not inter_table_subset_verum_block(X0).
inter_table_subset_verum_table(X0) :- table(X0),subset_verum_table(null).
-inter_table_subset_verum_table(X0) :- object(X0),not inter_table_subset_verum_table(X0).
inter_table_subset_falsum_robot(X0) :- table(X0),subset_falsum_robot(null).
-inter_table_subset_falsum_robot(X0) :- object(X0),not inter_table_subset_falsum_robot(X0).
inter_table_subset_falsum_block(X0) :- table(X0),subset_falsum_block(null).
-inter_table_subset_falsum_block(X0) :- object(X0),not inter_table_subset_falsum_block(X0).
inter_table_subset_falsum_table(X0) :- table(X0),subset_falsum_table(null).
-inter_table_subset_falsum_table(X0) :- object(X0),not inter_table_subset_falsum_table(X0).
inter_table_subset_robot_block(X0) :- table(X0),subset_robot_block(null).
-inter_table_subset_robot_block(X0) :- object(X0),not inter_table_subset_robot_block(X0).
inter_table_subset_robot_table(X0) :- table(X0),subset_robot_table(null).
-inter_table_subset_robot_table(X0) :- object(X0),not inter_table_subset_robot_table(X0).
inter_table_subset_block_table(X0) :- table(X0),subset_block_table(null).
-inter_table_subset_block_table(X0) :- object(X0),not inter_table_subset_block_table(X0).
inter_er_smaller_verum_er_below_verum(X0) :- er_smaller_verum(X0),er_below_verum(X0).
-inter_er_smaller_verum_er_below_verum(X0) :- object(X0),not inter_er_smaller_verum_er_below_verum(X0).
inter_er_smaller_verum_er_left_verum(X0) :- er_smaller_verum(X0),er_left_verum(X0).
-inter_er_smaller_verum_er_left_verum(X0) :- object(X0),not inter_er_smaller_verum_er_left_verum(X0).
inter_er_smaller_verum_er_overlap_verum(X0) :- er_smaller_verum(X0),er_overlap_verum(X0).
-inter_er_smaller_verum_er_overlap_verum(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_verum(X0).
inter_er_smaller_verum_er_shape_verum(X0) :- er_smaller_verum(X0),er_shape_verum(X0).
-inter_er_smaller_verum_er_shape_verum(X0) :- object(X0),not inter_er_smaller_verum_er_shape_verum(X0).
inter_er_smaller_verum_er_smaller_falsum(X0) :- er_smaller_verum(X0),er_smaller_falsum(X0).
-inter_er_smaller_verum_er_smaller_falsum(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_falsum(X0).
inter_er_smaller_verum_er_below_falsum(X0) :- er_smaller_verum(X0),er_below_falsum(X0).
-inter_er_smaller_verum_er_below_falsum(X0) :- object(X0),not inter_er_smaller_verum_er_below_falsum(X0).
inter_er_smaller_verum_er_left_falsum(X0) :- er_smaller_verum(X0),er_left_falsum(X0).
-inter_er_smaller_verum_er_left_falsum(X0) :- object(X0),not inter_er_smaller_verum_er_left_falsum(X0).
inter_er_smaller_verum_er_overlap_falsum(X0) :- er_smaller_verum(X0),er_overlap_falsum(X0).
-inter_er_smaller_verum_er_overlap_falsum(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_falsum(X0).
inter_er_smaller_verum_er_shape_falsum(X0) :- er_smaller_verum(X0),er_shape_falsum(X0).
-inter_er_smaller_verum_er_shape_falsum(X0) :- object(X0),not inter_er_smaller_verum_er_shape_falsum(X0).
inter_er_smaller_verum_er_smaller_robot(X0) :- er_smaller_verum(X0),er_smaller_robot(X0).
-inter_er_smaller_verum_er_smaller_robot(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_robot(X0).
inter_er_smaller_verum_er_below_robot(X0) :- er_smaller_verum(X0),er_below_robot(X0).
-inter_er_smaller_verum_er_below_robot(X0) :- object(X0),not inter_er_smaller_verum_er_below_robot(X0).
inter_er_smaller_verum_er_left_robot(X0) :- er_smaller_verum(X0),er_left_robot(X0).
-inter_er_smaller_verum_er_left_robot(X0) :- object(X0),not inter_er_smaller_verum_er_left_robot(X0).
inter_er_smaller_verum_er_overlap_robot(X0) :- er_smaller_verum(X0),er_overlap_robot(X0).
-inter_er_smaller_verum_er_overlap_robot(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_robot(X0).
inter_er_smaller_verum_er_shape_robot(X0) :- er_smaller_verum(X0),er_shape_robot(X0).
-inter_er_smaller_verum_er_shape_robot(X0) :- object(X0),not inter_er_smaller_verum_er_shape_robot(X0).
inter_er_smaller_verum_er_smaller_block(X0) :- er_smaller_verum(X0),er_smaller_block(X0).
-inter_er_smaller_verum_er_smaller_block(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_block(X0).
inter_er_smaller_verum_er_below_block(X0) :- er_smaller_verum(X0),er_below_block(X0).
-inter_er_smaller_verum_er_below_block(X0) :- object(X0),not inter_er_smaller_verum_er_below_block(X0).
inter_er_smaller_verum_er_left_block(X0) :- er_smaller_verum(X0),er_left_block(X0).
-inter_er_smaller_verum_er_left_block(X0) :- object(X0),not inter_er_smaller_verum_er_left_block(X0).
inter_er_smaller_verum_er_overlap_block(X0) :- er_smaller_verum(X0),er_overlap_block(X0).
-inter_er_smaller_verum_er_overlap_block(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_block(X0).
inter_er_smaller_verum_er_shape_block(X0) :- er_smaller_verum(X0),er_shape_block(X0).
-inter_er_smaller_verum_er_shape_block(X0) :- object(X0),not inter_er_smaller_verum_er_shape_block(X0).
inter_er_smaller_verum_er_smaller_table(X0) :- er_smaller_verum(X0),er_smaller_table(X0).
-inter_er_smaller_verum_er_smaller_table(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_table(X0).
inter_er_smaller_verum_er_below_table(X0) :- er_smaller_verum(X0),er_below_table(X0).
-inter_er_smaller_verum_er_below_table(X0) :- object(X0),not inter_er_smaller_verum_er_below_table(X0).
inter_er_smaller_verum_er_left_table(X0) :- er_smaller_verum(X0),er_left_table(X0).
-inter_er_smaller_verum_er_left_table(X0) :- object(X0),not inter_er_smaller_verum_er_left_table(X0).
inter_er_smaller_verum_er_overlap_table(X0) :- er_smaller_verum(X0),er_overlap_table(X0).
-inter_er_smaller_verum_er_overlap_table(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_table(X0).
inter_er_smaller_verum_er_shape_table(X0) :- er_smaller_verum(X0),er_shape_table(X0).
-inter_er_smaller_verum_er_shape_table(X0) :- object(X0),not inter_er_smaller_verum_er_shape_table(X0).
inter_er_smaller_verum_inter_verum_falsum(X0) :- er_smaller_verum(X0),inter_verum_falsum(X0).
-inter_er_smaller_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_falsum(X0).
inter_er_smaller_verum_inter_verum_robot(X0) :- er_smaller_verum(X0),inter_verum_robot(X0).
-inter_er_smaller_verum_inter_verum_robot(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_robot(X0).
inter_er_smaller_verum_inter_verum_block(X0) :- er_smaller_verum(X0),inter_verum_block(X0).
-inter_er_smaller_verum_inter_verum_block(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_block(X0).
inter_er_smaller_verum_inter_verum_table(X0) :- er_smaller_verum(X0),inter_verum_table(X0).
-inter_er_smaller_verum_inter_verum_table(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_table(X0).
inter_er_smaller_verum_inter_falsum_robot(X0) :- er_smaller_verum(X0),inter_falsum_robot(X0).
-inter_er_smaller_verum_inter_falsum_robot(X0) :- object(X0),not inter_er_smaller_verum_inter_falsum_robot(X0).
inter_er_smaller_verum_inter_falsum_block(X0) :- er_smaller_verum(X0),inter_falsum_block(X0).
-inter_er_smaller_verum_inter_falsum_block(X0) :- object(X0),not inter_er_smaller_verum_inter_falsum_block(X0).
inter_er_smaller_verum_inter_falsum_table(X0) :- er_smaller_verum(X0),inter_falsum_table(X0).
-inter_er_smaller_verum_inter_falsum_table(X0) :- object(X0),not inter_er_smaller_verum_inter_falsum_table(X0).
inter_er_smaller_verum_inter_robot_block(X0) :- er_smaller_verum(X0),inter_robot_block(X0).
-inter_er_smaller_verum_inter_robot_block(X0) :- object(X0),not inter_er_smaller_verum_inter_robot_block(X0).
inter_er_smaller_verum_inter_robot_table(X0) :- er_smaller_verum(X0),inter_robot_table(X0).
-inter_er_smaller_verum_inter_robot_table(X0) :- object(X0),not inter_er_smaller_verum_inter_robot_table(X0).
inter_er_smaller_verum_inter_block_table(X0) :- er_smaller_verum(X0),inter_block_table(X0).
-inter_er_smaller_verum_inter_block_table(X0) :- object(X0),not inter_er_smaller_verum_inter_block_table(X0).
inter_er_smaller_verum_subset_verum_falsum(X0) :- er_smaller_verum(X0),subset_verum_falsum(null).
-inter_er_smaller_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_falsum(X0).
inter_er_smaller_verum_subset_verum_robot(X0) :- er_smaller_verum(X0),subset_verum_robot(null).
-inter_er_smaller_verum_subset_verum_robot(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_robot(X0).
inter_er_smaller_verum_subset_verum_block(X0) :- er_smaller_verum(X0),subset_verum_block(null).
-inter_er_smaller_verum_subset_verum_block(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_block(X0).
inter_er_smaller_verum_subset_verum_table(X0) :- er_smaller_verum(X0),subset_verum_table(null).
-inter_er_smaller_verum_subset_verum_table(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_table(X0).
inter_er_smaller_verum_subset_falsum_robot(X0) :- er_smaller_verum(X0),subset_falsum_robot(null).
-inter_er_smaller_verum_subset_falsum_robot(X0) :- object(X0),not inter_er_smaller_verum_subset_falsum_robot(X0).
inter_er_smaller_verum_subset_falsum_block(X0) :- er_smaller_verum(X0),subset_falsum_block(null).
-inter_er_smaller_verum_subset_falsum_block(X0) :- object(X0),not inter_er_smaller_verum_subset_falsum_block(X0).
inter_er_smaller_verum_subset_falsum_table(X0) :- er_smaller_verum(X0),subset_falsum_table(null).
-inter_er_smaller_verum_subset_falsum_table(X0) :- object(X0),not inter_er_smaller_verum_subset_falsum_table(X0).
inter_er_smaller_verum_subset_robot_block(X0) :- er_smaller_verum(X0),subset_robot_block(null).
-inter_er_smaller_verum_subset_robot_block(X0) :- object(X0),not inter_er_smaller_verum_subset_robot_block(X0).
inter_er_smaller_verum_subset_robot_table(X0) :- er_smaller_verum(X0),subset_robot_table(null).
-inter_er_smaller_verum_subset_robot_table(X0) :- object(X0),not inter_er_smaller_verum_subset_robot_table(X0).
inter_er_smaller_verum_subset_block_table(X0) :- er_smaller_verum(X0),subset_block_table(null).
-inter_er_smaller_verum_subset_block_table(X0) :- object(X0),not inter_er_smaller_verum_subset_block_table(X0).
inter_er_below_verum_er_left_verum(X0) :- er_below_verum(X0),er_left_verum(X0).
-inter_er_below_verum_er_left_verum(X0) :- object(X0),not inter_er_below_verum_er_left_verum(X0).
inter_er_below_verum_er_overlap_verum(X0) :- er_below_verum(X0),er_overlap_verum(X0).
-inter_er_below_verum_er_overlap_verum(X0) :- object(X0),not inter_er_below_verum_er_overlap_verum(X0).
inter_er_below_verum_er_shape_verum(X0) :- er_below_verum(X0),er_shape_verum(X0).
-inter_er_below_verum_er_shape_verum(X0) :- object(X0),not inter_er_below_verum_er_shape_verum(X0).
inter_er_below_verum_er_smaller_falsum(X0) :- er_below_verum(X0),er_smaller_falsum(X0).
-inter_er_below_verum_er_smaller_falsum(X0) :- object(X0),not inter_er_below_verum_er_smaller_falsum(X0).
inter_er_below_verum_er_below_falsum(X0) :- er_below_verum(X0),er_below_falsum(X0).
-inter_er_below_verum_er_below_falsum(X0) :- object(X0),not inter_er_below_verum_er_below_falsum(X0).
inter_er_below_verum_er_left_falsum(X0) :- er_below_verum(X0),er_left_falsum(X0).
-inter_er_below_verum_er_left_falsum(X0) :- object(X0),not inter_er_below_verum_er_left_falsum(X0).
inter_er_below_verum_er_overlap_falsum(X0) :- er_below_verum(X0),er_overlap_falsum(X0).
-inter_er_below_verum_er_overlap_falsum(X0) :- object(X0),not inter_er_below_verum_er_overlap_falsum(X0).
inter_er_below_verum_er_shape_falsum(X0) :- er_below_verum(X0),er_shape_falsum(X0).
-inter_er_below_verum_er_shape_falsum(X0) :- object(X0),not inter_er_below_verum_er_shape_falsum(X0).
inter_er_below_verum_er_smaller_robot(X0) :- er_below_verum(X0),er_smaller_robot(X0).
-inter_er_below_verum_er_smaller_robot(X0) :- object(X0),not inter_er_below_verum_er_smaller_robot(X0).
inter_er_below_verum_er_below_robot(X0) :- er_below_verum(X0),er_below_robot(X0).
-inter_er_below_verum_er_below_robot(X0) :- object(X0),not inter_er_below_verum_er_below_robot(X0).
inter_er_below_verum_er_left_robot(X0) :- er_below_verum(X0),er_left_robot(X0).
-inter_er_below_verum_er_left_robot(X0) :- object(X0),not inter_er_below_verum_er_left_robot(X0).
inter_er_below_verum_er_overlap_robot(X0) :- er_below_verum(X0),er_overlap_robot(X0).
-inter_er_below_verum_er_overlap_robot(X0) :- object(X0),not inter_er_below_verum_er_overlap_robot(X0).
inter_er_below_verum_er_shape_robot(X0) :- er_below_verum(X0),er_shape_robot(X0).
-inter_er_below_verum_er_shape_robot(X0) :- object(X0),not inter_er_below_verum_er_shape_robot(X0).
inter_er_below_verum_er_smaller_block(X0) :- er_below_verum(X0),er_smaller_block(X0).
-inter_er_below_verum_er_smaller_block(X0) :- object(X0),not inter_er_below_verum_er_smaller_block(X0).
inter_er_below_verum_er_below_block(X0) :- er_below_verum(X0),er_below_block(X0).
-inter_er_below_verum_er_below_block(X0) :- object(X0),not inter_er_below_verum_er_below_block(X0).
inter_er_below_verum_er_left_block(X0) :- er_below_verum(X0),er_left_block(X0).
-inter_er_below_verum_er_left_block(X0) :- object(X0),not inter_er_below_verum_er_left_block(X0).
inter_er_below_verum_er_overlap_block(X0) :- er_below_verum(X0),er_overlap_block(X0).
-inter_er_below_verum_er_overlap_block(X0) :- object(X0),not inter_er_below_verum_er_overlap_block(X0).
inter_er_below_verum_er_shape_block(X0) :- er_below_verum(X0),er_shape_block(X0).
-inter_er_below_verum_er_shape_block(X0) :- object(X0),not inter_er_below_verum_er_shape_block(X0).
inter_er_below_verum_er_smaller_table(X0) :- er_below_verum(X0),er_smaller_table(X0).
-inter_er_below_verum_er_smaller_table(X0) :- object(X0),not inter_er_below_verum_er_smaller_table(X0).
inter_er_below_verum_er_below_table(X0) :- er_below_verum(X0),er_below_table(X0).
-inter_er_below_verum_er_below_table(X0) :- object(X0),not inter_er_below_verum_er_below_table(X0).
inter_er_below_verum_er_left_table(X0) :- er_below_verum(X0),er_left_table(X0).
-inter_er_below_verum_er_left_table(X0) :- object(X0),not inter_er_below_verum_er_left_table(X0).
inter_er_below_verum_er_overlap_table(X0) :- er_below_verum(X0),er_overlap_table(X0).
-inter_er_below_verum_er_overlap_table(X0) :- object(X0),not inter_er_below_verum_er_overlap_table(X0).
inter_er_below_verum_er_shape_table(X0) :- er_below_verum(X0),er_shape_table(X0).
-inter_er_below_verum_er_shape_table(X0) :- object(X0),not inter_er_below_verum_er_shape_table(X0).
inter_er_below_verum_inter_verum_falsum(X0) :- er_below_verum(X0),inter_verum_falsum(X0).
-inter_er_below_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_below_verum_inter_verum_falsum(X0).
inter_er_below_verum_inter_verum_robot(X0) :- er_below_verum(X0),inter_verum_robot(X0).
-inter_er_below_verum_inter_verum_robot(X0) :- object(X0),not inter_er_below_verum_inter_verum_robot(X0).
inter_er_below_verum_inter_verum_block(X0) :- er_below_verum(X0),inter_verum_block(X0).
-inter_er_below_verum_inter_verum_block(X0) :- object(X0),not inter_er_below_verum_inter_verum_block(X0).
inter_er_below_verum_inter_verum_table(X0) :- er_below_verum(X0),inter_verum_table(X0).
-inter_er_below_verum_inter_verum_table(X0) :- object(X0),not inter_er_below_verum_inter_verum_table(X0).
inter_er_below_verum_inter_falsum_robot(X0) :- er_below_verum(X0),inter_falsum_robot(X0).
-inter_er_below_verum_inter_falsum_robot(X0) :- object(X0),not inter_er_below_verum_inter_falsum_robot(X0).
inter_er_below_verum_inter_falsum_block(X0) :- er_below_verum(X0),inter_falsum_block(X0).
-inter_er_below_verum_inter_falsum_block(X0) :- object(X0),not inter_er_below_verum_inter_falsum_block(X0).
inter_er_below_verum_inter_falsum_table(X0) :- er_below_verum(X0),inter_falsum_table(X0).
-inter_er_below_verum_inter_falsum_table(X0) :- object(X0),not inter_er_below_verum_inter_falsum_table(X0).
inter_er_below_verum_inter_robot_block(X0) :- er_below_verum(X0),inter_robot_block(X0).
-inter_er_below_verum_inter_robot_block(X0) :- object(X0),not inter_er_below_verum_inter_robot_block(X0).
inter_er_below_verum_inter_robot_table(X0) :- er_below_verum(X0),inter_robot_table(X0).
-inter_er_below_verum_inter_robot_table(X0) :- object(X0),not inter_er_below_verum_inter_robot_table(X0).
inter_er_below_verum_inter_block_table(X0) :- er_below_verum(X0),inter_block_table(X0).
-inter_er_below_verum_inter_block_table(X0) :- object(X0),not inter_er_below_verum_inter_block_table(X0).
inter_er_below_verum_subset_verum_falsum(X0) :- er_below_verum(X0),subset_verum_falsum(null).
-inter_er_below_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_below_verum_subset_verum_falsum(X0).
inter_er_below_verum_subset_verum_robot(X0) :- er_below_verum(X0),subset_verum_robot(null).
-inter_er_below_verum_subset_verum_robot(X0) :- object(X0),not inter_er_below_verum_subset_verum_robot(X0).
inter_er_below_verum_subset_verum_block(X0) :- er_below_verum(X0),subset_verum_block(null).
-inter_er_below_verum_subset_verum_block(X0) :- object(X0),not inter_er_below_verum_subset_verum_block(X0).
inter_er_below_verum_subset_verum_table(X0) :- er_below_verum(X0),subset_verum_table(null).
-inter_er_below_verum_subset_verum_table(X0) :- object(X0),not inter_er_below_verum_subset_verum_table(X0).
inter_er_below_verum_subset_falsum_robot(X0) :- er_below_verum(X0),subset_falsum_robot(null).
-inter_er_below_verum_subset_falsum_robot(X0) :- object(X0),not inter_er_below_verum_subset_falsum_robot(X0).
inter_er_below_verum_subset_falsum_block(X0) :- er_below_verum(X0),subset_falsum_block(null).
-inter_er_below_verum_subset_falsum_block(X0) :- object(X0),not inter_er_below_verum_subset_falsum_block(X0).
inter_er_below_verum_subset_falsum_table(X0) :- er_below_verum(X0),subset_falsum_table(null).
-inter_er_below_verum_subset_falsum_table(X0) :- object(X0),not inter_er_below_verum_subset_falsum_table(X0).
inter_er_below_verum_subset_robot_block(X0) :- er_below_verum(X0),subset_robot_block(null).
-inter_er_below_verum_subset_robot_block(X0) :- object(X0),not inter_er_below_verum_subset_robot_block(X0).
inter_er_below_verum_subset_robot_table(X0) :- er_below_verum(X0),subset_robot_table(null).
-inter_er_below_verum_subset_robot_table(X0) :- object(X0),not inter_er_below_verum_subset_robot_table(X0).
inter_er_below_verum_subset_block_table(X0) :- er_below_verum(X0),subset_block_table(null).
-inter_er_below_verum_subset_block_table(X0) :- object(X0),not inter_er_below_verum_subset_block_table(X0).
inter_er_left_verum_er_overlap_verum(X0) :- er_left_verum(X0),er_overlap_verum(X0).
-inter_er_left_verum_er_overlap_verum(X0) :- object(X0),not inter_er_left_verum_er_overlap_verum(X0).
inter_er_left_verum_er_shape_verum(X0) :- er_left_verum(X0),er_shape_verum(X0).
-inter_er_left_verum_er_shape_verum(X0) :- object(X0),not inter_er_left_verum_er_shape_verum(X0).
inter_er_left_verum_er_smaller_falsum(X0) :- er_left_verum(X0),er_smaller_falsum(X0).
-inter_er_left_verum_er_smaller_falsum(X0) :- object(X0),not inter_er_left_verum_er_smaller_falsum(X0).
inter_er_left_verum_er_below_falsum(X0) :- er_left_verum(X0),er_below_falsum(X0).
-inter_er_left_verum_er_below_falsum(X0) :- object(X0),not inter_er_left_verum_er_below_falsum(X0).
inter_er_left_verum_er_left_falsum(X0) :- er_left_verum(X0),er_left_falsum(X0).
-inter_er_left_verum_er_left_falsum(X0) :- object(X0),not inter_er_left_verum_er_left_falsum(X0).
inter_er_left_verum_er_overlap_falsum(X0) :- er_left_verum(X0),er_overlap_falsum(X0).
-inter_er_left_verum_er_overlap_falsum(X0) :- object(X0),not inter_er_left_verum_er_overlap_falsum(X0).
inter_er_left_verum_er_shape_falsum(X0) :- er_left_verum(X0),er_shape_falsum(X0).
-inter_er_left_verum_er_shape_falsum(X0) :- object(X0),not inter_er_left_verum_er_shape_falsum(X0).
inter_er_left_verum_er_smaller_robot(X0) :- er_left_verum(X0),er_smaller_robot(X0).
-inter_er_left_verum_er_smaller_robot(X0) :- object(X0),not inter_er_left_verum_er_smaller_robot(X0).
inter_er_left_verum_er_below_robot(X0) :- er_left_verum(X0),er_below_robot(X0).
-inter_er_left_verum_er_below_robot(X0) :- object(X0),not inter_er_left_verum_er_below_robot(X0).
inter_er_left_verum_er_left_robot(X0) :- er_left_verum(X0),er_left_robot(X0).
-inter_er_left_verum_er_left_robot(X0) :- object(X0),not inter_er_left_verum_er_left_robot(X0).
inter_er_left_verum_er_overlap_robot(X0) :- er_left_verum(X0),er_overlap_robot(X0).
-inter_er_left_verum_er_overlap_robot(X0) :- object(X0),not inter_er_left_verum_er_overlap_robot(X0).
inter_er_left_verum_er_shape_robot(X0) :- er_left_verum(X0),er_shape_robot(X0).
-inter_er_left_verum_er_shape_robot(X0) :- object(X0),not inter_er_left_verum_er_shape_robot(X0).
inter_er_left_verum_er_smaller_block(X0) :- er_left_verum(X0),er_smaller_block(X0).
-inter_er_left_verum_er_smaller_block(X0) :- object(X0),not inter_er_left_verum_er_smaller_block(X0).
inter_er_left_verum_er_below_block(X0) :- er_left_verum(X0),er_below_block(X0).
-inter_er_left_verum_er_below_block(X0) :- object(X0),not inter_er_left_verum_er_below_block(X0).
inter_er_left_verum_er_left_block(X0) :- er_left_verum(X0),er_left_block(X0).
-inter_er_left_verum_er_left_block(X0) :- object(X0),not inter_er_left_verum_er_left_block(X0).
inter_er_left_verum_er_overlap_block(X0) :- er_left_verum(X0),er_overlap_block(X0).
-inter_er_left_verum_er_overlap_block(X0) :- object(X0),not inter_er_left_verum_er_overlap_block(X0).
inter_er_left_verum_er_shape_block(X0) :- er_left_verum(X0),er_shape_block(X0).
-inter_er_left_verum_er_shape_block(X0) :- object(X0),not inter_er_left_verum_er_shape_block(X0).
inter_er_left_verum_er_smaller_table(X0) :- er_left_verum(X0),er_smaller_table(X0).
-inter_er_left_verum_er_smaller_table(X0) :- object(X0),not inter_er_left_verum_er_smaller_table(X0).
inter_er_left_verum_er_below_table(X0) :- er_left_verum(X0),er_below_table(X0).
-inter_er_left_verum_er_below_table(X0) :- object(X0),not inter_er_left_verum_er_below_table(X0).
inter_er_left_verum_er_left_table(X0) :- er_left_verum(X0),er_left_table(X0).
-inter_er_left_verum_er_left_table(X0) :- object(X0),not inter_er_left_verum_er_left_table(X0).
inter_er_left_verum_er_overlap_table(X0) :- er_left_verum(X0),er_overlap_table(X0).
-inter_er_left_verum_er_overlap_table(X0) :- object(X0),not inter_er_left_verum_er_overlap_table(X0).
inter_er_left_verum_er_shape_table(X0) :- er_left_verum(X0),er_shape_table(X0).
-inter_er_left_verum_er_shape_table(X0) :- object(X0),not inter_er_left_verum_er_shape_table(X0).
inter_er_left_verum_inter_verum_falsum(X0) :- er_left_verum(X0),inter_verum_falsum(X0).
-inter_er_left_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_left_verum_inter_verum_falsum(X0).
inter_er_left_verum_inter_verum_robot(X0) :- er_left_verum(X0),inter_verum_robot(X0).
-inter_er_left_verum_inter_verum_robot(X0) :- object(X0),not inter_er_left_verum_inter_verum_robot(X0).
inter_er_left_verum_inter_verum_block(X0) :- er_left_verum(X0),inter_verum_block(X0).
-inter_er_left_verum_inter_verum_block(X0) :- object(X0),not inter_er_left_verum_inter_verum_block(X0).
inter_er_left_verum_inter_verum_table(X0) :- er_left_verum(X0),inter_verum_table(X0).
-inter_er_left_verum_inter_verum_table(X0) :- object(X0),not inter_er_left_verum_inter_verum_table(X0).
inter_er_left_verum_inter_falsum_robot(X0) :- er_left_verum(X0),inter_falsum_robot(X0).
-inter_er_left_verum_inter_falsum_robot(X0) :- object(X0),not inter_er_left_verum_inter_falsum_robot(X0).
inter_er_left_verum_inter_falsum_block(X0) :- er_left_verum(X0),inter_falsum_block(X0).
-inter_er_left_verum_inter_falsum_block(X0) :- object(X0),not inter_er_left_verum_inter_falsum_block(X0).
inter_er_left_verum_inter_falsum_table(X0) :- er_left_verum(X0),inter_falsum_table(X0).
-inter_er_left_verum_inter_falsum_table(X0) :- object(X0),not inter_er_left_verum_inter_falsum_table(X0).
inter_er_left_verum_inter_robot_block(X0) :- er_left_verum(X0),inter_robot_block(X0).
-inter_er_left_verum_inter_robot_block(X0) :- object(X0),not inter_er_left_verum_inter_robot_block(X0).
inter_er_left_verum_inter_robot_table(X0) :- er_left_verum(X0),inter_robot_table(X0).
-inter_er_left_verum_inter_robot_table(X0) :- object(X0),not inter_er_left_verum_inter_robot_table(X0).
inter_er_left_verum_inter_block_table(X0) :- er_left_verum(X0),inter_block_table(X0).
-inter_er_left_verum_inter_block_table(X0) :- object(X0),not inter_er_left_verum_inter_block_table(X0).
inter_er_left_verum_subset_verum_falsum(X0) :- er_left_verum(X0),subset_verum_falsum(null).
-inter_er_left_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_left_verum_subset_verum_falsum(X0).
inter_er_left_verum_subset_verum_robot(X0) :- er_left_verum(X0),subset_verum_robot(null).
-inter_er_left_verum_subset_verum_robot(X0) :- object(X0),not inter_er_left_verum_subset_verum_robot(X0).
inter_er_left_verum_subset_verum_block(X0) :- er_left_verum(X0),subset_verum_block(null).
-inter_er_left_verum_subset_verum_block(X0) :- object(X0),not inter_er_left_verum_subset_verum_block(X0).
inter_er_left_verum_subset_verum_table(X0) :- er_left_verum(X0),subset_verum_table(null).
-inter_er_left_verum_subset_verum_table(X0) :- object(X0),not inter_er_left_verum_subset_verum_table(X0).
inter_er_left_verum_subset_falsum_robot(X0) :- er_left_verum(X0),subset_falsum_robot(null).
-inter_er_left_verum_subset_falsum_robot(X0) :- object(X0),not inter_er_left_verum_subset_falsum_robot(X0).
inter_er_left_verum_subset_falsum_block(X0) :- er_left_verum(X0),subset_falsum_block(null).
-inter_er_left_verum_subset_falsum_block(X0) :- object(X0),not inter_er_left_verum_subset_falsum_block(X0).
inter_er_left_verum_subset_falsum_table(X0) :- er_left_verum(X0),subset_falsum_table(null).
-inter_er_left_verum_subset_falsum_table(X0) :- object(X0),not inter_er_left_verum_subset_falsum_table(X0).
inter_er_left_verum_subset_robot_block(X0) :- er_left_verum(X0),subset_robot_block(null).
-inter_er_left_verum_subset_robot_block(X0) :- object(X0),not inter_er_left_verum_subset_robot_block(X0).
inter_er_left_verum_subset_robot_table(X0) :- er_left_verum(X0),subset_robot_table(null).
-inter_er_left_verum_subset_robot_table(X0) :- object(X0),not inter_er_left_verum_subset_robot_table(X0).
inter_er_left_verum_subset_block_table(X0) :- er_left_verum(X0),subset_block_table(null).
-inter_er_left_verum_subset_block_table(X0) :- object(X0),not inter_er_left_verum_subset_block_table(X0).
inter_er_overlap_verum_er_shape_verum(X0) :- er_overlap_verum(X0),er_shape_verum(X0).
-inter_er_overlap_verum_er_shape_verum(X0) :- object(X0),not inter_er_overlap_verum_er_shape_verum(X0).
inter_er_overlap_verum_er_smaller_falsum(X0) :- er_overlap_verum(X0),er_smaller_falsum(X0).
-inter_er_overlap_verum_er_smaller_falsum(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_falsum(X0).
inter_er_overlap_verum_er_below_falsum(X0) :- er_overlap_verum(X0),er_below_falsum(X0).
-inter_er_overlap_verum_er_below_falsum(X0) :- object(X0),not inter_er_overlap_verum_er_below_falsum(X0).
inter_er_overlap_verum_er_left_falsum(X0) :- er_overlap_verum(X0),er_left_falsum(X0).
-inter_er_overlap_verum_er_left_falsum(X0) :- object(X0),not inter_er_overlap_verum_er_left_falsum(X0).
inter_er_overlap_verum_er_overlap_falsum(X0) :- er_overlap_verum(X0),er_overlap_falsum(X0).
-inter_er_overlap_verum_er_overlap_falsum(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_falsum(X0).
inter_er_overlap_verum_er_shape_falsum(X0) :- er_overlap_verum(X0),er_shape_falsum(X0).
-inter_er_overlap_verum_er_shape_falsum(X0) :- object(X0),not inter_er_overlap_verum_er_shape_falsum(X0).
inter_er_overlap_verum_er_smaller_robot(X0) :- er_overlap_verum(X0),er_smaller_robot(X0).
-inter_er_overlap_verum_er_smaller_robot(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_robot(X0).
inter_er_overlap_verum_er_below_robot(X0) :- er_overlap_verum(X0),er_below_robot(X0).
-inter_er_overlap_verum_er_below_robot(X0) :- object(X0),not inter_er_overlap_verum_er_below_robot(X0).
inter_er_overlap_verum_er_left_robot(X0) :- er_overlap_verum(X0),er_left_robot(X0).
-inter_er_overlap_verum_er_left_robot(X0) :- object(X0),not inter_er_overlap_verum_er_left_robot(X0).
inter_er_overlap_verum_er_overlap_robot(X0) :- er_overlap_verum(X0),er_overlap_robot(X0).
-inter_er_overlap_verum_er_overlap_robot(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_robot(X0).
inter_er_overlap_verum_er_shape_robot(X0) :- er_overlap_verum(X0),er_shape_robot(X0).
-inter_er_overlap_verum_er_shape_robot(X0) :- object(X0),not inter_er_overlap_verum_er_shape_robot(X0).
inter_er_overlap_verum_er_smaller_block(X0) :- er_overlap_verum(X0),er_smaller_block(X0).
-inter_er_overlap_verum_er_smaller_block(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_block(X0).
inter_er_overlap_verum_er_below_block(X0) :- er_overlap_verum(X0),er_below_block(X0).
-inter_er_overlap_verum_er_below_block(X0) :- object(X0),not inter_er_overlap_verum_er_below_block(X0).
inter_er_overlap_verum_er_left_block(X0) :- er_overlap_verum(X0),er_left_block(X0).
-inter_er_overlap_verum_er_left_block(X0) :- object(X0),not inter_er_overlap_verum_er_left_block(X0).
inter_er_overlap_verum_er_overlap_block(X0) :- er_overlap_verum(X0),er_overlap_block(X0).
-inter_er_overlap_verum_er_overlap_block(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_block(X0).
inter_er_overlap_verum_er_shape_block(X0) :- er_overlap_verum(X0),er_shape_block(X0).
-inter_er_overlap_verum_er_shape_block(X0) :- object(X0),not inter_er_overlap_verum_er_shape_block(X0).
inter_er_overlap_verum_er_smaller_table(X0) :- er_overlap_verum(X0),er_smaller_table(X0).
-inter_er_overlap_verum_er_smaller_table(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_table(X0).
inter_er_overlap_verum_er_below_table(X0) :- er_overlap_verum(X0),er_below_table(X0).
-inter_er_overlap_verum_er_below_table(X0) :- object(X0),not inter_er_overlap_verum_er_below_table(X0).
inter_er_overlap_verum_er_left_table(X0) :- er_overlap_verum(X0),er_left_table(X0).
-inter_er_overlap_verum_er_left_table(X0) :- object(X0),not inter_er_overlap_verum_er_left_table(X0).
inter_er_overlap_verum_er_overlap_table(X0) :- er_overlap_verum(X0),er_overlap_table(X0).
-inter_er_overlap_verum_er_overlap_table(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_table(X0).
inter_er_overlap_verum_er_shape_table(X0) :- er_overlap_verum(X0),er_shape_table(X0).
-inter_er_overlap_verum_er_shape_table(X0) :- object(X0),not inter_er_overlap_verum_er_shape_table(X0).
inter_er_overlap_verum_inter_verum_falsum(X0) :- er_overlap_verum(X0),inter_verum_falsum(X0).
-inter_er_overlap_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_falsum(X0).
inter_er_overlap_verum_inter_verum_robot(X0) :- er_overlap_verum(X0),inter_verum_robot(X0).
-inter_er_overlap_verum_inter_verum_robot(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_robot(X0).
inter_er_overlap_verum_inter_verum_block(X0) :- er_overlap_verum(X0),inter_verum_block(X0).
-inter_er_overlap_verum_inter_verum_block(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_block(X0).
inter_er_overlap_verum_inter_verum_table(X0) :- er_overlap_verum(X0),inter_verum_table(X0).
-inter_er_overlap_verum_inter_verum_table(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_table(X0).
inter_er_overlap_verum_inter_falsum_robot(X0) :- er_overlap_verum(X0),inter_falsum_robot(X0).
-inter_er_overlap_verum_inter_falsum_robot(X0) :- object(X0),not inter_er_overlap_verum_inter_falsum_robot(X0).
inter_er_overlap_verum_inter_falsum_block(X0) :- er_overlap_verum(X0),inter_falsum_block(X0).
-inter_er_overlap_verum_inter_falsum_block(X0) :- object(X0),not inter_er_overlap_verum_inter_falsum_block(X0).
inter_er_overlap_verum_inter_falsum_table(X0) :- er_overlap_verum(X0),inter_falsum_table(X0).
-inter_er_overlap_verum_inter_falsum_table(X0) :- object(X0),not inter_er_overlap_verum_inter_falsum_table(X0).
inter_er_overlap_verum_inter_robot_block(X0) :- er_overlap_verum(X0),inter_robot_block(X0).
-inter_er_overlap_verum_inter_robot_block(X0) :- object(X0),not inter_er_overlap_verum_inter_robot_block(X0).
inter_er_overlap_verum_inter_robot_table(X0) :- er_overlap_verum(X0),inter_robot_table(X0).
-inter_er_overlap_verum_inter_robot_table(X0) :- object(X0),not inter_er_overlap_verum_inter_robot_table(X0).
inter_er_overlap_verum_inter_block_table(X0) :- er_overlap_verum(X0),inter_block_table(X0).
-inter_er_overlap_verum_inter_block_table(X0) :- object(X0),not inter_er_overlap_verum_inter_block_table(X0).
inter_er_overlap_verum_subset_verum_falsum(X0) :- er_overlap_verum(X0),subset_verum_falsum(null).
-inter_er_overlap_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_falsum(X0).
inter_er_overlap_verum_subset_verum_robot(X0) :- er_overlap_verum(X0),subset_verum_robot(null).
-inter_er_overlap_verum_subset_verum_robot(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_robot(X0).
inter_er_overlap_verum_subset_verum_block(X0) :- er_overlap_verum(X0),subset_verum_block(null).
-inter_er_overlap_verum_subset_verum_block(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_block(X0).
inter_er_overlap_verum_subset_verum_table(X0) :- er_overlap_verum(X0),subset_verum_table(null).
-inter_er_overlap_verum_subset_verum_table(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_table(X0).
inter_er_overlap_verum_subset_falsum_robot(X0) :- er_overlap_verum(X0),subset_falsum_robot(null).
-inter_er_overlap_verum_subset_falsum_robot(X0) :- object(X0),not inter_er_overlap_verum_subset_falsum_robot(X0).
inter_er_overlap_verum_subset_falsum_block(X0) :- er_overlap_verum(X0),subset_falsum_block(null).
-inter_er_overlap_verum_subset_falsum_block(X0) :- object(X0),not inter_er_overlap_verum_subset_falsum_block(X0).
inter_er_overlap_verum_subset_falsum_table(X0) :- er_overlap_verum(X0),subset_falsum_table(null).
-inter_er_overlap_verum_subset_falsum_table(X0) :- object(X0),not inter_er_overlap_verum_subset_falsum_table(X0).
inter_er_overlap_verum_subset_robot_block(X0) :- er_overlap_verum(X0),subset_robot_block(null).
-inter_er_overlap_verum_subset_robot_block(X0) :- object(X0),not inter_er_overlap_verum_subset_robot_block(X0).
inter_er_overlap_verum_subset_robot_table(X0) :- er_overlap_verum(X0),subset_robot_table(null).
-inter_er_overlap_verum_subset_robot_table(X0) :- object(X0),not inter_er_overlap_verum_subset_robot_table(X0).
inter_er_overlap_verum_subset_block_table(X0) :- er_overlap_verum(X0),subset_block_table(null).
-inter_er_overlap_verum_subset_block_table(X0) :- object(X0),not inter_er_overlap_verum_subset_block_table(X0).
inter_er_shape_verum_er_smaller_falsum(X0) :- er_shape_verum(X0),er_smaller_falsum(X0).
-inter_er_shape_verum_er_smaller_falsum(X0) :- object(X0),not inter_er_shape_verum_er_smaller_falsum(X0).
inter_er_shape_verum_er_below_falsum(X0) :- er_shape_verum(X0),er_below_falsum(X0).
-inter_er_shape_verum_er_below_falsum(X0) :- object(X0),not inter_er_shape_verum_er_below_falsum(X0).
inter_er_shape_verum_er_left_falsum(X0) :- er_shape_verum(X0),er_left_falsum(X0).
-inter_er_shape_verum_er_left_falsum(X0) :- object(X0),not inter_er_shape_verum_er_left_falsum(X0).
inter_er_shape_verum_er_overlap_falsum(X0) :- er_shape_verum(X0),er_overlap_falsum(X0).
-inter_er_shape_verum_er_overlap_falsum(X0) :- object(X0),not inter_er_shape_verum_er_overlap_falsum(X0).
inter_er_shape_verum_er_shape_falsum(X0) :- er_shape_verum(X0),er_shape_falsum(X0).
-inter_er_shape_verum_er_shape_falsum(X0) :- object(X0),not inter_er_shape_verum_er_shape_falsum(X0).
inter_er_shape_verum_er_smaller_robot(X0) :- er_shape_verum(X0),er_smaller_robot(X0).
-inter_er_shape_verum_er_smaller_robot(X0) :- object(X0),not inter_er_shape_verum_er_smaller_robot(X0).
inter_er_shape_verum_er_below_robot(X0) :- er_shape_verum(X0),er_below_robot(X0).
-inter_er_shape_verum_er_below_robot(X0) :- object(X0),not inter_er_shape_verum_er_below_robot(X0).
inter_er_shape_verum_er_left_robot(X0) :- er_shape_verum(X0),er_left_robot(X0).
-inter_er_shape_verum_er_left_robot(X0) :- object(X0),not inter_er_shape_verum_er_left_robot(X0).
inter_er_shape_verum_er_overlap_robot(X0) :- er_shape_verum(X0),er_overlap_robot(X0).
-inter_er_shape_verum_er_overlap_robot(X0) :- object(X0),not inter_er_shape_verum_er_overlap_robot(X0).
inter_er_shape_verum_er_shape_robot(X0) :- er_shape_verum(X0),er_shape_robot(X0).
-inter_er_shape_verum_er_shape_robot(X0) :- object(X0),not inter_er_shape_verum_er_shape_robot(X0).
inter_er_shape_verum_er_smaller_block(X0) :- er_shape_verum(X0),er_smaller_block(X0).
-inter_er_shape_verum_er_smaller_block(X0) :- object(X0),not inter_er_shape_verum_er_smaller_block(X0).
inter_er_shape_verum_er_below_block(X0) :- er_shape_verum(X0),er_below_block(X0).
-inter_er_shape_verum_er_below_block(X0) :- object(X0),not inter_er_shape_verum_er_below_block(X0).
inter_er_shape_verum_er_left_block(X0) :- er_shape_verum(X0),er_left_block(X0).
-inter_er_shape_verum_er_left_block(X0) :- object(X0),not inter_er_shape_verum_er_left_block(X0).
inter_er_shape_verum_er_overlap_block(X0) :- er_shape_verum(X0),er_overlap_block(X0).
-inter_er_shape_verum_er_overlap_block(X0) :- object(X0),not inter_er_shape_verum_er_overlap_block(X0).
inter_er_shape_verum_er_shape_block(X0) :- er_shape_verum(X0),er_shape_block(X0).
-inter_er_shape_verum_er_shape_block(X0) :- object(X0),not inter_er_shape_verum_er_shape_block(X0).
inter_er_shape_verum_er_smaller_table(X0) :- er_shape_verum(X0),er_smaller_table(X0).
-inter_er_shape_verum_er_smaller_table(X0) :- object(X0),not inter_er_shape_verum_er_smaller_table(X0).
inter_er_shape_verum_er_below_table(X0) :- er_shape_verum(X0),er_below_table(X0).
-inter_er_shape_verum_er_below_table(X0) :- object(X0),not inter_er_shape_verum_er_below_table(X0).
inter_er_shape_verum_er_left_table(X0) :- er_shape_verum(X0),er_left_table(X0).
-inter_er_shape_verum_er_left_table(X0) :- object(X0),not inter_er_shape_verum_er_left_table(X0).
inter_er_shape_verum_er_overlap_table(X0) :- er_shape_verum(X0),er_overlap_table(X0).
-inter_er_shape_verum_er_overlap_table(X0) :- object(X0),not inter_er_shape_verum_er_overlap_table(X0).
inter_er_shape_verum_er_shape_table(X0) :- er_shape_verum(X0),er_shape_table(X0).
-inter_er_shape_verum_er_shape_table(X0) :- object(X0),not inter_er_shape_verum_er_shape_table(X0).
inter_er_shape_verum_inter_verum_falsum(X0) :- er_shape_verum(X0),inter_verum_falsum(X0).
-inter_er_shape_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_verum_inter_verum_falsum(X0).
inter_er_shape_verum_inter_verum_robot(X0) :- er_shape_verum(X0),inter_verum_robot(X0).
-inter_er_shape_verum_inter_verum_robot(X0) :- object(X0),not inter_er_shape_verum_inter_verum_robot(X0).
inter_er_shape_verum_inter_verum_block(X0) :- er_shape_verum(X0),inter_verum_block(X0).
-inter_er_shape_verum_inter_verum_block(X0) :- object(X0),not inter_er_shape_verum_inter_verum_block(X0).
inter_er_shape_verum_inter_verum_table(X0) :- er_shape_verum(X0),inter_verum_table(X0).
-inter_er_shape_verum_inter_verum_table(X0) :- object(X0),not inter_er_shape_verum_inter_verum_table(X0).
inter_er_shape_verum_inter_falsum_robot(X0) :- er_shape_verum(X0),inter_falsum_robot(X0).
-inter_er_shape_verum_inter_falsum_robot(X0) :- object(X0),not inter_er_shape_verum_inter_falsum_robot(X0).
inter_er_shape_verum_inter_falsum_block(X0) :- er_shape_verum(X0),inter_falsum_block(X0).
-inter_er_shape_verum_inter_falsum_block(X0) :- object(X0),not inter_er_shape_verum_inter_falsum_block(X0).
inter_er_shape_verum_inter_falsum_table(X0) :- er_shape_verum(X0),inter_falsum_table(X0).
-inter_er_shape_verum_inter_falsum_table(X0) :- object(X0),not inter_er_shape_verum_inter_falsum_table(X0).
inter_er_shape_verum_inter_robot_block(X0) :- er_shape_verum(X0),inter_robot_block(X0).
-inter_er_shape_verum_inter_robot_block(X0) :- object(X0),not inter_er_shape_verum_inter_robot_block(X0).
inter_er_shape_verum_inter_robot_table(X0) :- er_shape_verum(X0),inter_robot_table(X0).
-inter_er_shape_verum_inter_robot_table(X0) :- object(X0),not inter_er_shape_verum_inter_robot_table(X0).
inter_er_shape_verum_inter_block_table(X0) :- er_shape_verum(X0),inter_block_table(X0).
-inter_er_shape_verum_inter_block_table(X0) :- object(X0),not inter_er_shape_verum_inter_block_table(X0).
inter_er_shape_verum_subset_verum_falsum(X0) :- er_shape_verum(X0),subset_verum_falsum(null).
-inter_er_shape_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_verum_subset_verum_falsum(X0).
inter_er_shape_verum_subset_verum_robot(X0) :- er_shape_verum(X0),subset_verum_robot(null).
-inter_er_shape_verum_subset_verum_robot(X0) :- object(X0),not inter_er_shape_verum_subset_verum_robot(X0).
inter_er_shape_verum_subset_verum_block(X0) :- er_shape_verum(X0),subset_verum_block(null).
-inter_er_shape_verum_subset_verum_block(X0) :- object(X0),not inter_er_shape_verum_subset_verum_block(X0).
inter_er_shape_verum_subset_verum_table(X0) :- er_shape_verum(X0),subset_verum_table(null).
-inter_er_shape_verum_subset_verum_table(X0) :- object(X0),not inter_er_shape_verum_subset_verum_table(X0).
inter_er_shape_verum_subset_falsum_robot(X0) :- er_shape_verum(X0),subset_falsum_robot(null).
-inter_er_shape_verum_subset_falsum_robot(X0) :- object(X0),not inter_er_shape_verum_subset_falsum_robot(X0).
inter_er_shape_verum_subset_falsum_block(X0) :- er_shape_verum(X0),subset_falsum_block(null).
-inter_er_shape_verum_subset_falsum_block(X0) :- object(X0),not inter_er_shape_verum_subset_falsum_block(X0).
inter_er_shape_verum_subset_falsum_table(X0) :- er_shape_verum(X0),subset_falsum_table(null).
-inter_er_shape_verum_subset_falsum_table(X0) :- object(X0),not inter_er_shape_verum_subset_falsum_table(X0).
inter_er_shape_verum_subset_robot_block(X0) :- er_shape_verum(X0),subset_robot_block(null).
-inter_er_shape_verum_subset_robot_block(X0) :- object(X0),not inter_er_shape_verum_subset_robot_block(X0).
inter_er_shape_verum_subset_robot_table(X0) :- er_shape_verum(X0),subset_robot_table(null).
-inter_er_shape_verum_subset_robot_table(X0) :- object(X0),not inter_er_shape_verum_subset_robot_table(X0).
inter_er_shape_verum_subset_block_table(X0) :- er_shape_verum(X0),subset_block_table(null).
-inter_er_shape_verum_subset_block_table(X0) :- object(X0),not inter_er_shape_verum_subset_block_table(X0).
inter_er_smaller_falsum_er_below_falsum(X0) :- er_smaller_falsum(X0),er_below_falsum(X0).
-inter_er_smaller_falsum_er_below_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_below_falsum(X0).
inter_er_smaller_falsum_er_left_falsum(X0) :- er_smaller_falsum(X0),er_left_falsum(X0).
-inter_er_smaller_falsum_er_left_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_left_falsum(X0).
inter_er_smaller_falsum_er_overlap_falsum(X0) :- er_smaller_falsum(X0),er_overlap_falsum(X0).
-inter_er_smaller_falsum_er_overlap_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_falsum(X0).
inter_er_smaller_falsum_er_shape_falsum(X0) :- er_smaller_falsum(X0),er_shape_falsum(X0).
-inter_er_smaller_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_falsum(X0).
inter_er_smaller_falsum_er_smaller_robot(X0) :- er_smaller_falsum(X0),er_smaller_robot(X0).
-inter_er_smaller_falsum_er_smaller_robot(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_robot(X0).
inter_er_smaller_falsum_er_below_robot(X0) :- er_smaller_falsum(X0),er_below_robot(X0).
-inter_er_smaller_falsum_er_below_robot(X0) :- object(X0),not inter_er_smaller_falsum_er_below_robot(X0).
inter_er_smaller_falsum_er_left_robot(X0) :- er_smaller_falsum(X0),er_left_robot(X0).
-inter_er_smaller_falsum_er_left_robot(X0) :- object(X0),not inter_er_smaller_falsum_er_left_robot(X0).
inter_er_smaller_falsum_er_overlap_robot(X0) :- er_smaller_falsum(X0),er_overlap_robot(X0).
-inter_er_smaller_falsum_er_overlap_robot(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_robot(X0).
inter_er_smaller_falsum_er_shape_robot(X0) :- er_smaller_falsum(X0),er_shape_robot(X0).
-inter_er_smaller_falsum_er_shape_robot(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_robot(X0).
inter_er_smaller_falsum_er_smaller_block(X0) :- er_smaller_falsum(X0),er_smaller_block(X0).
-inter_er_smaller_falsum_er_smaller_block(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_block(X0).
inter_er_smaller_falsum_er_below_block(X0) :- er_smaller_falsum(X0),er_below_block(X0).
-inter_er_smaller_falsum_er_below_block(X0) :- object(X0),not inter_er_smaller_falsum_er_below_block(X0).
inter_er_smaller_falsum_er_left_block(X0) :- er_smaller_falsum(X0),er_left_block(X0).
-inter_er_smaller_falsum_er_left_block(X0) :- object(X0),not inter_er_smaller_falsum_er_left_block(X0).
inter_er_smaller_falsum_er_overlap_block(X0) :- er_smaller_falsum(X0),er_overlap_block(X0).
-inter_er_smaller_falsum_er_overlap_block(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_block(X0).
inter_er_smaller_falsum_er_shape_block(X0) :- er_smaller_falsum(X0),er_shape_block(X0).
-inter_er_smaller_falsum_er_shape_block(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_block(X0).
inter_er_smaller_falsum_er_smaller_table(X0) :- er_smaller_falsum(X0),er_smaller_table(X0).
-inter_er_smaller_falsum_er_smaller_table(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_table(X0).
inter_er_smaller_falsum_er_below_table(X0) :- er_smaller_falsum(X0),er_below_table(X0).
-inter_er_smaller_falsum_er_below_table(X0) :- object(X0),not inter_er_smaller_falsum_er_below_table(X0).
inter_er_smaller_falsum_er_left_table(X0) :- er_smaller_falsum(X0),er_left_table(X0).
-inter_er_smaller_falsum_er_left_table(X0) :- object(X0),not inter_er_smaller_falsum_er_left_table(X0).
inter_er_smaller_falsum_er_overlap_table(X0) :- er_smaller_falsum(X0),er_overlap_table(X0).
-inter_er_smaller_falsum_er_overlap_table(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_table(X0).
inter_er_smaller_falsum_er_shape_table(X0) :- er_smaller_falsum(X0),er_shape_table(X0).
-inter_er_smaller_falsum_er_shape_table(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_table(X0).
inter_er_smaller_falsum_inter_verum_falsum(X0) :- er_smaller_falsum(X0),inter_verum_falsum(X0).
-inter_er_smaller_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_falsum(X0).
inter_er_smaller_falsum_inter_verum_robot(X0) :- er_smaller_falsum(X0),inter_verum_robot(X0).
-inter_er_smaller_falsum_inter_verum_robot(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_robot(X0).
inter_er_smaller_falsum_inter_verum_block(X0) :- er_smaller_falsum(X0),inter_verum_block(X0).
-inter_er_smaller_falsum_inter_verum_block(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_block(X0).
inter_er_smaller_falsum_inter_verum_table(X0) :- er_smaller_falsum(X0),inter_verum_table(X0).
-inter_er_smaller_falsum_inter_verum_table(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_table(X0).
inter_er_smaller_falsum_inter_falsum_robot(X0) :- er_smaller_falsum(X0),inter_falsum_robot(X0).
-inter_er_smaller_falsum_inter_falsum_robot(X0) :- object(X0),not inter_er_smaller_falsum_inter_falsum_robot(X0).
inter_er_smaller_falsum_inter_falsum_block(X0) :- er_smaller_falsum(X0),inter_falsum_block(X0).
-inter_er_smaller_falsum_inter_falsum_block(X0) :- object(X0),not inter_er_smaller_falsum_inter_falsum_block(X0).
inter_er_smaller_falsum_inter_falsum_table(X0) :- er_smaller_falsum(X0),inter_falsum_table(X0).
-inter_er_smaller_falsum_inter_falsum_table(X0) :- object(X0),not inter_er_smaller_falsum_inter_falsum_table(X0).
inter_er_smaller_falsum_inter_robot_block(X0) :- er_smaller_falsum(X0),inter_robot_block(X0).
-inter_er_smaller_falsum_inter_robot_block(X0) :- object(X0),not inter_er_smaller_falsum_inter_robot_block(X0).
inter_er_smaller_falsum_inter_robot_table(X0) :- er_smaller_falsum(X0),inter_robot_table(X0).
-inter_er_smaller_falsum_inter_robot_table(X0) :- object(X0),not inter_er_smaller_falsum_inter_robot_table(X0).
inter_er_smaller_falsum_inter_block_table(X0) :- er_smaller_falsum(X0),inter_block_table(X0).
-inter_er_smaller_falsum_inter_block_table(X0) :- object(X0),not inter_er_smaller_falsum_inter_block_table(X0).
inter_er_smaller_falsum_subset_verum_falsum(X0) :- er_smaller_falsum(X0),subset_verum_falsum(null).
-inter_er_smaller_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_falsum(X0).
inter_er_smaller_falsum_subset_verum_robot(X0) :- er_smaller_falsum(X0),subset_verum_robot(null).
-inter_er_smaller_falsum_subset_verum_robot(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_robot(X0).
inter_er_smaller_falsum_subset_verum_block(X0) :- er_smaller_falsum(X0),subset_verum_block(null).
-inter_er_smaller_falsum_subset_verum_block(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_block(X0).
inter_er_smaller_falsum_subset_verum_table(X0) :- er_smaller_falsum(X0),subset_verum_table(null).
-inter_er_smaller_falsum_subset_verum_table(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_table(X0).
inter_er_smaller_falsum_subset_falsum_robot(X0) :- er_smaller_falsum(X0),subset_falsum_robot(null).
-inter_er_smaller_falsum_subset_falsum_robot(X0) :- object(X0),not inter_er_smaller_falsum_subset_falsum_robot(X0).
inter_er_smaller_falsum_subset_falsum_block(X0) :- er_smaller_falsum(X0),subset_falsum_block(null).
-inter_er_smaller_falsum_subset_falsum_block(X0) :- object(X0),not inter_er_smaller_falsum_subset_falsum_block(X0).
inter_er_smaller_falsum_subset_falsum_table(X0) :- er_smaller_falsum(X0),subset_falsum_table(null).
-inter_er_smaller_falsum_subset_falsum_table(X0) :- object(X0),not inter_er_smaller_falsum_subset_falsum_table(X0).
inter_er_smaller_falsum_subset_robot_block(X0) :- er_smaller_falsum(X0),subset_robot_block(null).
-inter_er_smaller_falsum_subset_robot_block(X0) :- object(X0),not inter_er_smaller_falsum_subset_robot_block(X0).
inter_er_smaller_falsum_subset_robot_table(X0) :- er_smaller_falsum(X0),subset_robot_table(null).
-inter_er_smaller_falsum_subset_robot_table(X0) :- object(X0),not inter_er_smaller_falsum_subset_robot_table(X0).
inter_er_smaller_falsum_subset_block_table(X0) :- er_smaller_falsum(X0),subset_block_table(null).
-inter_er_smaller_falsum_subset_block_table(X0) :- object(X0),not inter_er_smaller_falsum_subset_block_table(X0).
inter_er_below_falsum_er_left_falsum(X0) :- er_below_falsum(X0),er_left_falsum(X0).
-inter_er_below_falsum_er_left_falsum(X0) :- object(X0),not inter_er_below_falsum_er_left_falsum(X0).
inter_er_below_falsum_er_overlap_falsum(X0) :- er_below_falsum(X0),er_overlap_falsum(X0).
-inter_er_below_falsum_er_overlap_falsum(X0) :- object(X0),not inter_er_below_falsum_er_overlap_falsum(X0).
inter_er_below_falsum_er_shape_falsum(X0) :- er_below_falsum(X0),er_shape_falsum(X0).
-inter_er_below_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_below_falsum_er_shape_falsum(X0).
inter_er_below_falsum_er_smaller_robot(X0) :- er_below_falsum(X0),er_smaller_robot(X0).
-inter_er_below_falsum_er_smaller_robot(X0) :- object(X0),not inter_er_below_falsum_er_smaller_robot(X0).
inter_er_below_falsum_er_below_robot(X0) :- er_below_falsum(X0),er_below_robot(X0).
-inter_er_below_falsum_er_below_robot(X0) :- object(X0),not inter_er_below_falsum_er_below_robot(X0).
inter_er_below_falsum_er_left_robot(X0) :- er_below_falsum(X0),er_left_robot(X0).
-inter_er_below_falsum_er_left_robot(X0) :- object(X0),not inter_er_below_falsum_er_left_robot(X0).
inter_er_below_falsum_er_overlap_robot(X0) :- er_below_falsum(X0),er_overlap_robot(X0).
-inter_er_below_falsum_er_overlap_robot(X0) :- object(X0),not inter_er_below_falsum_er_overlap_robot(X0).
inter_er_below_falsum_er_shape_robot(X0) :- er_below_falsum(X0),er_shape_robot(X0).
-inter_er_below_falsum_er_shape_robot(X0) :- object(X0),not inter_er_below_falsum_er_shape_robot(X0).
inter_er_below_falsum_er_smaller_block(X0) :- er_below_falsum(X0),er_smaller_block(X0).
-inter_er_below_falsum_er_smaller_block(X0) :- object(X0),not inter_er_below_falsum_er_smaller_block(X0).
inter_er_below_falsum_er_below_block(X0) :- er_below_falsum(X0),er_below_block(X0).
-inter_er_below_falsum_er_below_block(X0) :- object(X0),not inter_er_below_falsum_er_below_block(X0).
inter_er_below_falsum_er_left_block(X0) :- er_below_falsum(X0),er_left_block(X0).
-inter_er_below_falsum_er_left_block(X0) :- object(X0),not inter_er_below_falsum_er_left_block(X0).
inter_er_below_falsum_er_overlap_block(X0) :- er_below_falsum(X0),er_overlap_block(X0).
-inter_er_below_falsum_er_overlap_block(X0) :- object(X0),not inter_er_below_falsum_er_overlap_block(X0).
inter_er_below_falsum_er_shape_block(X0) :- er_below_falsum(X0),er_shape_block(X0).
-inter_er_below_falsum_er_shape_block(X0) :- object(X0),not inter_er_below_falsum_er_shape_block(X0).
inter_er_below_falsum_er_smaller_table(X0) :- er_below_falsum(X0),er_smaller_table(X0).
-inter_er_below_falsum_er_smaller_table(X0) :- object(X0),not inter_er_below_falsum_er_smaller_table(X0).
inter_er_below_falsum_er_below_table(X0) :- er_below_falsum(X0),er_below_table(X0).
-inter_er_below_falsum_er_below_table(X0) :- object(X0),not inter_er_below_falsum_er_below_table(X0).
inter_er_below_falsum_er_left_table(X0) :- er_below_falsum(X0),er_left_table(X0).
-inter_er_below_falsum_er_left_table(X0) :- object(X0),not inter_er_below_falsum_er_left_table(X0).
inter_er_below_falsum_er_overlap_table(X0) :- er_below_falsum(X0),er_overlap_table(X0).
-inter_er_below_falsum_er_overlap_table(X0) :- object(X0),not inter_er_below_falsum_er_overlap_table(X0).
inter_er_below_falsum_er_shape_table(X0) :- er_below_falsum(X0),er_shape_table(X0).
-inter_er_below_falsum_er_shape_table(X0) :- object(X0),not inter_er_below_falsum_er_shape_table(X0).
inter_er_below_falsum_inter_verum_falsum(X0) :- er_below_falsum(X0),inter_verum_falsum(X0).
-inter_er_below_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_below_falsum_inter_verum_falsum(X0).
inter_er_below_falsum_inter_verum_robot(X0) :- er_below_falsum(X0),inter_verum_robot(X0).
-inter_er_below_falsum_inter_verum_robot(X0) :- object(X0),not inter_er_below_falsum_inter_verum_robot(X0).
inter_er_below_falsum_inter_verum_block(X0) :- er_below_falsum(X0),inter_verum_block(X0).
-inter_er_below_falsum_inter_verum_block(X0) :- object(X0),not inter_er_below_falsum_inter_verum_block(X0).
inter_er_below_falsum_inter_verum_table(X0) :- er_below_falsum(X0),inter_verum_table(X0).
-inter_er_below_falsum_inter_verum_table(X0) :- object(X0),not inter_er_below_falsum_inter_verum_table(X0).
inter_er_below_falsum_inter_falsum_robot(X0) :- er_below_falsum(X0),inter_falsum_robot(X0).
-inter_er_below_falsum_inter_falsum_robot(X0) :- object(X0),not inter_er_below_falsum_inter_falsum_robot(X0).
inter_er_below_falsum_inter_falsum_block(X0) :- er_below_falsum(X0),inter_falsum_block(X0).
-inter_er_below_falsum_inter_falsum_block(X0) :- object(X0),not inter_er_below_falsum_inter_falsum_block(X0).
inter_er_below_falsum_inter_falsum_table(X0) :- er_below_falsum(X0),inter_falsum_table(X0).
-inter_er_below_falsum_inter_falsum_table(X0) :- object(X0),not inter_er_below_falsum_inter_falsum_table(X0).
inter_er_below_falsum_inter_robot_block(X0) :- er_below_falsum(X0),inter_robot_block(X0).
-inter_er_below_falsum_inter_robot_block(X0) :- object(X0),not inter_er_below_falsum_inter_robot_block(X0).
inter_er_below_falsum_inter_robot_table(X0) :- er_below_falsum(X0),inter_robot_table(X0).
-inter_er_below_falsum_inter_robot_table(X0) :- object(X0),not inter_er_below_falsum_inter_robot_table(X0).
inter_er_below_falsum_inter_block_table(X0) :- er_below_falsum(X0),inter_block_table(X0).
-inter_er_below_falsum_inter_block_table(X0) :- object(X0),not inter_er_below_falsum_inter_block_table(X0).
inter_er_below_falsum_subset_verum_falsum(X0) :- er_below_falsum(X0),subset_verum_falsum(null).
-inter_er_below_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_below_falsum_subset_verum_falsum(X0).
inter_er_below_falsum_subset_verum_robot(X0) :- er_below_falsum(X0),subset_verum_robot(null).
-inter_er_below_falsum_subset_verum_robot(X0) :- object(X0),not inter_er_below_falsum_subset_verum_robot(X0).
inter_er_below_falsum_subset_verum_block(X0) :- er_below_falsum(X0),subset_verum_block(null).
-inter_er_below_falsum_subset_verum_block(X0) :- object(X0),not inter_er_below_falsum_subset_verum_block(X0).
inter_er_below_falsum_subset_verum_table(X0) :- er_below_falsum(X0),subset_verum_table(null).
-inter_er_below_falsum_subset_verum_table(X0) :- object(X0),not inter_er_below_falsum_subset_verum_table(X0).
inter_er_below_falsum_subset_falsum_robot(X0) :- er_below_falsum(X0),subset_falsum_robot(null).
-inter_er_below_falsum_subset_falsum_robot(X0) :- object(X0),not inter_er_below_falsum_subset_falsum_robot(X0).
inter_er_below_falsum_subset_falsum_block(X0) :- er_below_falsum(X0),subset_falsum_block(null).
-inter_er_below_falsum_subset_falsum_block(X0) :- object(X0),not inter_er_below_falsum_subset_falsum_block(X0).
inter_er_below_falsum_subset_falsum_table(X0) :- er_below_falsum(X0),subset_falsum_table(null).
-inter_er_below_falsum_subset_falsum_table(X0) :- object(X0),not inter_er_below_falsum_subset_falsum_table(X0).
inter_er_below_falsum_subset_robot_block(X0) :- er_below_falsum(X0),subset_robot_block(null).
-inter_er_below_falsum_subset_robot_block(X0) :- object(X0),not inter_er_below_falsum_subset_robot_block(X0).
inter_er_below_falsum_subset_robot_table(X0) :- er_below_falsum(X0),subset_robot_table(null).
-inter_er_below_falsum_subset_robot_table(X0) :- object(X0),not inter_er_below_falsum_subset_robot_table(X0).
inter_er_below_falsum_subset_block_table(X0) :- er_below_falsum(X0),subset_block_table(null).
-inter_er_below_falsum_subset_block_table(X0) :- object(X0),not inter_er_below_falsum_subset_block_table(X0).
inter_er_left_falsum_er_overlap_falsum(X0) :- er_left_falsum(X0),er_overlap_falsum(X0).
-inter_er_left_falsum_er_overlap_falsum(X0) :- object(X0),not inter_er_left_falsum_er_overlap_falsum(X0).
inter_er_left_falsum_er_shape_falsum(X0) :- er_left_falsum(X0),er_shape_falsum(X0).
-inter_er_left_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_left_falsum_er_shape_falsum(X0).
inter_er_left_falsum_er_smaller_robot(X0) :- er_left_falsum(X0),er_smaller_robot(X0).
-inter_er_left_falsum_er_smaller_robot(X0) :- object(X0),not inter_er_left_falsum_er_smaller_robot(X0).
inter_er_left_falsum_er_below_robot(X0) :- er_left_falsum(X0),er_below_robot(X0).
-inter_er_left_falsum_er_below_robot(X0) :- object(X0),not inter_er_left_falsum_er_below_robot(X0).
inter_er_left_falsum_er_left_robot(X0) :- er_left_falsum(X0),er_left_robot(X0).
-inter_er_left_falsum_er_left_robot(X0) :- object(X0),not inter_er_left_falsum_er_left_robot(X0).
inter_er_left_falsum_er_overlap_robot(X0) :- er_left_falsum(X0),er_overlap_robot(X0).
-inter_er_left_falsum_er_overlap_robot(X0) :- object(X0),not inter_er_left_falsum_er_overlap_robot(X0).
inter_er_left_falsum_er_shape_robot(X0) :- er_left_falsum(X0),er_shape_robot(X0).
-inter_er_left_falsum_er_shape_robot(X0) :- object(X0),not inter_er_left_falsum_er_shape_robot(X0).
inter_er_left_falsum_er_smaller_block(X0) :- er_left_falsum(X0),er_smaller_block(X0).
-inter_er_left_falsum_er_smaller_block(X0) :- object(X0),not inter_er_left_falsum_er_smaller_block(X0).
inter_er_left_falsum_er_below_block(X0) :- er_left_falsum(X0),er_below_block(X0).
-inter_er_left_falsum_er_below_block(X0) :- object(X0),not inter_er_left_falsum_er_below_block(X0).
inter_er_left_falsum_er_left_block(X0) :- er_left_falsum(X0),er_left_block(X0).
-inter_er_left_falsum_er_left_block(X0) :- object(X0),not inter_er_left_falsum_er_left_block(X0).
inter_er_left_falsum_er_overlap_block(X0) :- er_left_falsum(X0),er_overlap_block(X0).
-inter_er_left_falsum_er_overlap_block(X0) :- object(X0),not inter_er_left_falsum_er_overlap_block(X0).
inter_er_left_falsum_er_shape_block(X0) :- er_left_falsum(X0),er_shape_block(X0).
-inter_er_left_falsum_er_shape_block(X0) :- object(X0),not inter_er_left_falsum_er_shape_block(X0).
inter_er_left_falsum_er_smaller_table(X0) :- er_left_falsum(X0),er_smaller_table(X0).
-inter_er_left_falsum_er_smaller_table(X0) :- object(X0),not inter_er_left_falsum_er_smaller_table(X0).
inter_er_left_falsum_er_below_table(X0) :- er_left_falsum(X0),er_below_table(X0).
-inter_er_left_falsum_er_below_table(X0) :- object(X0),not inter_er_left_falsum_er_below_table(X0).
inter_er_left_falsum_er_left_table(X0) :- er_left_falsum(X0),er_left_table(X0).
-inter_er_left_falsum_er_left_table(X0) :- object(X0),not inter_er_left_falsum_er_left_table(X0).
inter_er_left_falsum_er_overlap_table(X0) :- er_left_falsum(X0),er_overlap_table(X0).
-inter_er_left_falsum_er_overlap_table(X0) :- object(X0),not inter_er_left_falsum_er_overlap_table(X0).
inter_er_left_falsum_er_shape_table(X0) :- er_left_falsum(X0),er_shape_table(X0).
-inter_er_left_falsum_er_shape_table(X0) :- object(X0),not inter_er_left_falsum_er_shape_table(X0).
inter_er_left_falsum_inter_verum_falsum(X0) :- er_left_falsum(X0),inter_verum_falsum(X0).
-inter_er_left_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_left_falsum_inter_verum_falsum(X0).
inter_er_left_falsum_inter_verum_robot(X0) :- er_left_falsum(X0),inter_verum_robot(X0).
-inter_er_left_falsum_inter_verum_robot(X0) :- object(X0),not inter_er_left_falsum_inter_verum_robot(X0).
inter_er_left_falsum_inter_verum_block(X0) :- er_left_falsum(X0),inter_verum_block(X0).
-inter_er_left_falsum_inter_verum_block(X0) :- object(X0),not inter_er_left_falsum_inter_verum_block(X0).
inter_er_left_falsum_inter_verum_table(X0) :- er_left_falsum(X0),inter_verum_table(X0).
-inter_er_left_falsum_inter_verum_table(X0) :- object(X0),not inter_er_left_falsum_inter_verum_table(X0).
inter_er_left_falsum_inter_falsum_robot(X0) :- er_left_falsum(X0),inter_falsum_robot(X0).
-inter_er_left_falsum_inter_falsum_robot(X0) :- object(X0),not inter_er_left_falsum_inter_falsum_robot(X0).
inter_er_left_falsum_inter_falsum_block(X0) :- er_left_falsum(X0),inter_falsum_block(X0).
-inter_er_left_falsum_inter_falsum_block(X0) :- object(X0),not inter_er_left_falsum_inter_falsum_block(X0).
inter_er_left_falsum_inter_falsum_table(X0) :- er_left_falsum(X0),inter_falsum_table(X0).
-inter_er_left_falsum_inter_falsum_table(X0) :- object(X0),not inter_er_left_falsum_inter_falsum_table(X0).
inter_er_left_falsum_inter_robot_block(X0) :- er_left_falsum(X0),inter_robot_block(X0).
-inter_er_left_falsum_inter_robot_block(X0) :- object(X0),not inter_er_left_falsum_inter_robot_block(X0).
inter_er_left_falsum_inter_robot_table(X0) :- er_left_falsum(X0),inter_robot_table(X0).
-inter_er_left_falsum_inter_robot_table(X0) :- object(X0),not inter_er_left_falsum_inter_robot_table(X0).
inter_er_left_falsum_inter_block_table(X0) :- er_left_falsum(X0),inter_block_table(X0).
-inter_er_left_falsum_inter_block_table(X0) :- object(X0),not inter_er_left_falsum_inter_block_table(X0).
inter_er_left_falsum_subset_verum_falsum(X0) :- er_left_falsum(X0),subset_verum_falsum(null).
-inter_er_left_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_left_falsum_subset_verum_falsum(X0).
inter_er_left_falsum_subset_verum_robot(X0) :- er_left_falsum(X0),subset_verum_robot(null).
-inter_er_left_falsum_subset_verum_robot(X0) :- object(X0),not inter_er_left_falsum_subset_verum_robot(X0).
inter_er_left_falsum_subset_verum_block(X0) :- er_left_falsum(X0),subset_verum_block(null).
-inter_er_left_falsum_subset_verum_block(X0) :- object(X0),not inter_er_left_falsum_subset_verum_block(X0).
inter_er_left_falsum_subset_verum_table(X0) :- er_left_falsum(X0),subset_verum_table(null).
-inter_er_left_falsum_subset_verum_table(X0) :- object(X0),not inter_er_left_falsum_subset_verum_table(X0).
inter_er_left_falsum_subset_falsum_robot(X0) :- er_left_falsum(X0),subset_falsum_robot(null).
-inter_er_left_falsum_subset_falsum_robot(X0) :- object(X0),not inter_er_left_falsum_subset_falsum_robot(X0).
inter_er_left_falsum_subset_falsum_block(X0) :- er_left_falsum(X0),subset_falsum_block(null).
-inter_er_left_falsum_subset_falsum_block(X0) :- object(X0),not inter_er_left_falsum_subset_falsum_block(X0).
inter_er_left_falsum_subset_falsum_table(X0) :- er_left_falsum(X0),subset_falsum_table(null).
-inter_er_left_falsum_subset_falsum_table(X0) :- object(X0),not inter_er_left_falsum_subset_falsum_table(X0).
inter_er_left_falsum_subset_robot_block(X0) :- er_left_falsum(X0),subset_robot_block(null).
-inter_er_left_falsum_subset_robot_block(X0) :- object(X0),not inter_er_left_falsum_subset_robot_block(X0).
inter_er_left_falsum_subset_robot_table(X0) :- er_left_falsum(X0),subset_robot_table(null).
-inter_er_left_falsum_subset_robot_table(X0) :- object(X0),not inter_er_left_falsum_subset_robot_table(X0).
inter_er_left_falsum_subset_block_table(X0) :- er_left_falsum(X0),subset_block_table(null).
-inter_er_left_falsum_subset_block_table(X0) :- object(X0),not inter_er_left_falsum_subset_block_table(X0).
inter_er_overlap_falsum_er_shape_falsum(X0) :- er_overlap_falsum(X0),er_shape_falsum(X0).
-inter_er_overlap_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_falsum(X0).
inter_er_overlap_falsum_er_smaller_robot(X0) :- er_overlap_falsum(X0),er_smaller_robot(X0).
-inter_er_overlap_falsum_er_smaller_robot(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_robot(X0).
inter_er_overlap_falsum_er_below_robot(X0) :- er_overlap_falsum(X0),er_below_robot(X0).
-inter_er_overlap_falsum_er_below_robot(X0) :- object(X0),not inter_er_overlap_falsum_er_below_robot(X0).
inter_er_overlap_falsum_er_left_robot(X0) :- er_overlap_falsum(X0),er_left_robot(X0).
-inter_er_overlap_falsum_er_left_robot(X0) :- object(X0),not inter_er_overlap_falsum_er_left_robot(X0).
inter_er_overlap_falsum_er_overlap_robot(X0) :- er_overlap_falsum(X0),er_overlap_robot(X0).
-inter_er_overlap_falsum_er_overlap_robot(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_robot(X0).
inter_er_overlap_falsum_er_shape_robot(X0) :- er_overlap_falsum(X0),er_shape_robot(X0).
-inter_er_overlap_falsum_er_shape_robot(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_robot(X0).
inter_er_overlap_falsum_er_smaller_block(X0) :- er_overlap_falsum(X0),er_smaller_block(X0).
-inter_er_overlap_falsum_er_smaller_block(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_block(X0).
inter_er_overlap_falsum_er_below_block(X0) :- er_overlap_falsum(X0),er_below_block(X0).
-inter_er_overlap_falsum_er_below_block(X0) :- object(X0),not inter_er_overlap_falsum_er_below_block(X0).
inter_er_overlap_falsum_er_left_block(X0) :- er_overlap_falsum(X0),er_left_block(X0).
-inter_er_overlap_falsum_er_left_block(X0) :- object(X0),not inter_er_overlap_falsum_er_left_block(X0).
inter_er_overlap_falsum_er_overlap_block(X0) :- er_overlap_falsum(X0),er_overlap_block(X0).
-inter_er_overlap_falsum_er_overlap_block(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_block(X0).
inter_er_overlap_falsum_er_shape_block(X0) :- er_overlap_falsum(X0),er_shape_block(X0).
-inter_er_overlap_falsum_er_shape_block(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_block(X0).
inter_er_overlap_falsum_er_smaller_table(X0) :- er_overlap_falsum(X0),er_smaller_table(X0).
-inter_er_overlap_falsum_er_smaller_table(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_table(X0).
inter_er_overlap_falsum_er_below_table(X0) :- er_overlap_falsum(X0),er_below_table(X0).
-inter_er_overlap_falsum_er_below_table(X0) :- object(X0),not inter_er_overlap_falsum_er_below_table(X0).
inter_er_overlap_falsum_er_left_table(X0) :- er_overlap_falsum(X0),er_left_table(X0).
-inter_er_overlap_falsum_er_left_table(X0) :- object(X0),not inter_er_overlap_falsum_er_left_table(X0).
inter_er_overlap_falsum_er_overlap_table(X0) :- er_overlap_falsum(X0),er_overlap_table(X0).
-inter_er_overlap_falsum_er_overlap_table(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_table(X0).
inter_er_overlap_falsum_er_shape_table(X0) :- er_overlap_falsum(X0),er_shape_table(X0).
-inter_er_overlap_falsum_er_shape_table(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_table(X0).
inter_er_overlap_falsum_inter_verum_falsum(X0) :- er_overlap_falsum(X0),inter_verum_falsum(X0).
-inter_er_overlap_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_falsum(X0).
inter_er_overlap_falsum_inter_verum_robot(X0) :- er_overlap_falsum(X0),inter_verum_robot(X0).
-inter_er_overlap_falsum_inter_verum_robot(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_robot(X0).
inter_er_overlap_falsum_inter_verum_block(X0) :- er_overlap_falsum(X0),inter_verum_block(X0).
-inter_er_overlap_falsum_inter_verum_block(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_block(X0).
inter_er_overlap_falsum_inter_verum_table(X0) :- er_overlap_falsum(X0),inter_verum_table(X0).
-inter_er_overlap_falsum_inter_verum_table(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_table(X0).
inter_er_overlap_falsum_inter_falsum_robot(X0) :- er_overlap_falsum(X0),inter_falsum_robot(X0).
-inter_er_overlap_falsum_inter_falsum_robot(X0) :- object(X0),not inter_er_overlap_falsum_inter_falsum_robot(X0).
inter_er_overlap_falsum_inter_falsum_block(X0) :- er_overlap_falsum(X0),inter_falsum_block(X0).
-inter_er_overlap_falsum_inter_falsum_block(X0) :- object(X0),not inter_er_overlap_falsum_inter_falsum_block(X0).
inter_er_overlap_falsum_inter_falsum_table(X0) :- er_overlap_falsum(X0),inter_falsum_table(X0).
-inter_er_overlap_falsum_inter_falsum_table(X0) :- object(X0),not inter_er_overlap_falsum_inter_falsum_table(X0).
inter_er_overlap_falsum_inter_robot_block(X0) :- er_overlap_falsum(X0),inter_robot_block(X0).
-inter_er_overlap_falsum_inter_robot_block(X0) :- object(X0),not inter_er_overlap_falsum_inter_robot_block(X0).
inter_er_overlap_falsum_inter_robot_table(X0) :- er_overlap_falsum(X0),inter_robot_table(X0).
-inter_er_overlap_falsum_inter_robot_table(X0) :- object(X0),not inter_er_overlap_falsum_inter_robot_table(X0).
inter_er_overlap_falsum_inter_block_table(X0) :- er_overlap_falsum(X0),inter_block_table(X0).
-inter_er_overlap_falsum_inter_block_table(X0) :- object(X0),not inter_er_overlap_falsum_inter_block_table(X0).
inter_er_overlap_falsum_subset_verum_falsum(X0) :- er_overlap_falsum(X0),subset_verum_falsum(null).
-inter_er_overlap_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_falsum(X0).
inter_er_overlap_falsum_subset_verum_robot(X0) :- er_overlap_falsum(X0),subset_verum_robot(null).
-inter_er_overlap_falsum_subset_verum_robot(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_robot(X0).
inter_er_overlap_falsum_subset_verum_block(X0) :- er_overlap_falsum(X0),subset_verum_block(null).
-inter_er_overlap_falsum_subset_verum_block(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_block(X0).
inter_er_overlap_falsum_subset_verum_table(X0) :- er_overlap_falsum(X0),subset_verum_table(null).
-inter_er_overlap_falsum_subset_verum_table(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_table(X0).
inter_er_overlap_falsum_subset_falsum_robot(X0) :- er_overlap_falsum(X0),subset_falsum_robot(null).
-inter_er_overlap_falsum_subset_falsum_robot(X0) :- object(X0),not inter_er_overlap_falsum_subset_falsum_robot(X0).
inter_er_overlap_falsum_subset_falsum_block(X0) :- er_overlap_falsum(X0),subset_falsum_block(null).
-inter_er_overlap_falsum_subset_falsum_block(X0) :- object(X0),not inter_er_overlap_falsum_subset_falsum_block(X0).
inter_er_overlap_falsum_subset_falsum_table(X0) :- er_overlap_falsum(X0),subset_falsum_table(null).
-inter_er_overlap_falsum_subset_falsum_table(X0) :- object(X0),not inter_er_overlap_falsum_subset_falsum_table(X0).
inter_er_overlap_falsum_subset_robot_block(X0) :- er_overlap_falsum(X0),subset_robot_block(null).
-inter_er_overlap_falsum_subset_robot_block(X0) :- object(X0),not inter_er_overlap_falsum_subset_robot_block(X0).
inter_er_overlap_falsum_subset_robot_table(X0) :- er_overlap_falsum(X0),subset_robot_table(null).
-inter_er_overlap_falsum_subset_robot_table(X0) :- object(X0),not inter_er_overlap_falsum_subset_robot_table(X0).
inter_er_overlap_falsum_subset_block_table(X0) :- er_overlap_falsum(X0),subset_block_table(null).
-inter_er_overlap_falsum_subset_block_table(X0) :- object(X0),not inter_er_overlap_falsum_subset_block_table(X0).
inter_er_shape_falsum_er_smaller_robot(X0) :- er_shape_falsum(X0),er_smaller_robot(X0).
-inter_er_shape_falsum_er_smaller_robot(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_robot(X0).
inter_er_shape_falsum_er_below_robot(X0) :- er_shape_falsum(X0),er_below_robot(X0).
-inter_er_shape_falsum_er_below_robot(X0) :- object(X0),not inter_er_shape_falsum_er_below_robot(X0).
inter_er_shape_falsum_er_left_robot(X0) :- er_shape_falsum(X0),er_left_robot(X0).
-inter_er_shape_falsum_er_left_robot(X0) :- object(X0),not inter_er_shape_falsum_er_left_robot(X0).
inter_er_shape_falsum_er_overlap_robot(X0) :- er_shape_falsum(X0),er_overlap_robot(X0).
-inter_er_shape_falsum_er_overlap_robot(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_robot(X0).
inter_er_shape_falsum_er_shape_robot(X0) :- er_shape_falsum(X0),er_shape_robot(X0).
-inter_er_shape_falsum_er_shape_robot(X0) :- object(X0),not inter_er_shape_falsum_er_shape_robot(X0).
inter_er_shape_falsum_er_smaller_block(X0) :- er_shape_falsum(X0),er_smaller_block(X0).
-inter_er_shape_falsum_er_smaller_block(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_block(X0).
inter_er_shape_falsum_er_below_block(X0) :- er_shape_falsum(X0),er_below_block(X0).
-inter_er_shape_falsum_er_below_block(X0) :- object(X0),not inter_er_shape_falsum_er_below_block(X0).
inter_er_shape_falsum_er_left_block(X0) :- er_shape_falsum(X0),er_left_block(X0).
-inter_er_shape_falsum_er_left_block(X0) :- object(X0),not inter_er_shape_falsum_er_left_block(X0).
inter_er_shape_falsum_er_overlap_block(X0) :- er_shape_falsum(X0),er_overlap_block(X0).
-inter_er_shape_falsum_er_overlap_block(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_block(X0).
inter_er_shape_falsum_er_shape_block(X0) :- er_shape_falsum(X0),er_shape_block(X0).
-inter_er_shape_falsum_er_shape_block(X0) :- object(X0),not inter_er_shape_falsum_er_shape_block(X0).
inter_er_shape_falsum_er_smaller_table(X0) :- er_shape_falsum(X0),er_smaller_table(X0).
-inter_er_shape_falsum_er_smaller_table(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_table(X0).
inter_er_shape_falsum_er_below_table(X0) :- er_shape_falsum(X0),er_below_table(X0).
-inter_er_shape_falsum_er_below_table(X0) :- object(X0),not inter_er_shape_falsum_er_below_table(X0).
inter_er_shape_falsum_er_left_table(X0) :- er_shape_falsum(X0),er_left_table(X0).
-inter_er_shape_falsum_er_left_table(X0) :- object(X0),not inter_er_shape_falsum_er_left_table(X0).
inter_er_shape_falsum_er_overlap_table(X0) :- er_shape_falsum(X0),er_overlap_table(X0).
-inter_er_shape_falsum_er_overlap_table(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_table(X0).
inter_er_shape_falsum_er_shape_table(X0) :- er_shape_falsum(X0),er_shape_table(X0).
-inter_er_shape_falsum_er_shape_table(X0) :- object(X0),not inter_er_shape_falsum_er_shape_table(X0).
inter_er_shape_falsum_inter_verum_falsum(X0) :- er_shape_falsum(X0),inter_verum_falsum(X0).
-inter_er_shape_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_falsum(X0).
inter_er_shape_falsum_inter_verum_robot(X0) :- er_shape_falsum(X0),inter_verum_robot(X0).
-inter_er_shape_falsum_inter_verum_robot(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_robot(X0).
inter_er_shape_falsum_inter_verum_block(X0) :- er_shape_falsum(X0),inter_verum_block(X0).
-inter_er_shape_falsum_inter_verum_block(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_block(X0).
inter_er_shape_falsum_inter_verum_table(X0) :- er_shape_falsum(X0),inter_verum_table(X0).
-inter_er_shape_falsum_inter_verum_table(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_table(X0).
inter_er_shape_falsum_inter_falsum_robot(X0) :- er_shape_falsum(X0),inter_falsum_robot(X0).
-inter_er_shape_falsum_inter_falsum_robot(X0) :- object(X0),not inter_er_shape_falsum_inter_falsum_robot(X0).
inter_er_shape_falsum_inter_falsum_block(X0) :- er_shape_falsum(X0),inter_falsum_block(X0).
-inter_er_shape_falsum_inter_falsum_block(X0) :- object(X0),not inter_er_shape_falsum_inter_falsum_block(X0).
inter_er_shape_falsum_inter_falsum_table(X0) :- er_shape_falsum(X0),inter_falsum_table(X0).
-inter_er_shape_falsum_inter_falsum_table(X0) :- object(X0),not inter_er_shape_falsum_inter_falsum_table(X0).
inter_er_shape_falsum_inter_robot_block(X0) :- er_shape_falsum(X0),inter_robot_block(X0).
-inter_er_shape_falsum_inter_robot_block(X0) :- object(X0),not inter_er_shape_falsum_inter_robot_block(X0).
inter_er_shape_falsum_inter_robot_table(X0) :- er_shape_falsum(X0),inter_robot_table(X0).
-inter_er_shape_falsum_inter_robot_table(X0) :- object(X0),not inter_er_shape_falsum_inter_robot_table(X0).
inter_er_shape_falsum_inter_block_table(X0) :- er_shape_falsum(X0),inter_block_table(X0).
-inter_er_shape_falsum_inter_block_table(X0) :- object(X0),not inter_er_shape_falsum_inter_block_table(X0).
inter_er_shape_falsum_subset_verum_falsum(X0) :- er_shape_falsum(X0),subset_verum_falsum(null).
-inter_er_shape_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_falsum(X0).
inter_er_shape_falsum_subset_verum_robot(X0) :- er_shape_falsum(X0),subset_verum_robot(null).
-inter_er_shape_falsum_subset_verum_robot(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_robot(X0).
inter_er_shape_falsum_subset_verum_block(X0) :- er_shape_falsum(X0),subset_verum_block(null).
-inter_er_shape_falsum_subset_verum_block(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_block(X0).
inter_er_shape_falsum_subset_verum_table(X0) :- er_shape_falsum(X0),subset_verum_table(null).
-inter_er_shape_falsum_subset_verum_table(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_table(X0).
inter_er_shape_falsum_subset_falsum_robot(X0) :- er_shape_falsum(X0),subset_falsum_robot(null).
-inter_er_shape_falsum_subset_falsum_robot(X0) :- object(X0),not inter_er_shape_falsum_subset_falsum_robot(X0).
inter_er_shape_falsum_subset_falsum_block(X0) :- er_shape_falsum(X0),subset_falsum_block(null).
-inter_er_shape_falsum_subset_falsum_block(X0) :- object(X0),not inter_er_shape_falsum_subset_falsum_block(X0).
inter_er_shape_falsum_subset_falsum_table(X0) :- er_shape_falsum(X0),subset_falsum_table(null).
-inter_er_shape_falsum_subset_falsum_table(X0) :- object(X0),not inter_er_shape_falsum_subset_falsum_table(X0).
inter_er_shape_falsum_subset_robot_block(X0) :- er_shape_falsum(X0),subset_robot_block(null).
-inter_er_shape_falsum_subset_robot_block(X0) :- object(X0),not inter_er_shape_falsum_subset_robot_block(X0).
inter_er_shape_falsum_subset_robot_table(X0) :- er_shape_falsum(X0),subset_robot_table(null).
-inter_er_shape_falsum_subset_robot_table(X0) :- object(X0),not inter_er_shape_falsum_subset_robot_table(X0).
inter_er_shape_falsum_subset_block_table(X0) :- er_shape_falsum(X0),subset_block_table(null).
-inter_er_shape_falsum_subset_block_table(X0) :- object(X0),not inter_er_shape_falsum_subset_block_table(X0).
inter_er_smaller_robot_er_below_robot(X0) :- er_smaller_robot(X0),er_below_robot(X0).
-inter_er_smaller_robot_er_below_robot(X0) :- object(X0),not inter_er_smaller_robot_er_below_robot(X0).
inter_er_smaller_robot_er_left_robot(X0) :- er_smaller_robot(X0),er_left_robot(X0).
-inter_er_smaller_robot_er_left_robot(X0) :- object(X0),not inter_er_smaller_robot_er_left_robot(X0).
inter_er_smaller_robot_er_overlap_robot(X0) :- er_smaller_robot(X0),er_overlap_robot(X0).
-inter_er_smaller_robot_er_overlap_robot(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_robot(X0).
inter_er_smaller_robot_er_shape_robot(X0) :- er_smaller_robot(X0),er_shape_robot(X0).
-inter_er_smaller_robot_er_shape_robot(X0) :- object(X0),not inter_er_smaller_robot_er_shape_robot(X0).
inter_er_smaller_robot_er_smaller_block(X0) :- er_smaller_robot(X0),er_smaller_block(X0).
-inter_er_smaller_robot_er_smaller_block(X0) :- object(X0),not inter_er_smaller_robot_er_smaller_block(X0).
inter_er_smaller_robot_er_below_block(X0) :- er_smaller_robot(X0),er_below_block(X0).
-inter_er_smaller_robot_er_below_block(X0) :- object(X0),not inter_er_smaller_robot_er_below_block(X0).
inter_er_smaller_robot_er_left_block(X0) :- er_smaller_robot(X0),er_left_block(X0).
-inter_er_smaller_robot_er_left_block(X0) :- object(X0),not inter_er_smaller_robot_er_left_block(X0).
inter_er_smaller_robot_er_overlap_block(X0) :- er_smaller_robot(X0),er_overlap_block(X0).
-inter_er_smaller_robot_er_overlap_block(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_block(X0).
inter_er_smaller_robot_er_shape_block(X0) :- er_smaller_robot(X0),er_shape_block(X0).
-inter_er_smaller_robot_er_shape_block(X0) :- object(X0),not inter_er_smaller_robot_er_shape_block(X0).
inter_er_smaller_robot_er_smaller_table(X0) :- er_smaller_robot(X0),er_smaller_table(X0).
-inter_er_smaller_robot_er_smaller_table(X0) :- object(X0),not inter_er_smaller_robot_er_smaller_table(X0).
inter_er_smaller_robot_er_below_table(X0) :- er_smaller_robot(X0),er_below_table(X0).
-inter_er_smaller_robot_er_below_table(X0) :- object(X0),not inter_er_smaller_robot_er_below_table(X0).
inter_er_smaller_robot_er_left_table(X0) :- er_smaller_robot(X0),er_left_table(X0).
-inter_er_smaller_robot_er_left_table(X0) :- object(X0),not inter_er_smaller_robot_er_left_table(X0).
inter_er_smaller_robot_er_overlap_table(X0) :- er_smaller_robot(X0),er_overlap_table(X0).
-inter_er_smaller_robot_er_overlap_table(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_table(X0).
inter_er_smaller_robot_er_shape_table(X0) :- er_smaller_robot(X0),er_shape_table(X0).
-inter_er_smaller_robot_er_shape_table(X0) :- object(X0),not inter_er_smaller_robot_er_shape_table(X0).
inter_er_smaller_robot_inter_verum_falsum(X0) :- er_smaller_robot(X0),inter_verum_falsum(X0).
-inter_er_smaller_robot_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_robot_inter_verum_falsum(X0).
inter_er_smaller_robot_inter_verum_robot(X0) :- er_smaller_robot(X0),inter_verum_robot(X0).
-inter_er_smaller_robot_inter_verum_robot(X0) :- object(X0),not inter_er_smaller_robot_inter_verum_robot(X0).
inter_er_smaller_robot_inter_verum_block(X0) :- er_smaller_robot(X0),inter_verum_block(X0).
-inter_er_smaller_robot_inter_verum_block(X0) :- object(X0),not inter_er_smaller_robot_inter_verum_block(X0).
inter_er_smaller_robot_inter_verum_table(X0) :- er_smaller_robot(X0),inter_verum_table(X0).
-inter_er_smaller_robot_inter_verum_table(X0) :- object(X0),not inter_er_smaller_robot_inter_verum_table(X0).
inter_er_smaller_robot_inter_falsum_robot(X0) :- er_smaller_robot(X0),inter_falsum_robot(X0).
-inter_er_smaller_robot_inter_falsum_robot(X0) :- object(X0),not inter_er_smaller_robot_inter_falsum_robot(X0).
inter_er_smaller_robot_inter_falsum_block(X0) :- er_smaller_robot(X0),inter_falsum_block(X0).
-inter_er_smaller_robot_inter_falsum_block(X0) :- object(X0),not inter_er_smaller_robot_inter_falsum_block(X0).
inter_er_smaller_robot_inter_falsum_table(X0) :- er_smaller_robot(X0),inter_falsum_table(X0).
-inter_er_smaller_robot_inter_falsum_table(X0) :- object(X0),not inter_er_smaller_robot_inter_falsum_table(X0).
inter_er_smaller_robot_inter_robot_block(X0) :- er_smaller_robot(X0),inter_robot_block(X0).
-inter_er_smaller_robot_inter_robot_block(X0) :- object(X0),not inter_er_smaller_robot_inter_robot_block(X0).
inter_er_smaller_robot_inter_robot_table(X0) :- er_smaller_robot(X0),inter_robot_table(X0).
-inter_er_smaller_robot_inter_robot_table(X0) :- object(X0),not inter_er_smaller_robot_inter_robot_table(X0).
inter_er_smaller_robot_inter_block_table(X0) :- er_smaller_robot(X0),inter_block_table(X0).
-inter_er_smaller_robot_inter_block_table(X0) :- object(X0),not inter_er_smaller_robot_inter_block_table(X0).
inter_er_smaller_robot_subset_verum_falsum(X0) :- er_smaller_robot(X0),subset_verum_falsum(null).
-inter_er_smaller_robot_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_robot_subset_verum_falsum(X0).
inter_er_smaller_robot_subset_verum_robot(X0) :- er_smaller_robot(X0),subset_verum_robot(null).
-inter_er_smaller_robot_subset_verum_robot(X0) :- object(X0),not inter_er_smaller_robot_subset_verum_robot(X0).
inter_er_smaller_robot_subset_verum_block(X0) :- er_smaller_robot(X0),subset_verum_block(null).
-inter_er_smaller_robot_subset_verum_block(X0) :- object(X0),not inter_er_smaller_robot_subset_verum_block(X0).
inter_er_smaller_robot_subset_verum_table(X0) :- er_smaller_robot(X0),subset_verum_table(null).
-inter_er_smaller_robot_subset_verum_table(X0) :- object(X0),not inter_er_smaller_robot_subset_verum_table(X0).
inter_er_smaller_robot_subset_falsum_robot(X0) :- er_smaller_robot(X0),subset_falsum_robot(null).
-inter_er_smaller_robot_subset_falsum_robot(X0) :- object(X0),not inter_er_smaller_robot_subset_falsum_robot(X0).
inter_er_smaller_robot_subset_falsum_block(X0) :- er_smaller_robot(X0),subset_falsum_block(null).
-inter_er_smaller_robot_subset_falsum_block(X0) :- object(X0),not inter_er_smaller_robot_subset_falsum_block(X0).
inter_er_smaller_robot_subset_falsum_table(X0) :- er_smaller_robot(X0),subset_falsum_table(null).
-inter_er_smaller_robot_subset_falsum_table(X0) :- object(X0),not inter_er_smaller_robot_subset_falsum_table(X0).
inter_er_smaller_robot_subset_robot_block(X0) :- er_smaller_robot(X0),subset_robot_block(null).
-inter_er_smaller_robot_subset_robot_block(X0) :- object(X0),not inter_er_smaller_robot_subset_robot_block(X0).
inter_er_smaller_robot_subset_robot_table(X0) :- er_smaller_robot(X0),subset_robot_table(null).
-inter_er_smaller_robot_subset_robot_table(X0) :- object(X0),not inter_er_smaller_robot_subset_robot_table(X0).
inter_er_smaller_robot_subset_block_table(X0) :- er_smaller_robot(X0),subset_block_table(null).
-inter_er_smaller_robot_subset_block_table(X0) :- object(X0),not inter_er_smaller_robot_subset_block_table(X0).
inter_er_below_robot_er_left_robot(X0) :- er_below_robot(X0),er_left_robot(X0).
-inter_er_below_robot_er_left_robot(X0) :- object(X0),not inter_er_below_robot_er_left_robot(X0).
inter_er_below_robot_er_overlap_robot(X0) :- er_below_robot(X0),er_overlap_robot(X0).
-inter_er_below_robot_er_overlap_robot(X0) :- object(X0),not inter_er_below_robot_er_overlap_robot(X0).
inter_er_below_robot_er_shape_robot(X0) :- er_below_robot(X0),er_shape_robot(X0).
-inter_er_below_robot_er_shape_robot(X0) :- object(X0),not inter_er_below_robot_er_shape_robot(X0).
inter_er_below_robot_er_smaller_block(X0) :- er_below_robot(X0),er_smaller_block(X0).
-inter_er_below_robot_er_smaller_block(X0) :- object(X0),not inter_er_below_robot_er_smaller_block(X0).
inter_er_below_robot_er_below_block(X0) :- er_below_robot(X0),er_below_block(X0).
-inter_er_below_robot_er_below_block(X0) :- object(X0),not inter_er_below_robot_er_below_block(X0).
inter_er_below_robot_er_left_block(X0) :- er_below_robot(X0),er_left_block(X0).
-inter_er_below_robot_er_left_block(X0) :- object(X0),not inter_er_below_robot_er_left_block(X0).
inter_er_below_robot_er_overlap_block(X0) :- er_below_robot(X0),er_overlap_block(X0).
-inter_er_below_robot_er_overlap_block(X0) :- object(X0),not inter_er_below_robot_er_overlap_block(X0).
inter_er_below_robot_er_shape_block(X0) :- er_below_robot(X0),er_shape_block(X0).
-inter_er_below_robot_er_shape_block(X0) :- object(X0),not inter_er_below_robot_er_shape_block(X0).
inter_er_below_robot_er_smaller_table(X0) :- er_below_robot(X0),er_smaller_table(X0).
-inter_er_below_robot_er_smaller_table(X0) :- object(X0),not inter_er_below_robot_er_smaller_table(X0).
inter_er_below_robot_er_below_table(X0) :- er_below_robot(X0),er_below_table(X0).
-inter_er_below_robot_er_below_table(X0) :- object(X0),not inter_er_below_robot_er_below_table(X0).
inter_er_below_robot_er_left_table(X0) :- er_below_robot(X0),er_left_table(X0).
-inter_er_below_robot_er_left_table(X0) :- object(X0),not inter_er_below_robot_er_left_table(X0).
inter_er_below_robot_er_overlap_table(X0) :- er_below_robot(X0),er_overlap_table(X0).
-inter_er_below_robot_er_overlap_table(X0) :- object(X0),not inter_er_below_robot_er_overlap_table(X0).
inter_er_below_robot_er_shape_table(X0) :- er_below_robot(X0),er_shape_table(X0).
-inter_er_below_robot_er_shape_table(X0) :- object(X0),not inter_er_below_robot_er_shape_table(X0).
inter_er_below_robot_inter_verum_falsum(X0) :- er_below_robot(X0),inter_verum_falsum(X0).
-inter_er_below_robot_inter_verum_falsum(X0) :- object(X0),not inter_er_below_robot_inter_verum_falsum(X0).
inter_er_below_robot_inter_verum_robot(X0) :- er_below_robot(X0),inter_verum_robot(X0).
-inter_er_below_robot_inter_verum_robot(X0) :- object(X0),not inter_er_below_robot_inter_verum_robot(X0).
inter_er_below_robot_inter_verum_block(X0) :- er_below_robot(X0),inter_verum_block(X0).
-inter_er_below_robot_inter_verum_block(X0) :- object(X0),not inter_er_below_robot_inter_verum_block(X0).
inter_er_below_robot_inter_verum_table(X0) :- er_below_robot(X0),inter_verum_table(X0).
-inter_er_below_robot_inter_verum_table(X0) :- object(X0),not inter_er_below_robot_inter_verum_table(X0).
inter_er_below_robot_inter_falsum_robot(X0) :- er_below_robot(X0),inter_falsum_robot(X0).
-inter_er_below_robot_inter_falsum_robot(X0) :- object(X0),not inter_er_below_robot_inter_falsum_robot(X0).
inter_er_below_robot_inter_falsum_block(X0) :- er_below_robot(X0),inter_falsum_block(X0).
-inter_er_below_robot_inter_falsum_block(X0) :- object(X0),not inter_er_below_robot_inter_falsum_block(X0).
inter_er_below_robot_inter_falsum_table(X0) :- er_below_robot(X0),inter_falsum_table(X0).
-inter_er_below_robot_inter_falsum_table(X0) :- object(X0),not inter_er_below_robot_inter_falsum_table(X0).
inter_er_below_robot_inter_robot_block(X0) :- er_below_robot(X0),inter_robot_block(X0).
-inter_er_below_robot_inter_robot_block(X0) :- object(X0),not inter_er_below_robot_inter_robot_block(X0).
inter_er_below_robot_inter_robot_table(X0) :- er_below_robot(X0),inter_robot_table(X0).
-inter_er_below_robot_inter_robot_table(X0) :- object(X0),not inter_er_below_robot_inter_robot_table(X0).
inter_er_below_robot_inter_block_table(X0) :- er_below_robot(X0),inter_block_table(X0).
-inter_er_below_robot_inter_block_table(X0) :- object(X0),not inter_er_below_robot_inter_block_table(X0).
inter_er_below_robot_subset_verum_falsum(X0) :- er_below_robot(X0),subset_verum_falsum(null).
-inter_er_below_robot_subset_verum_falsum(X0) :- object(X0),not inter_er_below_robot_subset_verum_falsum(X0).
inter_er_below_robot_subset_verum_robot(X0) :- er_below_robot(X0),subset_verum_robot(null).
-inter_er_below_robot_subset_verum_robot(X0) :- object(X0),not inter_er_below_robot_subset_verum_robot(X0).
inter_er_below_robot_subset_verum_block(X0) :- er_below_robot(X0),subset_verum_block(null).
-inter_er_below_robot_subset_verum_block(X0) :- object(X0),not inter_er_below_robot_subset_verum_block(X0).
inter_er_below_robot_subset_verum_table(X0) :- er_below_robot(X0),subset_verum_table(null).
-inter_er_below_robot_subset_verum_table(X0) :- object(X0),not inter_er_below_robot_subset_verum_table(X0).
inter_er_below_robot_subset_falsum_robot(X0) :- er_below_robot(X0),subset_falsum_robot(null).
-inter_er_below_robot_subset_falsum_robot(X0) :- object(X0),not inter_er_below_robot_subset_falsum_robot(X0).
inter_er_below_robot_subset_falsum_block(X0) :- er_below_robot(X0),subset_falsum_block(null).
-inter_er_below_robot_subset_falsum_block(X0) :- object(X0),not inter_er_below_robot_subset_falsum_block(X0).
inter_er_below_robot_subset_falsum_table(X0) :- er_below_robot(X0),subset_falsum_table(null).
-inter_er_below_robot_subset_falsum_table(X0) :- object(X0),not inter_er_below_robot_subset_falsum_table(X0).
inter_er_below_robot_subset_robot_block(X0) :- er_below_robot(X0),subset_robot_block(null).
-inter_er_below_robot_subset_robot_block(X0) :- object(X0),not inter_er_below_robot_subset_robot_block(X0).
inter_er_below_robot_subset_robot_table(X0) :- er_below_robot(X0),subset_robot_table(null).
-inter_er_below_robot_subset_robot_table(X0) :- object(X0),not inter_er_below_robot_subset_robot_table(X0).
inter_er_below_robot_subset_block_table(X0) :- er_below_robot(X0),subset_block_table(null).
-inter_er_below_robot_subset_block_table(X0) :- object(X0),not inter_er_below_robot_subset_block_table(X0).
inter_er_left_robot_er_overlap_robot(X0) :- er_left_robot(X0),er_overlap_robot(X0).
-inter_er_left_robot_er_overlap_robot(X0) :- object(X0),not inter_er_left_robot_er_overlap_robot(X0).
inter_er_left_robot_er_shape_robot(X0) :- er_left_robot(X0),er_shape_robot(X0).
-inter_er_left_robot_er_shape_robot(X0) :- object(X0),not inter_er_left_robot_er_shape_robot(X0).
inter_er_left_robot_er_smaller_block(X0) :- er_left_robot(X0),er_smaller_block(X0).
-inter_er_left_robot_er_smaller_block(X0) :- object(X0),not inter_er_left_robot_er_smaller_block(X0).
inter_er_left_robot_er_below_block(X0) :- er_left_robot(X0),er_below_block(X0).
-inter_er_left_robot_er_below_block(X0) :- object(X0),not inter_er_left_robot_er_below_block(X0).
inter_er_left_robot_er_left_block(X0) :- er_left_robot(X0),er_left_block(X0).
-inter_er_left_robot_er_left_block(X0) :- object(X0),not inter_er_left_robot_er_left_block(X0).
inter_er_left_robot_er_overlap_block(X0) :- er_left_robot(X0),er_overlap_block(X0).
-inter_er_left_robot_er_overlap_block(X0) :- object(X0),not inter_er_left_robot_er_overlap_block(X0).
inter_er_left_robot_er_shape_block(X0) :- er_left_robot(X0),er_shape_block(X0).
-inter_er_left_robot_er_shape_block(X0) :- object(X0),not inter_er_left_robot_er_shape_block(X0).
inter_er_left_robot_er_smaller_table(X0) :- er_left_robot(X0),er_smaller_table(X0).
-inter_er_left_robot_er_smaller_table(X0) :- object(X0),not inter_er_left_robot_er_smaller_table(X0).
inter_er_left_robot_er_below_table(X0) :- er_left_robot(X0),er_below_table(X0).
-inter_er_left_robot_er_below_table(X0) :- object(X0),not inter_er_left_robot_er_below_table(X0).
inter_er_left_robot_er_left_table(X0) :- er_left_robot(X0),er_left_table(X0).
-inter_er_left_robot_er_left_table(X0) :- object(X0),not inter_er_left_robot_er_left_table(X0).
inter_er_left_robot_er_overlap_table(X0) :- er_left_robot(X0),er_overlap_table(X0).
-inter_er_left_robot_er_overlap_table(X0) :- object(X0),not inter_er_left_robot_er_overlap_table(X0).
inter_er_left_robot_er_shape_table(X0) :- er_left_robot(X0),er_shape_table(X0).
-inter_er_left_robot_er_shape_table(X0) :- object(X0),not inter_er_left_robot_er_shape_table(X0).
inter_er_left_robot_inter_verum_falsum(X0) :- er_left_robot(X0),inter_verum_falsum(X0).
-inter_er_left_robot_inter_verum_falsum(X0) :- object(X0),not inter_er_left_robot_inter_verum_falsum(X0).
inter_er_left_robot_inter_verum_robot(X0) :- er_left_robot(X0),inter_verum_robot(X0).
-inter_er_left_robot_inter_verum_robot(X0) :- object(X0),not inter_er_left_robot_inter_verum_robot(X0).
inter_er_left_robot_inter_verum_block(X0) :- er_left_robot(X0),inter_verum_block(X0).
-inter_er_left_robot_inter_verum_block(X0) :- object(X0),not inter_er_left_robot_inter_verum_block(X0).
inter_er_left_robot_inter_verum_table(X0) :- er_left_robot(X0),inter_verum_table(X0).
-inter_er_left_robot_inter_verum_table(X0) :- object(X0),not inter_er_left_robot_inter_verum_table(X0).
inter_er_left_robot_inter_falsum_robot(X0) :- er_left_robot(X0),inter_falsum_robot(X0).
-inter_er_left_robot_inter_falsum_robot(X0) :- object(X0),not inter_er_left_robot_inter_falsum_robot(X0).
inter_er_left_robot_inter_falsum_block(X0) :- er_left_robot(X0),inter_falsum_block(X0).
-inter_er_left_robot_inter_falsum_block(X0) :- object(X0),not inter_er_left_robot_inter_falsum_block(X0).
inter_er_left_robot_inter_falsum_table(X0) :- er_left_robot(X0),inter_falsum_table(X0).
-inter_er_left_robot_inter_falsum_table(X0) :- object(X0),not inter_er_left_robot_inter_falsum_table(X0).
inter_er_left_robot_inter_robot_block(X0) :- er_left_robot(X0),inter_robot_block(X0).
-inter_er_left_robot_inter_robot_block(X0) :- object(X0),not inter_er_left_robot_inter_robot_block(X0).
inter_er_left_robot_inter_robot_table(X0) :- er_left_robot(X0),inter_robot_table(X0).
-inter_er_left_robot_inter_robot_table(X0) :- object(X0),not inter_er_left_robot_inter_robot_table(X0).
inter_er_left_robot_inter_block_table(X0) :- er_left_robot(X0),inter_block_table(X0).
-inter_er_left_robot_inter_block_table(X0) :- object(X0),not inter_er_left_robot_inter_block_table(X0).
inter_er_left_robot_subset_verum_falsum(X0) :- er_left_robot(X0),subset_verum_falsum(null).
-inter_er_left_robot_subset_verum_falsum(X0) :- object(X0),not inter_er_left_robot_subset_verum_falsum(X0).
inter_er_left_robot_subset_verum_robot(X0) :- er_left_robot(X0),subset_verum_robot(null).
-inter_er_left_robot_subset_verum_robot(X0) :- object(X0),not inter_er_left_robot_subset_verum_robot(X0).
inter_er_left_robot_subset_verum_block(X0) :- er_left_robot(X0),subset_verum_block(null).
-inter_er_left_robot_subset_verum_block(X0) :- object(X0),not inter_er_left_robot_subset_verum_block(X0).
inter_er_left_robot_subset_verum_table(X0) :- er_left_robot(X0),subset_verum_table(null).
-inter_er_left_robot_subset_verum_table(X0) :- object(X0),not inter_er_left_robot_subset_verum_table(X0).
inter_er_left_robot_subset_falsum_robot(X0) :- er_left_robot(X0),subset_falsum_robot(null).
-inter_er_left_robot_subset_falsum_robot(X0) :- object(X0),not inter_er_left_robot_subset_falsum_robot(X0).
inter_er_left_robot_subset_falsum_block(X0) :- er_left_robot(X0),subset_falsum_block(null).
-inter_er_left_robot_subset_falsum_block(X0) :- object(X0),not inter_er_left_robot_subset_falsum_block(X0).
inter_er_left_robot_subset_falsum_table(X0) :- er_left_robot(X0),subset_falsum_table(null).
-inter_er_left_robot_subset_falsum_table(X0) :- object(X0),not inter_er_left_robot_subset_falsum_table(X0).
inter_er_left_robot_subset_robot_block(X0) :- er_left_robot(X0),subset_robot_block(null).
-inter_er_left_robot_subset_robot_block(X0) :- object(X0),not inter_er_left_robot_subset_robot_block(X0).
inter_er_left_robot_subset_robot_table(X0) :- er_left_robot(X0),subset_robot_table(null).
-inter_er_left_robot_subset_robot_table(X0) :- object(X0),not inter_er_left_robot_subset_robot_table(X0).
inter_er_left_robot_subset_block_table(X0) :- er_left_robot(X0),subset_block_table(null).
-inter_er_left_robot_subset_block_table(X0) :- object(X0),not inter_er_left_robot_subset_block_table(X0).
inter_er_overlap_robot_er_shape_robot(X0) :- er_overlap_robot(X0),er_shape_robot(X0).
-inter_er_overlap_robot_er_shape_robot(X0) :- object(X0),not inter_er_overlap_robot_er_shape_robot(X0).
inter_er_overlap_robot_er_smaller_block(X0) :- er_overlap_robot(X0),er_smaller_block(X0).
-inter_er_overlap_robot_er_smaller_block(X0) :- object(X0),not inter_er_overlap_robot_er_smaller_block(X0).
inter_er_overlap_robot_er_below_block(X0) :- er_overlap_robot(X0),er_below_block(X0).
-inter_er_overlap_robot_er_below_block(X0) :- object(X0),not inter_er_overlap_robot_er_below_block(X0).
inter_er_overlap_robot_er_left_block(X0) :- er_overlap_robot(X0),er_left_block(X0).
-inter_er_overlap_robot_er_left_block(X0) :- object(X0),not inter_er_overlap_robot_er_left_block(X0).
inter_er_overlap_robot_er_overlap_block(X0) :- er_overlap_robot(X0),er_overlap_block(X0).
-inter_er_overlap_robot_er_overlap_block(X0) :- object(X0),not inter_er_overlap_robot_er_overlap_block(X0).
inter_er_overlap_robot_er_shape_block(X0) :- er_overlap_robot(X0),er_shape_block(X0).
-inter_er_overlap_robot_er_shape_block(X0) :- object(X0),not inter_er_overlap_robot_er_shape_block(X0).
inter_er_overlap_robot_er_smaller_table(X0) :- er_overlap_robot(X0),er_smaller_table(X0).
-inter_er_overlap_robot_er_smaller_table(X0) :- object(X0),not inter_er_overlap_robot_er_smaller_table(X0).
inter_er_overlap_robot_er_below_table(X0) :- er_overlap_robot(X0),er_below_table(X0).
-inter_er_overlap_robot_er_below_table(X0) :- object(X0),not inter_er_overlap_robot_er_below_table(X0).
inter_er_overlap_robot_er_left_table(X0) :- er_overlap_robot(X0),er_left_table(X0).
-inter_er_overlap_robot_er_left_table(X0) :- object(X0),not inter_er_overlap_robot_er_left_table(X0).
inter_er_overlap_robot_er_overlap_table(X0) :- er_overlap_robot(X0),er_overlap_table(X0).
-inter_er_overlap_robot_er_overlap_table(X0) :- object(X0),not inter_er_overlap_robot_er_overlap_table(X0).
inter_er_overlap_robot_er_shape_table(X0) :- er_overlap_robot(X0),er_shape_table(X0).
-inter_er_overlap_robot_er_shape_table(X0) :- object(X0),not inter_er_overlap_robot_er_shape_table(X0).
inter_er_overlap_robot_inter_verum_falsum(X0) :- er_overlap_robot(X0),inter_verum_falsum(X0).
-inter_er_overlap_robot_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_robot_inter_verum_falsum(X0).
inter_er_overlap_robot_inter_verum_robot(X0) :- er_overlap_robot(X0),inter_verum_robot(X0).
-inter_er_overlap_robot_inter_verum_robot(X0) :- object(X0),not inter_er_overlap_robot_inter_verum_robot(X0).
inter_er_overlap_robot_inter_verum_block(X0) :- er_overlap_robot(X0),inter_verum_block(X0).
-inter_er_overlap_robot_inter_verum_block(X0) :- object(X0),not inter_er_overlap_robot_inter_verum_block(X0).
inter_er_overlap_robot_inter_verum_table(X0) :- er_overlap_robot(X0),inter_verum_table(X0).
-inter_er_overlap_robot_inter_verum_table(X0) :- object(X0),not inter_er_overlap_robot_inter_verum_table(X0).
inter_er_overlap_robot_inter_falsum_robot(X0) :- er_overlap_robot(X0),inter_falsum_robot(X0).
-inter_er_overlap_robot_inter_falsum_robot(X0) :- object(X0),not inter_er_overlap_robot_inter_falsum_robot(X0).
inter_er_overlap_robot_inter_falsum_block(X0) :- er_overlap_robot(X0),inter_falsum_block(X0).
-inter_er_overlap_robot_inter_falsum_block(X0) :- object(X0),not inter_er_overlap_robot_inter_falsum_block(X0).
inter_er_overlap_robot_inter_falsum_table(X0) :- er_overlap_robot(X0),inter_falsum_table(X0).
-inter_er_overlap_robot_inter_falsum_table(X0) :- object(X0),not inter_er_overlap_robot_inter_falsum_table(X0).
inter_er_overlap_robot_inter_robot_block(X0) :- er_overlap_robot(X0),inter_robot_block(X0).
-inter_er_overlap_robot_inter_robot_block(X0) :- object(X0),not inter_er_overlap_robot_inter_robot_block(X0).
inter_er_overlap_robot_inter_robot_table(X0) :- er_overlap_robot(X0),inter_robot_table(X0).
-inter_er_overlap_robot_inter_robot_table(X0) :- object(X0),not inter_er_overlap_robot_inter_robot_table(X0).
inter_er_overlap_robot_inter_block_table(X0) :- er_overlap_robot(X0),inter_block_table(X0).
-inter_er_overlap_robot_inter_block_table(X0) :- object(X0),not inter_er_overlap_robot_inter_block_table(X0).
inter_er_overlap_robot_subset_verum_falsum(X0) :- er_overlap_robot(X0),subset_verum_falsum(null).
-inter_er_overlap_robot_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_robot_subset_verum_falsum(X0).
inter_er_overlap_robot_subset_verum_robot(X0) :- er_overlap_robot(X0),subset_verum_robot(null).
-inter_er_overlap_robot_subset_verum_robot(X0) :- object(X0),not inter_er_overlap_robot_subset_verum_robot(X0).
inter_er_overlap_robot_subset_verum_block(X0) :- er_overlap_robot(X0),subset_verum_block(null).
-inter_er_overlap_robot_subset_verum_block(X0) :- object(X0),not inter_er_overlap_robot_subset_verum_block(X0).
inter_er_overlap_robot_subset_verum_table(X0) :- er_overlap_robot(X0),subset_verum_table(null).
-inter_er_overlap_robot_subset_verum_table(X0) :- object(X0),not inter_er_overlap_robot_subset_verum_table(X0).
inter_er_overlap_robot_subset_falsum_robot(X0) :- er_overlap_robot(X0),subset_falsum_robot(null).
-inter_er_overlap_robot_subset_falsum_robot(X0) :- object(X0),not inter_er_overlap_robot_subset_falsum_robot(X0).
inter_er_overlap_robot_subset_falsum_block(X0) :- er_overlap_robot(X0),subset_falsum_block(null).
-inter_er_overlap_robot_subset_falsum_block(X0) :- object(X0),not inter_er_overlap_robot_subset_falsum_block(X0).
inter_er_overlap_robot_subset_falsum_table(X0) :- er_overlap_robot(X0),subset_falsum_table(null).
-inter_er_overlap_robot_subset_falsum_table(X0) :- object(X0),not inter_er_overlap_robot_subset_falsum_table(X0).
inter_er_overlap_robot_subset_robot_block(X0) :- er_overlap_robot(X0),subset_robot_block(null).
-inter_er_overlap_robot_subset_robot_block(X0) :- object(X0),not inter_er_overlap_robot_subset_robot_block(X0).
inter_er_overlap_robot_subset_robot_table(X0) :- er_overlap_robot(X0),subset_robot_table(null).
-inter_er_overlap_robot_subset_robot_table(X0) :- object(X0),not inter_er_overlap_robot_subset_robot_table(X0).
inter_er_overlap_robot_subset_block_table(X0) :- er_overlap_robot(X0),subset_block_table(null).
-inter_er_overlap_robot_subset_block_table(X0) :- object(X0),not inter_er_overlap_robot_subset_block_table(X0).
inter_er_shape_robot_er_smaller_block(X0) :- er_shape_robot(X0),er_smaller_block(X0).
-inter_er_shape_robot_er_smaller_block(X0) :- object(X0),not inter_er_shape_robot_er_smaller_block(X0).
inter_er_shape_robot_er_below_block(X0) :- er_shape_robot(X0),er_below_block(X0).
-inter_er_shape_robot_er_below_block(X0) :- object(X0),not inter_er_shape_robot_er_below_block(X0).
inter_er_shape_robot_er_left_block(X0) :- er_shape_robot(X0),er_left_block(X0).
-inter_er_shape_robot_er_left_block(X0) :- object(X0),not inter_er_shape_robot_er_left_block(X0).
inter_er_shape_robot_er_overlap_block(X0) :- er_shape_robot(X0),er_overlap_block(X0).
-inter_er_shape_robot_er_overlap_block(X0) :- object(X0),not inter_er_shape_robot_er_overlap_block(X0).
inter_er_shape_robot_er_shape_block(X0) :- er_shape_robot(X0),er_shape_block(X0).
-inter_er_shape_robot_er_shape_block(X0) :- object(X0),not inter_er_shape_robot_er_shape_block(X0).
inter_er_shape_robot_er_smaller_table(X0) :- er_shape_robot(X0),er_smaller_table(X0).
-inter_er_shape_robot_er_smaller_table(X0) :- object(X0),not inter_er_shape_robot_er_smaller_table(X0).
inter_er_shape_robot_er_below_table(X0) :- er_shape_robot(X0),er_below_table(X0).
-inter_er_shape_robot_er_below_table(X0) :- object(X0),not inter_er_shape_robot_er_below_table(X0).
inter_er_shape_robot_er_left_table(X0) :- er_shape_robot(X0),er_left_table(X0).
-inter_er_shape_robot_er_left_table(X0) :- object(X0),not inter_er_shape_robot_er_left_table(X0).
inter_er_shape_robot_er_overlap_table(X0) :- er_shape_robot(X0),er_overlap_table(X0).
-inter_er_shape_robot_er_overlap_table(X0) :- object(X0),not inter_er_shape_robot_er_overlap_table(X0).
inter_er_shape_robot_er_shape_table(X0) :- er_shape_robot(X0),er_shape_table(X0).
-inter_er_shape_robot_er_shape_table(X0) :- object(X0),not inter_er_shape_robot_er_shape_table(X0).
inter_er_shape_robot_inter_verum_falsum(X0) :- er_shape_robot(X0),inter_verum_falsum(X0).
-inter_er_shape_robot_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_robot_inter_verum_falsum(X0).
inter_er_shape_robot_inter_verum_robot(X0) :- er_shape_robot(X0),inter_verum_robot(X0).
-inter_er_shape_robot_inter_verum_robot(X0) :- object(X0),not inter_er_shape_robot_inter_verum_robot(X0).
inter_er_shape_robot_inter_verum_block(X0) :- er_shape_robot(X0),inter_verum_block(X0).
-inter_er_shape_robot_inter_verum_block(X0) :- object(X0),not inter_er_shape_robot_inter_verum_block(X0).
inter_er_shape_robot_inter_verum_table(X0) :- er_shape_robot(X0),inter_verum_table(X0).
-inter_er_shape_robot_inter_verum_table(X0) :- object(X0),not inter_er_shape_robot_inter_verum_table(X0).
inter_er_shape_robot_inter_falsum_robot(X0) :- er_shape_robot(X0),inter_falsum_robot(X0).
-inter_er_shape_robot_inter_falsum_robot(X0) :- object(X0),not inter_er_shape_robot_inter_falsum_robot(X0).
inter_er_shape_robot_inter_falsum_block(X0) :- er_shape_robot(X0),inter_falsum_block(X0).
-inter_er_shape_robot_inter_falsum_block(X0) :- object(X0),not inter_er_shape_robot_inter_falsum_block(X0).
inter_er_shape_robot_inter_falsum_table(X0) :- er_shape_robot(X0),inter_falsum_table(X0).
-inter_er_shape_robot_inter_falsum_table(X0) :- object(X0),not inter_er_shape_robot_inter_falsum_table(X0).
inter_er_shape_robot_inter_robot_block(X0) :- er_shape_robot(X0),inter_robot_block(X0).
-inter_er_shape_robot_inter_robot_block(X0) :- object(X0),not inter_er_shape_robot_inter_robot_block(X0).
inter_er_shape_robot_inter_robot_table(X0) :- er_shape_robot(X0),inter_robot_table(X0).
-inter_er_shape_robot_inter_robot_table(X0) :- object(X0),not inter_er_shape_robot_inter_robot_table(X0).
inter_er_shape_robot_inter_block_table(X0) :- er_shape_robot(X0),inter_block_table(X0).
-inter_er_shape_robot_inter_block_table(X0) :- object(X0),not inter_er_shape_robot_inter_block_table(X0).
inter_er_shape_robot_subset_verum_falsum(X0) :- er_shape_robot(X0),subset_verum_falsum(null).
-inter_er_shape_robot_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_robot_subset_verum_falsum(X0).
inter_er_shape_robot_subset_verum_robot(X0) :- er_shape_robot(X0),subset_verum_robot(null).
-inter_er_shape_robot_subset_verum_robot(X0) :- object(X0),not inter_er_shape_robot_subset_verum_robot(X0).
inter_er_shape_robot_subset_verum_block(X0) :- er_shape_robot(X0),subset_verum_block(null).
-inter_er_shape_robot_subset_verum_block(X0) :- object(X0),not inter_er_shape_robot_subset_verum_block(X0).
inter_er_shape_robot_subset_verum_table(X0) :- er_shape_robot(X0),subset_verum_table(null).
-inter_er_shape_robot_subset_verum_table(X0) :- object(X0),not inter_er_shape_robot_subset_verum_table(X0).
inter_er_shape_robot_subset_falsum_robot(X0) :- er_shape_robot(X0),subset_falsum_robot(null).
-inter_er_shape_robot_subset_falsum_robot(X0) :- object(X0),not inter_er_shape_robot_subset_falsum_robot(X0).
inter_er_shape_robot_subset_falsum_block(X0) :- er_shape_robot(X0),subset_falsum_block(null).
-inter_er_shape_robot_subset_falsum_block(X0) :- object(X0),not inter_er_shape_robot_subset_falsum_block(X0).
inter_er_shape_robot_subset_falsum_table(X0) :- er_shape_robot(X0),subset_falsum_table(null).
-inter_er_shape_robot_subset_falsum_table(X0) :- object(X0),not inter_er_shape_robot_subset_falsum_table(X0).
inter_er_shape_robot_subset_robot_block(X0) :- er_shape_robot(X0),subset_robot_block(null).
-inter_er_shape_robot_subset_robot_block(X0) :- object(X0),not inter_er_shape_robot_subset_robot_block(X0).
inter_er_shape_robot_subset_robot_table(X0) :- er_shape_robot(X0),subset_robot_table(null).
-inter_er_shape_robot_subset_robot_table(X0) :- object(X0),not inter_er_shape_robot_subset_robot_table(X0).
inter_er_shape_robot_subset_block_table(X0) :- er_shape_robot(X0),subset_block_table(null).
-inter_er_shape_robot_subset_block_table(X0) :- object(X0),not inter_er_shape_robot_subset_block_table(X0).
inter_er_smaller_block_er_below_block(X0) :- er_smaller_block(X0),er_below_block(X0).
-inter_er_smaller_block_er_below_block(X0) :- object(X0),not inter_er_smaller_block_er_below_block(X0).
inter_er_smaller_block_er_left_block(X0) :- er_smaller_block(X0),er_left_block(X0).
-inter_er_smaller_block_er_left_block(X0) :- object(X0),not inter_er_smaller_block_er_left_block(X0).
inter_er_smaller_block_er_overlap_block(X0) :- er_smaller_block(X0),er_overlap_block(X0).
-inter_er_smaller_block_er_overlap_block(X0) :- object(X0),not inter_er_smaller_block_er_overlap_block(X0).
inter_er_smaller_block_er_shape_block(X0) :- er_smaller_block(X0),er_shape_block(X0).
-inter_er_smaller_block_er_shape_block(X0) :- object(X0),not inter_er_smaller_block_er_shape_block(X0).
inter_er_smaller_block_er_smaller_table(X0) :- er_smaller_block(X0),er_smaller_table(X0).
-inter_er_smaller_block_er_smaller_table(X0) :- object(X0),not inter_er_smaller_block_er_smaller_table(X0).
inter_er_smaller_block_er_below_table(X0) :- er_smaller_block(X0),er_below_table(X0).
-inter_er_smaller_block_er_below_table(X0) :- object(X0),not inter_er_smaller_block_er_below_table(X0).
inter_er_smaller_block_er_left_table(X0) :- er_smaller_block(X0),er_left_table(X0).
-inter_er_smaller_block_er_left_table(X0) :- object(X0),not inter_er_smaller_block_er_left_table(X0).
inter_er_smaller_block_er_overlap_table(X0) :- er_smaller_block(X0),er_overlap_table(X0).
-inter_er_smaller_block_er_overlap_table(X0) :- object(X0),not inter_er_smaller_block_er_overlap_table(X0).
inter_er_smaller_block_er_shape_table(X0) :- er_smaller_block(X0),er_shape_table(X0).
-inter_er_smaller_block_er_shape_table(X0) :- object(X0),not inter_er_smaller_block_er_shape_table(X0).
inter_er_smaller_block_inter_verum_falsum(X0) :- er_smaller_block(X0),inter_verum_falsum(X0).
-inter_er_smaller_block_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_block_inter_verum_falsum(X0).
inter_er_smaller_block_inter_verum_robot(X0) :- er_smaller_block(X0),inter_verum_robot(X0).
-inter_er_smaller_block_inter_verum_robot(X0) :- object(X0),not inter_er_smaller_block_inter_verum_robot(X0).
inter_er_smaller_block_inter_verum_block(X0) :- er_smaller_block(X0),inter_verum_block(X0).
-inter_er_smaller_block_inter_verum_block(X0) :- object(X0),not inter_er_smaller_block_inter_verum_block(X0).
inter_er_smaller_block_inter_verum_table(X0) :- er_smaller_block(X0),inter_verum_table(X0).
-inter_er_smaller_block_inter_verum_table(X0) :- object(X0),not inter_er_smaller_block_inter_verum_table(X0).
inter_er_smaller_block_inter_falsum_robot(X0) :- er_smaller_block(X0),inter_falsum_robot(X0).
-inter_er_smaller_block_inter_falsum_robot(X0) :- object(X0),not inter_er_smaller_block_inter_falsum_robot(X0).
inter_er_smaller_block_inter_falsum_block(X0) :- er_smaller_block(X0),inter_falsum_block(X0).
-inter_er_smaller_block_inter_falsum_block(X0) :- object(X0),not inter_er_smaller_block_inter_falsum_block(X0).
inter_er_smaller_block_inter_falsum_table(X0) :- er_smaller_block(X0),inter_falsum_table(X0).
-inter_er_smaller_block_inter_falsum_table(X0) :- object(X0),not inter_er_smaller_block_inter_falsum_table(X0).
inter_er_smaller_block_inter_robot_block(X0) :- er_smaller_block(X0),inter_robot_block(X0).
-inter_er_smaller_block_inter_robot_block(X0) :- object(X0),not inter_er_smaller_block_inter_robot_block(X0).
inter_er_smaller_block_inter_robot_table(X0) :- er_smaller_block(X0),inter_robot_table(X0).
-inter_er_smaller_block_inter_robot_table(X0) :- object(X0),not inter_er_smaller_block_inter_robot_table(X0).
inter_er_smaller_block_inter_block_table(X0) :- er_smaller_block(X0),inter_block_table(X0).
-inter_er_smaller_block_inter_block_table(X0) :- object(X0),not inter_er_smaller_block_inter_block_table(X0).
inter_er_smaller_block_subset_verum_falsum(X0) :- er_smaller_block(X0),subset_verum_falsum(null).
-inter_er_smaller_block_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_block_subset_verum_falsum(X0).
inter_er_smaller_block_subset_verum_robot(X0) :- er_smaller_block(X0),subset_verum_robot(null).
-inter_er_smaller_block_subset_verum_robot(X0) :- object(X0),not inter_er_smaller_block_subset_verum_robot(X0).
inter_er_smaller_block_subset_verum_block(X0) :- er_smaller_block(X0),subset_verum_block(null).
-inter_er_smaller_block_subset_verum_block(X0) :- object(X0),not inter_er_smaller_block_subset_verum_block(X0).
inter_er_smaller_block_subset_verum_table(X0) :- er_smaller_block(X0),subset_verum_table(null).
-inter_er_smaller_block_subset_verum_table(X0) :- object(X0),not inter_er_smaller_block_subset_verum_table(X0).
inter_er_smaller_block_subset_falsum_robot(X0) :- er_smaller_block(X0),subset_falsum_robot(null).
-inter_er_smaller_block_subset_falsum_robot(X0) :- object(X0),not inter_er_smaller_block_subset_falsum_robot(X0).
inter_er_smaller_block_subset_falsum_block(X0) :- er_smaller_block(X0),subset_falsum_block(null).
-inter_er_smaller_block_subset_falsum_block(X0) :- object(X0),not inter_er_smaller_block_subset_falsum_block(X0).
inter_er_smaller_block_subset_falsum_table(X0) :- er_smaller_block(X0),subset_falsum_table(null).
-inter_er_smaller_block_subset_falsum_table(X0) :- object(X0),not inter_er_smaller_block_subset_falsum_table(X0).
inter_er_smaller_block_subset_robot_block(X0) :- er_smaller_block(X0),subset_robot_block(null).
-inter_er_smaller_block_subset_robot_block(X0) :- object(X0),not inter_er_smaller_block_subset_robot_block(X0).
inter_er_smaller_block_subset_robot_table(X0) :- er_smaller_block(X0),subset_robot_table(null).
-inter_er_smaller_block_subset_robot_table(X0) :- object(X0),not inter_er_smaller_block_subset_robot_table(X0).
inter_er_smaller_block_subset_block_table(X0) :- er_smaller_block(X0),subset_block_table(null).
-inter_er_smaller_block_subset_block_table(X0) :- object(X0),not inter_er_smaller_block_subset_block_table(X0).
inter_er_below_block_er_left_block(X0) :- er_below_block(X0),er_left_block(X0).
-inter_er_below_block_er_left_block(X0) :- object(X0),not inter_er_below_block_er_left_block(X0).
inter_er_below_block_er_overlap_block(X0) :- er_below_block(X0),er_overlap_block(X0).
-inter_er_below_block_er_overlap_block(X0) :- object(X0),not inter_er_below_block_er_overlap_block(X0).
inter_er_below_block_er_shape_block(X0) :- er_below_block(X0),er_shape_block(X0).
-inter_er_below_block_er_shape_block(X0) :- object(X0),not inter_er_below_block_er_shape_block(X0).
inter_er_below_block_er_smaller_table(X0) :- er_below_block(X0),er_smaller_table(X0).
-inter_er_below_block_er_smaller_table(X0) :- object(X0),not inter_er_below_block_er_smaller_table(X0).
inter_er_below_block_er_below_table(X0) :- er_below_block(X0),er_below_table(X0).
-inter_er_below_block_er_below_table(X0) :- object(X0),not inter_er_below_block_er_below_table(X0).
inter_er_below_block_er_left_table(X0) :- er_below_block(X0),er_left_table(X0).
-inter_er_below_block_er_left_table(X0) :- object(X0),not inter_er_below_block_er_left_table(X0).
inter_er_below_block_er_overlap_table(X0) :- er_below_block(X0),er_overlap_table(X0).
-inter_er_below_block_er_overlap_table(X0) :- object(X0),not inter_er_below_block_er_overlap_table(X0).
inter_er_below_block_er_shape_table(X0) :- er_below_block(X0),er_shape_table(X0).
-inter_er_below_block_er_shape_table(X0) :- object(X0),not inter_er_below_block_er_shape_table(X0).
inter_er_below_block_inter_verum_falsum(X0) :- er_below_block(X0),inter_verum_falsum(X0).
-inter_er_below_block_inter_verum_falsum(X0) :- object(X0),not inter_er_below_block_inter_verum_falsum(X0).
inter_er_below_block_inter_verum_robot(X0) :- er_below_block(X0),inter_verum_robot(X0).
-inter_er_below_block_inter_verum_robot(X0) :- object(X0),not inter_er_below_block_inter_verum_robot(X0).
inter_er_below_block_inter_verum_block(X0) :- er_below_block(X0),inter_verum_block(X0).
-inter_er_below_block_inter_verum_block(X0) :- object(X0),not inter_er_below_block_inter_verum_block(X0).
inter_er_below_block_inter_verum_table(X0) :- er_below_block(X0),inter_verum_table(X0).
-inter_er_below_block_inter_verum_table(X0) :- object(X0),not inter_er_below_block_inter_verum_table(X0).
inter_er_below_block_inter_falsum_robot(X0) :- er_below_block(X0),inter_falsum_robot(X0).
-inter_er_below_block_inter_falsum_robot(X0) :- object(X0),not inter_er_below_block_inter_falsum_robot(X0).
inter_er_below_block_inter_falsum_block(X0) :- er_below_block(X0),inter_falsum_block(X0).
-inter_er_below_block_inter_falsum_block(X0) :- object(X0),not inter_er_below_block_inter_falsum_block(X0).
inter_er_below_block_inter_falsum_table(X0) :- er_below_block(X0),inter_falsum_table(X0).
-inter_er_below_block_inter_falsum_table(X0) :- object(X0),not inter_er_below_block_inter_falsum_table(X0).
inter_er_below_block_inter_robot_block(X0) :- er_below_block(X0),inter_robot_block(X0).
-inter_er_below_block_inter_robot_block(X0) :- object(X0),not inter_er_below_block_inter_robot_block(X0).
inter_er_below_block_inter_robot_table(X0) :- er_below_block(X0),inter_robot_table(X0).
-inter_er_below_block_inter_robot_table(X0) :- object(X0),not inter_er_below_block_inter_robot_table(X0).
inter_er_below_block_inter_block_table(X0) :- er_below_block(X0),inter_block_table(X0).
-inter_er_below_block_inter_block_table(X0) :- object(X0),not inter_er_below_block_inter_block_table(X0).
inter_er_below_block_subset_verum_falsum(X0) :- er_below_block(X0),subset_verum_falsum(null).
-inter_er_below_block_subset_verum_falsum(X0) :- object(X0),not inter_er_below_block_subset_verum_falsum(X0).
inter_er_below_block_subset_verum_robot(X0) :- er_below_block(X0),subset_verum_robot(null).
-inter_er_below_block_subset_verum_robot(X0) :- object(X0),not inter_er_below_block_subset_verum_robot(X0).
inter_er_below_block_subset_verum_block(X0) :- er_below_block(X0),subset_verum_block(null).
-inter_er_below_block_subset_verum_block(X0) :- object(X0),not inter_er_below_block_subset_verum_block(X0).
inter_er_below_block_subset_verum_table(X0) :- er_below_block(X0),subset_verum_table(null).
-inter_er_below_block_subset_verum_table(X0) :- object(X0),not inter_er_below_block_subset_verum_table(X0).
inter_er_below_block_subset_falsum_robot(X0) :- er_below_block(X0),subset_falsum_robot(null).
-inter_er_below_block_subset_falsum_robot(X0) :- object(X0),not inter_er_below_block_subset_falsum_robot(X0).
inter_er_below_block_subset_falsum_block(X0) :- er_below_block(X0),subset_falsum_block(null).
-inter_er_below_block_subset_falsum_block(X0) :- object(X0),not inter_er_below_block_subset_falsum_block(X0).
inter_er_below_block_subset_falsum_table(X0) :- er_below_block(X0),subset_falsum_table(null).
-inter_er_below_block_subset_falsum_table(X0) :- object(X0),not inter_er_below_block_subset_falsum_table(X0).
inter_er_below_block_subset_robot_block(X0) :- er_below_block(X0),subset_robot_block(null).
-inter_er_below_block_subset_robot_block(X0) :- object(X0),not inter_er_below_block_subset_robot_block(X0).
inter_er_below_block_subset_robot_table(X0) :- er_below_block(X0),subset_robot_table(null).
-inter_er_below_block_subset_robot_table(X0) :- object(X0),not inter_er_below_block_subset_robot_table(X0).
inter_er_below_block_subset_block_table(X0) :- er_below_block(X0),subset_block_table(null).
-inter_er_below_block_subset_block_table(X0) :- object(X0),not inter_er_below_block_subset_block_table(X0).
inter_er_left_block_er_overlap_block(X0) :- er_left_block(X0),er_overlap_block(X0).
-inter_er_left_block_er_overlap_block(X0) :- object(X0),not inter_er_left_block_er_overlap_block(X0).
inter_er_left_block_er_shape_block(X0) :- er_left_block(X0),er_shape_block(X0).
-inter_er_left_block_er_shape_block(X0) :- object(X0),not inter_er_left_block_er_shape_block(X0).
inter_er_left_block_er_smaller_table(X0) :- er_left_block(X0),er_smaller_table(X0).
-inter_er_left_block_er_smaller_table(X0) :- object(X0),not inter_er_left_block_er_smaller_table(X0).
inter_er_left_block_er_below_table(X0) :- er_left_block(X0),er_below_table(X0).
-inter_er_left_block_er_below_table(X0) :- object(X0),not inter_er_left_block_er_below_table(X0).
inter_er_left_block_er_left_table(X0) :- er_left_block(X0),er_left_table(X0).
-inter_er_left_block_er_left_table(X0) :- object(X0),not inter_er_left_block_er_left_table(X0).
inter_er_left_block_er_overlap_table(X0) :- er_left_block(X0),er_overlap_table(X0).
-inter_er_left_block_er_overlap_table(X0) :- object(X0),not inter_er_left_block_er_overlap_table(X0).
inter_er_left_block_er_shape_table(X0) :- er_left_block(X0),er_shape_table(X0).
-inter_er_left_block_er_shape_table(X0) :- object(X0),not inter_er_left_block_er_shape_table(X0).
inter_er_left_block_inter_verum_falsum(X0) :- er_left_block(X0),inter_verum_falsum(X0).
-inter_er_left_block_inter_verum_falsum(X0) :- object(X0),not inter_er_left_block_inter_verum_falsum(X0).
inter_er_left_block_inter_verum_robot(X0) :- er_left_block(X0),inter_verum_robot(X0).
-inter_er_left_block_inter_verum_robot(X0) :- object(X0),not inter_er_left_block_inter_verum_robot(X0).
inter_er_left_block_inter_verum_block(X0) :- er_left_block(X0),inter_verum_block(X0).
-inter_er_left_block_inter_verum_block(X0) :- object(X0),not inter_er_left_block_inter_verum_block(X0).
inter_er_left_block_inter_verum_table(X0) :- er_left_block(X0),inter_verum_table(X0).
-inter_er_left_block_inter_verum_table(X0) :- object(X0),not inter_er_left_block_inter_verum_table(X0).
inter_er_left_block_inter_falsum_robot(X0) :- er_left_block(X0),inter_falsum_robot(X0).
-inter_er_left_block_inter_falsum_robot(X0) :- object(X0),not inter_er_left_block_inter_falsum_robot(X0).
inter_er_left_block_inter_falsum_block(X0) :- er_left_block(X0),inter_falsum_block(X0).
-inter_er_left_block_inter_falsum_block(X0) :- object(X0),not inter_er_left_block_inter_falsum_block(X0).
inter_er_left_block_inter_falsum_table(X0) :- er_left_block(X0),inter_falsum_table(X0).
-inter_er_left_block_inter_falsum_table(X0) :- object(X0),not inter_er_left_block_inter_falsum_table(X0).
inter_er_left_block_inter_robot_block(X0) :- er_left_block(X0),inter_robot_block(X0).
-inter_er_left_block_inter_robot_block(X0) :- object(X0),not inter_er_left_block_inter_robot_block(X0).
inter_er_left_block_inter_robot_table(X0) :- er_left_block(X0),inter_robot_table(X0).
-inter_er_left_block_inter_robot_table(X0) :- object(X0),not inter_er_left_block_inter_robot_table(X0).
inter_er_left_block_inter_block_table(X0) :- er_left_block(X0),inter_block_table(X0).
-inter_er_left_block_inter_block_table(X0) :- object(X0),not inter_er_left_block_inter_block_table(X0).
inter_er_left_block_subset_verum_falsum(X0) :- er_left_block(X0),subset_verum_falsum(null).
-inter_er_left_block_subset_verum_falsum(X0) :- object(X0),not inter_er_left_block_subset_verum_falsum(X0).
inter_er_left_block_subset_verum_robot(X0) :- er_left_block(X0),subset_verum_robot(null).
-inter_er_left_block_subset_verum_robot(X0) :- object(X0),not inter_er_left_block_subset_verum_robot(X0).
inter_er_left_block_subset_verum_block(X0) :- er_left_block(X0),subset_verum_block(null).
-inter_er_left_block_subset_verum_block(X0) :- object(X0),not inter_er_left_block_subset_verum_block(X0).
inter_er_left_block_subset_verum_table(X0) :- er_left_block(X0),subset_verum_table(null).
-inter_er_left_block_subset_verum_table(X0) :- object(X0),not inter_er_left_block_subset_verum_table(X0).
inter_er_left_block_subset_falsum_robot(X0) :- er_left_block(X0),subset_falsum_robot(null).
-inter_er_left_block_subset_falsum_robot(X0) :- object(X0),not inter_er_left_block_subset_falsum_robot(X0).
inter_er_left_block_subset_falsum_block(X0) :- er_left_block(X0),subset_falsum_block(null).
-inter_er_left_block_subset_falsum_block(X0) :- object(X0),not inter_er_left_block_subset_falsum_block(X0).
inter_er_left_block_subset_falsum_table(X0) :- er_left_block(X0),subset_falsum_table(null).
-inter_er_left_block_subset_falsum_table(X0) :- object(X0),not inter_er_left_block_subset_falsum_table(X0).
inter_er_left_block_subset_robot_block(X0) :- er_left_block(X0),subset_robot_block(null).
-inter_er_left_block_subset_robot_block(X0) :- object(X0),not inter_er_left_block_subset_robot_block(X0).
inter_er_left_block_subset_robot_table(X0) :- er_left_block(X0),subset_robot_table(null).
-inter_er_left_block_subset_robot_table(X0) :- object(X0),not inter_er_left_block_subset_robot_table(X0).
inter_er_left_block_subset_block_table(X0) :- er_left_block(X0),subset_block_table(null).
-inter_er_left_block_subset_block_table(X0) :- object(X0),not inter_er_left_block_subset_block_table(X0).
inter_er_overlap_block_er_shape_block(X0) :- er_overlap_block(X0),er_shape_block(X0).
-inter_er_overlap_block_er_shape_block(X0) :- object(X0),not inter_er_overlap_block_er_shape_block(X0).
inter_er_overlap_block_er_smaller_table(X0) :- er_overlap_block(X0),er_smaller_table(X0).
-inter_er_overlap_block_er_smaller_table(X0) :- object(X0),not inter_er_overlap_block_er_smaller_table(X0).
inter_er_overlap_block_er_below_table(X0) :- er_overlap_block(X0),er_below_table(X0).
-inter_er_overlap_block_er_below_table(X0) :- object(X0),not inter_er_overlap_block_er_below_table(X0).
inter_er_overlap_block_er_left_table(X0) :- er_overlap_block(X0),er_left_table(X0).
-inter_er_overlap_block_er_left_table(X0) :- object(X0),not inter_er_overlap_block_er_left_table(X0).
inter_er_overlap_block_er_overlap_table(X0) :- er_overlap_block(X0),er_overlap_table(X0).
-inter_er_overlap_block_er_overlap_table(X0) :- object(X0),not inter_er_overlap_block_er_overlap_table(X0).
inter_er_overlap_block_er_shape_table(X0) :- er_overlap_block(X0),er_shape_table(X0).
-inter_er_overlap_block_er_shape_table(X0) :- object(X0),not inter_er_overlap_block_er_shape_table(X0).
inter_er_overlap_block_inter_verum_falsum(X0) :- er_overlap_block(X0),inter_verum_falsum(X0).
-inter_er_overlap_block_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_block_inter_verum_falsum(X0).
inter_er_overlap_block_inter_verum_robot(X0) :- er_overlap_block(X0),inter_verum_robot(X0).
-inter_er_overlap_block_inter_verum_robot(X0) :- object(X0),not inter_er_overlap_block_inter_verum_robot(X0).
inter_er_overlap_block_inter_verum_block(X0) :- er_overlap_block(X0),inter_verum_block(X0).
-inter_er_overlap_block_inter_verum_block(X0) :- object(X0),not inter_er_overlap_block_inter_verum_block(X0).
inter_er_overlap_block_inter_verum_table(X0) :- er_overlap_block(X0),inter_verum_table(X0).
-inter_er_overlap_block_inter_verum_table(X0) :- object(X0),not inter_er_overlap_block_inter_verum_table(X0).
inter_er_overlap_block_inter_falsum_robot(X0) :- er_overlap_block(X0),inter_falsum_robot(X0).
-inter_er_overlap_block_inter_falsum_robot(X0) :- object(X0),not inter_er_overlap_block_inter_falsum_robot(X0).
inter_er_overlap_block_inter_falsum_block(X0) :- er_overlap_block(X0),inter_falsum_block(X0).
-inter_er_overlap_block_inter_falsum_block(X0) :- object(X0),not inter_er_overlap_block_inter_falsum_block(X0).
inter_er_overlap_block_inter_falsum_table(X0) :- er_overlap_block(X0),inter_falsum_table(X0).
-inter_er_overlap_block_inter_falsum_table(X0) :- object(X0),not inter_er_overlap_block_inter_falsum_table(X0).
inter_er_overlap_block_inter_robot_block(X0) :- er_overlap_block(X0),inter_robot_block(X0).
-inter_er_overlap_block_inter_robot_block(X0) :- object(X0),not inter_er_overlap_block_inter_robot_block(X0).
inter_er_overlap_block_inter_robot_table(X0) :- er_overlap_block(X0),inter_robot_table(X0).
-inter_er_overlap_block_inter_robot_table(X0) :- object(X0),not inter_er_overlap_block_inter_robot_table(X0).
inter_er_overlap_block_inter_block_table(X0) :- er_overlap_block(X0),inter_block_table(X0).
-inter_er_overlap_block_inter_block_table(X0) :- object(X0),not inter_er_overlap_block_inter_block_table(X0).
inter_er_overlap_block_subset_verum_falsum(X0) :- er_overlap_block(X0),subset_verum_falsum(null).
-inter_er_overlap_block_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_block_subset_verum_falsum(X0).
inter_er_overlap_block_subset_verum_robot(X0) :- er_overlap_block(X0),subset_verum_robot(null).
-inter_er_overlap_block_subset_verum_robot(X0) :- object(X0),not inter_er_overlap_block_subset_verum_robot(X0).
inter_er_overlap_block_subset_verum_block(X0) :- er_overlap_block(X0),subset_verum_block(null).
-inter_er_overlap_block_subset_verum_block(X0) :- object(X0),not inter_er_overlap_block_subset_verum_block(X0).
inter_er_overlap_block_subset_verum_table(X0) :- er_overlap_block(X0),subset_verum_table(null).
-inter_er_overlap_block_subset_verum_table(X0) :- object(X0),not inter_er_overlap_block_subset_verum_table(X0).
inter_er_overlap_block_subset_falsum_robot(X0) :- er_overlap_block(X0),subset_falsum_robot(null).
-inter_er_overlap_block_subset_falsum_robot(X0) :- object(X0),not inter_er_overlap_block_subset_falsum_robot(X0).
inter_er_overlap_block_subset_falsum_block(X0) :- er_overlap_block(X0),subset_falsum_block(null).
-inter_er_overlap_block_subset_falsum_block(X0) :- object(X0),not inter_er_overlap_block_subset_falsum_block(X0).
inter_er_overlap_block_subset_falsum_table(X0) :- er_overlap_block(X0),subset_falsum_table(null).
-inter_er_overlap_block_subset_falsum_table(X0) :- object(X0),not inter_er_overlap_block_subset_falsum_table(X0).
inter_er_overlap_block_subset_robot_block(X0) :- er_overlap_block(X0),subset_robot_block(null).
-inter_er_overlap_block_subset_robot_block(X0) :- object(X0),not inter_er_overlap_block_subset_robot_block(X0).
inter_er_overlap_block_subset_robot_table(X0) :- er_overlap_block(X0),subset_robot_table(null).
-inter_er_overlap_block_subset_robot_table(X0) :- object(X0),not inter_er_overlap_block_subset_robot_table(X0).
inter_er_overlap_block_subset_block_table(X0) :- er_overlap_block(X0),subset_block_table(null).
-inter_er_overlap_block_subset_block_table(X0) :- object(X0),not inter_er_overlap_block_subset_block_table(X0).
inter_er_shape_block_er_smaller_table(X0) :- er_shape_block(X0),er_smaller_table(X0).
-inter_er_shape_block_er_smaller_table(X0) :- object(X0),not inter_er_shape_block_er_smaller_table(X0).
inter_er_shape_block_er_below_table(X0) :- er_shape_block(X0),er_below_table(X0).
-inter_er_shape_block_er_below_table(X0) :- object(X0),not inter_er_shape_block_er_below_table(X0).
inter_er_shape_block_er_left_table(X0) :- er_shape_block(X0),er_left_table(X0).
-inter_er_shape_block_er_left_table(X0) :- object(X0),not inter_er_shape_block_er_left_table(X0).
inter_er_shape_block_er_overlap_table(X0) :- er_shape_block(X0),er_overlap_table(X0).
-inter_er_shape_block_er_overlap_table(X0) :- object(X0),not inter_er_shape_block_er_overlap_table(X0).
inter_er_shape_block_er_shape_table(X0) :- er_shape_block(X0),er_shape_table(X0).
-inter_er_shape_block_er_shape_table(X0) :- object(X0),not inter_er_shape_block_er_shape_table(X0).
inter_er_shape_block_inter_verum_falsum(X0) :- er_shape_block(X0),inter_verum_falsum(X0).
-inter_er_shape_block_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_block_inter_verum_falsum(X0).
inter_er_shape_block_inter_verum_robot(X0) :- er_shape_block(X0),inter_verum_robot(X0).
-inter_er_shape_block_inter_verum_robot(X0) :- object(X0),not inter_er_shape_block_inter_verum_robot(X0).
inter_er_shape_block_inter_verum_block(X0) :- er_shape_block(X0),inter_verum_block(X0).
-inter_er_shape_block_inter_verum_block(X0) :- object(X0),not inter_er_shape_block_inter_verum_block(X0).
inter_er_shape_block_inter_verum_table(X0) :- er_shape_block(X0),inter_verum_table(X0).
-inter_er_shape_block_inter_verum_table(X0) :- object(X0),not inter_er_shape_block_inter_verum_table(X0).
inter_er_shape_block_inter_falsum_robot(X0) :- er_shape_block(X0),inter_falsum_robot(X0).
-inter_er_shape_block_inter_falsum_robot(X0) :- object(X0),not inter_er_shape_block_inter_falsum_robot(X0).
inter_er_shape_block_inter_falsum_block(X0) :- er_shape_block(X0),inter_falsum_block(X0).
-inter_er_shape_block_inter_falsum_block(X0) :- object(X0),not inter_er_shape_block_inter_falsum_block(X0).
inter_er_shape_block_inter_falsum_table(X0) :- er_shape_block(X0),inter_falsum_table(X0).
-inter_er_shape_block_inter_falsum_table(X0) :- object(X0),not inter_er_shape_block_inter_falsum_table(X0).
inter_er_shape_block_inter_robot_block(X0) :- er_shape_block(X0),inter_robot_block(X0).
-inter_er_shape_block_inter_robot_block(X0) :- object(X0),not inter_er_shape_block_inter_robot_block(X0).
inter_er_shape_block_inter_robot_table(X0) :- er_shape_block(X0),inter_robot_table(X0).
-inter_er_shape_block_inter_robot_table(X0) :- object(X0),not inter_er_shape_block_inter_robot_table(X0).
inter_er_shape_block_inter_block_table(X0) :- er_shape_block(X0),inter_block_table(X0).
-inter_er_shape_block_inter_block_table(X0) :- object(X0),not inter_er_shape_block_inter_block_table(X0).
inter_er_shape_block_subset_verum_falsum(X0) :- er_shape_block(X0),subset_verum_falsum(null).
-inter_er_shape_block_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_block_subset_verum_falsum(X0).
inter_er_shape_block_subset_verum_robot(X0) :- er_shape_block(X0),subset_verum_robot(null).
-inter_er_shape_block_subset_verum_robot(X0) :- object(X0),not inter_er_shape_block_subset_verum_robot(X0).
inter_er_shape_block_subset_verum_block(X0) :- er_shape_block(X0),subset_verum_block(null).
-inter_er_shape_block_subset_verum_block(X0) :- object(X0),not inter_er_shape_block_subset_verum_block(X0).
inter_er_shape_block_subset_verum_table(X0) :- er_shape_block(X0),subset_verum_table(null).
-inter_er_shape_block_subset_verum_table(X0) :- object(X0),not inter_er_shape_block_subset_verum_table(X0).
inter_er_shape_block_subset_falsum_robot(X0) :- er_shape_block(X0),subset_falsum_robot(null).
-inter_er_shape_block_subset_falsum_robot(X0) :- object(X0),not inter_er_shape_block_subset_falsum_robot(X0).
inter_er_shape_block_subset_falsum_block(X0) :- er_shape_block(X0),subset_falsum_block(null).
-inter_er_shape_block_subset_falsum_block(X0) :- object(X0),not inter_er_shape_block_subset_falsum_block(X0).
inter_er_shape_block_subset_falsum_table(X0) :- er_shape_block(X0),subset_falsum_table(null).
-inter_er_shape_block_subset_falsum_table(X0) :- object(X0),not inter_er_shape_block_subset_falsum_table(X0).
inter_er_shape_block_subset_robot_block(X0) :- er_shape_block(X0),subset_robot_block(null).
-inter_er_shape_block_subset_robot_block(X0) :- object(X0),not inter_er_shape_block_subset_robot_block(X0).
inter_er_shape_block_subset_robot_table(X0) :- er_shape_block(X0),subset_robot_table(null).
-inter_er_shape_block_subset_robot_table(X0) :- object(X0),not inter_er_shape_block_subset_robot_table(X0).
inter_er_shape_block_subset_block_table(X0) :- er_shape_block(X0),subset_block_table(null).
-inter_er_shape_block_subset_block_table(X0) :- object(X0),not inter_er_shape_block_subset_block_table(X0).
inter_er_smaller_table_er_below_table(X0) :- er_smaller_table(X0),er_below_table(X0).
-inter_er_smaller_table_er_below_table(X0) :- object(X0),not inter_er_smaller_table_er_below_table(X0).
inter_er_smaller_table_er_left_table(X0) :- er_smaller_table(X0),er_left_table(X0).
-inter_er_smaller_table_er_left_table(X0) :- object(X0),not inter_er_smaller_table_er_left_table(X0).
inter_er_smaller_table_er_overlap_table(X0) :- er_smaller_table(X0),er_overlap_table(X0).
-inter_er_smaller_table_er_overlap_table(X0) :- object(X0),not inter_er_smaller_table_er_overlap_table(X0).
inter_er_smaller_table_er_shape_table(X0) :- er_smaller_table(X0),er_shape_table(X0).
-inter_er_smaller_table_er_shape_table(X0) :- object(X0),not inter_er_smaller_table_er_shape_table(X0).
inter_er_smaller_table_inter_verum_falsum(X0) :- er_smaller_table(X0),inter_verum_falsum(X0).
-inter_er_smaller_table_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_table_inter_verum_falsum(X0).
inter_er_smaller_table_inter_verum_robot(X0) :- er_smaller_table(X0),inter_verum_robot(X0).
-inter_er_smaller_table_inter_verum_robot(X0) :- object(X0),not inter_er_smaller_table_inter_verum_robot(X0).
inter_er_smaller_table_inter_verum_block(X0) :- er_smaller_table(X0),inter_verum_block(X0).
-inter_er_smaller_table_inter_verum_block(X0) :- object(X0),not inter_er_smaller_table_inter_verum_block(X0).
inter_er_smaller_table_inter_verum_table(X0) :- er_smaller_table(X0),inter_verum_table(X0).
-inter_er_smaller_table_inter_verum_table(X0) :- object(X0),not inter_er_smaller_table_inter_verum_table(X0).
inter_er_smaller_table_inter_falsum_robot(X0) :- er_smaller_table(X0),inter_falsum_robot(X0).
-inter_er_smaller_table_inter_falsum_robot(X0) :- object(X0),not inter_er_smaller_table_inter_falsum_robot(X0).
inter_er_smaller_table_inter_falsum_block(X0) :- er_smaller_table(X0),inter_falsum_block(X0).
-inter_er_smaller_table_inter_falsum_block(X0) :- object(X0),not inter_er_smaller_table_inter_falsum_block(X0).
inter_er_smaller_table_inter_falsum_table(X0) :- er_smaller_table(X0),inter_falsum_table(X0).
-inter_er_smaller_table_inter_falsum_table(X0) :- object(X0),not inter_er_smaller_table_inter_falsum_table(X0).
inter_er_smaller_table_inter_robot_block(X0) :- er_smaller_table(X0),inter_robot_block(X0).
-inter_er_smaller_table_inter_robot_block(X0) :- object(X0),not inter_er_smaller_table_inter_robot_block(X0).
inter_er_smaller_table_inter_robot_table(X0) :- er_smaller_table(X0),inter_robot_table(X0).
-inter_er_smaller_table_inter_robot_table(X0) :- object(X0),not inter_er_smaller_table_inter_robot_table(X0).
inter_er_smaller_table_inter_block_table(X0) :- er_smaller_table(X0),inter_block_table(X0).
-inter_er_smaller_table_inter_block_table(X0) :- object(X0),not inter_er_smaller_table_inter_block_table(X0).
inter_er_smaller_table_subset_verum_falsum(X0) :- er_smaller_table(X0),subset_verum_falsum(null).
-inter_er_smaller_table_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_table_subset_verum_falsum(X0).
inter_er_smaller_table_subset_verum_robot(X0) :- er_smaller_table(X0),subset_verum_robot(null).
-inter_er_smaller_table_subset_verum_robot(X0) :- object(X0),not inter_er_smaller_table_subset_verum_robot(X0).
inter_er_smaller_table_subset_verum_block(X0) :- er_smaller_table(X0),subset_verum_block(null).
-inter_er_smaller_table_subset_verum_block(X0) :- object(X0),not inter_er_smaller_table_subset_verum_block(X0).
inter_er_smaller_table_subset_verum_table(X0) :- er_smaller_table(X0),subset_verum_table(null).
-inter_er_smaller_table_subset_verum_table(X0) :- object(X0),not inter_er_smaller_table_subset_verum_table(X0).
inter_er_smaller_table_subset_falsum_robot(X0) :- er_smaller_table(X0),subset_falsum_robot(null).
-inter_er_smaller_table_subset_falsum_robot(X0) :- object(X0),not inter_er_smaller_table_subset_falsum_robot(X0).
inter_er_smaller_table_subset_falsum_block(X0) :- er_smaller_table(X0),subset_falsum_block(null).
-inter_er_smaller_table_subset_falsum_block(X0) :- object(X0),not inter_er_smaller_table_subset_falsum_block(X0).
inter_er_smaller_table_subset_falsum_table(X0) :- er_smaller_table(X0),subset_falsum_table(null).
-inter_er_smaller_table_subset_falsum_table(X0) :- object(X0),not inter_er_smaller_table_subset_falsum_table(X0).
inter_er_smaller_table_subset_robot_block(X0) :- er_smaller_table(X0),subset_robot_block(null).
-inter_er_smaller_table_subset_robot_block(X0) :- object(X0),not inter_er_smaller_table_subset_robot_block(X0).
inter_er_smaller_table_subset_robot_table(X0) :- er_smaller_table(X0),subset_robot_table(null).
-inter_er_smaller_table_subset_robot_table(X0) :- object(X0),not inter_er_smaller_table_subset_robot_table(X0).
inter_er_smaller_table_subset_block_table(X0) :- er_smaller_table(X0),subset_block_table(null).
-inter_er_smaller_table_subset_block_table(X0) :- object(X0),not inter_er_smaller_table_subset_block_table(X0).
inter_er_below_table_er_left_table(X0) :- er_below_table(X0),er_left_table(X0).
-inter_er_below_table_er_left_table(X0) :- object(X0),not inter_er_below_table_er_left_table(X0).
inter_er_below_table_er_overlap_table(X0) :- er_below_table(X0),er_overlap_table(X0).
-inter_er_below_table_er_overlap_table(X0) :- object(X0),not inter_er_below_table_er_overlap_table(X0).
inter_er_below_table_er_shape_table(X0) :- er_below_table(X0),er_shape_table(X0).
-inter_er_below_table_er_shape_table(X0) :- object(X0),not inter_er_below_table_er_shape_table(X0).
inter_er_below_table_inter_verum_falsum(X0) :- er_below_table(X0),inter_verum_falsum(X0).
-inter_er_below_table_inter_verum_falsum(X0) :- object(X0),not inter_er_below_table_inter_verum_falsum(X0).
inter_er_below_table_inter_verum_robot(X0) :- er_below_table(X0),inter_verum_robot(X0).
-inter_er_below_table_inter_verum_robot(X0) :- object(X0),not inter_er_below_table_inter_verum_robot(X0).
inter_er_below_table_inter_verum_block(X0) :- er_below_table(X0),inter_verum_block(X0).
-inter_er_below_table_inter_verum_block(X0) :- object(X0),not inter_er_below_table_inter_verum_block(X0).
inter_er_below_table_inter_verum_table(X0) :- er_below_table(X0),inter_verum_table(X0).
-inter_er_below_table_inter_verum_table(X0) :- object(X0),not inter_er_below_table_inter_verum_table(X0).
inter_er_below_table_inter_falsum_robot(X0) :- er_below_table(X0),inter_falsum_robot(X0).
-inter_er_below_table_inter_falsum_robot(X0) :- object(X0),not inter_er_below_table_inter_falsum_robot(X0).
inter_er_below_table_inter_falsum_block(X0) :- er_below_table(X0),inter_falsum_block(X0).
-inter_er_below_table_inter_falsum_block(X0) :- object(X0),not inter_er_below_table_inter_falsum_block(X0).
inter_er_below_table_inter_falsum_table(X0) :- er_below_table(X0),inter_falsum_table(X0).
-inter_er_below_table_inter_falsum_table(X0) :- object(X0),not inter_er_below_table_inter_falsum_table(X0).
inter_er_below_table_inter_robot_block(X0) :- er_below_table(X0),inter_robot_block(X0).
-inter_er_below_table_inter_robot_block(X0) :- object(X0),not inter_er_below_table_inter_robot_block(X0).
inter_er_below_table_inter_robot_table(X0) :- er_below_table(X0),inter_robot_table(X0).
-inter_er_below_table_inter_robot_table(X0) :- object(X0),not inter_er_below_table_inter_robot_table(X0).
inter_er_below_table_inter_block_table(X0) :- er_below_table(X0),inter_block_table(X0).
-inter_er_below_table_inter_block_table(X0) :- object(X0),not inter_er_below_table_inter_block_table(X0).
inter_er_below_table_subset_verum_falsum(X0) :- er_below_table(X0),subset_verum_falsum(null).
-inter_er_below_table_subset_verum_falsum(X0) :- object(X0),not inter_er_below_table_subset_verum_falsum(X0).
inter_er_below_table_subset_verum_robot(X0) :- er_below_table(X0),subset_verum_robot(null).
-inter_er_below_table_subset_verum_robot(X0) :- object(X0),not inter_er_below_table_subset_verum_robot(X0).
inter_er_below_table_subset_verum_block(X0) :- er_below_table(X0),subset_verum_block(null).
-inter_er_below_table_subset_verum_block(X0) :- object(X0),not inter_er_below_table_subset_verum_block(X0).
inter_er_below_table_subset_verum_table(X0) :- er_below_table(X0),subset_verum_table(null).
-inter_er_below_table_subset_verum_table(X0) :- object(X0),not inter_er_below_table_subset_verum_table(X0).
inter_er_below_table_subset_falsum_robot(X0) :- er_below_table(X0),subset_falsum_robot(null).
-inter_er_below_table_subset_falsum_robot(X0) :- object(X0),not inter_er_below_table_subset_falsum_robot(X0).
inter_er_below_table_subset_falsum_block(X0) :- er_below_table(X0),subset_falsum_block(null).
-inter_er_below_table_subset_falsum_block(X0) :- object(X0),not inter_er_below_table_subset_falsum_block(X0).
inter_er_below_table_subset_falsum_table(X0) :- er_below_table(X0),subset_falsum_table(null).
-inter_er_below_table_subset_falsum_table(X0) :- object(X0),not inter_er_below_table_subset_falsum_table(X0).
inter_er_below_table_subset_robot_block(X0) :- er_below_table(X0),subset_robot_block(null).
-inter_er_below_table_subset_robot_block(X0) :- object(X0),not inter_er_below_table_subset_robot_block(X0).
inter_er_below_table_subset_robot_table(X0) :- er_below_table(X0),subset_robot_table(null).
-inter_er_below_table_subset_robot_table(X0) :- object(X0),not inter_er_below_table_subset_robot_table(X0).
inter_er_below_table_subset_block_table(X0) :- er_below_table(X0),subset_block_table(null).
-inter_er_below_table_subset_block_table(X0) :- object(X0),not inter_er_below_table_subset_block_table(X0).
inter_er_left_table_er_overlap_table(X0) :- er_left_table(X0),er_overlap_table(X0).
-inter_er_left_table_er_overlap_table(X0) :- object(X0),not inter_er_left_table_er_overlap_table(X0).
inter_er_left_table_er_shape_table(X0) :- er_left_table(X0),er_shape_table(X0).
-inter_er_left_table_er_shape_table(X0) :- object(X0),not inter_er_left_table_er_shape_table(X0).
inter_er_left_table_inter_verum_falsum(X0) :- er_left_table(X0),inter_verum_falsum(X0).
-inter_er_left_table_inter_verum_falsum(X0) :- object(X0),not inter_er_left_table_inter_verum_falsum(X0).
inter_er_left_table_inter_verum_robot(X0) :- er_left_table(X0),inter_verum_robot(X0).
-inter_er_left_table_inter_verum_robot(X0) :- object(X0),not inter_er_left_table_inter_verum_robot(X0).
inter_er_left_table_inter_verum_block(X0) :- er_left_table(X0),inter_verum_block(X0).
-inter_er_left_table_inter_verum_block(X0) :- object(X0),not inter_er_left_table_inter_verum_block(X0).
inter_er_left_table_inter_verum_table(X0) :- er_left_table(X0),inter_verum_table(X0).
-inter_er_left_table_inter_verum_table(X0) :- object(X0),not inter_er_left_table_inter_verum_table(X0).
inter_er_left_table_inter_falsum_robot(X0) :- er_left_table(X0),inter_falsum_robot(X0).
-inter_er_left_table_inter_falsum_robot(X0) :- object(X0),not inter_er_left_table_inter_falsum_robot(X0).
inter_er_left_table_inter_falsum_block(X0) :- er_left_table(X0),inter_falsum_block(X0).
-inter_er_left_table_inter_falsum_block(X0) :- object(X0),not inter_er_left_table_inter_falsum_block(X0).
inter_er_left_table_inter_falsum_table(X0) :- er_left_table(X0),inter_falsum_table(X0).
-inter_er_left_table_inter_falsum_table(X0) :- object(X0),not inter_er_left_table_inter_falsum_table(X0).
inter_er_left_table_inter_robot_block(X0) :- er_left_table(X0),inter_robot_block(X0).
-inter_er_left_table_inter_robot_block(X0) :- object(X0),not inter_er_left_table_inter_robot_block(X0).
inter_er_left_table_inter_robot_table(X0) :- er_left_table(X0),inter_robot_table(X0).
-inter_er_left_table_inter_robot_table(X0) :- object(X0),not inter_er_left_table_inter_robot_table(X0).
inter_er_left_table_inter_block_table(X0) :- er_left_table(X0),inter_block_table(X0).
-inter_er_left_table_inter_block_table(X0) :- object(X0),not inter_er_left_table_inter_block_table(X0).
inter_er_left_table_subset_verum_falsum(X0) :- er_left_table(X0),subset_verum_falsum(null).
-inter_er_left_table_subset_verum_falsum(X0) :- object(X0),not inter_er_left_table_subset_verum_falsum(X0).
inter_er_left_table_subset_verum_robot(X0) :- er_left_table(X0),subset_verum_robot(null).
-inter_er_left_table_subset_verum_robot(X0) :- object(X0),not inter_er_left_table_subset_verum_robot(X0).
inter_er_left_table_subset_verum_block(X0) :- er_left_table(X0),subset_verum_block(null).
-inter_er_left_table_subset_verum_block(X0) :- object(X0),not inter_er_left_table_subset_verum_block(X0).
inter_er_left_table_subset_verum_table(X0) :- er_left_table(X0),subset_verum_table(null).
-inter_er_left_table_subset_verum_table(X0) :- object(X0),not inter_er_left_table_subset_verum_table(X0).
inter_er_left_table_subset_falsum_robot(X0) :- er_left_table(X0),subset_falsum_robot(null).
-inter_er_left_table_subset_falsum_robot(X0) :- object(X0),not inter_er_left_table_subset_falsum_robot(X0).
inter_er_left_table_subset_falsum_block(X0) :- er_left_table(X0),subset_falsum_block(null).
-inter_er_left_table_subset_falsum_block(X0) :- object(X0),not inter_er_left_table_subset_falsum_block(X0).
inter_er_left_table_subset_falsum_table(X0) :- er_left_table(X0),subset_falsum_table(null).
-inter_er_left_table_subset_falsum_table(X0) :- object(X0),not inter_er_left_table_subset_falsum_table(X0).
inter_er_left_table_subset_robot_block(X0) :- er_left_table(X0),subset_robot_block(null).
-inter_er_left_table_subset_robot_block(X0) :- object(X0),not inter_er_left_table_subset_robot_block(X0).
inter_er_left_table_subset_robot_table(X0) :- er_left_table(X0),subset_robot_table(null).
-inter_er_left_table_subset_robot_table(X0) :- object(X0),not inter_er_left_table_subset_robot_table(X0).
inter_er_left_table_subset_block_table(X0) :- er_left_table(X0),subset_block_table(null).
-inter_er_left_table_subset_block_table(X0) :- object(X0),not inter_er_left_table_subset_block_table(X0).
inter_er_overlap_table_er_shape_table(X0) :- er_overlap_table(X0),er_shape_table(X0).
-inter_er_overlap_table_er_shape_table(X0) :- object(X0),not inter_er_overlap_table_er_shape_table(X0).
inter_er_overlap_table_inter_verum_falsum(X0) :- er_overlap_table(X0),inter_verum_falsum(X0).
-inter_er_overlap_table_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_table_inter_verum_falsum(X0).
inter_er_overlap_table_inter_verum_robot(X0) :- er_overlap_table(X0),inter_verum_robot(X0).
-inter_er_overlap_table_inter_verum_robot(X0) :- object(X0),not inter_er_overlap_table_inter_verum_robot(X0).
inter_er_overlap_table_inter_verum_block(X0) :- er_overlap_table(X0),inter_verum_block(X0).
-inter_er_overlap_table_inter_verum_block(X0) :- object(X0),not inter_er_overlap_table_inter_verum_block(X0).
inter_er_overlap_table_inter_verum_table(X0) :- er_overlap_table(X0),inter_verum_table(X0).
-inter_er_overlap_table_inter_verum_table(X0) :- object(X0),not inter_er_overlap_table_inter_verum_table(X0).
inter_er_overlap_table_inter_falsum_robot(X0) :- er_overlap_table(X0),inter_falsum_robot(X0).
-inter_er_overlap_table_inter_falsum_robot(X0) :- object(X0),not inter_er_overlap_table_inter_falsum_robot(X0).
inter_er_overlap_table_inter_falsum_block(X0) :- er_overlap_table(X0),inter_falsum_block(X0).
-inter_er_overlap_table_inter_falsum_block(X0) :- object(X0),not inter_er_overlap_table_inter_falsum_block(X0).
inter_er_overlap_table_inter_falsum_table(X0) :- er_overlap_table(X0),inter_falsum_table(X0).
-inter_er_overlap_table_inter_falsum_table(X0) :- object(X0),not inter_er_overlap_table_inter_falsum_table(X0).
inter_er_overlap_table_inter_robot_block(X0) :- er_overlap_table(X0),inter_robot_block(X0).
-inter_er_overlap_table_inter_robot_block(X0) :- object(X0),not inter_er_overlap_table_inter_robot_block(X0).
inter_er_overlap_table_inter_robot_table(X0) :- er_overlap_table(X0),inter_robot_table(X0).
-inter_er_overlap_table_inter_robot_table(X0) :- object(X0),not inter_er_overlap_table_inter_robot_table(X0).
inter_er_overlap_table_inter_block_table(X0) :- er_overlap_table(X0),inter_block_table(X0).
-inter_er_overlap_table_inter_block_table(X0) :- object(X0),not inter_er_overlap_table_inter_block_table(X0).
inter_er_overlap_table_subset_verum_falsum(X0) :- er_overlap_table(X0),subset_verum_falsum(null).
-inter_er_overlap_table_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_table_subset_verum_falsum(X0).
inter_er_overlap_table_subset_verum_robot(X0) :- er_overlap_table(X0),subset_verum_robot(null).
-inter_er_overlap_table_subset_verum_robot(X0) :- object(X0),not inter_er_overlap_table_subset_verum_robot(X0).
inter_er_overlap_table_subset_verum_block(X0) :- er_overlap_table(X0),subset_verum_block(null).
-inter_er_overlap_table_subset_verum_block(X0) :- object(X0),not inter_er_overlap_table_subset_verum_block(X0).
inter_er_overlap_table_subset_verum_table(X0) :- er_overlap_table(X0),subset_verum_table(null).
-inter_er_overlap_table_subset_verum_table(X0) :- object(X0),not inter_er_overlap_table_subset_verum_table(X0).
inter_er_overlap_table_subset_falsum_robot(X0) :- er_overlap_table(X0),subset_falsum_robot(null).
-inter_er_overlap_table_subset_falsum_robot(X0) :- object(X0),not inter_er_overlap_table_subset_falsum_robot(X0).
inter_er_overlap_table_subset_falsum_block(X0) :- er_overlap_table(X0),subset_falsum_block(null).
-inter_er_overlap_table_subset_falsum_block(X0) :- object(X0),not inter_er_overlap_table_subset_falsum_block(X0).
inter_er_overlap_table_subset_falsum_table(X0) :- er_overlap_table(X0),subset_falsum_table(null).
-inter_er_overlap_table_subset_falsum_table(X0) :- object(X0),not inter_er_overlap_table_subset_falsum_table(X0).
inter_er_overlap_table_subset_robot_block(X0) :- er_overlap_table(X0),subset_robot_block(null).
-inter_er_overlap_table_subset_robot_block(X0) :- object(X0),not inter_er_overlap_table_subset_robot_block(X0).
inter_er_overlap_table_subset_robot_table(X0) :- er_overlap_table(X0),subset_robot_table(null).
-inter_er_overlap_table_subset_robot_table(X0) :- object(X0),not inter_er_overlap_table_subset_robot_table(X0).
inter_er_overlap_table_subset_block_table(X0) :- er_overlap_table(X0),subset_block_table(null).
-inter_er_overlap_table_subset_block_table(X0) :- object(X0),not inter_er_overlap_table_subset_block_table(X0).
inter_er_shape_table_inter_verum_falsum(X0) :- er_shape_table(X0),inter_verum_falsum(X0).
-inter_er_shape_table_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_table_inter_verum_falsum(X0).
inter_er_shape_table_inter_verum_robot(X0) :- er_shape_table(X0),inter_verum_robot(X0).
-inter_er_shape_table_inter_verum_robot(X0) :- object(X0),not inter_er_shape_table_inter_verum_robot(X0).
inter_er_shape_table_inter_verum_block(X0) :- er_shape_table(X0),inter_verum_block(X0).
-inter_er_shape_table_inter_verum_block(X0) :- object(X0),not inter_er_shape_table_inter_verum_block(X0).
inter_er_shape_table_inter_verum_table(X0) :- er_shape_table(X0),inter_verum_table(X0).
-inter_er_shape_table_inter_verum_table(X0) :- object(X0),not inter_er_shape_table_inter_verum_table(X0).
inter_er_shape_table_inter_falsum_robot(X0) :- er_shape_table(X0),inter_falsum_robot(X0).
-inter_er_shape_table_inter_falsum_robot(X0) :- object(X0),not inter_er_shape_table_inter_falsum_robot(X0).
inter_er_shape_table_inter_falsum_block(X0) :- er_shape_table(X0),inter_falsum_block(X0).
-inter_er_shape_table_inter_falsum_block(X0) :- object(X0),not inter_er_shape_table_inter_falsum_block(X0).
inter_er_shape_table_inter_falsum_table(X0) :- er_shape_table(X0),inter_falsum_table(X0).
-inter_er_shape_table_inter_falsum_table(X0) :- object(X0),not inter_er_shape_table_inter_falsum_table(X0).
inter_er_shape_table_inter_robot_block(X0) :- er_shape_table(X0),inter_robot_block(X0).
-inter_er_shape_table_inter_robot_block(X0) :- object(X0),not inter_er_shape_table_inter_robot_block(X0).
inter_er_shape_table_inter_robot_table(X0) :- er_shape_table(X0),inter_robot_table(X0).
-inter_er_shape_table_inter_robot_table(X0) :- object(X0),not inter_er_shape_table_inter_robot_table(X0).
inter_er_shape_table_inter_block_table(X0) :- er_shape_table(X0),inter_block_table(X0).
-inter_er_shape_table_inter_block_table(X0) :- object(X0),not inter_er_shape_table_inter_block_table(X0).
inter_er_shape_table_subset_verum_falsum(X0) :- er_shape_table(X0),subset_verum_falsum(null).
-inter_er_shape_table_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_table_subset_verum_falsum(X0).
inter_er_shape_table_subset_verum_robot(X0) :- er_shape_table(X0),subset_verum_robot(null).
-inter_er_shape_table_subset_verum_robot(X0) :- object(X0),not inter_er_shape_table_subset_verum_robot(X0).
inter_er_shape_table_subset_verum_block(X0) :- er_shape_table(X0),subset_verum_block(null).
-inter_er_shape_table_subset_verum_block(X0) :- object(X0),not inter_er_shape_table_subset_verum_block(X0).
inter_er_shape_table_subset_verum_table(X0) :- er_shape_table(X0),subset_verum_table(null).
-inter_er_shape_table_subset_verum_table(X0) :- object(X0),not inter_er_shape_table_subset_verum_table(X0).
inter_er_shape_table_subset_falsum_robot(X0) :- er_shape_table(X0),subset_falsum_robot(null).
-inter_er_shape_table_subset_falsum_robot(X0) :- object(X0),not inter_er_shape_table_subset_falsum_robot(X0).
inter_er_shape_table_subset_falsum_block(X0) :- er_shape_table(X0),subset_falsum_block(null).
-inter_er_shape_table_subset_falsum_block(X0) :- object(X0),not inter_er_shape_table_subset_falsum_block(X0).
inter_er_shape_table_subset_falsum_table(X0) :- er_shape_table(X0),subset_falsum_table(null).
-inter_er_shape_table_subset_falsum_table(X0) :- object(X0),not inter_er_shape_table_subset_falsum_table(X0).
inter_er_shape_table_subset_robot_block(X0) :- er_shape_table(X0),subset_robot_block(null).
-inter_er_shape_table_subset_robot_block(X0) :- object(X0),not inter_er_shape_table_subset_robot_block(X0).
inter_er_shape_table_subset_robot_table(X0) :- er_shape_table(X0),subset_robot_table(null).
-inter_er_shape_table_subset_robot_table(X0) :- object(X0),not inter_er_shape_table_subset_robot_table(X0).
inter_er_shape_table_subset_block_table(X0) :- er_shape_table(X0),subset_block_table(null).
-inter_er_shape_table_subset_block_table(X0) :- object(X0),not inter_er_shape_table_subset_block_table(X0).
inter_inter_verum_falsum_inter_verum_robot(X0) :- inter_verum_falsum(X0),inter_verum_robot(X0).
-inter_inter_verum_falsum_inter_verum_robot(X0) :- object(X0),not inter_inter_verum_falsum_inter_verum_robot(X0).
inter_inter_verum_falsum_inter_verum_block(X0) :- inter_verum_falsum(X0),inter_verum_block(X0).
-inter_inter_verum_falsum_inter_verum_block(X0) :- object(X0),not inter_inter_verum_falsum_inter_verum_block(X0).
inter_inter_verum_falsum_inter_verum_table(X0) :- inter_verum_falsum(X0),inter_verum_table(X0).
-inter_inter_verum_falsum_inter_verum_table(X0) :- object(X0),not inter_inter_verum_falsum_inter_verum_table(X0).
inter_inter_verum_falsum_inter_falsum_robot(X0) :- inter_verum_falsum(X0),inter_falsum_robot(X0).
-inter_inter_verum_falsum_inter_falsum_robot(X0) :- object(X0),not inter_inter_verum_falsum_inter_falsum_robot(X0).
inter_inter_verum_falsum_inter_falsum_block(X0) :- inter_verum_falsum(X0),inter_falsum_block(X0).
-inter_inter_verum_falsum_inter_falsum_block(X0) :- object(X0),not inter_inter_verum_falsum_inter_falsum_block(X0).
inter_inter_verum_falsum_inter_falsum_table(X0) :- inter_verum_falsum(X0),inter_falsum_table(X0).
-inter_inter_verum_falsum_inter_falsum_table(X0) :- object(X0),not inter_inter_verum_falsum_inter_falsum_table(X0).
inter_inter_verum_falsum_inter_robot_block(X0) :- inter_verum_falsum(X0),inter_robot_block(X0).
-inter_inter_verum_falsum_inter_robot_block(X0) :- object(X0),not inter_inter_verum_falsum_inter_robot_block(X0).
inter_inter_verum_falsum_inter_robot_table(X0) :- inter_verum_falsum(X0),inter_robot_table(X0).
-inter_inter_verum_falsum_inter_robot_table(X0) :- object(X0),not inter_inter_verum_falsum_inter_robot_table(X0).
inter_inter_verum_falsum_inter_block_table(X0) :- inter_verum_falsum(X0),inter_block_table(X0).
-inter_inter_verum_falsum_inter_block_table(X0) :- object(X0),not inter_inter_verum_falsum_inter_block_table(X0).
inter_inter_verum_falsum_subset_verum_falsum(X0) :- inter_verum_falsum(X0),subset_verum_falsum(null).
-inter_inter_verum_falsum_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_falsum(X0).
inter_inter_verum_falsum_subset_verum_robot(X0) :- inter_verum_falsum(X0),subset_verum_robot(null).
-inter_inter_verum_falsum_subset_verum_robot(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_robot(X0).
inter_inter_verum_falsum_subset_verum_block(X0) :- inter_verum_falsum(X0),subset_verum_block(null).
-inter_inter_verum_falsum_subset_verum_block(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_block(X0).
inter_inter_verum_falsum_subset_verum_table(X0) :- inter_verum_falsum(X0),subset_verum_table(null).
-inter_inter_verum_falsum_subset_verum_table(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_table(X0).
inter_inter_verum_falsum_subset_falsum_robot(X0) :- inter_verum_falsum(X0),subset_falsum_robot(null).
-inter_inter_verum_falsum_subset_falsum_robot(X0) :- object(X0),not inter_inter_verum_falsum_subset_falsum_robot(X0).
inter_inter_verum_falsum_subset_falsum_block(X0) :- inter_verum_falsum(X0),subset_falsum_block(null).
-inter_inter_verum_falsum_subset_falsum_block(X0) :- object(X0),not inter_inter_verum_falsum_subset_falsum_block(X0).
inter_inter_verum_falsum_subset_falsum_table(X0) :- inter_verum_falsum(X0),subset_falsum_table(null).
-inter_inter_verum_falsum_subset_falsum_table(X0) :- object(X0),not inter_inter_verum_falsum_subset_falsum_table(X0).
inter_inter_verum_falsum_subset_robot_block(X0) :- inter_verum_falsum(X0),subset_robot_block(null).
-inter_inter_verum_falsum_subset_robot_block(X0) :- object(X0),not inter_inter_verum_falsum_subset_robot_block(X0).
inter_inter_verum_falsum_subset_robot_table(X0) :- inter_verum_falsum(X0),subset_robot_table(null).
-inter_inter_verum_falsum_subset_robot_table(X0) :- object(X0),not inter_inter_verum_falsum_subset_robot_table(X0).
inter_inter_verum_falsum_subset_block_table(X0) :- inter_verum_falsum(X0),subset_block_table(null).
-inter_inter_verum_falsum_subset_block_table(X0) :- object(X0),not inter_inter_verum_falsum_subset_block_table(X0).
inter_inter_verum_robot_inter_verum_block(X0) :- inter_verum_robot(X0),inter_verum_block(X0).
-inter_inter_verum_robot_inter_verum_block(X0) :- object(X0),not inter_inter_verum_robot_inter_verum_block(X0).
inter_inter_verum_robot_inter_verum_table(X0) :- inter_verum_robot(X0),inter_verum_table(X0).
-inter_inter_verum_robot_inter_verum_table(X0) :- object(X0),not inter_inter_verum_robot_inter_verum_table(X0).
inter_inter_verum_robot_inter_falsum_robot(X0) :- inter_verum_robot(X0),inter_falsum_robot(X0).
-inter_inter_verum_robot_inter_falsum_robot(X0) :- object(X0),not inter_inter_verum_robot_inter_falsum_robot(X0).
inter_inter_verum_robot_inter_falsum_block(X0) :- inter_verum_robot(X0),inter_falsum_block(X0).
-inter_inter_verum_robot_inter_falsum_block(X0) :- object(X0),not inter_inter_verum_robot_inter_falsum_block(X0).
inter_inter_verum_robot_inter_falsum_table(X0) :- inter_verum_robot(X0),inter_falsum_table(X0).
-inter_inter_verum_robot_inter_falsum_table(X0) :- object(X0),not inter_inter_verum_robot_inter_falsum_table(X0).
inter_inter_verum_robot_inter_robot_block(X0) :- inter_verum_robot(X0),inter_robot_block(X0).
-inter_inter_verum_robot_inter_robot_block(X0) :- object(X0),not inter_inter_verum_robot_inter_robot_block(X0).
inter_inter_verum_robot_inter_robot_table(X0) :- inter_verum_robot(X0),inter_robot_table(X0).
-inter_inter_verum_robot_inter_robot_table(X0) :- object(X0),not inter_inter_verum_robot_inter_robot_table(X0).
inter_inter_verum_robot_inter_block_table(X0) :- inter_verum_robot(X0),inter_block_table(X0).
-inter_inter_verum_robot_inter_block_table(X0) :- object(X0),not inter_inter_verum_robot_inter_block_table(X0).
inter_inter_verum_robot_subset_verum_falsum(X0) :- inter_verum_robot(X0),subset_verum_falsum(null).
-inter_inter_verum_robot_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_robot_subset_verum_falsum(X0).
inter_inter_verum_robot_subset_verum_robot(X0) :- inter_verum_robot(X0),subset_verum_robot(null).
-inter_inter_verum_robot_subset_verum_robot(X0) :- object(X0),not inter_inter_verum_robot_subset_verum_robot(X0).
inter_inter_verum_robot_subset_verum_block(X0) :- inter_verum_robot(X0),subset_verum_block(null).
-inter_inter_verum_robot_subset_verum_block(X0) :- object(X0),not inter_inter_verum_robot_subset_verum_block(X0).
inter_inter_verum_robot_subset_verum_table(X0) :- inter_verum_robot(X0),subset_verum_table(null).
-inter_inter_verum_robot_subset_verum_table(X0) :- object(X0),not inter_inter_verum_robot_subset_verum_table(X0).
inter_inter_verum_robot_subset_falsum_robot(X0) :- inter_verum_robot(X0),subset_falsum_robot(null).
-inter_inter_verum_robot_subset_falsum_robot(X0) :- object(X0),not inter_inter_verum_robot_subset_falsum_robot(X0).
inter_inter_verum_robot_subset_falsum_block(X0) :- inter_verum_robot(X0),subset_falsum_block(null).
-inter_inter_verum_robot_subset_falsum_block(X0) :- object(X0),not inter_inter_verum_robot_subset_falsum_block(X0).
inter_inter_verum_robot_subset_falsum_table(X0) :- inter_verum_robot(X0),subset_falsum_table(null).
-inter_inter_verum_robot_subset_falsum_table(X0) :- object(X0),not inter_inter_verum_robot_subset_falsum_table(X0).
inter_inter_verum_robot_subset_robot_block(X0) :- inter_verum_robot(X0),subset_robot_block(null).
-inter_inter_verum_robot_subset_robot_block(X0) :- object(X0),not inter_inter_verum_robot_subset_robot_block(X0).
inter_inter_verum_robot_subset_robot_table(X0) :- inter_verum_robot(X0),subset_robot_table(null).
-inter_inter_verum_robot_subset_robot_table(X0) :- object(X0),not inter_inter_verum_robot_subset_robot_table(X0).
inter_inter_verum_robot_subset_block_table(X0) :- inter_verum_robot(X0),subset_block_table(null).
-inter_inter_verum_robot_subset_block_table(X0) :- object(X0),not inter_inter_verum_robot_subset_block_table(X0).
inter_inter_verum_block_inter_verum_table(X0) :- inter_verum_block(X0),inter_verum_table(X0).
-inter_inter_verum_block_inter_verum_table(X0) :- object(X0),not inter_inter_verum_block_inter_verum_table(X0).
inter_inter_verum_block_inter_falsum_robot(X0) :- inter_verum_block(X0),inter_falsum_robot(X0).
-inter_inter_verum_block_inter_falsum_robot(X0) :- object(X0),not inter_inter_verum_block_inter_falsum_robot(X0).
inter_inter_verum_block_inter_falsum_block(X0) :- inter_verum_block(X0),inter_falsum_block(X0).
-inter_inter_verum_block_inter_falsum_block(X0) :- object(X0),not inter_inter_verum_block_inter_falsum_block(X0).
inter_inter_verum_block_inter_falsum_table(X0) :- inter_verum_block(X0),inter_falsum_table(X0).
-inter_inter_verum_block_inter_falsum_table(X0) :- object(X0),not inter_inter_verum_block_inter_falsum_table(X0).
inter_inter_verum_block_inter_robot_block(X0) :- inter_verum_block(X0),inter_robot_block(X0).
-inter_inter_verum_block_inter_robot_block(X0) :- object(X0),not inter_inter_verum_block_inter_robot_block(X0).
inter_inter_verum_block_inter_robot_table(X0) :- inter_verum_block(X0),inter_robot_table(X0).
-inter_inter_verum_block_inter_robot_table(X0) :- object(X0),not inter_inter_verum_block_inter_robot_table(X0).
inter_inter_verum_block_inter_block_table(X0) :- inter_verum_block(X0),inter_block_table(X0).
-inter_inter_verum_block_inter_block_table(X0) :- object(X0),not inter_inter_verum_block_inter_block_table(X0).
inter_inter_verum_block_subset_verum_falsum(X0) :- inter_verum_block(X0),subset_verum_falsum(null).
-inter_inter_verum_block_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_block_subset_verum_falsum(X0).
inter_inter_verum_block_subset_verum_robot(X0) :- inter_verum_block(X0),subset_verum_robot(null).
-inter_inter_verum_block_subset_verum_robot(X0) :- object(X0),not inter_inter_verum_block_subset_verum_robot(X0).
inter_inter_verum_block_subset_verum_block(X0) :- inter_verum_block(X0),subset_verum_block(null).
-inter_inter_verum_block_subset_verum_block(X0) :- object(X0),not inter_inter_verum_block_subset_verum_block(X0).
inter_inter_verum_block_subset_verum_table(X0) :- inter_verum_block(X0),subset_verum_table(null).
-inter_inter_verum_block_subset_verum_table(X0) :- object(X0),not inter_inter_verum_block_subset_verum_table(X0).
inter_inter_verum_block_subset_falsum_robot(X0) :- inter_verum_block(X0),subset_falsum_robot(null).
-inter_inter_verum_block_subset_falsum_robot(X0) :- object(X0),not inter_inter_verum_block_subset_falsum_robot(X0).
inter_inter_verum_block_subset_falsum_block(X0) :- inter_verum_block(X0),subset_falsum_block(null).
-inter_inter_verum_block_subset_falsum_block(X0) :- object(X0),not inter_inter_verum_block_subset_falsum_block(X0).
inter_inter_verum_block_subset_falsum_table(X0) :- inter_verum_block(X0),subset_falsum_table(null).
-inter_inter_verum_block_subset_falsum_table(X0) :- object(X0),not inter_inter_verum_block_subset_falsum_table(X0).
inter_inter_verum_block_subset_robot_block(X0) :- inter_verum_block(X0),subset_robot_block(null).
-inter_inter_verum_block_subset_robot_block(X0) :- object(X0),not inter_inter_verum_block_subset_robot_block(X0).
inter_inter_verum_block_subset_robot_table(X0) :- inter_verum_block(X0),subset_robot_table(null).
-inter_inter_verum_block_subset_robot_table(X0) :- object(X0),not inter_inter_verum_block_subset_robot_table(X0).
inter_inter_verum_block_subset_block_table(X0) :- inter_verum_block(X0),subset_block_table(null).
-inter_inter_verum_block_subset_block_table(X0) :- object(X0),not inter_inter_verum_block_subset_block_table(X0).
inter_inter_verum_table_inter_falsum_robot(X0) :- inter_verum_table(X0),inter_falsum_robot(X0).
-inter_inter_verum_table_inter_falsum_robot(X0) :- object(X0),not inter_inter_verum_table_inter_falsum_robot(X0).
inter_inter_verum_table_inter_falsum_block(X0) :- inter_verum_table(X0),inter_falsum_block(X0).
-inter_inter_verum_table_inter_falsum_block(X0) :- object(X0),not inter_inter_verum_table_inter_falsum_block(X0).
inter_inter_verum_table_inter_falsum_table(X0) :- inter_verum_table(X0),inter_falsum_table(X0).
-inter_inter_verum_table_inter_falsum_table(X0) :- object(X0),not inter_inter_verum_table_inter_falsum_table(X0).
inter_inter_verum_table_inter_robot_block(X0) :- inter_verum_table(X0),inter_robot_block(X0).
-inter_inter_verum_table_inter_robot_block(X0) :- object(X0),not inter_inter_verum_table_inter_robot_block(X0).
inter_inter_verum_table_inter_robot_table(X0) :- inter_verum_table(X0),inter_robot_table(X0).
-inter_inter_verum_table_inter_robot_table(X0) :- object(X0),not inter_inter_verum_table_inter_robot_table(X0).
inter_inter_verum_table_inter_block_table(X0) :- inter_verum_table(X0),inter_block_table(X0).
-inter_inter_verum_table_inter_block_table(X0) :- object(X0),not inter_inter_verum_table_inter_block_table(X0).
inter_inter_verum_table_subset_verum_falsum(X0) :- inter_verum_table(X0),subset_verum_falsum(null).
-inter_inter_verum_table_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_table_subset_verum_falsum(X0).
inter_inter_verum_table_subset_verum_robot(X0) :- inter_verum_table(X0),subset_verum_robot(null).
-inter_inter_verum_table_subset_verum_robot(X0) :- object(X0),not inter_inter_verum_table_subset_verum_robot(X0).
inter_inter_verum_table_subset_verum_block(X0) :- inter_verum_table(X0),subset_verum_block(null).
-inter_inter_verum_table_subset_verum_block(X0) :- object(X0),not inter_inter_verum_table_subset_verum_block(X0).
inter_inter_verum_table_subset_verum_table(X0) :- inter_verum_table(X0),subset_verum_table(null).
-inter_inter_verum_table_subset_verum_table(X0) :- object(X0),not inter_inter_verum_table_subset_verum_table(X0).
inter_inter_verum_table_subset_falsum_robot(X0) :- inter_verum_table(X0),subset_falsum_robot(null).
-inter_inter_verum_table_subset_falsum_robot(X0) :- object(X0),not inter_inter_verum_table_subset_falsum_robot(X0).
inter_inter_verum_table_subset_falsum_block(X0) :- inter_verum_table(X0),subset_falsum_block(null).
-inter_inter_verum_table_subset_falsum_block(X0) :- object(X0),not inter_inter_verum_table_subset_falsum_block(X0).
inter_inter_verum_table_subset_falsum_table(X0) :- inter_verum_table(X0),subset_falsum_table(null).
-inter_inter_verum_table_subset_falsum_table(X0) :- object(X0),not inter_inter_verum_table_subset_falsum_table(X0).
inter_inter_verum_table_subset_robot_block(X0) :- inter_verum_table(X0),subset_robot_block(null).
-inter_inter_verum_table_subset_robot_block(X0) :- object(X0),not inter_inter_verum_table_subset_robot_block(X0).
inter_inter_verum_table_subset_robot_table(X0) :- inter_verum_table(X0),subset_robot_table(null).
-inter_inter_verum_table_subset_robot_table(X0) :- object(X0),not inter_inter_verum_table_subset_robot_table(X0).
inter_inter_verum_table_subset_block_table(X0) :- inter_verum_table(X0),subset_block_table(null).
-inter_inter_verum_table_subset_block_table(X0) :- object(X0),not inter_inter_verum_table_subset_block_table(X0).
inter_inter_falsum_robot_inter_falsum_block(X0) :- inter_falsum_robot(X0),inter_falsum_block(X0).
-inter_inter_falsum_robot_inter_falsum_block(X0) :- object(X0),not inter_inter_falsum_robot_inter_falsum_block(X0).
inter_inter_falsum_robot_inter_falsum_table(X0) :- inter_falsum_robot(X0),inter_falsum_table(X0).
-inter_inter_falsum_robot_inter_falsum_table(X0) :- object(X0),not inter_inter_falsum_robot_inter_falsum_table(X0).
inter_inter_falsum_robot_inter_robot_block(X0) :- inter_falsum_robot(X0),inter_robot_block(X0).
-inter_inter_falsum_robot_inter_robot_block(X0) :- object(X0),not inter_inter_falsum_robot_inter_robot_block(X0).
inter_inter_falsum_robot_inter_robot_table(X0) :- inter_falsum_robot(X0),inter_robot_table(X0).
-inter_inter_falsum_robot_inter_robot_table(X0) :- object(X0),not inter_inter_falsum_robot_inter_robot_table(X0).
inter_inter_falsum_robot_inter_block_table(X0) :- inter_falsum_robot(X0),inter_block_table(X0).
-inter_inter_falsum_robot_inter_block_table(X0) :- object(X0),not inter_inter_falsum_robot_inter_block_table(X0).
inter_inter_falsum_robot_subset_verum_falsum(X0) :- inter_falsum_robot(X0),subset_verum_falsum(null).
-inter_inter_falsum_robot_subset_verum_falsum(X0) :- object(X0),not inter_inter_falsum_robot_subset_verum_falsum(X0).
inter_inter_falsum_robot_subset_verum_robot(X0) :- inter_falsum_robot(X0),subset_verum_robot(null).
-inter_inter_falsum_robot_subset_verum_robot(X0) :- object(X0),not inter_inter_falsum_robot_subset_verum_robot(X0).
inter_inter_falsum_robot_subset_verum_block(X0) :- inter_falsum_robot(X0),subset_verum_block(null).
-inter_inter_falsum_robot_subset_verum_block(X0) :- object(X0),not inter_inter_falsum_robot_subset_verum_block(X0).
inter_inter_falsum_robot_subset_verum_table(X0) :- inter_falsum_robot(X0),subset_verum_table(null).
-inter_inter_falsum_robot_subset_verum_table(X0) :- object(X0),not inter_inter_falsum_robot_subset_verum_table(X0).
inter_inter_falsum_robot_subset_falsum_robot(X0) :- inter_falsum_robot(X0),subset_falsum_robot(null).
-inter_inter_falsum_robot_subset_falsum_robot(X0) :- object(X0),not inter_inter_falsum_robot_subset_falsum_robot(X0).
inter_inter_falsum_robot_subset_falsum_block(X0) :- inter_falsum_robot(X0),subset_falsum_block(null).
-inter_inter_falsum_robot_subset_falsum_block(X0) :- object(X0),not inter_inter_falsum_robot_subset_falsum_block(X0).
inter_inter_falsum_robot_subset_falsum_table(X0) :- inter_falsum_robot(X0),subset_falsum_table(null).
-inter_inter_falsum_robot_subset_falsum_table(X0) :- object(X0),not inter_inter_falsum_robot_subset_falsum_table(X0).
inter_inter_falsum_robot_subset_robot_block(X0) :- inter_falsum_robot(X0),subset_robot_block(null).
-inter_inter_falsum_robot_subset_robot_block(X0) :- object(X0),not inter_inter_falsum_robot_subset_robot_block(X0).
inter_inter_falsum_robot_subset_robot_table(X0) :- inter_falsum_robot(X0),subset_robot_table(null).
-inter_inter_falsum_robot_subset_robot_table(X0) :- object(X0),not inter_inter_falsum_robot_subset_robot_table(X0).
inter_inter_falsum_robot_subset_block_table(X0) :- inter_falsum_robot(X0),subset_block_table(null).
-inter_inter_falsum_robot_subset_block_table(X0) :- object(X0),not inter_inter_falsum_robot_subset_block_table(X0).
inter_inter_falsum_block_inter_falsum_table(X0) :- inter_falsum_block(X0),inter_falsum_table(X0).
-inter_inter_falsum_block_inter_falsum_table(X0) :- object(X0),not inter_inter_falsum_block_inter_falsum_table(X0).
inter_inter_falsum_block_inter_robot_block(X0) :- inter_falsum_block(X0),inter_robot_block(X0).
-inter_inter_falsum_block_inter_robot_block(X0) :- object(X0),not inter_inter_falsum_block_inter_robot_block(X0).
inter_inter_falsum_block_inter_robot_table(X0) :- inter_falsum_block(X0),inter_robot_table(X0).
-inter_inter_falsum_block_inter_robot_table(X0) :- object(X0),not inter_inter_falsum_block_inter_robot_table(X0).
inter_inter_falsum_block_inter_block_table(X0) :- inter_falsum_block(X0),inter_block_table(X0).
-inter_inter_falsum_block_inter_block_table(X0) :- object(X0),not inter_inter_falsum_block_inter_block_table(X0).
inter_inter_falsum_block_subset_verum_falsum(X0) :- inter_falsum_block(X0),subset_verum_falsum(null).
-inter_inter_falsum_block_subset_verum_falsum(X0) :- object(X0),not inter_inter_falsum_block_subset_verum_falsum(X0).
inter_inter_falsum_block_subset_verum_robot(X0) :- inter_falsum_block(X0),subset_verum_robot(null).
-inter_inter_falsum_block_subset_verum_robot(X0) :- object(X0),not inter_inter_falsum_block_subset_verum_robot(X0).
inter_inter_falsum_block_subset_verum_block(X0) :- inter_falsum_block(X0),subset_verum_block(null).
-inter_inter_falsum_block_subset_verum_block(X0) :- object(X0),not inter_inter_falsum_block_subset_verum_block(X0).
inter_inter_falsum_block_subset_verum_table(X0) :- inter_falsum_block(X0),subset_verum_table(null).
-inter_inter_falsum_block_subset_verum_table(X0) :- object(X0),not inter_inter_falsum_block_subset_verum_table(X0).
inter_inter_falsum_block_subset_falsum_robot(X0) :- inter_falsum_block(X0),subset_falsum_robot(null).
-inter_inter_falsum_block_subset_falsum_robot(X0) :- object(X0),not inter_inter_falsum_block_subset_falsum_robot(X0).
inter_inter_falsum_block_subset_falsum_block(X0) :- inter_falsum_block(X0),subset_falsum_block(null).
-inter_inter_falsum_block_subset_falsum_block(X0) :- object(X0),not inter_inter_falsum_block_subset_falsum_block(X0).
inter_inter_falsum_block_subset_falsum_table(X0) :- inter_falsum_block(X0),subset_falsum_table(null).
-inter_inter_falsum_block_subset_falsum_table(X0) :- object(X0),not inter_inter_falsum_block_subset_falsum_table(X0).
inter_inter_falsum_block_subset_robot_block(X0) :- inter_falsum_block(X0),subset_robot_block(null).
-inter_inter_falsum_block_subset_robot_block(X0) :- object(X0),not inter_inter_falsum_block_subset_robot_block(X0).
inter_inter_falsum_block_subset_robot_table(X0) :- inter_falsum_block(X0),subset_robot_table(null).
-inter_inter_falsum_block_subset_robot_table(X0) :- object(X0),not inter_inter_falsum_block_subset_robot_table(X0).
inter_inter_falsum_block_subset_block_table(X0) :- inter_falsum_block(X0),subset_block_table(null).
-inter_inter_falsum_block_subset_block_table(X0) :- object(X0),not inter_inter_falsum_block_subset_block_table(X0).
inter_inter_falsum_table_inter_robot_block(X0) :- inter_falsum_table(X0),inter_robot_block(X0).
-inter_inter_falsum_table_inter_robot_block(X0) :- object(X0),not inter_inter_falsum_table_inter_robot_block(X0).
inter_inter_falsum_table_inter_robot_table(X0) :- inter_falsum_table(X0),inter_robot_table(X0).
-inter_inter_falsum_table_inter_robot_table(X0) :- object(X0),not inter_inter_falsum_table_inter_robot_table(X0).
inter_inter_falsum_table_inter_block_table(X0) :- inter_falsum_table(X0),inter_block_table(X0).
-inter_inter_falsum_table_inter_block_table(X0) :- object(X0),not inter_inter_falsum_table_inter_block_table(X0).
inter_inter_falsum_table_subset_verum_falsum(X0) :- inter_falsum_table(X0),subset_verum_falsum(null).
-inter_inter_falsum_table_subset_verum_falsum(X0) :- object(X0),not inter_inter_falsum_table_subset_verum_falsum(X0).
inter_inter_falsum_table_subset_verum_robot(X0) :- inter_falsum_table(X0),subset_verum_robot(null).
-inter_inter_falsum_table_subset_verum_robot(X0) :- object(X0),not inter_inter_falsum_table_subset_verum_robot(X0).
inter_inter_falsum_table_subset_verum_block(X0) :- inter_falsum_table(X0),subset_verum_block(null).
-inter_inter_falsum_table_subset_verum_block(X0) :- object(X0),not inter_inter_falsum_table_subset_verum_block(X0).
inter_inter_falsum_table_subset_verum_table(X0) :- inter_falsum_table(X0),subset_verum_table(null).
-inter_inter_falsum_table_subset_verum_table(X0) :- object(X0),not inter_inter_falsum_table_subset_verum_table(X0).
inter_inter_falsum_table_subset_falsum_robot(X0) :- inter_falsum_table(X0),subset_falsum_robot(null).
-inter_inter_falsum_table_subset_falsum_robot(X0) :- object(X0),not inter_inter_falsum_table_subset_falsum_robot(X0).
inter_inter_falsum_table_subset_falsum_block(X0) :- inter_falsum_table(X0),subset_falsum_block(null).
-inter_inter_falsum_table_subset_falsum_block(X0) :- object(X0),not inter_inter_falsum_table_subset_falsum_block(X0).
inter_inter_falsum_table_subset_falsum_table(X0) :- inter_falsum_table(X0),subset_falsum_table(null).
-inter_inter_falsum_table_subset_falsum_table(X0) :- object(X0),not inter_inter_falsum_table_subset_falsum_table(X0).
inter_inter_falsum_table_subset_robot_block(X0) :- inter_falsum_table(X0),subset_robot_block(null).
-inter_inter_falsum_table_subset_robot_block(X0) :- object(X0),not inter_inter_falsum_table_subset_robot_block(X0).
inter_inter_falsum_table_subset_robot_table(X0) :- inter_falsum_table(X0),subset_robot_table(null).
-inter_inter_falsum_table_subset_robot_table(X0) :- object(X0),not inter_inter_falsum_table_subset_robot_table(X0).
inter_inter_falsum_table_subset_block_table(X0) :- inter_falsum_table(X0),subset_block_table(null).
-inter_inter_falsum_table_subset_block_table(X0) :- object(X0),not inter_inter_falsum_table_subset_block_table(X0).
inter_inter_robot_block_inter_robot_table(X0) :- inter_robot_block(X0),inter_robot_table(X0).
-inter_inter_robot_block_inter_robot_table(X0) :- object(X0),not inter_inter_robot_block_inter_robot_table(X0).
inter_inter_robot_block_inter_block_table(X0) :- inter_robot_block(X0),inter_block_table(X0).
-inter_inter_robot_block_inter_block_table(X0) :- object(X0),not inter_inter_robot_block_inter_block_table(X0).
inter_inter_robot_block_subset_verum_falsum(X0) :- inter_robot_block(X0),subset_verum_falsum(null).
-inter_inter_robot_block_subset_verum_falsum(X0) :- object(X0),not inter_inter_robot_block_subset_verum_falsum(X0).
inter_inter_robot_block_subset_verum_robot(X0) :- inter_robot_block(X0),subset_verum_robot(null).
-inter_inter_robot_block_subset_verum_robot(X0) :- object(X0),not inter_inter_robot_block_subset_verum_robot(X0).
inter_inter_robot_block_subset_verum_block(X0) :- inter_robot_block(X0),subset_verum_block(null).
-inter_inter_robot_block_subset_verum_block(X0) :- object(X0),not inter_inter_robot_block_subset_verum_block(X0).
inter_inter_robot_block_subset_verum_table(X0) :- inter_robot_block(X0),subset_verum_table(null).
-inter_inter_robot_block_subset_verum_table(X0) :- object(X0),not inter_inter_robot_block_subset_verum_table(X0).
inter_inter_robot_block_subset_falsum_robot(X0) :- inter_robot_block(X0),subset_falsum_robot(null).
-inter_inter_robot_block_subset_falsum_robot(X0) :- object(X0),not inter_inter_robot_block_subset_falsum_robot(X0).
inter_inter_robot_block_subset_falsum_block(X0) :- inter_robot_block(X0),subset_falsum_block(null).
-inter_inter_robot_block_subset_falsum_block(X0) :- object(X0),not inter_inter_robot_block_subset_falsum_block(X0).
inter_inter_robot_block_subset_falsum_table(X0) :- inter_robot_block(X0),subset_falsum_table(null).
-inter_inter_robot_block_subset_falsum_table(X0) :- object(X0),not inter_inter_robot_block_subset_falsum_table(X0).
inter_inter_robot_block_subset_robot_block(X0) :- inter_robot_block(X0),subset_robot_block(null).
-inter_inter_robot_block_subset_robot_block(X0) :- object(X0),not inter_inter_robot_block_subset_robot_block(X0).
inter_inter_robot_block_subset_robot_table(X0) :- inter_robot_block(X0),subset_robot_table(null).
-inter_inter_robot_block_subset_robot_table(X0) :- object(X0),not inter_inter_robot_block_subset_robot_table(X0).
inter_inter_robot_block_subset_block_table(X0) :- inter_robot_block(X0),subset_block_table(null).
-inter_inter_robot_block_subset_block_table(X0) :- object(X0),not inter_inter_robot_block_subset_block_table(X0).
inter_inter_robot_table_inter_block_table(X0) :- inter_robot_table(X0),inter_block_table(X0).
-inter_inter_robot_table_inter_block_table(X0) :- object(X0),not inter_inter_robot_table_inter_block_table(X0).
inter_inter_robot_table_subset_verum_falsum(X0) :- inter_robot_table(X0),subset_verum_falsum(null).
-inter_inter_robot_table_subset_verum_falsum(X0) :- object(X0),not inter_inter_robot_table_subset_verum_falsum(X0).
inter_inter_robot_table_subset_verum_robot(X0) :- inter_robot_table(X0),subset_verum_robot(null).
-inter_inter_robot_table_subset_verum_robot(X0) :- object(X0),not inter_inter_robot_table_subset_verum_robot(X0).
inter_inter_robot_table_subset_verum_block(X0) :- inter_robot_table(X0),subset_verum_block(null).
-inter_inter_robot_table_subset_verum_block(X0) :- object(X0),not inter_inter_robot_table_subset_verum_block(X0).
inter_inter_robot_table_subset_verum_table(X0) :- inter_robot_table(X0),subset_verum_table(null).
-inter_inter_robot_table_subset_verum_table(X0) :- object(X0),not inter_inter_robot_table_subset_verum_table(X0).
inter_inter_robot_table_subset_falsum_robot(X0) :- inter_robot_table(X0),subset_falsum_robot(null).
-inter_inter_robot_table_subset_falsum_robot(X0) :- object(X0),not inter_inter_robot_table_subset_falsum_robot(X0).
inter_inter_robot_table_subset_falsum_block(X0) :- inter_robot_table(X0),subset_falsum_block(null).
-inter_inter_robot_table_subset_falsum_block(X0) :- object(X0),not inter_inter_robot_table_subset_falsum_block(X0).
inter_inter_robot_table_subset_falsum_table(X0) :- inter_robot_table(X0),subset_falsum_table(null).
-inter_inter_robot_table_subset_falsum_table(X0) :- object(X0),not inter_inter_robot_table_subset_falsum_table(X0).
inter_inter_robot_table_subset_robot_block(X0) :- inter_robot_table(X0),subset_robot_block(null).
-inter_inter_robot_table_subset_robot_block(X0) :- object(X0),not inter_inter_robot_table_subset_robot_block(X0).
inter_inter_robot_table_subset_robot_table(X0) :- inter_robot_table(X0),subset_robot_table(null).
-inter_inter_robot_table_subset_robot_table(X0) :- object(X0),not inter_inter_robot_table_subset_robot_table(X0).
inter_inter_robot_table_subset_block_table(X0) :- inter_robot_table(X0),subset_block_table(null).
-inter_inter_robot_table_subset_block_table(X0) :- object(X0),not inter_inter_robot_table_subset_block_table(X0).
inter_inter_block_table_subset_verum_falsum(X0) :- inter_block_table(X0),subset_verum_falsum(null).
-inter_inter_block_table_subset_verum_falsum(X0) :- object(X0),not inter_inter_block_table_subset_verum_falsum(X0).
inter_inter_block_table_subset_verum_robot(X0) :- inter_block_table(X0),subset_verum_robot(null).
-inter_inter_block_table_subset_verum_robot(X0) :- object(X0),not inter_inter_block_table_subset_verum_robot(X0).
inter_inter_block_table_subset_verum_block(X0) :- inter_block_table(X0),subset_verum_block(null).
-inter_inter_block_table_subset_verum_block(X0) :- object(X0),not inter_inter_block_table_subset_verum_block(X0).
inter_inter_block_table_subset_verum_table(X0) :- inter_block_table(X0),subset_verum_table(null).
-inter_inter_block_table_subset_verum_table(X0) :- object(X0),not inter_inter_block_table_subset_verum_table(X0).
inter_inter_block_table_subset_falsum_robot(X0) :- inter_block_table(X0),subset_falsum_robot(null).
-inter_inter_block_table_subset_falsum_robot(X0) :- object(X0),not inter_inter_block_table_subset_falsum_robot(X0).
inter_inter_block_table_subset_falsum_block(X0) :- inter_block_table(X0),subset_falsum_block(null).
-inter_inter_block_table_subset_falsum_block(X0) :- object(X0),not inter_inter_block_table_subset_falsum_block(X0).
inter_inter_block_table_subset_falsum_table(X0) :- inter_block_table(X0),subset_falsum_table(null).
-inter_inter_block_table_subset_falsum_table(X0) :- object(X0),not inter_inter_block_table_subset_falsum_table(X0).
inter_inter_block_table_subset_robot_block(X0) :- inter_block_table(X0),subset_robot_block(null).
-inter_inter_block_table_subset_robot_block(X0) :- object(X0),not inter_inter_block_table_subset_robot_block(X0).
inter_inter_block_table_subset_robot_table(X0) :- inter_block_table(X0),subset_robot_table(null).
-inter_inter_block_table_subset_robot_table(X0) :- object(X0),not inter_inter_block_table_subset_robot_table(X0).
inter_inter_block_table_subset_block_table(X0) :- inter_block_table(X0),subset_block_table(null).
-inter_inter_block_table_subset_block_table(X0) :- object(X0),not inter_inter_block_table_subset_block_table(X0).
inter_subset_verum_falsum_subset_verum_robot(null) :- subset_verum_falsum(null),subset_verum_robot(null).
-inter_subset_verum_falsum_subset_verum_robot(null) :- object(null),not inter_subset_verum_falsum_subset_verum_robot(null).
inter_subset_verum_falsum_subset_verum_block(null) :- subset_verum_falsum(null),subset_verum_block(null).
-inter_subset_verum_falsum_subset_verum_block(null) :- object(null),not inter_subset_verum_falsum_subset_verum_block(null).
inter_subset_verum_falsum_subset_verum_table(null) :- subset_verum_falsum(null),subset_verum_table(null).
-inter_subset_verum_falsum_subset_verum_table(null) :- object(null),not inter_subset_verum_falsum_subset_verum_table(null).
inter_subset_verum_falsum_subset_falsum_robot(null) :- subset_verum_falsum(null),subset_falsum_robot(null).
-inter_subset_verum_falsum_subset_falsum_robot(null) :- object(null),not inter_subset_verum_falsum_subset_falsum_robot(null).
inter_subset_verum_falsum_subset_falsum_block(null) :- subset_verum_falsum(null),subset_falsum_block(null).
-inter_subset_verum_falsum_subset_falsum_block(null) :- object(null),not inter_subset_verum_falsum_subset_falsum_block(null).
inter_subset_verum_falsum_subset_falsum_table(null) :- subset_verum_falsum(null),subset_falsum_table(null).
-inter_subset_verum_falsum_subset_falsum_table(null) :- object(null),not inter_subset_verum_falsum_subset_falsum_table(null).
inter_subset_verum_falsum_subset_robot_block(null) :- subset_verum_falsum(null),subset_robot_block(null).
-inter_subset_verum_falsum_subset_robot_block(null) :- object(null),not inter_subset_verum_falsum_subset_robot_block(null).
inter_subset_verum_falsum_subset_robot_table(null) :- subset_verum_falsum(null),subset_robot_table(null).
-inter_subset_verum_falsum_subset_robot_table(null) :- object(null),not inter_subset_verum_falsum_subset_robot_table(null).
inter_subset_verum_falsum_subset_block_table(null) :- subset_verum_falsum(null),subset_block_table(null).
-inter_subset_verum_falsum_subset_block_table(null) :- object(null),not inter_subset_verum_falsum_subset_block_table(null).
inter_subset_verum_robot_subset_verum_block(null) :- subset_verum_robot(null),subset_verum_block(null).
-inter_subset_verum_robot_subset_verum_block(null) :- object(null),not inter_subset_verum_robot_subset_verum_block(null).
inter_subset_verum_robot_subset_verum_table(null) :- subset_verum_robot(null),subset_verum_table(null).
-inter_subset_verum_robot_subset_verum_table(null) :- object(null),not inter_subset_verum_robot_subset_verum_table(null).
inter_subset_verum_robot_subset_falsum_robot(null) :- subset_verum_robot(null),subset_falsum_robot(null).
-inter_subset_verum_robot_subset_falsum_robot(null) :- object(null),not inter_subset_verum_robot_subset_falsum_robot(null).
inter_subset_verum_robot_subset_falsum_block(null) :- subset_verum_robot(null),subset_falsum_block(null).
-inter_subset_verum_robot_subset_falsum_block(null) :- object(null),not inter_subset_verum_robot_subset_falsum_block(null).
inter_subset_verum_robot_subset_falsum_table(null) :- subset_verum_robot(null),subset_falsum_table(null).
-inter_subset_verum_robot_subset_falsum_table(null) :- object(null),not inter_subset_verum_robot_subset_falsum_table(null).
inter_subset_verum_robot_subset_robot_block(null) :- subset_verum_robot(null),subset_robot_block(null).
-inter_subset_verum_robot_subset_robot_block(null) :- object(null),not inter_subset_verum_robot_subset_robot_block(null).
inter_subset_verum_robot_subset_robot_table(null) :- subset_verum_robot(null),subset_robot_table(null).
-inter_subset_verum_robot_subset_robot_table(null) :- object(null),not inter_subset_verum_robot_subset_robot_table(null).
inter_subset_verum_robot_subset_block_table(null) :- subset_verum_robot(null),subset_block_table(null).
-inter_subset_verum_robot_subset_block_table(null) :- object(null),not inter_subset_verum_robot_subset_block_table(null).
inter_subset_verum_block_subset_verum_table(null) :- subset_verum_block(null),subset_verum_table(null).
-inter_subset_verum_block_subset_verum_table(null) :- object(null),not inter_subset_verum_block_subset_verum_table(null).
inter_subset_verum_block_subset_falsum_robot(null) :- subset_verum_block(null),subset_falsum_robot(null).
-inter_subset_verum_block_subset_falsum_robot(null) :- object(null),not inter_subset_verum_block_subset_falsum_robot(null).
inter_subset_verum_block_subset_falsum_block(null) :- subset_verum_block(null),subset_falsum_block(null).
-inter_subset_verum_block_subset_falsum_block(null) :- object(null),not inter_subset_verum_block_subset_falsum_block(null).
inter_subset_verum_block_subset_falsum_table(null) :- subset_verum_block(null),subset_falsum_table(null).
-inter_subset_verum_block_subset_falsum_table(null) :- object(null),not inter_subset_verum_block_subset_falsum_table(null).
inter_subset_verum_block_subset_robot_block(null) :- subset_verum_block(null),subset_robot_block(null).
-inter_subset_verum_block_subset_robot_block(null) :- object(null),not inter_subset_verum_block_subset_robot_block(null).
inter_subset_verum_block_subset_robot_table(null) :- subset_verum_block(null),subset_robot_table(null).
-inter_subset_verum_block_subset_robot_table(null) :- object(null),not inter_subset_verum_block_subset_robot_table(null).
inter_subset_verum_block_subset_block_table(null) :- subset_verum_block(null),subset_block_table(null).
-inter_subset_verum_block_subset_block_table(null) :- object(null),not inter_subset_verum_block_subset_block_table(null).
inter_subset_verum_table_subset_falsum_robot(null) :- subset_verum_table(null),subset_falsum_robot(null).
-inter_subset_verum_table_subset_falsum_robot(null) :- object(null),not inter_subset_verum_table_subset_falsum_robot(null).
inter_subset_verum_table_subset_falsum_block(null) :- subset_verum_table(null),subset_falsum_block(null).
-inter_subset_verum_table_subset_falsum_block(null) :- object(null),not inter_subset_verum_table_subset_falsum_block(null).
inter_subset_verum_table_subset_falsum_table(null) :- subset_verum_table(null),subset_falsum_table(null).
-inter_subset_verum_table_subset_falsum_table(null) :- object(null),not inter_subset_verum_table_subset_falsum_table(null).
inter_subset_verum_table_subset_robot_block(null) :- subset_verum_table(null),subset_robot_block(null).
-inter_subset_verum_table_subset_robot_block(null) :- object(null),not inter_subset_verum_table_subset_robot_block(null).
inter_subset_verum_table_subset_robot_table(null) :- subset_verum_table(null),subset_robot_table(null).
-inter_subset_verum_table_subset_robot_table(null) :- object(null),not inter_subset_verum_table_subset_robot_table(null).
inter_subset_verum_table_subset_block_table(null) :- subset_verum_table(null),subset_block_table(null).
-inter_subset_verum_table_subset_block_table(null) :- object(null),not inter_subset_verum_table_subset_block_table(null).
inter_subset_falsum_robot_subset_falsum_block(null) :- subset_falsum_robot(null),subset_falsum_block(null).
-inter_subset_falsum_robot_subset_falsum_block(null) :- object(null),not inter_subset_falsum_robot_subset_falsum_block(null).
inter_subset_falsum_robot_subset_falsum_table(null) :- subset_falsum_robot(null),subset_falsum_table(null).
-inter_subset_falsum_robot_subset_falsum_table(null) :- object(null),not inter_subset_falsum_robot_subset_falsum_table(null).
inter_subset_falsum_robot_subset_robot_block(null) :- subset_falsum_robot(null),subset_robot_block(null).
-inter_subset_falsum_robot_subset_robot_block(null) :- object(null),not inter_subset_falsum_robot_subset_robot_block(null).
inter_subset_falsum_robot_subset_robot_table(null) :- subset_falsum_robot(null),subset_robot_table(null).
-inter_subset_falsum_robot_subset_robot_table(null) :- object(null),not inter_subset_falsum_robot_subset_robot_table(null).
inter_subset_falsum_robot_subset_block_table(null) :- subset_falsum_robot(null),subset_block_table(null).
-inter_subset_falsum_robot_subset_block_table(null) :- object(null),not inter_subset_falsum_robot_subset_block_table(null).
inter_subset_falsum_block_subset_falsum_table(null) :- subset_falsum_block(null),subset_falsum_table(null).
-inter_subset_falsum_block_subset_falsum_table(null) :- object(null),not inter_subset_falsum_block_subset_falsum_table(null).
inter_subset_falsum_block_subset_robot_block(null) :- subset_falsum_block(null),subset_robot_block(null).
-inter_subset_falsum_block_subset_robot_block(null) :- object(null),not inter_subset_falsum_block_subset_robot_block(null).
inter_subset_falsum_block_subset_robot_table(null) :- subset_falsum_block(null),subset_robot_table(null).
-inter_subset_falsum_block_subset_robot_table(null) :- object(null),not inter_subset_falsum_block_subset_robot_table(null).
inter_subset_falsum_block_subset_block_table(null) :- subset_falsum_block(null),subset_block_table(null).
-inter_subset_falsum_block_subset_block_table(null) :- object(null),not inter_subset_falsum_block_subset_block_table(null).
inter_subset_falsum_table_subset_robot_block(null) :- subset_falsum_table(null),subset_robot_block(null).
-inter_subset_falsum_table_subset_robot_block(null) :- object(null),not inter_subset_falsum_table_subset_robot_block(null).
inter_subset_falsum_table_subset_robot_table(null) :- subset_falsum_table(null),subset_robot_table(null).
-inter_subset_falsum_table_subset_robot_table(null) :- object(null),not inter_subset_falsum_table_subset_robot_table(null).
inter_subset_falsum_table_subset_block_table(null) :- subset_falsum_table(null),subset_block_table(null).
-inter_subset_falsum_table_subset_block_table(null) :- object(null),not inter_subset_falsum_table_subset_block_table(null).
inter_subset_robot_block_subset_robot_table(null) :- subset_robot_block(null),subset_robot_table(null).
-inter_subset_robot_block_subset_robot_table(null) :- object(null),not inter_subset_robot_block_subset_robot_table(null).
inter_subset_robot_block_subset_block_table(null) :- subset_robot_block(null),subset_block_table(null).
-inter_subset_robot_block_subset_block_table(null) :- object(null),not inter_subset_robot_block_subset_block_table(null).
inter_subset_robot_table_subset_block_table(null) :- subset_robot_table(null),subset_block_table(null).
-inter_subset_robot_table_subset_block_table(null) :- object(null),not inter_subset_robot_table_subset_block_table(null).
subset_verum_er_smaller_verum(null) :- er_smaller_verum(X0) : verum(X0).
-subset_verum_er_smaller_verum(null) :- not subset_verum_er_smaller_verum(null).
subset_verum_er_below_verum(null) :- er_below_verum(X0) : verum(X0).
-subset_verum_er_below_verum(null) :- not subset_verum_er_below_verum(null).
subset_verum_er_left_verum(null) :- er_left_verum(X0) : verum(X0).
-subset_verum_er_left_verum(null) :- not subset_verum_er_left_verum(null).
subset_verum_er_overlap_verum(null) :- er_overlap_verum(X0) : verum(X0).
-subset_verum_er_overlap_verum(null) :- not subset_verum_er_overlap_verum(null).
subset_verum_er_shape_verum(null) :- er_shape_verum(X0) : verum(X0).
-subset_verum_er_shape_verum(null) :- not subset_verum_er_shape_verum(null).
subset_verum_er_smaller_falsum(null) :- er_smaller_falsum(X0) : verum(X0).
-subset_verum_er_smaller_falsum(null) :- not subset_verum_er_smaller_falsum(null).
subset_verum_er_below_falsum(null) :- er_below_falsum(X0) : verum(X0).
-subset_verum_er_below_falsum(null) :- not subset_verum_er_below_falsum(null).
subset_verum_er_left_falsum(null) :- er_left_falsum(X0) : verum(X0).
-subset_verum_er_left_falsum(null) :- not subset_verum_er_left_falsum(null).
subset_verum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : verum(X0).
-subset_verum_er_overlap_falsum(null) :- not subset_verum_er_overlap_falsum(null).
subset_verum_er_shape_falsum(null) :- er_shape_falsum(X0) : verum(X0).
-subset_verum_er_shape_falsum(null) :- not subset_verum_er_shape_falsum(null).
subset_verum_er_smaller_robot(null) :- er_smaller_robot(X0) : verum(X0).
-subset_verum_er_smaller_robot(null) :- not subset_verum_er_smaller_robot(null).
subset_verum_er_below_robot(null) :- er_below_robot(X0) : verum(X0).
-subset_verum_er_below_robot(null) :- not subset_verum_er_below_robot(null).
subset_verum_er_left_robot(null) :- er_left_robot(X0) : verum(X0).
-subset_verum_er_left_robot(null) :- not subset_verum_er_left_robot(null).
subset_verum_er_overlap_robot(null) :- er_overlap_robot(X0) : verum(X0).
-subset_verum_er_overlap_robot(null) :- not subset_verum_er_overlap_robot(null).
subset_verum_er_shape_robot(null) :- er_shape_robot(X0) : verum(X0).
-subset_verum_er_shape_robot(null) :- not subset_verum_er_shape_robot(null).
subset_verum_er_smaller_block(null) :- er_smaller_block(X0) : verum(X0).
-subset_verum_er_smaller_block(null) :- not subset_verum_er_smaller_block(null).
subset_verum_er_below_block(null) :- er_below_block(X0) : verum(X0).
-subset_verum_er_below_block(null) :- not subset_verum_er_below_block(null).
subset_verum_er_left_block(null) :- er_left_block(X0) : verum(X0).
-subset_verum_er_left_block(null) :- not subset_verum_er_left_block(null).
subset_verum_er_overlap_block(null) :- er_overlap_block(X0) : verum(X0).
-subset_verum_er_overlap_block(null) :- not subset_verum_er_overlap_block(null).
subset_verum_er_shape_block(null) :- er_shape_block(X0) : verum(X0).
-subset_verum_er_shape_block(null) :- not subset_verum_er_shape_block(null).
subset_verum_er_smaller_table(null) :- er_smaller_table(X0) : verum(X0).
-subset_verum_er_smaller_table(null) :- not subset_verum_er_smaller_table(null).
subset_verum_er_below_table(null) :- er_below_table(X0) : verum(X0).
-subset_verum_er_below_table(null) :- not subset_verum_er_below_table(null).
subset_verum_er_left_table(null) :- er_left_table(X0) : verum(X0).
-subset_verum_er_left_table(null) :- not subset_verum_er_left_table(null).
subset_verum_er_overlap_table(null) :- er_overlap_table(X0) : verum(X0).
-subset_verum_er_overlap_table(null) :- not subset_verum_er_overlap_table(null).
subset_verum_er_shape_table(null) :- er_shape_table(X0) : verum(X0).
-subset_verum_er_shape_table(null) :- not subset_verum_er_shape_table(null).
subset_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : verum(X0).
-subset_verum_inter_verum_falsum(null) :- not subset_verum_inter_verum_falsum(null).
subset_verum_inter_verum_robot(null) :- inter_verum_robot(X0) : verum(X0).
-subset_verum_inter_verum_robot(null) :- not subset_verum_inter_verum_robot(null).
subset_verum_inter_verum_block(null) :- inter_verum_block(X0) : verum(X0).
-subset_verum_inter_verum_block(null) :- not subset_verum_inter_verum_block(null).
subset_verum_inter_verum_table(null) :- inter_verum_table(X0) : verum(X0).
-subset_verum_inter_verum_table(null) :- not subset_verum_inter_verum_table(null).
subset_verum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : verum(X0).
-subset_verum_inter_falsum_robot(null) :- not subset_verum_inter_falsum_robot(null).
subset_verum_inter_falsum_block(null) :- inter_falsum_block(X0) : verum(X0).
-subset_verum_inter_falsum_block(null) :- not subset_verum_inter_falsum_block(null).
subset_verum_inter_falsum_table(null) :- inter_falsum_table(X0) : verum(X0).
-subset_verum_inter_falsum_table(null) :- not subset_verum_inter_falsum_table(null).
subset_verum_inter_robot_block(null) :- inter_robot_block(X0) : verum(X0).
-subset_verum_inter_robot_block(null) :- not subset_verum_inter_robot_block(null).
subset_verum_inter_robot_table(null) :- inter_robot_table(X0) : verum(X0).
-subset_verum_inter_robot_table(null) :- not subset_verum_inter_robot_table(null).
subset_verum_inter_block_table(null) :- inter_block_table(X0) : verum(X0).
-subset_verum_inter_block_table(null) :- not subset_verum_inter_block_table(null).
subset_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : verum(X0).
-subset_verum_subset_verum_falsum(null) :- not subset_verum_subset_verum_falsum(null).
subset_verum_subset_verum_robot(null) :- subset_verum_robot(null) : verum(X0).
-subset_verum_subset_verum_robot(null) :- not subset_verum_subset_verum_robot(null).
subset_verum_subset_verum_block(null) :- subset_verum_block(null) : verum(X0).
-subset_verum_subset_verum_block(null) :- not subset_verum_subset_verum_block(null).
subset_verum_subset_verum_table(null) :- subset_verum_table(null) : verum(X0).
-subset_verum_subset_verum_table(null) :- not subset_verum_subset_verum_table(null).
subset_verum_subset_falsum_robot(null) :- subset_falsum_robot(null) : verum(X0).
-subset_verum_subset_falsum_robot(null) :- not subset_verum_subset_falsum_robot(null).
subset_verum_subset_falsum_block(null) :- subset_falsum_block(null) : verum(X0).
-subset_verum_subset_falsum_block(null) :- not subset_verum_subset_falsum_block(null).
subset_verum_subset_falsum_table(null) :- subset_falsum_table(null) : verum(X0).
-subset_verum_subset_falsum_table(null) :- not subset_verum_subset_falsum_table(null).
subset_verum_subset_robot_block(null) :- subset_robot_block(null) : verum(X0).
-subset_verum_subset_robot_block(null) :- not subset_verum_subset_robot_block(null).
subset_verum_subset_robot_table(null) :- subset_robot_table(null) : verum(X0).
-subset_verum_subset_robot_table(null) :- not subset_verum_subset_robot_table(null).
subset_verum_subset_block_table(null) :- subset_block_table(null) : verum(X0).
-subset_verum_subset_block_table(null) :- not subset_verum_subset_block_table(null).
subset_falsum_er_smaller_verum(null) :- er_smaller_verum(X0) : falsum(X0).
-subset_falsum_er_smaller_verum(null) :- not subset_falsum_er_smaller_verum(null).
subset_falsum_er_below_verum(null) :- er_below_verum(X0) : falsum(X0).
-subset_falsum_er_below_verum(null) :- not subset_falsum_er_below_verum(null).
subset_falsum_er_left_verum(null) :- er_left_verum(X0) : falsum(X0).
-subset_falsum_er_left_verum(null) :- not subset_falsum_er_left_verum(null).
subset_falsum_er_overlap_verum(null) :- er_overlap_verum(X0) : falsum(X0).
-subset_falsum_er_overlap_verum(null) :- not subset_falsum_er_overlap_verum(null).
subset_falsum_er_shape_verum(null) :- er_shape_verum(X0) : falsum(X0).
-subset_falsum_er_shape_verum(null) :- not subset_falsum_er_shape_verum(null).
subset_falsum_er_smaller_falsum(null) :- er_smaller_falsum(X0) : falsum(X0).
-subset_falsum_er_smaller_falsum(null) :- not subset_falsum_er_smaller_falsum(null).
subset_falsum_er_below_falsum(null) :- er_below_falsum(X0) : falsum(X0).
-subset_falsum_er_below_falsum(null) :- not subset_falsum_er_below_falsum(null).
subset_falsum_er_left_falsum(null) :- er_left_falsum(X0) : falsum(X0).
-subset_falsum_er_left_falsum(null) :- not subset_falsum_er_left_falsum(null).
subset_falsum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : falsum(X0).
-subset_falsum_er_overlap_falsum(null) :- not subset_falsum_er_overlap_falsum(null).
subset_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : falsum(X0).
-subset_falsum_er_shape_falsum(null) :- not subset_falsum_er_shape_falsum(null).
subset_falsum_er_smaller_robot(null) :- er_smaller_robot(X0) : falsum(X0).
-subset_falsum_er_smaller_robot(null) :- not subset_falsum_er_smaller_robot(null).
subset_falsum_er_below_robot(null) :- er_below_robot(X0) : falsum(X0).
-subset_falsum_er_below_robot(null) :- not subset_falsum_er_below_robot(null).
subset_falsum_er_left_robot(null) :- er_left_robot(X0) : falsum(X0).
-subset_falsum_er_left_robot(null) :- not subset_falsum_er_left_robot(null).
subset_falsum_er_overlap_robot(null) :- er_overlap_robot(X0) : falsum(X0).
-subset_falsum_er_overlap_robot(null) :- not subset_falsum_er_overlap_robot(null).
subset_falsum_er_shape_robot(null) :- er_shape_robot(X0) : falsum(X0).
-subset_falsum_er_shape_robot(null) :- not subset_falsum_er_shape_robot(null).
subset_falsum_er_smaller_block(null) :- er_smaller_block(X0) : falsum(X0).
-subset_falsum_er_smaller_block(null) :- not subset_falsum_er_smaller_block(null).
subset_falsum_er_below_block(null) :- er_below_block(X0) : falsum(X0).
-subset_falsum_er_below_block(null) :- not subset_falsum_er_below_block(null).
subset_falsum_er_left_block(null) :- er_left_block(X0) : falsum(X0).
-subset_falsum_er_left_block(null) :- not subset_falsum_er_left_block(null).
subset_falsum_er_overlap_block(null) :- er_overlap_block(X0) : falsum(X0).
-subset_falsum_er_overlap_block(null) :- not subset_falsum_er_overlap_block(null).
subset_falsum_er_shape_block(null) :- er_shape_block(X0) : falsum(X0).
-subset_falsum_er_shape_block(null) :- not subset_falsum_er_shape_block(null).
subset_falsum_er_smaller_table(null) :- er_smaller_table(X0) : falsum(X0).
-subset_falsum_er_smaller_table(null) :- not subset_falsum_er_smaller_table(null).
subset_falsum_er_below_table(null) :- er_below_table(X0) : falsum(X0).
-subset_falsum_er_below_table(null) :- not subset_falsum_er_below_table(null).
subset_falsum_er_left_table(null) :- er_left_table(X0) : falsum(X0).
-subset_falsum_er_left_table(null) :- not subset_falsum_er_left_table(null).
subset_falsum_er_overlap_table(null) :- er_overlap_table(X0) : falsum(X0).
-subset_falsum_er_overlap_table(null) :- not subset_falsum_er_overlap_table(null).
subset_falsum_er_shape_table(null) :- er_shape_table(X0) : falsum(X0).
-subset_falsum_er_shape_table(null) :- not subset_falsum_er_shape_table(null).
subset_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : falsum(X0).
-subset_falsum_inter_verum_falsum(null) :- not subset_falsum_inter_verum_falsum(null).
subset_falsum_inter_verum_robot(null) :- inter_verum_robot(X0) : falsum(X0).
-subset_falsum_inter_verum_robot(null) :- not subset_falsum_inter_verum_robot(null).
subset_falsum_inter_verum_block(null) :- inter_verum_block(X0) : falsum(X0).
-subset_falsum_inter_verum_block(null) :- not subset_falsum_inter_verum_block(null).
subset_falsum_inter_verum_table(null) :- inter_verum_table(X0) : falsum(X0).
-subset_falsum_inter_verum_table(null) :- not subset_falsum_inter_verum_table(null).
subset_falsum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : falsum(X0).
-subset_falsum_inter_falsum_robot(null) :- not subset_falsum_inter_falsum_robot(null).
subset_falsum_inter_falsum_block(null) :- inter_falsum_block(X0) : falsum(X0).
-subset_falsum_inter_falsum_block(null) :- not subset_falsum_inter_falsum_block(null).
subset_falsum_inter_falsum_table(null) :- inter_falsum_table(X0) : falsum(X0).
-subset_falsum_inter_falsum_table(null) :- not subset_falsum_inter_falsum_table(null).
subset_falsum_inter_robot_block(null) :- inter_robot_block(X0) : falsum(X0).
-subset_falsum_inter_robot_block(null) :- not subset_falsum_inter_robot_block(null).
subset_falsum_inter_robot_table(null) :- inter_robot_table(X0) : falsum(X0).
-subset_falsum_inter_robot_table(null) :- not subset_falsum_inter_robot_table(null).
subset_falsum_inter_block_table(null) :- inter_block_table(X0) : falsum(X0).
-subset_falsum_inter_block_table(null) :- not subset_falsum_inter_block_table(null).
subset_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : falsum(X0).
-subset_falsum_subset_verum_falsum(null) :- not subset_falsum_subset_verum_falsum(null).
subset_falsum_subset_verum_robot(null) :- subset_verum_robot(null) : falsum(X0).
-subset_falsum_subset_verum_robot(null) :- not subset_falsum_subset_verum_robot(null).
subset_falsum_subset_verum_block(null) :- subset_verum_block(null) : falsum(X0).
-subset_falsum_subset_verum_block(null) :- not subset_falsum_subset_verum_block(null).
subset_falsum_subset_verum_table(null) :- subset_verum_table(null) : falsum(X0).
-subset_falsum_subset_verum_table(null) :- not subset_falsum_subset_verum_table(null).
subset_falsum_subset_falsum_robot(null) :- subset_falsum_robot(null) : falsum(X0).
-subset_falsum_subset_falsum_robot(null) :- not subset_falsum_subset_falsum_robot(null).
subset_falsum_subset_falsum_block(null) :- subset_falsum_block(null) : falsum(X0).
-subset_falsum_subset_falsum_block(null) :- not subset_falsum_subset_falsum_block(null).
subset_falsum_subset_falsum_table(null) :- subset_falsum_table(null) : falsum(X0).
-subset_falsum_subset_falsum_table(null) :- not subset_falsum_subset_falsum_table(null).
subset_falsum_subset_robot_block(null) :- subset_robot_block(null) : falsum(X0).
-subset_falsum_subset_robot_block(null) :- not subset_falsum_subset_robot_block(null).
subset_falsum_subset_robot_table(null) :- subset_robot_table(null) : falsum(X0).
-subset_falsum_subset_robot_table(null) :- not subset_falsum_subset_robot_table(null).
subset_falsum_subset_block_table(null) :- subset_block_table(null) : falsum(X0).
-subset_falsum_subset_block_table(null) :- not subset_falsum_subset_block_table(null).
subset_robot_er_smaller_verum(null) :- er_smaller_verum(X0) : robot(X0).
-subset_robot_er_smaller_verum(null) :- not subset_robot_er_smaller_verum(null).
subset_robot_er_below_verum(null) :- er_below_verum(X0) : robot(X0).
-subset_robot_er_below_verum(null) :- not subset_robot_er_below_verum(null).
subset_robot_er_left_verum(null) :- er_left_verum(X0) : robot(X0).
-subset_robot_er_left_verum(null) :- not subset_robot_er_left_verum(null).
subset_robot_er_overlap_verum(null) :- er_overlap_verum(X0) : robot(X0).
-subset_robot_er_overlap_verum(null) :- not subset_robot_er_overlap_verum(null).
subset_robot_er_shape_verum(null) :- er_shape_verum(X0) : robot(X0).
-subset_robot_er_shape_verum(null) :- not subset_robot_er_shape_verum(null).
subset_robot_er_smaller_falsum(null) :- er_smaller_falsum(X0) : robot(X0).
-subset_robot_er_smaller_falsum(null) :- not subset_robot_er_smaller_falsum(null).
subset_robot_er_below_falsum(null) :- er_below_falsum(X0) : robot(X0).
-subset_robot_er_below_falsum(null) :- not subset_robot_er_below_falsum(null).
subset_robot_er_left_falsum(null) :- er_left_falsum(X0) : robot(X0).
-subset_robot_er_left_falsum(null) :- not subset_robot_er_left_falsum(null).
subset_robot_er_overlap_falsum(null) :- er_overlap_falsum(X0) : robot(X0).
-subset_robot_er_overlap_falsum(null) :- not subset_robot_er_overlap_falsum(null).
subset_robot_er_shape_falsum(null) :- er_shape_falsum(X0) : robot(X0).
-subset_robot_er_shape_falsum(null) :- not subset_robot_er_shape_falsum(null).
subset_robot_er_smaller_robot(null) :- er_smaller_robot(X0) : robot(X0).
-subset_robot_er_smaller_robot(null) :- not subset_robot_er_smaller_robot(null).
subset_robot_er_below_robot(null) :- er_below_robot(X0) : robot(X0).
-subset_robot_er_below_robot(null) :- not subset_robot_er_below_robot(null).
subset_robot_er_left_robot(null) :- er_left_robot(X0) : robot(X0).
-subset_robot_er_left_robot(null) :- not subset_robot_er_left_robot(null).
subset_robot_er_overlap_robot(null) :- er_overlap_robot(X0) : robot(X0).
-subset_robot_er_overlap_robot(null) :- not subset_robot_er_overlap_robot(null).
subset_robot_er_shape_robot(null) :- er_shape_robot(X0) : robot(X0).
-subset_robot_er_shape_robot(null) :- not subset_robot_er_shape_robot(null).
subset_robot_er_smaller_block(null) :- er_smaller_block(X0) : robot(X0).
-subset_robot_er_smaller_block(null) :- not subset_robot_er_smaller_block(null).
subset_robot_er_below_block(null) :- er_below_block(X0) : robot(X0).
-subset_robot_er_below_block(null) :- not subset_robot_er_below_block(null).
subset_robot_er_left_block(null) :- er_left_block(X0) : robot(X0).
-subset_robot_er_left_block(null) :- not subset_robot_er_left_block(null).
subset_robot_er_overlap_block(null) :- er_overlap_block(X0) : robot(X0).
-subset_robot_er_overlap_block(null) :- not subset_robot_er_overlap_block(null).
subset_robot_er_shape_block(null) :- er_shape_block(X0) : robot(X0).
-subset_robot_er_shape_block(null) :- not subset_robot_er_shape_block(null).
subset_robot_er_smaller_table(null) :- er_smaller_table(X0) : robot(X0).
-subset_robot_er_smaller_table(null) :- not subset_robot_er_smaller_table(null).
subset_robot_er_below_table(null) :- er_below_table(X0) : robot(X0).
-subset_robot_er_below_table(null) :- not subset_robot_er_below_table(null).
subset_robot_er_left_table(null) :- er_left_table(X0) : robot(X0).
-subset_robot_er_left_table(null) :- not subset_robot_er_left_table(null).
subset_robot_er_overlap_table(null) :- er_overlap_table(X0) : robot(X0).
-subset_robot_er_overlap_table(null) :- not subset_robot_er_overlap_table(null).
subset_robot_er_shape_table(null) :- er_shape_table(X0) : robot(X0).
-subset_robot_er_shape_table(null) :- not subset_robot_er_shape_table(null).
subset_robot_inter_verum_falsum(null) :- inter_verum_falsum(X0) : robot(X0).
-subset_robot_inter_verum_falsum(null) :- not subset_robot_inter_verum_falsum(null).
subset_robot_inter_verum_robot(null) :- inter_verum_robot(X0) : robot(X0).
-subset_robot_inter_verum_robot(null) :- not subset_robot_inter_verum_robot(null).
subset_robot_inter_verum_block(null) :- inter_verum_block(X0) : robot(X0).
-subset_robot_inter_verum_block(null) :- not subset_robot_inter_verum_block(null).
subset_robot_inter_verum_table(null) :- inter_verum_table(X0) : robot(X0).
-subset_robot_inter_verum_table(null) :- not subset_robot_inter_verum_table(null).
subset_robot_inter_falsum_robot(null) :- inter_falsum_robot(X0) : robot(X0).
-subset_robot_inter_falsum_robot(null) :- not subset_robot_inter_falsum_robot(null).
subset_robot_inter_falsum_block(null) :- inter_falsum_block(X0) : robot(X0).
-subset_robot_inter_falsum_block(null) :- not subset_robot_inter_falsum_block(null).
subset_robot_inter_falsum_table(null) :- inter_falsum_table(X0) : robot(X0).
-subset_robot_inter_falsum_table(null) :- not subset_robot_inter_falsum_table(null).
subset_robot_inter_robot_block(null) :- inter_robot_block(X0) : robot(X0).
-subset_robot_inter_robot_block(null) :- not subset_robot_inter_robot_block(null).
subset_robot_inter_robot_table(null) :- inter_robot_table(X0) : robot(X0).
-subset_robot_inter_robot_table(null) :- not subset_robot_inter_robot_table(null).
subset_robot_inter_block_table(null) :- inter_block_table(X0) : robot(X0).
-subset_robot_inter_block_table(null) :- not subset_robot_inter_block_table(null).
subset_robot_subset_verum_falsum(null) :- subset_verum_falsum(null) : robot(X0).
-subset_robot_subset_verum_falsum(null) :- not subset_robot_subset_verum_falsum(null).
subset_robot_subset_verum_robot(null) :- subset_verum_robot(null) : robot(X0).
-subset_robot_subset_verum_robot(null) :- not subset_robot_subset_verum_robot(null).
subset_robot_subset_verum_block(null) :- subset_verum_block(null) : robot(X0).
-subset_robot_subset_verum_block(null) :- not subset_robot_subset_verum_block(null).
subset_robot_subset_verum_table(null) :- subset_verum_table(null) : robot(X0).
-subset_robot_subset_verum_table(null) :- not subset_robot_subset_verum_table(null).
subset_robot_subset_falsum_robot(null) :- subset_falsum_robot(null) : robot(X0).
-subset_robot_subset_falsum_robot(null) :- not subset_robot_subset_falsum_robot(null).
subset_robot_subset_falsum_block(null) :- subset_falsum_block(null) : robot(X0).
-subset_robot_subset_falsum_block(null) :- not subset_robot_subset_falsum_block(null).
subset_robot_subset_falsum_table(null) :- subset_falsum_table(null) : robot(X0).
-subset_robot_subset_falsum_table(null) :- not subset_robot_subset_falsum_table(null).
subset_robot_subset_robot_block(null) :- subset_robot_block(null) : robot(X0).
-subset_robot_subset_robot_block(null) :- not subset_robot_subset_robot_block(null).
subset_robot_subset_robot_table(null) :- subset_robot_table(null) : robot(X0).
-subset_robot_subset_robot_table(null) :- not subset_robot_subset_robot_table(null).
subset_robot_subset_block_table(null) :- subset_block_table(null) : robot(X0).
-subset_robot_subset_block_table(null) :- not subset_robot_subset_block_table(null).
subset_block_er_smaller_verum(null) :- er_smaller_verum(X0) : block(X0).
-subset_block_er_smaller_verum(null) :- not subset_block_er_smaller_verum(null).
subset_block_er_below_verum(null) :- er_below_verum(X0) : block(X0).
-subset_block_er_below_verum(null) :- not subset_block_er_below_verum(null).
subset_block_er_left_verum(null) :- er_left_verum(X0) : block(X0).
-subset_block_er_left_verum(null) :- not subset_block_er_left_verum(null).
subset_block_er_overlap_verum(null) :- er_overlap_verum(X0) : block(X0).
-subset_block_er_overlap_verum(null) :- not subset_block_er_overlap_verum(null).
subset_block_er_shape_verum(null) :- er_shape_verum(X0) : block(X0).
-subset_block_er_shape_verum(null) :- not subset_block_er_shape_verum(null).
subset_block_er_smaller_falsum(null) :- er_smaller_falsum(X0) : block(X0).
-subset_block_er_smaller_falsum(null) :- not subset_block_er_smaller_falsum(null).
subset_block_er_below_falsum(null) :- er_below_falsum(X0) : block(X0).
-subset_block_er_below_falsum(null) :- not subset_block_er_below_falsum(null).
subset_block_er_left_falsum(null) :- er_left_falsum(X0) : block(X0).
-subset_block_er_left_falsum(null) :- not subset_block_er_left_falsum(null).
subset_block_er_overlap_falsum(null) :- er_overlap_falsum(X0) : block(X0).
-subset_block_er_overlap_falsum(null) :- not subset_block_er_overlap_falsum(null).
subset_block_er_shape_falsum(null) :- er_shape_falsum(X0) : block(X0).
-subset_block_er_shape_falsum(null) :- not subset_block_er_shape_falsum(null).
subset_block_er_smaller_robot(null) :- er_smaller_robot(X0) : block(X0).
-subset_block_er_smaller_robot(null) :- not subset_block_er_smaller_robot(null).
subset_block_er_below_robot(null) :- er_below_robot(X0) : block(X0).
-subset_block_er_below_robot(null) :- not subset_block_er_below_robot(null).
subset_block_er_left_robot(null) :- er_left_robot(X0) : block(X0).
-subset_block_er_left_robot(null) :- not subset_block_er_left_robot(null).
subset_block_er_overlap_robot(null) :- er_overlap_robot(X0) : block(X0).
-subset_block_er_overlap_robot(null) :- not subset_block_er_overlap_robot(null).
subset_block_er_shape_robot(null) :- er_shape_robot(X0) : block(X0).
-subset_block_er_shape_robot(null) :- not subset_block_er_shape_robot(null).
subset_block_er_smaller_block(null) :- er_smaller_block(X0) : block(X0).
-subset_block_er_smaller_block(null) :- not subset_block_er_smaller_block(null).
subset_block_er_below_block(null) :- er_below_block(X0) : block(X0).
-subset_block_er_below_block(null) :- not subset_block_er_below_block(null).
subset_block_er_left_block(null) :- er_left_block(X0) : block(X0).
-subset_block_er_left_block(null) :- not subset_block_er_left_block(null).
subset_block_er_overlap_block(null) :- er_overlap_block(X0) : block(X0).
-subset_block_er_overlap_block(null) :- not subset_block_er_overlap_block(null).
subset_block_er_shape_block(null) :- er_shape_block(X0) : block(X0).
-subset_block_er_shape_block(null) :- not subset_block_er_shape_block(null).
subset_block_er_smaller_table(null) :- er_smaller_table(X0) : block(X0).
-subset_block_er_smaller_table(null) :- not subset_block_er_smaller_table(null).
subset_block_er_below_table(null) :- er_below_table(X0) : block(X0).
-subset_block_er_below_table(null) :- not subset_block_er_below_table(null).
subset_block_er_left_table(null) :- er_left_table(X0) : block(X0).
-subset_block_er_left_table(null) :- not subset_block_er_left_table(null).
subset_block_er_overlap_table(null) :- er_overlap_table(X0) : block(X0).
-subset_block_er_overlap_table(null) :- not subset_block_er_overlap_table(null).
subset_block_er_shape_table(null) :- er_shape_table(X0) : block(X0).
-subset_block_er_shape_table(null) :- not subset_block_er_shape_table(null).
subset_block_inter_verum_falsum(null) :- inter_verum_falsum(X0) : block(X0).
-subset_block_inter_verum_falsum(null) :- not subset_block_inter_verum_falsum(null).
subset_block_inter_verum_robot(null) :- inter_verum_robot(X0) : block(X0).
-subset_block_inter_verum_robot(null) :- not subset_block_inter_verum_robot(null).
subset_block_inter_verum_block(null) :- inter_verum_block(X0) : block(X0).
-subset_block_inter_verum_block(null) :- not subset_block_inter_verum_block(null).
subset_block_inter_verum_table(null) :- inter_verum_table(X0) : block(X0).
-subset_block_inter_verum_table(null) :- not subset_block_inter_verum_table(null).
subset_block_inter_falsum_robot(null) :- inter_falsum_robot(X0) : block(X0).
-subset_block_inter_falsum_robot(null) :- not subset_block_inter_falsum_robot(null).
subset_block_inter_falsum_block(null) :- inter_falsum_block(X0) : block(X0).
-subset_block_inter_falsum_block(null) :- not subset_block_inter_falsum_block(null).
subset_block_inter_falsum_table(null) :- inter_falsum_table(X0) : block(X0).
-subset_block_inter_falsum_table(null) :- not subset_block_inter_falsum_table(null).
subset_block_inter_robot_block(null) :- inter_robot_block(X0) : block(X0).
-subset_block_inter_robot_block(null) :- not subset_block_inter_robot_block(null).
subset_block_inter_robot_table(null) :- inter_robot_table(X0) : block(X0).
-subset_block_inter_robot_table(null) :- not subset_block_inter_robot_table(null).
subset_block_inter_block_table(null) :- inter_block_table(X0) : block(X0).
-subset_block_inter_block_table(null) :- not subset_block_inter_block_table(null).
subset_block_subset_verum_falsum(null) :- subset_verum_falsum(null) : block(X0).
-subset_block_subset_verum_falsum(null) :- not subset_block_subset_verum_falsum(null).
subset_block_subset_verum_robot(null) :- subset_verum_robot(null) : block(X0).
-subset_block_subset_verum_robot(null) :- not subset_block_subset_verum_robot(null).
subset_block_subset_verum_block(null) :- subset_verum_block(null) : block(X0).
-subset_block_subset_verum_block(null) :- not subset_block_subset_verum_block(null).
subset_block_subset_verum_table(null) :- subset_verum_table(null) : block(X0).
-subset_block_subset_verum_table(null) :- not subset_block_subset_verum_table(null).
subset_block_subset_falsum_robot(null) :- subset_falsum_robot(null) : block(X0).
-subset_block_subset_falsum_robot(null) :- not subset_block_subset_falsum_robot(null).
subset_block_subset_falsum_block(null) :- subset_falsum_block(null) : block(X0).
-subset_block_subset_falsum_block(null) :- not subset_block_subset_falsum_block(null).
subset_block_subset_falsum_table(null) :- subset_falsum_table(null) : block(X0).
-subset_block_subset_falsum_table(null) :- not subset_block_subset_falsum_table(null).
subset_block_subset_robot_block(null) :- subset_robot_block(null) : block(X0).
-subset_block_subset_robot_block(null) :- not subset_block_subset_robot_block(null).
subset_block_subset_robot_table(null) :- subset_robot_table(null) : block(X0).
-subset_block_subset_robot_table(null) :- not subset_block_subset_robot_table(null).
subset_block_subset_block_table(null) :- subset_block_table(null) : block(X0).
-subset_block_subset_block_table(null) :- not subset_block_subset_block_table(null).
subset_table_er_smaller_verum(null) :- er_smaller_verum(X0) : table(X0).
-subset_table_er_smaller_verum(null) :- not subset_table_er_smaller_verum(null).
subset_table_er_below_verum(null) :- er_below_verum(X0) : table(X0).
-subset_table_er_below_verum(null) :- not subset_table_er_below_verum(null).
subset_table_er_left_verum(null) :- er_left_verum(X0) : table(X0).
-subset_table_er_left_verum(null) :- not subset_table_er_left_verum(null).
subset_table_er_overlap_verum(null) :- er_overlap_verum(X0) : table(X0).
-subset_table_er_overlap_verum(null) :- not subset_table_er_overlap_verum(null).
subset_table_er_shape_verum(null) :- er_shape_verum(X0) : table(X0).
-subset_table_er_shape_verum(null) :- not subset_table_er_shape_verum(null).
subset_table_er_smaller_falsum(null) :- er_smaller_falsum(X0) : table(X0).
-subset_table_er_smaller_falsum(null) :- not subset_table_er_smaller_falsum(null).
subset_table_er_below_falsum(null) :- er_below_falsum(X0) : table(X0).
-subset_table_er_below_falsum(null) :- not subset_table_er_below_falsum(null).
subset_table_er_left_falsum(null) :- er_left_falsum(X0) : table(X0).
-subset_table_er_left_falsum(null) :- not subset_table_er_left_falsum(null).
subset_table_er_overlap_falsum(null) :- er_overlap_falsum(X0) : table(X0).
-subset_table_er_overlap_falsum(null) :- not subset_table_er_overlap_falsum(null).
subset_table_er_shape_falsum(null) :- er_shape_falsum(X0) : table(X0).
-subset_table_er_shape_falsum(null) :- not subset_table_er_shape_falsum(null).
subset_table_er_smaller_robot(null) :- er_smaller_robot(X0) : table(X0).
-subset_table_er_smaller_robot(null) :- not subset_table_er_smaller_robot(null).
subset_table_er_below_robot(null) :- er_below_robot(X0) : table(X0).
-subset_table_er_below_robot(null) :- not subset_table_er_below_robot(null).
subset_table_er_left_robot(null) :- er_left_robot(X0) : table(X0).
-subset_table_er_left_robot(null) :- not subset_table_er_left_robot(null).
subset_table_er_overlap_robot(null) :- er_overlap_robot(X0) : table(X0).
-subset_table_er_overlap_robot(null) :- not subset_table_er_overlap_robot(null).
subset_table_er_shape_robot(null) :- er_shape_robot(X0) : table(X0).
-subset_table_er_shape_robot(null) :- not subset_table_er_shape_robot(null).
subset_table_er_smaller_block(null) :- er_smaller_block(X0) : table(X0).
-subset_table_er_smaller_block(null) :- not subset_table_er_smaller_block(null).
subset_table_er_below_block(null) :- er_below_block(X0) : table(X0).
-subset_table_er_below_block(null) :- not subset_table_er_below_block(null).
subset_table_er_left_block(null) :- er_left_block(X0) : table(X0).
-subset_table_er_left_block(null) :- not subset_table_er_left_block(null).
subset_table_er_overlap_block(null) :- er_overlap_block(X0) : table(X0).
-subset_table_er_overlap_block(null) :- not subset_table_er_overlap_block(null).
subset_table_er_shape_block(null) :- er_shape_block(X0) : table(X0).
-subset_table_er_shape_block(null) :- not subset_table_er_shape_block(null).
subset_table_er_smaller_table(null) :- er_smaller_table(X0) : table(X0).
-subset_table_er_smaller_table(null) :- not subset_table_er_smaller_table(null).
subset_table_er_below_table(null) :- er_below_table(X0) : table(X0).
-subset_table_er_below_table(null) :- not subset_table_er_below_table(null).
subset_table_er_left_table(null) :- er_left_table(X0) : table(X0).
-subset_table_er_left_table(null) :- not subset_table_er_left_table(null).
subset_table_er_overlap_table(null) :- er_overlap_table(X0) : table(X0).
-subset_table_er_overlap_table(null) :- not subset_table_er_overlap_table(null).
subset_table_er_shape_table(null) :- er_shape_table(X0) : table(X0).
-subset_table_er_shape_table(null) :- not subset_table_er_shape_table(null).
subset_table_inter_verum_falsum(null) :- inter_verum_falsum(X0) : table(X0).
-subset_table_inter_verum_falsum(null) :- not subset_table_inter_verum_falsum(null).
subset_table_inter_verum_robot(null) :- inter_verum_robot(X0) : table(X0).
-subset_table_inter_verum_robot(null) :- not subset_table_inter_verum_robot(null).
subset_table_inter_verum_block(null) :- inter_verum_block(X0) : table(X0).
-subset_table_inter_verum_block(null) :- not subset_table_inter_verum_block(null).
subset_table_inter_verum_table(null) :- inter_verum_table(X0) : table(X0).
-subset_table_inter_verum_table(null) :- not subset_table_inter_verum_table(null).
subset_table_inter_falsum_robot(null) :- inter_falsum_robot(X0) : table(X0).
-subset_table_inter_falsum_robot(null) :- not subset_table_inter_falsum_robot(null).
subset_table_inter_falsum_block(null) :- inter_falsum_block(X0) : table(X0).
-subset_table_inter_falsum_block(null) :- not subset_table_inter_falsum_block(null).
subset_table_inter_falsum_table(null) :- inter_falsum_table(X0) : table(X0).
-subset_table_inter_falsum_table(null) :- not subset_table_inter_falsum_table(null).
subset_table_inter_robot_block(null) :- inter_robot_block(X0) : table(X0).
-subset_table_inter_robot_block(null) :- not subset_table_inter_robot_block(null).
subset_table_inter_robot_table(null) :- inter_robot_table(X0) : table(X0).
-subset_table_inter_robot_table(null) :- not subset_table_inter_robot_table(null).
subset_table_inter_block_table(null) :- inter_block_table(X0) : table(X0).
-subset_table_inter_block_table(null) :- not subset_table_inter_block_table(null).
subset_table_subset_verum_falsum(null) :- subset_verum_falsum(null) : table(X0).
-subset_table_subset_verum_falsum(null) :- not subset_table_subset_verum_falsum(null).
subset_table_subset_verum_robot(null) :- subset_verum_robot(null) : table(X0).
-subset_table_subset_verum_robot(null) :- not subset_table_subset_verum_robot(null).
subset_table_subset_verum_block(null) :- subset_verum_block(null) : table(X0).
-subset_table_subset_verum_block(null) :- not subset_table_subset_verum_block(null).
subset_table_subset_verum_table(null) :- subset_verum_table(null) : table(X0).
-subset_table_subset_verum_table(null) :- not subset_table_subset_verum_table(null).
subset_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : table(X0).
-subset_table_subset_falsum_robot(null) :- not subset_table_subset_falsum_robot(null).
subset_table_subset_falsum_block(null) :- subset_falsum_block(null) : table(X0).
-subset_table_subset_falsum_block(null) :- not subset_table_subset_falsum_block(null).
subset_table_subset_falsum_table(null) :- subset_falsum_table(null) : table(X0).
-subset_table_subset_falsum_table(null) :- not subset_table_subset_falsum_table(null).
subset_table_subset_robot_block(null) :- subset_robot_block(null) : table(X0).
-subset_table_subset_robot_block(null) :- not subset_table_subset_robot_block(null).
subset_table_subset_robot_table(null) :- subset_robot_table(null) : table(X0).
-subset_table_subset_robot_table(null) :- not subset_table_subset_robot_table(null).
subset_table_subset_block_table(null) :- subset_block_table(null) : table(X0).
-subset_table_subset_block_table(null) :- not subset_table_subset_block_table(null).
subset_er_smaller_verum_er_below_verum(null) :- er_below_verum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_below_verum(null) :- not subset_er_smaller_verum_er_below_verum(null).
subset_er_smaller_verum_er_left_verum(null) :- er_left_verum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_left_verum(null) :- not subset_er_smaller_verum_er_left_verum(null).
subset_er_smaller_verum_er_overlap_verum(null) :- er_overlap_verum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_overlap_verum(null) :- not subset_er_smaller_verum_er_overlap_verum(null).
subset_er_smaller_verum_er_shape_verum(null) :- er_shape_verum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_shape_verum(null) :- not subset_er_smaller_verum_er_shape_verum(null).
subset_er_smaller_verum_er_smaller_falsum(null) :- er_smaller_falsum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_smaller_falsum(null) :- not subset_er_smaller_verum_er_smaller_falsum(null).
subset_er_smaller_verum_er_below_falsum(null) :- er_below_falsum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_below_falsum(null) :- not subset_er_smaller_verum_er_below_falsum(null).
subset_er_smaller_verum_er_left_falsum(null) :- er_left_falsum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_left_falsum(null) :- not subset_er_smaller_verum_er_left_falsum(null).
subset_er_smaller_verum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_overlap_falsum(null) :- not subset_er_smaller_verum_er_overlap_falsum(null).
subset_er_smaller_verum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_shape_falsum(null) :- not subset_er_smaller_verum_er_shape_falsum(null).
subset_er_smaller_verum_er_smaller_robot(null) :- er_smaller_robot(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_smaller_robot(null) :- not subset_er_smaller_verum_er_smaller_robot(null).
subset_er_smaller_verum_er_below_robot(null) :- er_below_robot(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_below_robot(null) :- not subset_er_smaller_verum_er_below_robot(null).
subset_er_smaller_verum_er_left_robot(null) :- er_left_robot(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_left_robot(null) :- not subset_er_smaller_verum_er_left_robot(null).
subset_er_smaller_verum_er_overlap_robot(null) :- er_overlap_robot(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_overlap_robot(null) :- not subset_er_smaller_verum_er_overlap_robot(null).
subset_er_smaller_verum_er_shape_robot(null) :- er_shape_robot(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_shape_robot(null) :- not subset_er_smaller_verum_er_shape_robot(null).
subset_er_smaller_verum_er_smaller_block(null) :- er_smaller_block(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_smaller_block(null) :- not subset_er_smaller_verum_er_smaller_block(null).
subset_er_smaller_verum_er_below_block(null) :- er_below_block(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_below_block(null) :- not subset_er_smaller_verum_er_below_block(null).
subset_er_smaller_verum_er_left_block(null) :- er_left_block(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_left_block(null) :- not subset_er_smaller_verum_er_left_block(null).
subset_er_smaller_verum_er_overlap_block(null) :- er_overlap_block(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_overlap_block(null) :- not subset_er_smaller_verum_er_overlap_block(null).
subset_er_smaller_verum_er_shape_block(null) :- er_shape_block(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_shape_block(null) :- not subset_er_smaller_verum_er_shape_block(null).
subset_er_smaller_verum_er_smaller_table(null) :- er_smaller_table(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_smaller_table(null) :- not subset_er_smaller_verum_er_smaller_table(null).
subset_er_smaller_verum_er_below_table(null) :- er_below_table(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_below_table(null) :- not subset_er_smaller_verum_er_below_table(null).
subset_er_smaller_verum_er_left_table(null) :- er_left_table(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_left_table(null) :- not subset_er_smaller_verum_er_left_table(null).
subset_er_smaller_verum_er_overlap_table(null) :- er_overlap_table(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_overlap_table(null) :- not subset_er_smaller_verum_er_overlap_table(null).
subset_er_smaller_verum_er_shape_table(null) :- er_shape_table(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_shape_table(null) :- not subset_er_smaller_verum_er_shape_table(null).
subset_er_smaller_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_falsum(null) :- not subset_er_smaller_verum_inter_verum_falsum(null).
subset_er_smaller_verum_inter_verum_robot(null) :- inter_verum_robot(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_robot(null) :- not subset_er_smaller_verum_inter_verum_robot(null).
subset_er_smaller_verum_inter_verum_block(null) :- inter_verum_block(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_block(null) :- not subset_er_smaller_verum_inter_verum_block(null).
subset_er_smaller_verum_inter_verum_table(null) :- inter_verum_table(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_table(null) :- not subset_er_smaller_verum_inter_verum_table(null).
subset_er_smaller_verum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_falsum_robot(null) :- not subset_er_smaller_verum_inter_falsum_robot(null).
subset_er_smaller_verum_inter_falsum_block(null) :- inter_falsum_block(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_falsum_block(null) :- not subset_er_smaller_verum_inter_falsum_block(null).
subset_er_smaller_verum_inter_falsum_table(null) :- inter_falsum_table(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_falsum_table(null) :- not subset_er_smaller_verum_inter_falsum_table(null).
subset_er_smaller_verum_inter_robot_block(null) :- inter_robot_block(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_robot_block(null) :- not subset_er_smaller_verum_inter_robot_block(null).
subset_er_smaller_verum_inter_robot_table(null) :- inter_robot_table(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_robot_table(null) :- not subset_er_smaller_verum_inter_robot_table(null).
subset_er_smaller_verum_inter_block_table(null) :- inter_block_table(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_block_table(null) :- not subset_er_smaller_verum_inter_block_table(null).
subset_er_smaller_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_falsum(null) :- not subset_er_smaller_verum_subset_verum_falsum(null).
subset_er_smaller_verum_subset_verum_robot(null) :- subset_verum_robot(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_robot(null) :- not subset_er_smaller_verum_subset_verum_robot(null).
subset_er_smaller_verum_subset_verum_block(null) :- subset_verum_block(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_block(null) :- not subset_er_smaller_verum_subset_verum_block(null).
subset_er_smaller_verum_subset_verum_table(null) :- subset_verum_table(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_table(null) :- not subset_er_smaller_verum_subset_verum_table(null).
subset_er_smaller_verum_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_falsum_robot(null) :- not subset_er_smaller_verum_subset_falsum_robot(null).
subset_er_smaller_verum_subset_falsum_block(null) :- subset_falsum_block(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_falsum_block(null) :- not subset_er_smaller_verum_subset_falsum_block(null).
subset_er_smaller_verum_subset_falsum_table(null) :- subset_falsum_table(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_falsum_table(null) :- not subset_er_smaller_verum_subset_falsum_table(null).
subset_er_smaller_verum_subset_robot_block(null) :- subset_robot_block(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_robot_block(null) :- not subset_er_smaller_verum_subset_robot_block(null).
subset_er_smaller_verum_subset_robot_table(null) :- subset_robot_table(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_robot_table(null) :- not subset_er_smaller_verum_subset_robot_table(null).
subset_er_smaller_verum_subset_block_table(null) :- subset_block_table(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_block_table(null) :- not subset_er_smaller_verum_subset_block_table(null).
subset_er_below_verum_er_left_verum(null) :- er_left_verum(X0) : er_below_verum(X0).
-subset_er_below_verum_er_left_verum(null) :- not subset_er_below_verum_er_left_verum(null).
subset_er_below_verum_er_overlap_verum(null) :- er_overlap_verum(X0) : er_below_verum(X0).
-subset_er_below_verum_er_overlap_verum(null) :- not subset_er_below_verum_er_overlap_verum(null).
subset_er_below_verum_er_shape_verum(null) :- er_shape_verum(X0) : er_below_verum(X0).
-subset_er_below_verum_er_shape_verum(null) :- not subset_er_below_verum_er_shape_verum(null).
subset_er_below_verum_er_smaller_falsum(null) :- er_smaller_falsum(X0) : er_below_verum(X0).
-subset_er_below_verum_er_smaller_falsum(null) :- not subset_er_below_verum_er_smaller_falsum(null).
subset_er_below_verum_er_below_falsum(null) :- er_below_falsum(X0) : er_below_verum(X0).
-subset_er_below_verum_er_below_falsum(null) :- not subset_er_below_verum_er_below_falsum(null).
subset_er_below_verum_er_left_falsum(null) :- er_left_falsum(X0) : er_below_verum(X0).
-subset_er_below_verum_er_left_falsum(null) :- not subset_er_below_verum_er_left_falsum(null).
subset_er_below_verum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_below_verum(X0).
-subset_er_below_verum_er_overlap_falsum(null) :- not subset_er_below_verum_er_overlap_falsum(null).
subset_er_below_verum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_below_verum(X0).
-subset_er_below_verum_er_shape_falsum(null) :- not subset_er_below_verum_er_shape_falsum(null).
subset_er_below_verum_er_smaller_robot(null) :- er_smaller_robot(X0) : er_below_verum(X0).
-subset_er_below_verum_er_smaller_robot(null) :- not subset_er_below_verum_er_smaller_robot(null).
subset_er_below_verum_er_below_robot(null) :- er_below_robot(X0) : er_below_verum(X0).
-subset_er_below_verum_er_below_robot(null) :- not subset_er_below_verum_er_below_robot(null).
subset_er_below_verum_er_left_robot(null) :- er_left_robot(X0) : er_below_verum(X0).
-subset_er_below_verum_er_left_robot(null) :- not subset_er_below_verum_er_left_robot(null).
subset_er_below_verum_er_overlap_robot(null) :- er_overlap_robot(X0) : er_below_verum(X0).
-subset_er_below_verum_er_overlap_robot(null) :- not subset_er_below_verum_er_overlap_robot(null).
subset_er_below_verum_er_shape_robot(null) :- er_shape_robot(X0) : er_below_verum(X0).
-subset_er_below_verum_er_shape_robot(null) :- not subset_er_below_verum_er_shape_robot(null).
subset_er_below_verum_er_smaller_block(null) :- er_smaller_block(X0) : er_below_verum(X0).
-subset_er_below_verum_er_smaller_block(null) :- not subset_er_below_verum_er_smaller_block(null).
subset_er_below_verum_er_below_block(null) :- er_below_block(X0) : er_below_verum(X0).
-subset_er_below_verum_er_below_block(null) :- not subset_er_below_verum_er_below_block(null).
subset_er_below_verum_er_left_block(null) :- er_left_block(X0) : er_below_verum(X0).
-subset_er_below_verum_er_left_block(null) :- not subset_er_below_verum_er_left_block(null).
subset_er_below_verum_er_overlap_block(null) :- er_overlap_block(X0) : er_below_verum(X0).
-subset_er_below_verum_er_overlap_block(null) :- not subset_er_below_verum_er_overlap_block(null).
subset_er_below_verum_er_shape_block(null) :- er_shape_block(X0) : er_below_verum(X0).
-subset_er_below_verum_er_shape_block(null) :- not subset_er_below_verum_er_shape_block(null).
subset_er_below_verum_er_smaller_table(null) :- er_smaller_table(X0) : er_below_verum(X0).
-subset_er_below_verum_er_smaller_table(null) :- not subset_er_below_verum_er_smaller_table(null).
subset_er_below_verum_er_below_table(null) :- er_below_table(X0) : er_below_verum(X0).
-subset_er_below_verum_er_below_table(null) :- not subset_er_below_verum_er_below_table(null).
subset_er_below_verum_er_left_table(null) :- er_left_table(X0) : er_below_verum(X0).
-subset_er_below_verum_er_left_table(null) :- not subset_er_below_verum_er_left_table(null).
subset_er_below_verum_er_overlap_table(null) :- er_overlap_table(X0) : er_below_verum(X0).
-subset_er_below_verum_er_overlap_table(null) :- not subset_er_below_verum_er_overlap_table(null).
subset_er_below_verum_er_shape_table(null) :- er_shape_table(X0) : er_below_verum(X0).
-subset_er_below_verum_er_shape_table(null) :- not subset_er_below_verum_er_shape_table(null).
subset_er_below_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_falsum(null) :- not subset_er_below_verum_inter_verum_falsum(null).
subset_er_below_verum_inter_verum_robot(null) :- inter_verum_robot(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_robot(null) :- not subset_er_below_verum_inter_verum_robot(null).
subset_er_below_verum_inter_verum_block(null) :- inter_verum_block(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_block(null) :- not subset_er_below_verum_inter_verum_block(null).
subset_er_below_verum_inter_verum_table(null) :- inter_verum_table(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_table(null) :- not subset_er_below_verum_inter_verum_table(null).
subset_er_below_verum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_falsum_robot(null) :- not subset_er_below_verum_inter_falsum_robot(null).
subset_er_below_verum_inter_falsum_block(null) :- inter_falsum_block(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_falsum_block(null) :- not subset_er_below_verum_inter_falsum_block(null).
subset_er_below_verum_inter_falsum_table(null) :- inter_falsum_table(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_falsum_table(null) :- not subset_er_below_verum_inter_falsum_table(null).
subset_er_below_verum_inter_robot_block(null) :- inter_robot_block(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_robot_block(null) :- not subset_er_below_verum_inter_robot_block(null).
subset_er_below_verum_inter_robot_table(null) :- inter_robot_table(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_robot_table(null) :- not subset_er_below_verum_inter_robot_table(null).
subset_er_below_verum_inter_block_table(null) :- inter_block_table(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_block_table(null) :- not subset_er_below_verum_inter_block_table(null).
subset_er_below_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_falsum(null) :- not subset_er_below_verum_subset_verum_falsum(null).
subset_er_below_verum_subset_verum_robot(null) :- subset_verum_robot(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_robot(null) :- not subset_er_below_verum_subset_verum_robot(null).
subset_er_below_verum_subset_verum_block(null) :- subset_verum_block(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_block(null) :- not subset_er_below_verum_subset_verum_block(null).
subset_er_below_verum_subset_verum_table(null) :- subset_verum_table(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_table(null) :- not subset_er_below_verum_subset_verum_table(null).
subset_er_below_verum_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_below_verum(X0).
-subset_er_below_verum_subset_falsum_robot(null) :- not subset_er_below_verum_subset_falsum_robot(null).
subset_er_below_verum_subset_falsum_block(null) :- subset_falsum_block(null) : er_below_verum(X0).
-subset_er_below_verum_subset_falsum_block(null) :- not subset_er_below_verum_subset_falsum_block(null).
subset_er_below_verum_subset_falsum_table(null) :- subset_falsum_table(null) : er_below_verum(X0).
-subset_er_below_verum_subset_falsum_table(null) :- not subset_er_below_verum_subset_falsum_table(null).
subset_er_below_verum_subset_robot_block(null) :- subset_robot_block(null) : er_below_verum(X0).
-subset_er_below_verum_subset_robot_block(null) :- not subset_er_below_verum_subset_robot_block(null).
subset_er_below_verum_subset_robot_table(null) :- subset_robot_table(null) : er_below_verum(X0).
-subset_er_below_verum_subset_robot_table(null) :- not subset_er_below_verum_subset_robot_table(null).
subset_er_below_verum_subset_block_table(null) :- subset_block_table(null) : er_below_verum(X0).
-subset_er_below_verum_subset_block_table(null) :- not subset_er_below_verum_subset_block_table(null).
subset_er_left_verum_er_overlap_verum(null) :- er_overlap_verum(X0) : er_left_verum(X0).
-subset_er_left_verum_er_overlap_verum(null) :- not subset_er_left_verum_er_overlap_verum(null).
subset_er_left_verum_er_shape_verum(null) :- er_shape_verum(X0) : er_left_verum(X0).
-subset_er_left_verum_er_shape_verum(null) :- not subset_er_left_verum_er_shape_verum(null).
subset_er_left_verum_er_smaller_falsum(null) :- er_smaller_falsum(X0) : er_left_verum(X0).
-subset_er_left_verum_er_smaller_falsum(null) :- not subset_er_left_verum_er_smaller_falsum(null).
subset_er_left_verum_er_below_falsum(null) :- er_below_falsum(X0) : er_left_verum(X0).
-subset_er_left_verum_er_below_falsum(null) :- not subset_er_left_verum_er_below_falsum(null).
subset_er_left_verum_er_left_falsum(null) :- er_left_falsum(X0) : er_left_verum(X0).
-subset_er_left_verum_er_left_falsum(null) :- not subset_er_left_verum_er_left_falsum(null).
subset_er_left_verum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_left_verum(X0).
-subset_er_left_verum_er_overlap_falsum(null) :- not subset_er_left_verum_er_overlap_falsum(null).
subset_er_left_verum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_left_verum(X0).
-subset_er_left_verum_er_shape_falsum(null) :- not subset_er_left_verum_er_shape_falsum(null).
subset_er_left_verum_er_smaller_robot(null) :- er_smaller_robot(X0) : er_left_verum(X0).
-subset_er_left_verum_er_smaller_robot(null) :- not subset_er_left_verum_er_smaller_robot(null).
subset_er_left_verum_er_below_robot(null) :- er_below_robot(X0) : er_left_verum(X0).
-subset_er_left_verum_er_below_robot(null) :- not subset_er_left_verum_er_below_robot(null).
subset_er_left_verum_er_left_robot(null) :- er_left_robot(X0) : er_left_verum(X0).
-subset_er_left_verum_er_left_robot(null) :- not subset_er_left_verum_er_left_robot(null).
subset_er_left_verum_er_overlap_robot(null) :- er_overlap_robot(X0) : er_left_verum(X0).
-subset_er_left_verum_er_overlap_robot(null) :- not subset_er_left_verum_er_overlap_robot(null).
subset_er_left_verum_er_shape_robot(null) :- er_shape_robot(X0) : er_left_verum(X0).
-subset_er_left_verum_er_shape_robot(null) :- not subset_er_left_verum_er_shape_robot(null).
subset_er_left_verum_er_smaller_block(null) :- er_smaller_block(X0) : er_left_verum(X0).
-subset_er_left_verum_er_smaller_block(null) :- not subset_er_left_verum_er_smaller_block(null).
subset_er_left_verum_er_below_block(null) :- er_below_block(X0) : er_left_verum(X0).
-subset_er_left_verum_er_below_block(null) :- not subset_er_left_verum_er_below_block(null).
subset_er_left_verum_er_left_block(null) :- er_left_block(X0) : er_left_verum(X0).
-subset_er_left_verum_er_left_block(null) :- not subset_er_left_verum_er_left_block(null).
subset_er_left_verum_er_overlap_block(null) :- er_overlap_block(X0) : er_left_verum(X0).
-subset_er_left_verum_er_overlap_block(null) :- not subset_er_left_verum_er_overlap_block(null).
subset_er_left_verum_er_shape_block(null) :- er_shape_block(X0) : er_left_verum(X0).
-subset_er_left_verum_er_shape_block(null) :- not subset_er_left_verum_er_shape_block(null).
subset_er_left_verum_er_smaller_table(null) :- er_smaller_table(X0) : er_left_verum(X0).
-subset_er_left_verum_er_smaller_table(null) :- not subset_er_left_verum_er_smaller_table(null).
subset_er_left_verum_er_below_table(null) :- er_below_table(X0) : er_left_verum(X0).
-subset_er_left_verum_er_below_table(null) :- not subset_er_left_verum_er_below_table(null).
subset_er_left_verum_er_left_table(null) :- er_left_table(X0) : er_left_verum(X0).
-subset_er_left_verum_er_left_table(null) :- not subset_er_left_verum_er_left_table(null).
subset_er_left_verum_er_overlap_table(null) :- er_overlap_table(X0) : er_left_verum(X0).
-subset_er_left_verum_er_overlap_table(null) :- not subset_er_left_verum_er_overlap_table(null).
subset_er_left_verum_er_shape_table(null) :- er_shape_table(X0) : er_left_verum(X0).
-subset_er_left_verum_er_shape_table(null) :- not subset_er_left_verum_er_shape_table(null).
subset_er_left_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_falsum(null) :- not subset_er_left_verum_inter_verum_falsum(null).
subset_er_left_verum_inter_verum_robot(null) :- inter_verum_robot(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_robot(null) :- not subset_er_left_verum_inter_verum_robot(null).
subset_er_left_verum_inter_verum_block(null) :- inter_verum_block(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_block(null) :- not subset_er_left_verum_inter_verum_block(null).
subset_er_left_verum_inter_verum_table(null) :- inter_verum_table(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_table(null) :- not subset_er_left_verum_inter_verum_table(null).
subset_er_left_verum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_falsum_robot(null) :- not subset_er_left_verum_inter_falsum_robot(null).
subset_er_left_verum_inter_falsum_block(null) :- inter_falsum_block(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_falsum_block(null) :- not subset_er_left_verum_inter_falsum_block(null).
subset_er_left_verum_inter_falsum_table(null) :- inter_falsum_table(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_falsum_table(null) :- not subset_er_left_verum_inter_falsum_table(null).
subset_er_left_verum_inter_robot_block(null) :- inter_robot_block(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_robot_block(null) :- not subset_er_left_verum_inter_robot_block(null).
subset_er_left_verum_inter_robot_table(null) :- inter_robot_table(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_robot_table(null) :- not subset_er_left_verum_inter_robot_table(null).
subset_er_left_verum_inter_block_table(null) :- inter_block_table(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_block_table(null) :- not subset_er_left_verum_inter_block_table(null).
subset_er_left_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_falsum(null) :- not subset_er_left_verum_subset_verum_falsum(null).
subset_er_left_verum_subset_verum_robot(null) :- subset_verum_robot(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_robot(null) :- not subset_er_left_verum_subset_verum_robot(null).
subset_er_left_verum_subset_verum_block(null) :- subset_verum_block(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_block(null) :- not subset_er_left_verum_subset_verum_block(null).
subset_er_left_verum_subset_verum_table(null) :- subset_verum_table(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_table(null) :- not subset_er_left_verum_subset_verum_table(null).
subset_er_left_verum_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_left_verum(X0).
-subset_er_left_verum_subset_falsum_robot(null) :- not subset_er_left_verum_subset_falsum_robot(null).
subset_er_left_verum_subset_falsum_block(null) :- subset_falsum_block(null) : er_left_verum(X0).
-subset_er_left_verum_subset_falsum_block(null) :- not subset_er_left_verum_subset_falsum_block(null).
subset_er_left_verum_subset_falsum_table(null) :- subset_falsum_table(null) : er_left_verum(X0).
-subset_er_left_verum_subset_falsum_table(null) :- not subset_er_left_verum_subset_falsum_table(null).
subset_er_left_verum_subset_robot_block(null) :- subset_robot_block(null) : er_left_verum(X0).
-subset_er_left_verum_subset_robot_block(null) :- not subset_er_left_verum_subset_robot_block(null).
subset_er_left_verum_subset_robot_table(null) :- subset_robot_table(null) : er_left_verum(X0).
-subset_er_left_verum_subset_robot_table(null) :- not subset_er_left_verum_subset_robot_table(null).
subset_er_left_verum_subset_block_table(null) :- subset_block_table(null) : er_left_verum(X0).
-subset_er_left_verum_subset_block_table(null) :- not subset_er_left_verum_subset_block_table(null).
subset_er_overlap_verum_er_shape_verum(null) :- er_shape_verum(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_shape_verum(null) :- not subset_er_overlap_verum_er_shape_verum(null).
subset_er_overlap_verum_er_smaller_falsum(null) :- er_smaller_falsum(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_smaller_falsum(null) :- not subset_er_overlap_verum_er_smaller_falsum(null).
subset_er_overlap_verum_er_below_falsum(null) :- er_below_falsum(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_below_falsum(null) :- not subset_er_overlap_verum_er_below_falsum(null).
subset_er_overlap_verum_er_left_falsum(null) :- er_left_falsum(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_left_falsum(null) :- not subset_er_overlap_verum_er_left_falsum(null).
subset_er_overlap_verum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_overlap_falsum(null) :- not subset_er_overlap_verum_er_overlap_falsum(null).
subset_er_overlap_verum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_shape_falsum(null) :- not subset_er_overlap_verum_er_shape_falsum(null).
subset_er_overlap_verum_er_smaller_robot(null) :- er_smaller_robot(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_smaller_robot(null) :- not subset_er_overlap_verum_er_smaller_robot(null).
subset_er_overlap_verum_er_below_robot(null) :- er_below_robot(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_below_robot(null) :- not subset_er_overlap_verum_er_below_robot(null).
subset_er_overlap_verum_er_left_robot(null) :- er_left_robot(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_left_robot(null) :- not subset_er_overlap_verum_er_left_robot(null).
subset_er_overlap_verum_er_overlap_robot(null) :- er_overlap_robot(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_overlap_robot(null) :- not subset_er_overlap_verum_er_overlap_robot(null).
subset_er_overlap_verum_er_shape_robot(null) :- er_shape_robot(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_shape_robot(null) :- not subset_er_overlap_verum_er_shape_robot(null).
subset_er_overlap_verum_er_smaller_block(null) :- er_smaller_block(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_smaller_block(null) :- not subset_er_overlap_verum_er_smaller_block(null).
subset_er_overlap_verum_er_below_block(null) :- er_below_block(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_below_block(null) :- not subset_er_overlap_verum_er_below_block(null).
subset_er_overlap_verum_er_left_block(null) :- er_left_block(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_left_block(null) :- not subset_er_overlap_verum_er_left_block(null).
subset_er_overlap_verum_er_overlap_block(null) :- er_overlap_block(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_overlap_block(null) :- not subset_er_overlap_verum_er_overlap_block(null).
subset_er_overlap_verum_er_shape_block(null) :- er_shape_block(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_shape_block(null) :- not subset_er_overlap_verum_er_shape_block(null).
subset_er_overlap_verum_er_smaller_table(null) :- er_smaller_table(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_smaller_table(null) :- not subset_er_overlap_verum_er_smaller_table(null).
subset_er_overlap_verum_er_below_table(null) :- er_below_table(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_below_table(null) :- not subset_er_overlap_verum_er_below_table(null).
subset_er_overlap_verum_er_left_table(null) :- er_left_table(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_left_table(null) :- not subset_er_overlap_verum_er_left_table(null).
subset_er_overlap_verum_er_overlap_table(null) :- er_overlap_table(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_overlap_table(null) :- not subset_er_overlap_verum_er_overlap_table(null).
subset_er_overlap_verum_er_shape_table(null) :- er_shape_table(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_shape_table(null) :- not subset_er_overlap_verum_er_shape_table(null).
subset_er_overlap_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_falsum(null) :- not subset_er_overlap_verum_inter_verum_falsum(null).
subset_er_overlap_verum_inter_verum_robot(null) :- inter_verum_robot(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_robot(null) :- not subset_er_overlap_verum_inter_verum_robot(null).
subset_er_overlap_verum_inter_verum_block(null) :- inter_verum_block(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_block(null) :- not subset_er_overlap_verum_inter_verum_block(null).
subset_er_overlap_verum_inter_verum_table(null) :- inter_verum_table(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_table(null) :- not subset_er_overlap_verum_inter_verum_table(null).
subset_er_overlap_verum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_falsum_robot(null) :- not subset_er_overlap_verum_inter_falsum_robot(null).
subset_er_overlap_verum_inter_falsum_block(null) :- inter_falsum_block(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_falsum_block(null) :- not subset_er_overlap_verum_inter_falsum_block(null).
subset_er_overlap_verum_inter_falsum_table(null) :- inter_falsum_table(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_falsum_table(null) :- not subset_er_overlap_verum_inter_falsum_table(null).
subset_er_overlap_verum_inter_robot_block(null) :- inter_robot_block(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_robot_block(null) :- not subset_er_overlap_verum_inter_robot_block(null).
subset_er_overlap_verum_inter_robot_table(null) :- inter_robot_table(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_robot_table(null) :- not subset_er_overlap_verum_inter_robot_table(null).
subset_er_overlap_verum_inter_block_table(null) :- inter_block_table(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_block_table(null) :- not subset_er_overlap_verum_inter_block_table(null).
subset_er_overlap_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_falsum(null) :- not subset_er_overlap_verum_subset_verum_falsum(null).
subset_er_overlap_verum_subset_verum_robot(null) :- subset_verum_robot(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_robot(null) :- not subset_er_overlap_verum_subset_verum_robot(null).
subset_er_overlap_verum_subset_verum_block(null) :- subset_verum_block(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_block(null) :- not subset_er_overlap_verum_subset_verum_block(null).
subset_er_overlap_verum_subset_verum_table(null) :- subset_verum_table(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_table(null) :- not subset_er_overlap_verum_subset_verum_table(null).
subset_er_overlap_verum_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_falsum_robot(null) :- not subset_er_overlap_verum_subset_falsum_robot(null).
subset_er_overlap_verum_subset_falsum_block(null) :- subset_falsum_block(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_falsum_block(null) :- not subset_er_overlap_verum_subset_falsum_block(null).
subset_er_overlap_verum_subset_falsum_table(null) :- subset_falsum_table(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_falsum_table(null) :- not subset_er_overlap_verum_subset_falsum_table(null).
subset_er_overlap_verum_subset_robot_block(null) :- subset_robot_block(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_robot_block(null) :- not subset_er_overlap_verum_subset_robot_block(null).
subset_er_overlap_verum_subset_robot_table(null) :- subset_robot_table(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_robot_table(null) :- not subset_er_overlap_verum_subset_robot_table(null).
subset_er_overlap_verum_subset_block_table(null) :- subset_block_table(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_block_table(null) :- not subset_er_overlap_verum_subset_block_table(null).
subset_er_shape_verum_er_smaller_falsum(null) :- er_smaller_falsum(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_smaller_falsum(null) :- not subset_er_shape_verum_er_smaller_falsum(null).
subset_er_shape_verum_er_below_falsum(null) :- er_below_falsum(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_below_falsum(null) :- not subset_er_shape_verum_er_below_falsum(null).
subset_er_shape_verum_er_left_falsum(null) :- er_left_falsum(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_left_falsum(null) :- not subset_er_shape_verum_er_left_falsum(null).
subset_er_shape_verum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_overlap_falsum(null) :- not subset_er_shape_verum_er_overlap_falsum(null).
subset_er_shape_verum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_shape_falsum(null) :- not subset_er_shape_verum_er_shape_falsum(null).
subset_er_shape_verum_er_smaller_robot(null) :- er_smaller_robot(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_smaller_robot(null) :- not subset_er_shape_verum_er_smaller_robot(null).
subset_er_shape_verum_er_below_robot(null) :- er_below_robot(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_below_robot(null) :- not subset_er_shape_verum_er_below_robot(null).
subset_er_shape_verum_er_left_robot(null) :- er_left_robot(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_left_robot(null) :- not subset_er_shape_verum_er_left_robot(null).
subset_er_shape_verum_er_overlap_robot(null) :- er_overlap_robot(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_overlap_robot(null) :- not subset_er_shape_verum_er_overlap_robot(null).
subset_er_shape_verum_er_shape_robot(null) :- er_shape_robot(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_shape_robot(null) :- not subset_er_shape_verum_er_shape_robot(null).
subset_er_shape_verum_er_smaller_block(null) :- er_smaller_block(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_smaller_block(null) :- not subset_er_shape_verum_er_smaller_block(null).
subset_er_shape_verum_er_below_block(null) :- er_below_block(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_below_block(null) :- not subset_er_shape_verum_er_below_block(null).
subset_er_shape_verum_er_left_block(null) :- er_left_block(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_left_block(null) :- not subset_er_shape_verum_er_left_block(null).
subset_er_shape_verum_er_overlap_block(null) :- er_overlap_block(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_overlap_block(null) :- not subset_er_shape_verum_er_overlap_block(null).
subset_er_shape_verum_er_shape_block(null) :- er_shape_block(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_shape_block(null) :- not subset_er_shape_verum_er_shape_block(null).
subset_er_shape_verum_er_smaller_table(null) :- er_smaller_table(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_smaller_table(null) :- not subset_er_shape_verum_er_smaller_table(null).
subset_er_shape_verum_er_below_table(null) :- er_below_table(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_below_table(null) :- not subset_er_shape_verum_er_below_table(null).
subset_er_shape_verum_er_left_table(null) :- er_left_table(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_left_table(null) :- not subset_er_shape_verum_er_left_table(null).
subset_er_shape_verum_er_overlap_table(null) :- er_overlap_table(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_overlap_table(null) :- not subset_er_shape_verum_er_overlap_table(null).
subset_er_shape_verum_er_shape_table(null) :- er_shape_table(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_shape_table(null) :- not subset_er_shape_verum_er_shape_table(null).
subset_er_shape_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_falsum(null) :- not subset_er_shape_verum_inter_verum_falsum(null).
subset_er_shape_verum_inter_verum_robot(null) :- inter_verum_robot(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_robot(null) :- not subset_er_shape_verum_inter_verum_robot(null).
subset_er_shape_verum_inter_verum_block(null) :- inter_verum_block(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_block(null) :- not subset_er_shape_verum_inter_verum_block(null).
subset_er_shape_verum_inter_verum_table(null) :- inter_verum_table(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_table(null) :- not subset_er_shape_verum_inter_verum_table(null).
subset_er_shape_verum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_falsum_robot(null) :- not subset_er_shape_verum_inter_falsum_robot(null).
subset_er_shape_verum_inter_falsum_block(null) :- inter_falsum_block(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_falsum_block(null) :- not subset_er_shape_verum_inter_falsum_block(null).
subset_er_shape_verum_inter_falsum_table(null) :- inter_falsum_table(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_falsum_table(null) :- not subset_er_shape_verum_inter_falsum_table(null).
subset_er_shape_verum_inter_robot_block(null) :- inter_robot_block(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_robot_block(null) :- not subset_er_shape_verum_inter_robot_block(null).
subset_er_shape_verum_inter_robot_table(null) :- inter_robot_table(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_robot_table(null) :- not subset_er_shape_verum_inter_robot_table(null).
subset_er_shape_verum_inter_block_table(null) :- inter_block_table(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_block_table(null) :- not subset_er_shape_verum_inter_block_table(null).
subset_er_shape_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_falsum(null) :- not subset_er_shape_verum_subset_verum_falsum(null).
subset_er_shape_verum_subset_verum_robot(null) :- subset_verum_robot(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_robot(null) :- not subset_er_shape_verum_subset_verum_robot(null).
subset_er_shape_verum_subset_verum_block(null) :- subset_verum_block(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_block(null) :- not subset_er_shape_verum_subset_verum_block(null).
subset_er_shape_verum_subset_verum_table(null) :- subset_verum_table(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_table(null) :- not subset_er_shape_verum_subset_verum_table(null).
subset_er_shape_verum_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_falsum_robot(null) :- not subset_er_shape_verum_subset_falsum_robot(null).
subset_er_shape_verum_subset_falsum_block(null) :- subset_falsum_block(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_falsum_block(null) :- not subset_er_shape_verum_subset_falsum_block(null).
subset_er_shape_verum_subset_falsum_table(null) :- subset_falsum_table(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_falsum_table(null) :- not subset_er_shape_verum_subset_falsum_table(null).
subset_er_shape_verum_subset_robot_block(null) :- subset_robot_block(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_robot_block(null) :- not subset_er_shape_verum_subset_robot_block(null).
subset_er_shape_verum_subset_robot_table(null) :- subset_robot_table(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_robot_table(null) :- not subset_er_shape_verum_subset_robot_table(null).
subset_er_shape_verum_subset_block_table(null) :- subset_block_table(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_block_table(null) :- not subset_er_shape_verum_subset_block_table(null).
subset_er_smaller_falsum_er_below_falsum(null) :- er_below_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_falsum(null) :- not subset_er_smaller_falsum_er_below_falsum(null).
subset_er_smaller_falsum_er_left_falsum(null) :- er_left_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_falsum(null) :- not subset_er_smaller_falsum_er_left_falsum(null).
subset_er_smaller_falsum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_falsum(null) :- not subset_er_smaller_falsum_er_overlap_falsum(null).
subset_er_smaller_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_falsum(null) :- not subset_er_smaller_falsum_er_shape_falsum(null).
subset_er_smaller_falsum_er_smaller_robot(null) :- er_smaller_robot(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_smaller_robot(null) :- not subset_er_smaller_falsum_er_smaller_robot(null).
subset_er_smaller_falsum_er_below_robot(null) :- er_below_robot(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_robot(null) :- not subset_er_smaller_falsum_er_below_robot(null).
subset_er_smaller_falsum_er_left_robot(null) :- er_left_robot(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_robot(null) :- not subset_er_smaller_falsum_er_left_robot(null).
subset_er_smaller_falsum_er_overlap_robot(null) :- er_overlap_robot(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_robot(null) :- not subset_er_smaller_falsum_er_overlap_robot(null).
subset_er_smaller_falsum_er_shape_robot(null) :- er_shape_robot(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_robot(null) :- not subset_er_smaller_falsum_er_shape_robot(null).
subset_er_smaller_falsum_er_smaller_block(null) :- er_smaller_block(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_smaller_block(null) :- not subset_er_smaller_falsum_er_smaller_block(null).
subset_er_smaller_falsum_er_below_block(null) :- er_below_block(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_block(null) :- not subset_er_smaller_falsum_er_below_block(null).
subset_er_smaller_falsum_er_left_block(null) :- er_left_block(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_block(null) :- not subset_er_smaller_falsum_er_left_block(null).
subset_er_smaller_falsum_er_overlap_block(null) :- er_overlap_block(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_block(null) :- not subset_er_smaller_falsum_er_overlap_block(null).
subset_er_smaller_falsum_er_shape_block(null) :- er_shape_block(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_block(null) :- not subset_er_smaller_falsum_er_shape_block(null).
subset_er_smaller_falsum_er_smaller_table(null) :- er_smaller_table(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_smaller_table(null) :- not subset_er_smaller_falsum_er_smaller_table(null).
subset_er_smaller_falsum_er_below_table(null) :- er_below_table(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_table(null) :- not subset_er_smaller_falsum_er_below_table(null).
subset_er_smaller_falsum_er_left_table(null) :- er_left_table(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_table(null) :- not subset_er_smaller_falsum_er_left_table(null).
subset_er_smaller_falsum_er_overlap_table(null) :- er_overlap_table(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_table(null) :- not subset_er_smaller_falsum_er_overlap_table(null).
subset_er_smaller_falsum_er_shape_table(null) :- er_shape_table(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_table(null) :- not subset_er_smaller_falsum_er_shape_table(null).
subset_er_smaller_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_falsum(null) :- not subset_er_smaller_falsum_inter_verum_falsum(null).
subset_er_smaller_falsum_inter_verum_robot(null) :- inter_verum_robot(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_robot(null) :- not subset_er_smaller_falsum_inter_verum_robot(null).
subset_er_smaller_falsum_inter_verum_block(null) :- inter_verum_block(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_block(null) :- not subset_er_smaller_falsum_inter_verum_block(null).
subset_er_smaller_falsum_inter_verum_table(null) :- inter_verum_table(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_table(null) :- not subset_er_smaller_falsum_inter_verum_table(null).
subset_er_smaller_falsum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_falsum_robot(null) :- not subset_er_smaller_falsum_inter_falsum_robot(null).
subset_er_smaller_falsum_inter_falsum_block(null) :- inter_falsum_block(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_falsum_block(null) :- not subset_er_smaller_falsum_inter_falsum_block(null).
subset_er_smaller_falsum_inter_falsum_table(null) :- inter_falsum_table(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_falsum_table(null) :- not subset_er_smaller_falsum_inter_falsum_table(null).
subset_er_smaller_falsum_inter_robot_block(null) :- inter_robot_block(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_robot_block(null) :- not subset_er_smaller_falsum_inter_robot_block(null).
subset_er_smaller_falsum_inter_robot_table(null) :- inter_robot_table(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_robot_table(null) :- not subset_er_smaller_falsum_inter_robot_table(null).
subset_er_smaller_falsum_inter_block_table(null) :- inter_block_table(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_block_table(null) :- not subset_er_smaller_falsum_inter_block_table(null).
subset_er_smaller_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_falsum(null) :- not subset_er_smaller_falsum_subset_verum_falsum(null).
subset_er_smaller_falsum_subset_verum_robot(null) :- subset_verum_robot(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_robot(null) :- not subset_er_smaller_falsum_subset_verum_robot(null).
subset_er_smaller_falsum_subset_verum_block(null) :- subset_verum_block(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_block(null) :- not subset_er_smaller_falsum_subset_verum_block(null).
subset_er_smaller_falsum_subset_verum_table(null) :- subset_verum_table(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_table(null) :- not subset_er_smaller_falsum_subset_verum_table(null).
subset_er_smaller_falsum_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_falsum_robot(null) :- not subset_er_smaller_falsum_subset_falsum_robot(null).
subset_er_smaller_falsum_subset_falsum_block(null) :- subset_falsum_block(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_falsum_block(null) :- not subset_er_smaller_falsum_subset_falsum_block(null).
subset_er_smaller_falsum_subset_falsum_table(null) :- subset_falsum_table(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_falsum_table(null) :- not subset_er_smaller_falsum_subset_falsum_table(null).
subset_er_smaller_falsum_subset_robot_block(null) :- subset_robot_block(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_robot_block(null) :- not subset_er_smaller_falsum_subset_robot_block(null).
subset_er_smaller_falsum_subset_robot_table(null) :- subset_robot_table(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_robot_table(null) :- not subset_er_smaller_falsum_subset_robot_table(null).
subset_er_smaller_falsum_subset_block_table(null) :- subset_block_table(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_block_table(null) :- not subset_er_smaller_falsum_subset_block_table(null).
subset_er_below_falsum_er_left_falsum(null) :- er_left_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_falsum(null) :- not subset_er_below_falsum_er_left_falsum(null).
subset_er_below_falsum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_falsum(null) :- not subset_er_below_falsum_er_overlap_falsum(null).
subset_er_below_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_falsum(null) :- not subset_er_below_falsum_er_shape_falsum(null).
subset_er_below_falsum_er_smaller_robot(null) :- er_smaller_robot(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_smaller_robot(null) :- not subset_er_below_falsum_er_smaller_robot(null).
subset_er_below_falsum_er_below_robot(null) :- er_below_robot(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_below_robot(null) :- not subset_er_below_falsum_er_below_robot(null).
subset_er_below_falsum_er_left_robot(null) :- er_left_robot(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_robot(null) :- not subset_er_below_falsum_er_left_robot(null).
subset_er_below_falsum_er_overlap_robot(null) :- er_overlap_robot(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_robot(null) :- not subset_er_below_falsum_er_overlap_robot(null).
subset_er_below_falsum_er_shape_robot(null) :- er_shape_robot(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_robot(null) :- not subset_er_below_falsum_er_shape_robot(null).
subset_er_below_falsum_er_smaller_block(null) :- er_smaller_block(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_smaller_block(null) :- not subset_er_below_falsum_er_smaller_block(null).
subset_er_below_falsum_er_below_block(null) :- er_below_block(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_below_block(null) :- not subset_er_below_falsum_er_below_block(null).
subset_er_below_falsum_er_left_block(null) :- er_left_block(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_block(null) :- not subset_er_below_falsum_er_left_block(null).
subset_er_below_falsum_er_overlap_block(null) :- er_overlap_block(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_block(null) :- not subset_er_below_falsum_er_overlap_block(null).
subset_er_below_falsum_er_shape_block(null) :- er_shape_block(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_block(null) :- not subset_er_below_falsum_er_shape_block(null).
subset_er_below_falsum_er_smaller_table(null) :- er_smaller_table(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_smaller_table(null) :- not subset_er_below_falsum_er_smaller_table(null).
subset_er_below_falsum_er_below_table(null) :- er_below_table(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_below_table(null) :- not subset_er_below_falsum_er_below_table(null).
subset_er_below_falsum_er_left_table(null) :- er_left_table(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_table(null) :- not subset_er_below_falsum_er_left_table(null).
subset_er_below_falsum_er_overlap_table(null) :- er_overlap_table(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_table(null) :- not subset_er_below_falsum_er_overlap_table(null).
subset_er_below_falsum_er_shape_table(null) :- er_shape_table(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_table(null) :- not subset_er_below_falsum_er_shape_table(null).
subset_er_below_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_falsum(null) :- not subset_er_below_falsum_inter_verum_falsum(null).
subset_er_below_falsum_inter_verum_robot(null) :- inter_verum_robot(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_robot(null) :- not subset_er_below_falsum_inter_verum_robot(null).
subset_er_below_falsum_inter_verum_block(null) :- inter_verum_block(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_block(null) :- not subset_er_below_falsum_inter_verum_block(null).
subset_er_below_falsum_inter_verum_table(null) :- inter_verum_table(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_table(null) :- not subset_er_below_falsum_inter_verum_table(null).
subset_er_below_falsum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_falsum_robot(null) :- not subset_er_below_falsum_inter_falsum_robot(null).
subset_er_below_falsum_inter_falsum_block(null) :- inter_falsum_block(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_falsum_block(null) :- not subset_er_below_falsum_inter_falsum_block(null).
subset_er_below_falsum_inter_falsum_table(null) :- inter_falsum_table(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_falsum_table(null) :- not subset_er_below_falsum_inter_falsum_table(null).
subset_er_below_falsum_inter_robot_block(null) :- inter_robot_block(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_robot_block(null) :- not subset_er_below_falsum_inter_robot_block(null).
subset_er_below_falsum_inter_robot_table(null) :- inter_robot_table(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_robot_table(null) :- not subset_er_below_falsum_inter_robot_table(null).
subset_er_below_falsum_inter_block_table(null) :- inter_block_table(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_block_table(null) :- not subset_er_below_falsum_inter_block_table(null).
subset_er_below_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_falsum(null) :- not subset_er_below_falsum_subset_verum_falsum(null).
subset_er_below_falsum_subset_verum_robot(null) :- subset_verum_robot(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_robot(null) :- not subset_er_below_falsum_subset_verum_robot(null).
subset_er_below_falsum_subset_verum_block(null) :- subset_verum_block(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_block(null) :- not subset_er_below_falsum_subset_verum_block(null).
subset_er_below_falsum_subset_verum_table(null) :- subset_verum_table(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_table(null) :- not subset_er_below_falsum_subset_verum_table(null).
subset_er_below_falsum_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_falsum_robot(null) :- not subset_er_below_falsum_subset_falsum_robot(null).
subset_er_below_falsum_subset_falsum_block(null) :- subset_falsum_block(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_falsum_block(null) :- not subset_er_below_falsum_subset_falsum_block(null).
subset_er_below_falsum_subset_falsum_table(null) :- subset_falsum_table(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_falsum_table(null) :- not subset_er_below_falsum_subset_falsum_table(null).
subset_er_below_falsum_subset_robot_block(null) :- subset_robot_block(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_robot_block(null) :- not subset_er_below_falsum_subset_robot_block(null).
subset_er_below_falsum_subset_robot_table(null) :- subset_robot_table(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_robot_table(null) :- not subset_er_below_falsum_subset_robot_table(null).
subset_er_below_falsum_subset_block_table(null) :- subset_block_table(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_block_table(null) :- not subset_er_below_falsum_subset_block_table(null).
subset_er_left_falsum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_falsum(null) :- not subset_er_left_falsum_er_overlap_falsum(null).
subset_er_left_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_falsum(null) :- not subset_er_left_falsum_er_shape_falsum(null).
subset_er_left_falsum_er_smaller_robot(null) :- er_smaller_robot(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_smaller_robot(null) :- not subset_er_left_falsum_er_smaller_robot(null).
subset_er_left_falsum_er_below_robot(null) :- er_below_robot(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_below_robot(null) :- not subset_er_left_falsum_er_below_robot(null).
subset_er_left_falsum_er_left_robot(null) :- er_left_robot(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_left_robot(null) :- not subset_er_left_falsum_er_left_robot(null).
subset_er_left_falsum_er_overlap_robot(null) :- er_overlap_robot(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_robot(null) :- not subset_er_left_falsum_er_overlap_robot(null).
subset_er_left_falsum_er_shape_robot(null) :- er_shape_robot(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_robot(null) :- not subset_er_left_falsum_er_shape_robot(null).
subset_er_left_falsum_er_smaller_block(null) :- er_smaller_block(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_smaller_block(null) :- not subset_er_left_falsum_er_smaller_block(null).
subset_er_left_falsum_er_below_block(null) :- er_below_block(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_below_block(null) :- not subset_er_left_falsum_er_below_block(null).
subset_er_left_falsum_er_left_block(null) :- er_left_block(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_left_block(null) :- not subset_er_left_falsum_er_left_block(null).
subset_er_left_falsum_er_overlap_block(null) :- er_overlap_block(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_block(null) :- not subset_er_left_falsum_er_overlap_block(null).
subset_er_left_falsum_er_shape_block(null) :- er_shape_block(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_block(null) :- not subset_er_left_falsum_er_shape_block(null).
subset_er_left_falsum_er_smaller_table(null) :- er_smaller_table(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_smaller_table(null) :- not subset_er_left_falsum_er_smaller_table(null).
subset_er_left_falsum_er_below_table(null) :- er_below_table(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_below_table(null) :- not subset_er_left_falsum_er_below_table(null).
subset_er_left_falsum_er_left_table(null) :- er_left_table(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_left_table(null) :- not subset_er_left_falsum_er_left_table(null).
subset_er_left_falsum_er_overlap_table(null) :- er_overlap_table(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_table(null) :- not subset_er_left_falsum_er_overlap_table(null).
subset_er_left_falsum_er_shape_table(null) :- er_shape_table(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_table(null) :- not subset_er_left_falsum_er_shape_table(null).
subset_er_left_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_falsum(null) :- not subset_er_left_falsum_inter_verum_falsum(null).
subset_er_left_falsum_inter_verum_robot(null) :- inter_verum_robot(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_robot(null) :- not subset_er_left_falsum_inter_verum_robot(null).
subset_er_left_falsum_inter_verum_block(null) :- inter_verum_block(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_block(null) :- not subset_er_left_falsum_inter_verum_block(null).
subset_er_left_falsum_inter_verum_table(null) :- inter_verum_table(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_table(null) :- not subset_er_left_falsum_inter_verum_table(null).
subset_er_left_falsum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_falsum_robot(null) :- not subset_er_left_falsum_inter_falsum_robot(null).
subset_er_left_falsum_inter_falsum_block(null) :- inter_falsum_block(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_falsum_block(null) :- not subset_er_left_falsum_inter_falsum_block(null).
subset_er_left_falsum_inter_falsum_table(null) :- inter_falsum_table(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_falsum_table(null) :- not subset_er_left_falsum_inter_falsum_table(null).
subset_er_left_falsum_inter_robot_block(null) :- inter_robot_block(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_robot_block(null) :- not subset_er_left_falsum_inter_robot_block(null).
subset_er_left_falsum_inter_robot_table(null) :- inter_robot_table(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_robot_table(null) :- not subset_er_left_falsum_inter_robot_table(null).
subset_er_left_falsum_inter_block_table(null) :- inter_block_table(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_block_table(null) :- not subset_er_left_falsum_inter_block_table(null).
subset_er_left_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_falsum(null) :- not subset_er_left_falsum_subset_verum_falsum(null).
subset_er_left_falsum_subset_verum_robot(null) :- subset_verum_robot(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_robot(null) :- not subset_er_left_falsum_subset_verum_robot(null).
subset_er_left_falsum_subset_verum_block(null) :- subset_verum_block(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_block(null) :- not subset_er_left_falsum_subset_verum_block(null).
subset_er_left_falsum_subset_verum_table(null) :- subset_verum_table(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_table(null) :- not subset_er_left_falsum_subset_verum_table(null).
subset_er_left_falsum_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_falsum_robot(null) :- not subset_er_left_falsum_subset_falsum_robot(null).
subset_er_left_falsum_subset_falsum_block(null) :- subset_falsum_block(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_falsum_block(null) :- not subset_er_left_falsum_subset_falsum_block(null).
subset_er_left_falsum_subset_falsum_table(null) :- subset_falsum_table(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_falsum_table(null) :- not subset_er_left_falsum_subset_falsum_table(null).
subset_er_left_falsum_subset_robot_block(null) :- subset_robot_block(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_robot_block(null) :- not subset_er_left_falsum_subset_robot_block(null).
subset_er_left_falsum_subset_robot_table(null) :- subset_robot_table(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_robot_table(null) :- not subset_er_left_falsum_subset_robot_table(null).
subset_er_left_falsum_subset_block_table(null) :- subset_block_table(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_block_table(null) :- not subset_er_left_falsum_subset_block_table(null).
subset_er_overlap_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_falsum(null) :- not subset_er_overlap_falsum_er_shape_falsum(null).
subset_er_overlap_falsum_er_smaller_robot(null) :- er_smaller_robot(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_smaller_robot(null) :- not subset_er_overlap_falsum_er_smaller_robot(null).
subset_er_overlap_falsum_er_below_robot(null) :- er_below_robot(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_below_robot(null) :- not subset_er_overlap_falsum_er_below_robot(null).
subset_er_overlap_falsum_er_left_robot(null) :- er_left_robot(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_left_robot(null) :- not subset_er_overlap_falsum_er_left_robot(null).
subset_er_overlap_falsum_er_overlap_robot(null) :- er_overlap_robot(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_overlap_robot(null) :- not subset_er_overlap_falsum_er_overlap_robot(null).
subset_er_overlap_falsum_er_shape_robot(null) :- er_shape_robot(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_robot(null) :- not subset_er_overlap_falsum_er_shape_robot(null).
subset_er_overlap_falsum_er_smaller_block(null) :- er_smaller_block(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_smaller_block(null) :- not subset_er_overlap_falsum_er_smaller_block(null).
subset_er_overlap_falsum_er_below_block(null) :- er_below_block(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_below_block(null) :- not subset_er_overlap_falsum_er_below_block(null).
subset_er_overlap_falsum_er_left_block(null) :- er_left_block(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_left_block(null) :- not subset_er_overlap_falsum_er_left_block(null).
subset_er_overlap_falsum_er_overlap_block(null) :- er_overlap_block(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_overlap_block(null) :- not subset_er_overlap_falsum_er_overlap_block(null).
subset_er_overlap_falsum_er_shape_block(null) :- er_shape_block(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_block(null) :- not subset_er_overlap_falsum_er_shape_block(null).
subset_er_overlap_falsum_er_smaller_table(null) :- er_smaller_table(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_smaller_table(null) :- not subset_er_overlap_falsum_er_smaller_table(null).
subset_er_overlap_falsum_er_below_table(null) :- er_below_table(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_below_table(null) :- not subset_er_overlap_falsum_er_below_table(null).
subset_er_overlap_falsum_er_left_table(null) :- er_left_table(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_left_table(null) :- not subset_er_overlap_falsum_er_left_table(null).
subset_er_overlap_falsum_er_overlap_table(null) :- er_overlap_table(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_overlap_table(null) :- not subset_er_overlap_falsum_er_overlap_table(null).
subset_er_overlap_falsum_er_shape_table(null) :- er_shape_table(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_table(null) :- not subset_er_overlap_falsum_er_shape_table(null).
subset_er_overlap_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_falsum(null) :- not subset_er_overlap_falsum_inter_verum_falsum(null).
subset_er_overlap_falsum_inter_verum_robot(null) :- inter_verum_robot(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_robot(null) :- not subset_er_overlap_falsum_inter_verum_robot(null).
subset_er_overlap_falsum_inter_verum_block(null) :- inter_verum_block(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_block(null) :- not subset_er_overlap_falsum_inter_verum_block(null).
subset_er_overlap_falsum_inter_verum_table(null) :- inter_verum_table(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_table(null) :- not subset_er_overlap_falsum_inter_verum_table(null).
subset_er_overlap_falsum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_falsum_robot(null) :- not subset_er_overlap_falsum_inter_falsum_robot(null).
subset_er_overlap_falsum_inter_falsum_block(null) :- inter_falsum_block(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_falsum_block(null) :- not subset_er_overlap_falsum_inter_falsum_block(null).
subset_er_overlap_falsum_inter_falsum_table(null) :- inter_falsum_table(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_falsum_table(null) :- not subset_er_overlap_falsum_inter_falsum_table(null).
subset_er_overlap_falsum_inter_robot_block(null) :- inter_robot_block(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_robot_block(null) :- not subset_er_overlap_falsum_inter_robot_block(null).
subset_er_overlap_falsum_inter_robot_table(null) :- inter_robot_table(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_robot_table(null) :- not subset_er_overlap_falsum_inter_robot_table(null).
subset_er_overlap_falsum_inter_block_table(null) :- inter_block_table(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_block_table(null) :- not subset_er_overlap_falsum_inter_block_table(null).
subset_er_overlap_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_falsum(null) :- not subset_er_overlap_falsum_subset_verum_falsum(null).
subset_er_overlap_falsum_subset_verum_robot(null) :- subset_verum_robot(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_robot(null) :- not subset_er_overlap_falsum_subset_verum_robot(null).
subset_er_overlap_falsum_subset_verum_block(null) :- subset_verum_block(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_block(null) :- not subset_er_overlap_falsum_subset_verum_block(null).
subset_er_overlap_falsum_subset_verum_table(null) :- subset_verum_table(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_table(null) :- not subset_er_overlap_falsum_subset_verum_table(null).
subset_er_overlap_falsum_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_falsum_robot(null) :- not subset_er_overlap_falsum_subset_falsum_robot(null).
subset_er_overlap_falsum_subset_falsum_block(null) :- subset_falsum_block(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_falsum_block(null) :- not subset_er_overlap_falsum_subset_falsum_block(null).
subset_er_overlap_falsum_subset_falsum_table(null) :- subset_falsum_table(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_falsum_table(null) :- not subset_er_overlap_falsum_subset_falsum_table(null).
subset_er_overlap_falsum_subset_robot_block(null) :- subset_robot_block(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_robot_block(null) :- not subset_er_overlap_falsum_subset_robot_block(null).
subset_er_overlap_falsum_subset_robot_table(null) :- subset_robot_table(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_robot_table(null) :- not subset_er_overlap_falsum_subset_robot_table(null).
subset_er_overlap_falsum_subset_block_table(null) :- subset_block_table(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_block_table(null) :- not subset_er_overlap_falsum_subset_block_table(null).
subset_er_shape_falsum_er_smaller_robot(null) :- er_smaller_robot(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_smaller_robot(null) :- not subset_er_shape_falsum_er_smaller_robot(null).
subset_er_shape_falsum_er_below_robot(null) :- er_below_robot(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_below_robot(null) :- not subset_er_shape_falsum_er_below_robot(null).
subset_er_shape_falsum_er_left_robot(null) :- er_left_robot(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_left_robot(null) :- not subset_er_shape_falsum_er_left_robot(null).
subset_er_shape_falsum_er_overlap_robot(null) :- er_overlap_robot(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_overlap_robot(null) :- not subset_er_shape_falsum_er_overlap_robot(null).
subset_er_shape_falsum_er_shape_robot(null) :- er_shape_robot(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_shape_robot(null) :- not subset_er_shape_falsum_er_shape_robot(null).
subset_er_shape_falsum_er_smaller_block(null) :- er_smaller_block(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_smaller_block(null) :- not subset_er_shape_falsum_er_smaller_block(null).
subset_er_shape_falsum_er_below_block(null) :- er_below_block(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_below_block(null) :- not subset_er_shape_falsum_er_below_block(null).
subset_er_shape_falsum_er_left_block(null) :- er_left_block(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_left_block(null) :- not subset_er_shape_falsum_er_left_block(null).
subset_er_shape_falsum_er_overlap_block(null) :- er_overlap_block(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_overlap_block(null) :- not subset_er_shape_falsum_er_overlap_block(null).
subset_er_shape_falsum_er_shape_block(null) :- er_shape_block(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_shape_block(null) :- not subset_er_shape_falsum_er_shape_block(null).
subset_er_shape_falsum_er_smaller_table(null) :- er_smaller_table(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_smaller_table(null) :- not subset_er_shape_falsum_er_smaller_table(null).
subset_er_shape_falsum_er_below_table(null) :- er_below_table(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_below_table(null) :- not subset_er_shape_falsum_er_below_table(null).
subset_er_shape_falsum_er_left_table(null) :- er_left_table(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_left_table(null) :- not subset_er_shape_falsum_er_left_table(null).
subset_er_shape_falsum_er_overlap_table(null) :- er_overlap_table(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_overlap_table(null) :- not subset_er_shape_falsum_er_overlap_table(null).
subset_er_shape_falsum_er_shape_table(null) :- er_shape_table(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_shape_table(null) :- not subset_er_shape_falsum_er_shape_table(null).
subset_er_shape_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_falsum(null) :- not subset_er_shape_falsum_inter_verum_falsum(null).
subset_er_shape_falsum_inter_verum_robot(null) :- inter_verum_robot(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_robot(null) :- not subset_er_shape_falsum_inter_verum_robot(null).
subset_er_shape_falsum_inter_verum_block(null) :- inter_verum_block(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_block(null) :- not subset_er_shape_falsum_inter_verum_block(null).
subset_er_shape_falsum_inter_verum_table(null) :- inter_verum_table(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_table(null) :- not subset_er_shape_falsum_inter_verum_table(null).
subset_er_shape_falsum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_falsum_robot(null) :- not subset_er_shape_falsum_inter_falsum_robot(null).
subset_er_shape_falsum_inter_falsum_block(null) :- inter_falsum_block(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_falsum_block(null) :- not subset_er_shape_falsum_inter_falsum_block(null).
subset_er_shape_falsum_inter_falsum_table(null) :- inter_falsum_table(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_falsum_table(null) :- not subset_er_shape_falsum_inter_falsum_table(null).
subset_er_shape_falsum_inter_robot_block(null) :- inter_robot_block(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_robot_block(null) :- not subset_er_shape_falsum_inter_robot_block(null).
subset_er_shape_falsum_inter_robot_table(null) :- inter_robot_table(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_robot_table(null) :- not subset_er_shape_falsum_inter_robot_table(null).
subset_er_shape_falsum_inter_block_table(null) :- inter_block_table(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_block_table(null) :- not subset_er_shape_falsum_inter_block_table(null).
subset_er_shape_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_falsum(null) :- not subset_er_shape_falsum_subset_verum_falsum(null).
subset_er_shape_falsum_subset_verum_robot(null) :- subset_verum_robot(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_robot(null) :- not subset_er_shape_falsum_subset_verum_robot(null).
subset_er_shape_falsum_subset_verum_block(null) :- subset_verum_block(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_block(null) :- not subset_er_shape_falsum_subset_verum_block(null).
subset_er_shape_falsum_subset_verum_table(null) :- subset_verum_table(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_table(null) :- not subset_er_shape_falsum_subset_verum_table(null).
subset_er_shape_falsum_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_falsum_robot(null) :- not subset_er_shape_falsum_subset_falsum_robot(null).
subset_er_shape_falsum_subset_falsum_block(null) :- subset_falsum_block(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_falsum_block(null) :- not subset_er_shape_falsum_subset_falsum_block(null).
subset_er_shape_falsum_subset_falsum_table(null) :- subset_falsum_table(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_falsum_table(null) :- not subset_er_shape_falsum_subset_falsum_table(null).
subset_er_shape_falsum_subset_robot_block(null) :- subset_robot_block(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_robot_block(null) :- not subset_er_shape_falsum_subset_robot_block(null).
subset_er_shape_falsum_subset_robot_table(null) :- subset_robot_table(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_robot_table(null) :- not subset_er_shape_falsum_subset_robot_table(null).
subset_er_shape_falsum_subset_block_table(null) :- subset_block_table(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_block_table(null) :- not subset_er_shape_falsum_subset_block_table(null).
subset_er_smaller_robot_er_below_robot(null) :- er_below_robot(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_below_robot(null) :- not subset_er_smaller_robot_er_below_robot(null).
subset_er_smaller_robot_er_left_robot(null) :- er_left_robot(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_left_robot(null) :- not subset_er_smaller_robot_er_left_robot(null).
subset_er_smaller_robot_er_overlap_robot(null) :- er_overlap_robot(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_overlap_robot(null) :- not subset_er_smaller_robot_er_overlap_robot(null).
subset_er_smaller_robot_er_shape_robot(null) :- er_shape_robot(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_shape_robot(null) :- not subset_er_smaller_robot_er_shape_robot(null).
subset_er_smaller_robot_er_smaller_block(null) :- er_smaller_block(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_smaller_block(null) :- not subset_er_smaller_robot_er_smaller_block(null).
subset_er_smaller_robot_er_below_block(null) :- er_below_block(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_below_block(null) :- not subset_er_smaller_robot_er_below_block(null).
subset_er_smaller_robot_er_left_block(null) :- er_left_block(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_left_block(null) :- not subset_er_smaller_robot_er_left_block(null).
subset_er_smaller_robot_er_overlap_block(null) :- er_overlap_block(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_overlap_block(null) :- not subset_er_smaller_robot_er_overlap_block(null).
subset_er_smaller_robot_er_shape_block(null) :- er_shape_block(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_shape_block(null) :- not subset_er_smaller_robot_er_shape_block(null).
subset_er_smaller_robot_er_smaller_table(null) :- er_smaller_table(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_smaller_table(null) :- not subset_er_smaller_robot_er_smaller_table(null).
subset_er_smaller_robot_er_below_table(null) :- er_below_table(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_below_table(null) :- not subset_er_smaller_robot_er_below_table(null).
subset_er_smaller_robot_er_left_table(null) :- er_left_table(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_left_table(null) :- not subset_er_smaller_robot_er_left_table(null).
subset_er_smaller_robot_er_overlap_table(null) :- er_overlap_table(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_overlap_table(null) :- not subset_er_smaller_robot_er_overlap_table(null).
subset_er_smaller_robot_er_shape_table(null) :- er_shape_table(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_er_shape_table(null) :- not subset_er_smaller_robot_er_shape_table(null).
subset_er_smaller_robot_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_inter_verum_falsum(null) :- not subset_er_smaller_robot_inter_verum_falsum(null).
subset_er_smaller_robot_inter_verum_robot(null) :- inter_verum_robot(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_inter_verum_robot(null) :- not subset_er_smaller_robot_inter_verum_robot(null).
subset_er_smaller_robot_inter_verum_block(null) :- inter_verum_block(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_inter_verum_block(null) :- not subset_er_smaller_robot_inter_verum_block(null).
subset_er_smaller_robot_inter_verum_table(null) :- inter_verum_table(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_inter_verum_table(null) :- not subset_er_smaller_robot_inter_verum_table(null).
subset_er_smaller_robot_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_inter_falsum_robot(null) :- not subset_er_smaller_robot_inter_falsum_robot(null).
subset_er_smaller_robot_inter_falsum_block(null) :- inter_falsum_block(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_inter_falsum_block(null) :- not subset_er_smaller_robot_inter_falsum_block(null).
subset_er_smaller_robot_inter_falsum_table(null) :- inter_falsum_table(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_inter_falsum_table(null) :- not subset_er_smaller_robot_inter_falsum_table(null).
subset_er_smaller_robot_inter_robot_block(null) :- inter_robot_block(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_inter_robot_block(null) :- not subset_er_smaller_robot_inter_robot_block(null).
subset_er_smaller_robot_inter_robot_table(null) :- inter_robot_table(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_inter_robot_table(null) :- not subset_er_smaller_robot_inter_robot_table(null).
subset_er_smaller_robot_inter_block_table(null) :- inter_block_table(X0) : er_smaller_robot(X0).
-subset_er_smaller_robot_inter_block_table(null) :- not subset_er_smaller_robot_inter_block_table(null).
subset_er_smaller_robot_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_robot(X0).
-subset_er_smaller_robot_subset_verum_falsum(null) :- not subset_er_smaller_robot_subset_verum_falsum(null).
subset_er_smaller_robot_subset_verum_robot(null) :- subset_verum_robot(null) : er_smaller_robot(X0).
-subset_er_smaller_robot_subset_verum_robot(null) :- not subset_er_smaller_robot_subset_verum_robot(null).
subset_er_smaller_robot_subset_verum_block(null) :- subset_verum_block(null) : er_smaller_robot(X0).
-subset_er_smaller_robot_subset_verum_block(null) :- not subset_er_smaller_robot_subset_verum_block(null).
subset_er_smaller_robot_subset_verum_table(null) :- subset_verum_table(null) : er_smaller_robot(X0).
-subset_er_smaller_robot_subset_verum_table(null) :- not subset_er_smaller_robot_subset_verum_table(null).
subset_er_smaller_robot_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_smaller_robot(X0).
-subset_er_smaller_robot_subset_falsum_robot(null) :- not subset_er_smaller_robot_subset_falsum_robot(null).
subset_er_smaller_robot_subset_falsum_block(null) :- subset_falsum_block(null) : er_smaller_robot(X0).
-subset_er_smaller_robot_subset_falsum_block(null) :- not subset_er_smaller_robot_subset_falsum_block(null).
subset_er_smaller_robot_subset_falsum_table(null) :- subset_falsum_table(null) : er_smaller_robot(X0).
-subset_er_smaller_robot_subset_falsum_table(null) :- not subset_er_smaller_robot_subset_falsum_table(null).
subset_er_smaller_robot_subset_robot_block(null) :- subset_robot_block(null) : er_smaller_robot(X0).
-subset_er_smaller_robot_subset_robot_block(null) :- not subset_er_smaller_robot_subset_robot_block(null).
subset_er_smaller_robot_subset_robot_table(null) :- subset_robot_table(null) : er_smaller_robot(X0).
-subset_er_smaller_robot_subset_robot_table(null) :- not subset_er_smaller_robot_subset_robot_table(null).
subset_er_smaller_robot_subset_block_table(null) :- subset_block_table(null) : er_smaller_robot(X0).
-subset_er_smaller_robot_subset_block_table(null) :- not subset_er_smaller_robot_subset_block_table(null).
subset_er_below_robot_er_left_robot(null) :- er_left_robot(X0) : er_below_robot(X0).
-subset_er_below_robot_er_left_robot(null) :- not subset_er_below_robot_er_left_robot(null).
subset_er_below_robot_er_overlap_robot(null) :- er_overlap_robot(X0) : er_below_robot(X0).
-subset_er_below_robot_er_overlap_robot(null) :- not subset_er_below_robot_er_overlap_robot(null).
subset_er_below_robot_er_shape_robot(null) :- er_shape_robot(X0) : er_below_robot(X0).
-subset_er_below_robot_er_shape_robot(null) :- not subset_er_below_robot_er_shape_robot(null).
subset_er_below_robot_er_smaller_block(null) :- er_smaller_block(X0) : er_below_robot(X0).
-subset_er_below_robot_er_smaller_block(null) :- not subset_er_below_robot_er_smaller_block(null).
subset_er_below_robot_er_below_block(null) :- er_below_block(X0) : er_below_robot(X0).
-subset_er_below_robot_er_below_block(null) :- not subset_er_below_robot_er_below_block(null).
subset_er_below_robot_er_left_block(null) :- er_left_block(X0) : er_below_robot(X0).
-subset_er_below_robot_er_left_block(null) :- not subset_er_below_robot_er_left_block(null).
subset_er_below_robot_er_overlap_block(null) :- er_overlap_block(X0) : er_below_robot(X0).
-subset_er_below_robot_er_overlap_block(null) :- not subset_er_below_robot_er_overlap_block(null).
subset_er_below_robot_er_shape_block(null) :- er_shape_block(X0) : er_below_robot(X0).
-subset_er_below_robot_er_shape_block(null) :- not subset_er_below_robot_er_shape_block(null).
subset_er_below_robot_er_smaller_table(null) :- er_smaller_table(X0) : er_below_robot(X0).
-subset_er_below_robot_er_smaller_table(null) :- not subset_er_below_robot_er_smaller_table(null).
subset_er_below_robot_er_below_table(null) :- er_below_table(X0) : er_below_robot(X0).
-subset_er_below_robot_er_below_table(null) :- not subset_er_below_robot_er_below_table(null).
subset_er_below_robot_er_left_table(null) :- er_left_table(X0) : er_below_robot(X0).
-subset_er_below_robot_er_left_table(null) :- not subset_er_below_robot_er_left_table(null).
subset_er_below_robot_er_overlap_table(null) :- er_overlap_table(X0) : er_below_robot(X0).
-subset_er_below_robot_er_overlap_table(null) :- not subset_er_below_robot_er_overlap_table(null).
subset_er_below_robot_er_shape_table(null) :- er_shape_table(X0) : er_below_robot(X0).
-subset_er_below_robot_er_shape_table(null) :- not subset_er_below_robot_er_shape_table(null).
subset_er_below_robot_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_robot(X0).
-subset_er_below_robot_inter_verum_falsum(null) :- not subset_er_below_robot_inter_verum_falsum(null).
subset_er_below_robot_inter_verum_robot(null) :- inter_verum_robot(X0) : er_below_robot(X0).
-subset_er_below_robot_inter_verum_robot(null) :- not subset_er_below_robot_inter_verum_robot(null).
subset_er_below_robot_inter_verum_block(null) :- inter_verum_block(X0) : er_below_robot(X0).
-subset_er_below_robot_inter_verum_block(null) :- not subset_er_below_robot_inter_verum_block(null).
subset_er_below_robot_inter_verum_table(null) :- inter_verum_table(X0) : er_below_robot(X0).
-subset_er_below_robot_inter_verum_table(null) :- not subset_er_below_robot_inter_verum_table(null).
subset_er_below_robot_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_below_robot(X0).
-subset_er_below_robot_inter_falsum_robot(null) :- not subset_er_below_robot_inter_falsum_robot(null).
subset_er_below_robot_inter_falsum_block(null) :- inter_falsum_block(X0) : er_below_robot(X0).
-subset_er_below_robot_inter_falsum_block(null) :- not subset_er_below_robot_inter_falsum_block(null).
subset_er_below_robot_inter_falsum_table(null) :- inter_falsum_table(X0) : er_below_robot(X0).
-subset_er_below_robot_inter_falsum_table(null) :- not subset_er_below_robot_inter_falsum_table(null).
subset_er_below_robot_inter_robot_block(null) :- inter_robot_block(X0) : er_below_robot(X0).
-subset_er_below_robot_inter_robot_block(null) :- not subset_er_below_robot_inter_robot_block(null).
subset_er_below_robot_inter_robot_table(null) :- inter_robot_table(X0) : er_below_robot(X0).
-subset_er_below_robot_inter_robot_table(null) :- not subset_er_below_robot_inter_robot_table(null).
subset_er_below_robot_inter_block_table(null) :- inter_block_table(X0) : er_below_robot(X0).
-subset_er_below_robot_inter_block_table(null) :- not subset_er_below_robot_inter_block_table(null).
subset_er_below_robot_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_robot(X0).
-subset_er_below_robot_subset_verum_falsum(null) :- not subset_er_below_robot_subset_verum_falsum(null).
subset_er_below_robot_subset_verum_robot(null) :- subset_verum_robot(null) : er_below_robot(X0).
-subset_er_below_robot_subset_verum_robot(null) :- not subset_er_below_robot_subset_verum_robot(null).
subset_er_below_robot_subset_verum_block(null) :- subset_verum_block(null) : er_below_robot(X0).
-subset_er_below_robot_subset_verum_block(null) :- not subset_er_below_robot_subset_verum_block(null).
subset_er_below_robot_subset_verum_table(null) :- subset_verum_table(null) : er_below_robot(X0).
-subset_er_below_robot_subset_verum_table(null) :- not subset_er_below_robot_subset_verum_table(null).
subset_er_below_robot_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_below_robot(X0).
-subset_er_below_robot_subset_falsum_robot(null) :- not subset_er_below_robot_subset_falsum_robot(null).
subset_er_below_robot_subset_falsum_block(null) :- subset_falsum_block(null) : er_below_robot(X0).
-subset_er_below_robot_subset_falsum_block(null) :- not subset_er_below_robot_subset_falsum_block(null).
subset_er_below_robot_subset_falsum_table(null) :- subset_falsum_table(null) : er_below_robot(X0).
-subset_er_below_robot_subset_falsum_table(null) :- not subset_er_below_robot_subset_falsum_table(null).
subset_er_below_robot_subset_robot_block(null) :- subset_robot_block(null) : er_below_robot(X0).
-subset_er_below_robot_subset_robot_block(null) :- not subset_er_below_robot_subset_robot_block(null).
subset_er_below_robot_subset_robot_table(null) :- subset_robot_table(null) : er_below_robot(X0).
-subset_er_below_robot_subset_robot_table(null) :- not subset_er_below_robot_subset_robot_table(null).
subset_er_below_robot_subset_block_table(null) :- subset_block_table(null) : er_below_robot(X0).
-subset_er_below_robot_subset_block_table(null) :- not subset_er_below_robot_subset_block_table(null).
subset_er_left_robot_er_overlap_robot(null) :- er_overlap_robot(X0) : er_left_robot(X0).
-subset_er_left_robot_er_overlap_robot(null) :- not subset_er_left_robot_er_overlap_robot(null).
subset_er_left_robot_er_shape_robot(null) :- er_shape_robot(X0) : er_left_robot(X0).
-subset_er_left_robot_er_shape_robot(null) :- not subset_er_left_robot_er_shape_robot(null).
subset_er_left_robot_er_smaller_block(null) :- er_smaller_block(X0) : er_left_robot(X0).
-subset_er_left_robot_er_smaller_block(null) :- not subset_er_left_robot_er_smaller_block(null).
subset_er_left_robot_er_below_block(null) :- er_below_block(X0) : er_left_robot(X0).
-subset_er_left_robot_er_below_block(null) :- not subset_er_left_robot_er_below_block(null).
subset_er_left_robot_er_left_block(null) :- er_left_block(X0) : er_left_robot(X0).
-subset_er_left_robot_er_left_block(null) :- not subset_er_left_robot_er_left_block(null).
subset_er_left_robot_er_overlap_block(null) :- er_overlap_block(X0) : er_left_robot(X0).
-subset_er_left_robot_er_overlap_block(null) :- not subset_er_left_robot_er_overlap_block(null).
subset_er_left_robot_er_shape_block(null) :- er_shape_block(X0) : er_left_robot(X0).
-subset_er_left_robot_er_shape_block(null) :- not subset_er_left_robot_er_shape_block(null).
subset_er_left_robot_er_smaller_table(null) :- er_smaller_table(X0) : er_left_robot(X0).
-subset_er_left_robot_er_smaller_table(null) :- not subset_er_left_robot_er_smaller_table(null).
subset_er_left_robot_er_below_table(null) :- er_below_table(X0) : er_left_robot(X0).
-subset_er_left_robot_er_below_table(null) :- not subset_er_left_robot_er_below_table(null).
subset_er_left_robot_er_left_table(null) :- er_left_table(X0) : er_left_robot(X0).
-subset_er_left_robot_er_left_table(null) :- not subset_er_left_robot_er_left_table(null).
subset_er_left_robot_er_overlap_table(null) :- er_overlap_table(X0) : er_left_robot(X0).
-subset_er_left_robot_er_overlap_table(null) :- not subset_er_left_robot_er_overlap_table(null).
subset_er_left_robot_er_shape_table(null) :- er_shape_table(X0) : er_left_robot(X0).
-subset_er_left_robot_er_shape_table(null) :- not subset_er_left_robot_er_shape_table(null).
subset_er_left_robot_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_robot(X0).
-subset_er_left_robot_inter_verum_falsum(null) :- not subset_er_left_robot_inter_verum_falsum(null).
subset_er_left_robot_inter_verum_robot(null) :- inter_verum_robot(X0) : er_left_robot(X0).
-subset_er_left_robot_inter_verum_robot(null) :- not subset_er_left_robot_inter_verum_robot(null).
subset_er_left_robot_inter_verum_block(null) :- inter_verum_block(X0) : er_left_robot(X0).
-subset_er_left_robot_inter_verum_block(null) :- not subset_er_left_robot_inter_verum_block(null).
subset_er_left_robot_inter_verum_table(null) :- inter_verum_table(X0) : er_left_robot(X0).
-subset_er_left_robot_inter_verum_table(null) :- not subset_er_left_robot_inter_verum_table(null).
subset_er_left_robot_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_left_robot(X0).
-subset_er_left_robot_inter_falsum_robot(null) :- not subset_er_left_robot_inter_falsum_robot(null).
subset_er_left_robot_inter_falsum_block(null) :- inter_falsum_block(X0) : er_left_robot(X0).
-subset_er_left_robot_inter_falsum_block(null) :- not subset_er_left_robot_inter_falsum_block(null).
subset_er_left_robot_inter_falsum_table(null) :- inter_falsum_table(X0) : er_left_robot(X0).
-subset_er_left_robot_inter_falsum_table(null) :- not subset_er_left_robot_inter_falsum_table(null).
subset_er_left_robot_inter_robot_block(null) :- inter_robot_block(X0) : er_left_robot(X0).
-subset_er_left_robot_inter_robot_block(null) :- not subset_er_left_robot_inter_robot_block(null).
subset_er_left_robot_inter_robot_table(null) :- inter_robot_table(X0) : er_left_robot(X0).
-subset_er_left_robot_inter_robot_table(null) :- not subset_er_left_robot_inter_robot_table(null).
subset_er_left_robot_inter_block_table(null) :- inter_block_table(X0) : er_left_robot(X0).
-subset_er_left_robot_inter_block_table(null) :- not subset_er_left_robot_inter_block_table(null).
subset_er_left_robot_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_robot(X0).
-subset_er_left_robot_subset_verum_falsum(null) :- not subset_er_left_robot_subset_verum_falsum(null).
subset_er_left_robot_subset_verum_robot(null) :- subset_verum_robot(null) : er_left_robot(X0).
-subset_er_left_robot_subset_verum_robot(null) :- not subset_er_left_robot_subset_verum_robot(null).
subset_er_left_robot_subset_verum_block(null) :- subset_verum_block(null) : er_left_robot(X0).
-subset_er_left_robot_subset_verum_block(null) :- not subset_er_left_robot_subset_verum_block(null).
subset_er_left_robot_subset_verum_table(null) :- subset_verum_table(null) : er_left_robot(X0).
-subset_er_left_robot_subset_verum_table(null) :- not subset_er_left_robot_subset_verum_table(null).
subset_er_left_robot_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_left_robot(X0).
-subset_er_left_robot_subset_falsum_robot(null) :- not subset_er_left_robot_subset_falsum_robot(null).
subset_er_left_robot_subset_falsum_block(null) :- subset_falsum_block(null) : er_left_robot(X0).
-subset_er_left_robot_subset_falsum_block(null) :- not subset_er_left_robot_subset_falsum_block(null).
subset_er_left_robot_subset_falsum_table(null) :- subset_falsum_table(null) : er_left_robot(X0).
-subset_er_left_robot_subset_falsum_table(null) :- not subset_er_left_robot_subset_falsum_table(null).
subset_er_left_robot_subset_robot_block(null) :- subset_robot_block(null) : er_left_robot(X0).
-subset_er_left_robot_subset_robot_block(null) :- not subset_er_left_robot_subset_robot_block(null).
subset_er_left_robot_subset_robot_table(null) :- subset_robot_table(null) : er_left_robot(X0).
-subset_er_left_robot_subset_robot_table(null) :- not subset_er_left_robot_subset_robot_table(null).
subset_er_left_robot_subset_block_table(null) :- subset_block_table(null) : er_left_robot(X0).
-subset_er_left_robot_subset_block_table(null) :- not subset_er_left_robot_subset_block_table(null).
subset_er_overlap_robot_er_shape_robot(null) :- er_shape_robot(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_shape_robot(null) :- not subset_er_overlap_robot_er_shape_robot(null).
subset_er_overlap_robot_er_smaller_block(null) :- er_smaller_block(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_smaller_block(null) :- not subset_er_overlap_robot_er_smaller_block(null).
subset_er_overlap_robot_er_below_block(null) :- er_below_block(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_below_block(null) :- not subset_er_overlap_robot_er_below_block(null).
subset_er_overlap_robot_er_left_block(null) :- er_left_block(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_left_block(null) :- not subset_er_overlap_robot_er_left_block(null).
subset_er_overlap_robot_er_overlap_block(null) :- er_overlap_block(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_overlap_block(null) :- not subset_er_overlap_robot_er_overlap_block(null).
subset_er_overlap_robot_er_shape_block(null) :- er_shape_block(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_shape_block(null) :- not subset_er_overlap_robot_er_shape_block(null).
subset_er_overlap_robot_er_smaller_table(null) :- er_smaller_table(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_smaller_table(null) :- not subset_er_overlap_robot_er_smaller_table(null).
subset_er_overlap_robot_er_below_table(null) :- er_below_table(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_below_table(null) :- not subset_er_overlap_robot_er_below_table(null).
subset_er_overlap_robot_er_left_table(null) :- er_left_table(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_left_table(null) :- not subset_er_overlap_robot_er_left_table(null).
subset_er_overlap_robot_er_overlap_table(null) :- er_overlap_table(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_overlap_table(null) :- not subset_er_overlap_robot_er_overlap_table(null).
subset_er_overlap_robot_er_shape_table(null) :- er_shape_table(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_er_shape_table(null) :- not subset_er_overlap_robot_er_shape_table(null).
subset_er_overlap_robot_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_inter_verum_falsum(null) :- not subset_er_overlap_robot_inter_verum_falsum(null).
subset_er_overlap_robot_inter_verum_robot(null) :- inter_verum_robot(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_inter_verum_robot(null) :- not subset_er_overlap_robot_inter_verum_robot(null).
subset_er_overlap_robot_inter_verum_block(null) :- inter_verum_block(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_inter_verum_block(null) :- not subset_er_overlap_robot_inter_verum_block(null).
subset_er_overlap_robot_inter_verum_table(null) :- inter_verum_table(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_inter_verum_table(null) :- not subset_er_overlap_robot_inter_verum_table(null).
subset_er_overlap_robot_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_inter_falsum_robot(null) :- not subset_er_overlap_robot_inter_falsum_robot(null).
subset_er_overlap_robot_inter_falsum_block(null) :- inter_falsum_block(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_inter_falsum_block(null) :- not subset_er_overlap_robot_inter_falsum_block(null).
subset_er_overlap_robot_inter_falsum_table(null) :- inter_falsum_table(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_inter_falsum_table(null) :- not subset_er_overlap_robot_inter_falsum_table(null).
subset_er_overlap_robot_inter_robot_block(null) :- inter_robot_block(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_inter_robot_block(null) :- not subset_er_overlap_robot_inter_robot_block(null).
subset_er_overlap_robot_inter_robot_table(null) :- inter_robot_table(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_inter_robot_table(null) :- not subset_er_overlap_robot_inter_robot_table(null).
subset_er_overlap_robot_inter_block_table(null) :- inter_block_table(X0) : er_overlap_robot(X0).
-subset_er_overlap_robot_inter_block_table(null) :- not subset_er_overlap_robot_inter_block_table(null).
subset_er_overlap_robot_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_robot(X0).
-subset_er_overlap_robot_subset_verum_falsum(null) :- not subset_er_overlap_robot_subset_verum_falsum(null).
subset_er_overlap_robot_subset_verum_robot(null) :- subset_verum_robot(null) : er_overlap_robot(X0).
-subset_er_overlap_robot_subset_verum_robot(null) :- not subset_er_overlap_robot_subset_verum_robot(null).
subset_er_overlap_robot_subset_verum_block(null) :- subset_verum_block(null) : er_overlap_robot(X0).
-subset_er_overlap_robot_subset_verum_block(null) :- not subset_er_overlap_robot_subset_verum_block(null).
subset_er_overlap_robot_subset_verum_table(null) :- subset_verum_table(null) : er_overlap_robot(X0).
-subset_er_overlap_robot_subset_verum_table(null) :- not subset_er_overlap_robot_subset_verum_table(null).
subset_er_overlap_robot_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_overlap_robot(X0).
-subset_er_overlap_robot_subset_falsum_robot(null) :- not subset_er_overlap_robot_subset_falsum_robot(null).
subset_er_overlap_robot_subset_falsum_block(null) :- subset_falsum_block(null) : er_overlap_robot(X0).
-subset_er_overlap_robot_subset_falsum_block(null) :- not subset_er_overlap_robot_subset_falsum_block(null).
subset_er_overlap_robot_subset_falsum_table(null) :- subset_falsum_table(null) : er_overlap_robot(X0).
-subset_er_overlap_robot_subset_falsum_table(null) :- not subset_er_overlap_robot_subset_falsum_table(null).
subset_er_overlap_robot_subset_robot_block(null) :- subset_robot_block(null) : er_overlap_robot(X0).
-subset_er_overlap_robot_subset_robot_block(null) :- not subset_er_overlap_robot_subset_robot_block(null).
subset_er_overlap_robot_subset_robot_table(null) :- subset_robot_table(null) : er_overlap_robot(X0).
-subset_er_overlap_robot_subset_robot_table(null) :- not subset_er_overlap_robot_subset_robot_table(null).
subset_er_overlap_robot_subset_block_table(null) :- subset_block_table(null) : er_overlap_robot(X0).
-subset_er_overlap_robot_subset_block_table(null) :- not subset_er_overlap_robot_subset_block_table(null).
subset_er_shape_robot_er_smaller_block(null) :- er_smaller_block(X0) : er_shape_robot(X0).
-subset_er_shape_robot_er_smaller_block(null) :- not subset_er_shape_robot_er_smaller_block(null).
subset_er_shape_robot_er_below_block(null) :- er_below_block(X0) : er_shape_robot(X0).
-subset_er_shape_robot_er_below_block(null) :- not subset_er_shape_robot_er_below_block(null).
subset_er_shape_robot_er_left_block(null) :- er_left_block(X0) : er_shape_robot(X0).
-subset_er_shape_robot_er_left_block(null) :- not subset_er_shape_robot_er_left_block(null).
subset_er_shape_robot_er_overlap_block(null) :- er_overlap_block(X0) : er_shape_robot(X0).
-subset_er_shape_robot_er_overlap_block(null) :- not subset_er_shape_robot_er_overlap_block(null).
subset_er_shape_robot_er_shape_block(null) :- er_shape_block(X0) : er_shape_robot(X0).
-subset_er_shape_robot_er_shape_block(null) :- not subset_er_shape_robot_er_shape_block(null).
subset_er_shape_robot_er_smaller_table(null) :- er_smaller_table(X0) : er_shape_robot(X0).
-subset_er_shape_robot_er_smaller_table(null) :- not subset_er_shape_robot_er_smaller_table(null).
subset_er_shape_robot_er_below_table(null) :- er_below_table(X0) : er_shape_robot(X0).
-subset_er_shape_robot_er_below_table(null) :- not subset_er_shape_robot_er_below_table(null).
subset_er_shape_robot_er_left_table(null) :- er_left_table(X0) : er_shape_robot(X0).
-subset_er_shape_robot_er_left_table(null) :- not subset_er_shape_robot_er_left_table(null).
subset_er_shape_robot_er_overlap_table(null) :- er_overlap_table(X0) : er_shape_robot(X0).
-subset_er_shape_robot_er_overlap_table(null) :- not subset_er_shape_robot_er_overlap_table(null).
subset_er_shape_robot_er_shape_table(null) :- er_shape_table(X0) : er_shape_robot(X0).
-subset_er_shape_robot_er_shape_table(null) :- not subset_er_shape_robot_er_shape_table(null).
subset_er_shape_robot_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_robot(X0).
-subset_er_shape_robot_inter_verum_falsum(null) :- not subset_er_shape_robot_inter_verum_falsum(null).
subset_er_shape_robot_inter_verum_robot(null) :- inter_verum_robot(X0) : er_shape_robot(X0).
-subset_er_shape_robot_inter_verum_robot(null) :- not subset_er_shape_robot_inter_verum_robot(null).
subset_er_shape_robot_inter_verum_block(null) :- inter_verum_block(X0) : er_shape_robot(X0).
-subset_er_shape_robot_inter_verum_block(null) :- not subset_er_shape_robot_inter_verum_block(null).
subset_er_shape_robot_inter_verum_table(null) :- inter_verum_table(X0) : er_shape_robot(X0).
-subset_er_shape_robot_inter_verum_table(null) :- not subset_er_shape_robot_inter_verum_table(null).
subset_er_shape_robot_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_shape_robot(X0).
-subset_er_shape_robot_inter_falsum_robot(null) :- not subset_er_shape_robot_inter_falsum_robot(null).
subset_er_shape_robot_inter_falsum_block(null) :- inter_falsum_block(X0) : er_shape_robot(X0).
-subset_er_shape_robot_inter_falsum_block(null) :- not subset_er_shape_robot_inter_falsum_block(null).
subset_er_shape_robot_inter_falsum_table(null) :- inter_falsum_table(X0) : er_shape_robot(X0).
-subset_er_shape_robot_inter_falsum_table(null) :- not subset_er_shape_robot_inter_falsum_table(null).
subset_er_shape_robot_inter_robot_block(null) :- inter_robot_block(X0) : er_shape_robot(X0).
-subset_er_shape_robot_inter_robot_block(null) :- not subset_er_shape_robot_inter_robot_block(null).
subset_er_shape_robot_inter_robot_table(null) :- inter_robot_table(X0) : er_shape_robot(X0).
-subset_er_shape_robot_inter_robot_table(null) :- not subset_er_shape_robot_inter_robot_table(null).
subset_er_shape_robot_inter_block_table(null) :- inter_block_table(X0) : er_shape_robot(X0).
-subset_er_shape_robot_inter_block_table(null) :- not subset_er_shape_robot_inter_block_table(null).
subset_er_shape_robot_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_robot(X0).
-subset_er_shape_robot_subset_verum_falsum(null) :- not subset_er_shape_robot_subset_verum_falsum(null).
subset_er_shape_robot_subset_verum_robot(null) :- subset_verum_robot(null) : er_shape_robot(X0).
-subset_er_shape_robot_subset_verum_robot(null) :- not subset_er_shape_robot_subset_verum_robot(null).
subset_er_shape_robot_subset_verum_block(null) :- subset_verum_block(null) : er_shape_robot(X0).
-subset_er_shape_robot_subset_verum_block(null) :- not subset_er_shape_robot_subset_verum_block(null).
subset_er_shape_robot_subset_verum_table(null) :- subset_verum_table(null) : er_shape_robot(X0).
-subset_er_shape_robot_subset_verum_table(null) :- not subset_er_shape_robot_subset_verum_table(null).
subset_er_shape_robot_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_shape_robot(X0).
-subset_er_shape_robot_subset_falsum_robot(null) :- not subset_er_shape_robot_subset_falsum_robot(null).
subset_er_shape_robot_subset_falsum_block(null) :- subset_falsum_block(null) : er_shape_robot(X0).
-subset_er_shape_robot_subset_falsum_block(null) :- not subset_er_shape_robot_subset_falsum_block(null).
subset_er_shape_robot_subset_falsum_table(null) :- subset_falsum_table(null) : er_shape_robot(X0).
-subset_er_shape_robot_subset_falsum_table(null) :- not subset_er_shape_robot_subset_falsum_table(null).
subset_er_shape_robot_subset_robot_block(null) :- subset_robot_block(null) : er_shape_robot(X0).
-subset_er_shape_robot_subset_robot_block(null) :- not subset_er_shape_robot_subset_robot_block(null).
subset_er_shape_robot_subset_robot_table(null) :- subset_robot_table(null) : er_shape_robot(X0).
-subset_er_shape_robot_subset_robot_table(null) :- not subset_er_shape_robot_subset_robot_table(null).
subset_er_shape_robot_subset_block_table(null) :- subset_block_table(null) : er_shape_robot(X0).
-subset_er_shape_robot_subset_block_table(null) :- not subset_er_shape_robot_subset_block_table(null).
subset_er_smaller_block_er_below_block(null) :- er_below_block(X0) : er_smaller_block(X0).
-subset_er_smaller_block_er_below_block(null) :- not subset_er_smaller_block_er_below_block(null).
subset_er_smaller_block_er_left_block(null) :- er_left_block(X0) : er_smaller_block(X0).
-subset_er_smaller_block_er_left_block(null) :- not subset_er_smaller_block_er_left_block(null).
subset_er_smaller_block_er_overlap_block(null) :- er_overlap_block(X0) : er_smaller_block(X0).
-subset_er_smaller_block_er_overlap_block(null) :- not subset_er_smaller_block_er_overlap_block(null).
subset_er_smaller_block_er_shape_block(null) :- er_shape_block(X0) : er_smaller_block(X0).
-subset_er_smaller_block_er_shape_block(null) :- not subset_er_smaller_block_er_shape_block(null).
subset_er_smaller_block_er_smaller_table(null) :- er_smaller_table(X0) : er_smaller_block(X0).
-subset_er_smaller_block_er_smaller_table(null) :- not subset_er_smaller_block_er_smaller_table(null).
subset_er_smaller_block_er_below_table(null) :- er_below_table(X0) : er_smaller_block(X0).
-subset_er_smaller_block_er_below_table(null) :- not subset_er_smaller_block_er_below_table(null).
subset_er_smaller_block_er_left_table(null) :- er_left_table(X0) : er_smaller_block(X0).
-subset_er_smaller_block_er_left_table(null) :- not subset_er_smaller_block_er_left_table(null).
subset_er_smaller_block_er_overlap_table(null) :- er_overlap_table(X0) : er_smaller_block(X0).
-subset_er_smaller_block_er_overlap_table(null) :- not subset_er_smaller_block_er_overlap_table(null).
subset_er_smaller_block_er_shape_table(null) :- er_shape_table(X0) : er_smaller_block(X0).
-subset_er_smaller_block_er_shape_table(null) :- not subset_er_smaller_block_er_shape_table(null).
subset_er_smaller_block_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_block(X0).
-subset_er_smaller_block_inter_verum_falsum(null) :- not subset_er_smaller_block_inter_verum_falsum(null).
subset_er_smaller_block_inter_verum_robot(null) :- inter_verum_robot(X0) : er_smaller_block(X0).
-subset_er_smaller_block_inter_verum_robot(null) :- not subset_er_smaller_block_inter_verum_robot(null).
subset_er_smaller_block_inter_verum_block(null) :- inter_verum_block(X0) : er_smaller_block(X0).
-subset_er_smaller_block_inter_verum_block(null) :- not subset_er_smaller_block_inter_verum_block(null).
subset_er_smaller_block_inter_verum_table(null) :- inter_verum_table(X0) : er_smaller_block(X0).
-subset_er_smaller_block_inter_verum_table(null) :- not subset_er_smaller_block_inter_verum_table(null).
subset_er_smaller_block_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_smaller_block(X0).
-subset_er_smaller_block_inter_falsum_robot(null) :- not subset_er_smaller_block_inter_falsum_robot(null).
subset_er_smaller_block_inter_falsum_block(null) :- inter_falsum_block(X0) : er_smaller_block(X0).
-subset_er_smaller_block_inter_falsum_block(null) :- not subset_er_smaller_block_inter_falsum_block(null).
subset_er_smaller_block_inter_falsum_table(null) :- inter_falsum_table(X0) : er_smaller_block(X0).
-subset_er_smaller_block_inter_falsum_table(null) :- not subset_er_smaller_block_inter_falsum_table(null).
subset_er_smaller_block_inter_robot_block(null) :- inter_robot_block(X0) : er_smaller_block(X0).
-subset_er_smaller_block_inter_robot_block(null) :- not subset_er_smaller_block_inter_robot_block(null).
subset_er_smaller_block_inter_robot_table(null) :- inter_robot_table(X0) : er_smaller_block(X0).
-subset_er_smaller_block_inter_robot_table(null) :- not subset_er_smaller_block_inter_robot_table(null).
subset_er_smaller_block_inter_block_table(null) :- inter_block_table(X0) : er_smaller_block(X0).
-subset_er_smaller_block_inter_block_table(null) :- not subset_er_smaller_block_inter_block_table(null).
subset_er_smaller_block_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_block(X0).
-subset_er_smaller_block_subset_verum_falsum(null) :- not subset_er_smaller_block_subset_verum_falsum(null).
subset_er_smaller_block_subset_verum_robot(null) :- subset_verum_robot(null) : er_smaller_block(X0).
-subset_er_smaller_block_subset_verum_robot(null) :- not subset_er_smaller_block_subset_verum_robot(null).
subset_er_smaller_block_subset_verum_block(null) :- subset_verum_block(null) : er_smaller_block(X0).
-subset_er_smaller_block_subset_verum_block(null) :- not subset_er_smaller_block_subset_verum_block(null).
subset_er_smaller_block_subset_verum_table(null) :- subset_verum_table(null) : er_smaller_block(X0).
-subset_er_smaller_block_subset_verum_table(null) :- not subset_er_smaller_block_subset_verum_table(null).
subset_er_smaller_block_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_smaller_block(X0).
-subset_er_smaller_block_subset_falsum_robot(null) :- not subset_er_smaller_block_subset_falsum_robot(null).
subset_er_smaller_block_subset_falsum_block(null) :- subset_falsum_block(null) : er_smaller_block(X0).
-subset_er_smaller_block_subset_falsum_block(null) :- not subset_er_smaller_block_subset_falsum_block(null).
subset_er_smaller_block_subset_falsum_table(null) :- subset_falsum_table(null) : er_smaller_block(X0).
-subset_er_smaller_block_subset_falsum_table(null) :- not subset_er_smaller_block_subset_falsum_table(null).
subset_er_smaller_block_subset_robot_block(null) :- subset_robot_block(null) : er_smaller_block(X0).
-subset_er_smaller_block_subset_robot_block(null) :- not subset_er_smaller_block_subset_robot_block(null).
subset_er_smaller_block_subset_robot_table(null) :- subset_robot_table(null) : er_smaller_block(X0).
-subset_er_smaller_block_subset_robot_table(null) :- not subset_er_smaller_block_subset_robot_table(null).
subset_er_smaller_block_subset_block_table(null) :- subset_block_table(null) : er_smaller_block(X0).
-subset_er_smaller_block_subset_block_table(null) :- not subset_er_smaller_block_subset_block_table(null).
subset_er_below_block_er_left_block(null) :- er_left_block(X0) : er_below_block(X0).
-subset_er_below_block_er_left_block(null) :- not subset_er_below_block_er_left_block(null).
subset_er_below_block_er_overlap_block(null) :- er_overlap_block(X0) : er_below_block(X0).
-subset_er_below_block_er_overlap_block(null) :- not subset_er_below_block_er_overlap_block(null).
subset_er_below_block_er_shape_block(null) :- er_shape_block(X0) : er_below_block(X0).
-subset_er_below_block_er_shape_block(null) :- not subset_er_below_block_er_shape_block(null).
subset_er_below_block_er_smaller_table(null) :- er_smaller_table(X0) : er_below_block(X0).
-subset_er_below_block_er_smaller_table(null) :- not subset_er_below_block_er_smaller_table(null).
subset_er_below_block_er_below_table(null) :- er_below_table(X0) : er_below_block(X0).
-subset_er_below_block_er_below_table(null) :- not subset_er_below_block_er_below_table(null).
subset_er_below_block_er_left_table(null) :- er_left_table(X0) : er_below_block(X0).
-subset_er_below_block_er_left_table(null) :- not subset_er_below_block_er_left_table(null).
subset_er_below_block_er_overlap_table(null) :- er_overlap_table(X0) : er_below_block(X0).
-subset_er_below_block_er_overlap_table(null) :- not subset_er_below_block_er_overlap_table(null).
subset_er_below_block_er_shape_table(null) :- er_shape_table(X0) : er_below_block(X0).
-subset_er_below_block_er_shape_table(null) :- not subset_er_below_block_er_shape_table(null).
subset_er_below_block_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_block(X0).
-subset_er_below_block_inter_verum_falsum(null) :- not subset_er_below_block_inter_verum_falsum(null).
subset_er_below_block_inter_verum_robot(null) :- inter_verum_robot(X0) : er_below_block(X0).
-subset_er_below_block_inter_verum_robot(null) :- not subset_er_below_block_inter_verum_robot(null).
subset_er_below_block_inter_verum_block(null) :- inter_verum_block(X0) : er_below_block(X0).
-subset_er_below_block_inter_verum_block(null) :- not subset_er_below_block_inter_verum_block(null).
subset_er_below_block_inter_verum_table(null) :- inter_verum_table(X0) : er_below_block(X0).
-subset_er_below_block_inter_verum_table(null) :- not subset_er_below_block_inter_verum_table(null).
subset_er_below_block_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_below_block(X0).
-subset_er_below_block_inter_falsum_robot(null) :- not subset_er_below_block_inter_falsum_robot(null).
subset_er_below_block_inter_falsum_block(null) :- inter_falsum_block(X0) : er_below_block(X0).
-subset_er_below_block_inter_falsum_block(null) :- not subset_er_below_block_inter_falsum_block(null).
subset_er_below_block_inter_falsum_table(null) :- inter_falsum_table(X0) : er_below_block(X0).
-subset_er_below_block_inter_falsum_table(null) :- not subset_er_below_block_inter_falsum_table(null).
subset_er_below_block_inter_robot_block(null) :- inter_robot_block(X0) : er_below_block(X0).
-subset_er_below_block_inter_robot_block(null) :- not subset_er_below_block_inter_robot_block(null).
subset_er_below_block_inter_robot_table(null) :- inter_robot_table(X0) : er_below_block(X0).
-subset_er_below_block_inter_robot_table(null) :- not subset_er_below_block_inter_robot_table(null).
subset_er_below_block_inter_block_table(null) :- inter_block_table(X0) : er_below_block(X0).
-subset_er_below_block_inter_block_table(null) :- not subset_er_below_block_inter_block_table(null).
subset_er_below_block_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_block(X0).
-subset_er_below_block_subset_verum_falsum(null) :- not subset_er_below_block_subset_verum_falsum(null).
subset_er_below_block_subset_verum_robot(null) :- subset_verum_robot(null) : er_below_block(X0).
-subset_er_below_block_subset_verum_robot(null) :- not subset_er_below_block_subset_verum_robot(null).
subset_er_below_block_subset_verum_block(null) :- subset_verum_block(null) : er_below_block(X0).
-subset_er_below_block_subset_verum_block(null) :- not subset_er_below_block_subset_verum_block(null).
subset_er_below_block_subset_verum_table(null) :- subset_verum_table(null) : er_below_block(X0).
-subset_er_below_block_subset_verum_table(null) :- not subset_er_below_block_subset_verum_table(null).
subset_er_below_block_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_below_block(X0).
-subset_er_below_block_subset_falsum_robot(null) :- not subset_er_below_block_subset_falsum_robot(null).
subset_er_below_block_subset_falsum_block(null) :- subset_falsum_block(null) : er_below_block(X0).
-subset_er_below_block_subset_falsum_block(null) :- not subset_er_below_block_subset_falsum_block(null).
subset_er_below_block_subset_falsum_table(null) :- subset_falsum_table(null) : er_below_block(X0).
-subset_er_below_block_subset_falsum_table(null) :- not subset_er_below_block_subset_falsum_table(null).
subset_er_below_block_subset_robot_block(null) :- subset_robot_block(null) : er_below_block(X0).
-subset_er_below_block_subset_robot_block(null) :- not subset_er_below_block_subset_robot_block(null).
subset_er_below_block_subset_robot_table(null) :- subset_robot_table(null) : er_below_block(X0).
-subset_er_below_block_subset_robot_table(null) :- not subset_er_below_block_subset_robot_table(null).
subset_er_below_block_subset_block_table(null) :- subset_block_table(null) : er_below_block(X0).
-subset_er_below_block_subset_block_table(null) :- not subset_er_below_block_subset_block_table(null).
subset_er_left_block_er_overlap_block(null) :- er_overlap_block(X0) : er_left_block(X0).
-subset_er_left_block_er_overlap_block(null) :- not subset_er_left_block_er_overlap_block(null).
subset_er_left_block_er_shape_block(null) :- er_shape_block(X0) : er_left_block(X0).
-subset_er_left_block_er_shape_block(null) :- not subset_er_left_block_er_shape_block(null).
subset_er_left_block_er_smaller_table(null) :- er_smaller_table(X0) : er_left_block(X0).
-subset_er_left_block_er_smaller_table(null) :- not subset_er_left_block_er_smaller_table(null).
subset_er_left_block_er_below_table(null) :- er_below_table(X0) : er_left_block(X0).
-subset_er_left_block_er_below_table(null) :- not subset_er_left_block_er_below_table(null).
subset_er_left_block_er_left_table(null) :- er_left_table(X0) : er_left_block(X0).
-subset_er_left_block_er_left_table(null) :- not subset_er_left_block_er_left_table(null).
subset_er_left_block_er_overlap_table(null) :- er_overlap_table(X0) : er_left_block(X0).
-subset_er_left_block_er_overlap_table(null) :- not subset_er_left_block_er_overlap_table(null).
subset_er_left_block_er_shape_table(null) :- er_shape_table(X0) : er_left_block(X0).
-subset_er_left_block_er_shape_table(null) :- not subset_er_left_block_er_shape_table(null).
subset_er_left_block_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_block(X0).
-subset_er_left_block_inter_verum_falsum(null) :- not subset_er_left_block_inter_verum_falsum(null).
subset_er_left_block_inter_verum_robot(null) :- inter_verum_robot(X0) : er_left_block(X0).
-subset_er_left_block_inter_verum_robot(null) :- not subset_er_left_block_inter_verum_robot(null).
subset_er_left_block_inter_verum_block(null) :- inter_verum_block(X0) : er_left_block(X0).
-subset_er_left_block_inter_verum_block(null) :- not subset_er_left_block_inter_verum_block(null).
subset_er_left_block_inter_verum_table(null) :- inter_verum_table(X0) : er_left_block(X0).
-subset_er_left_block_inter_verum_table(null) :- not subset_er_left_block_inter_verum_table(null).
subset_er_left_block_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_left_block(X0).
-subset_er_left_block_inter_falsum_robot(null) :- not subset_er_left_block_inter_falsum_robot(null).
subset_er_left_block_inter_falsum_block(null) :- inter_falsum_block(X0) : er_left_block(X0).
-subset_er_left_block_inter_falsum_block(null) :- not subset_er_left_block_inter_falsum_block(null).
subset_er_left_block_inter_falsum_table(null) :- inter_falsum_table(X0) : er_left_block(X0).
-subset_er_left_block_inter_falsum_table(null) :- not subset_er_left_block_inter_falsum_table(null).
subset_er_left_block_inter_robot_block(null) :- inter_robot_block(X0) : er_left_block(X0).
-subset_er_left_block_inter_robot_block(null) :- not subset_er_left_block_inter_robot_block(null).
subset_er_left_block_inter_robot_table(null) :- inter_robot_table(X0) : er_left_block(X0).
-subset_er_left_block_inter_robot_table(null) :- not subset_er_left_block_inter_robot_table(null).
subset_er_left_block_inter_block_table(null) :- inter_block_table(X0) : er_left_block(X0).
-subset_er_left_block_inter_block_table(null) :- not subset_er_left_block_inter_block_table(null).
subset_er_left_block_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_block(X0).
-subset_er_left_block_subset_verum_falsum(null) :- not subset_er_left_block_subset_verum_falsum(null).
subset_er_left_block_subset_verum_robot(null) :- subset_verum_robot(null) : er_left_block(X0).
-subset_er_left_block_subset_verum_robot(null) :- not subset_er_left_block_subset_verum_robot(null).
subset_er_left_block_subset_verum_block(null) :- subset_verum_block(null) : er_left_block(X0).
-subset_er_left_block_subset_verum_block(null) :- not subset_er_left_block_subset_verum_block(null).
subset_er_left_block_subset_verum_table(null) :- subset_verum_table(null) : er_left_block(X0).
-subset_er_left_block_subset_verum_table(null) :- not subset_er_left_block_subset_verum_table(null).
subset_er_left_block_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_left_block(X0).
-subset_er_left_block_subset_falsum_robot(null) :- not subset_er_left_block_subset_falsum_robot(null).
subset_er_left_block_subset_falsum_block(null) :- subset_falsum_block(null) : er_left_block(X0).
-subset_er_left_block_subset_falsum_block(null) :- not subset_er_left_block_subset_falsum_block(null).
subset_er_left_block_subset_falsum_table(null) :- subset_falsum_table(null) : er_left_block(X0).
-subset_er_left_block_subset_falsum_table(null) :- not subset_er_left_block_subset_falsum_table(null).
subset_er_left_block_subset_robot_block(null) :- subset_robot_block(null) : er_left_block(X0).
-subset_er_left_block_subset_robot_block(null) :- not subset_er_left_block_subset_robot_block(null).
subset_er_left_block_subset_robot_table(null) :- subset_robot_table(null) : er_left_block(X0).
-subset_er_left_block_subset_robot_table(null) :- not subset_er_left_block_subset_robot_table(null).
subset_er_left_block_subset_block_table(null) :- subset_block_table(null) : er_left_block(X0).
-subset_er_left_block_subset_block_table(null) :- not subset_er_left_block_subset_block_table(null).
subset_er_overlap_block_er_shape_block(null) :- er_shape_block(X0) : er_overlap_block(X0).
-subset_er_overlap_block_er_shape_block(null) :- not subset_er_overlap_block_er_shape_block(null).
subset_er_overlap_block_er_smaller_table(null) :- er_smaller_table(X0) : er_overlap_block(X0).
-subset_er_overlap_block_er_smaller_table(null) :- not subset_er_overlap_block_er_smaller_table(null).
subset_er_overlap_block_er_below_table(null) :- er_below_table(X0) : er_overlap_block(X0).
-subset_er_overlap_block_er_below_table(null) :- not subset_er_overlap_block_er_below_table(null).
subset_er_overlap_block_er_left_table(null) :- er_left_table(X0) : er_overlap_block(X0).
-subset_er_overlap_block_er_left_table(null) :- not subset_er_overlap_block_er_left_table(null).
subset_er_overlap_block_er_overlap_table(null) :- er_overlap_table(X0) : er_overlap_block(X0).
-subset_er_overlap_block_er_overlap_table(null) :- not subset_er_overlap_block_er_overlap_table(null).
subset_er_overlap_block_er_shape_table(null) :- er_shape_table(X0) : er_overlap_block(X0).
-subset_er_overlap_block_er_shape_table(null) :- not subset_er_overlap_block_er_shape_table(null).
subset_er_overlap_block_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_block(X0).
-subset_er_overlap_block_inter_verum_falsum(null) :- not subset_er_overlap_block_inter_verum_falsum(null).
subset_er_overlap_block_inter_verum_robot(null) :- inter_verum_robot(X0) : er_overlap_block(X0).
-subset_er_overlap_block_inter_verum_robot(null) :- not subset_er_overlap_block_inter_verum_robot(null).
subset_er_overlap_block_inter_verum_block(null) :- inter_verum_block(X0) : er_overlap_block(X0).
-subset_er_overlap_block_inter_verum_block(null) :- not subset_er_overlap_block_inter_verum_block(null).
subset_er_overlap_block_inter_verum_table(null) :- inter_verum_table(X0) : er_overlap_block(X0).
-subset_er_overlap_block_inter_verum_table(null) :- not subset_er_overlap_block_inter_verum_table(null).
subset_er_overlap_block_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_overlap_block(X0).
-subset_er_overlap_block_inter_falsum_robot(null) :- not subset_er_overlap_block_inter_falsum_robot(null).
subset_er_overlap_block_inter_falsum_block(null) :- inter_falsum_block(X0) : er_overlap_block(X0).
-subset_er_overlap_block_inter_falsum_block(null) :- not subset_er_overlap_block_inter_falsum_block(null).
subset_er_overlap_block_inter_falsum_table(null) :- inter_falsum_table(X0) : er_overlap_block(X0).
-subset_er_overlap_block_inter_falsum_table(null) :- not subset_er_overlap_block_inter_falsum_table(null).
subset_er_overlap_block_inter_robot_block(null) :- inter_robot_block(X0) : er_overlap_block(X0).
-subset_er_overlap_block_inter_robot_block(null) :- not subset_er_overlap_block_inter_robot_block(null).
subset_er_overlap_block_inter_robot_table(null) :- inter_robot_table(X0) : er_overlap_block(X0).
-subset_er_overlap_block_inter_robot_table(null) :- not subset_er_overlap_block_inter_robot_table(null).
subset_er_overlap_block_inter_block_table(null) :- inter_block_table(X0) : er_overlap_block(X0).
-subset_er_overlap_block_inter_block_table(null) :- not subset_er_overlap_block_inter_block_table(null).
subset_er_overlap_block_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_block(X0).
-subset_er_overlap_block_subset_verum_falsum(null) :- not subset_er_overlap_block_subset_verum_falsum(null).
subset_er_overlap_block_subset_verum_robot(null) :- subset_verum_robot(null) : er_overlap_block(X0).
-subset_er_overlap_block_subset_verum_robot(null) :- not subset_er_overlap_block_subset_verum_robot(null).
subset_er_overlap_block_subset_verum_block(null) :- subset_verum_block(null) : er_overlap_block(X0).
-subset_er_overlap_block_subset_verum_block(null) :- not subset_er_overlap_block_subset_verum_block(null).
subset_er_overlap_block_subset_verum_table(null) :- subset_verum_table(null) : er_overlap_block(X0).
-subset_er_overlap_block_subset_verum_table(null) :- not subset_er_overlap_block_subset_verum_table(null).
subset_er_overlap_block_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_overlap_block(X0).
-subset_er_overlap_block_subset_falsum_robot(null) :- not subset_er_overlap_block_subset_falsum_robot(null).
subset_er_overlap_block_subset_falsum_block(null) :- subset_falsum_block(null) : er_overlap_block(X0).
-subset_er_overlap_block_subset_falsum_block(null) :- not subset_er_overlap_block_subset_falsum_block(null).
subset_er_overlap_block_subset_falsum_table(null) :- subset_falsum_table(null) : er_overlap_block(X0).
-subset_er_overlap_block_subset_falsum_table(null) :- not subset_er_overlap_block_subset_falsum_table(null).
subset_er_overlap_block_subset_robot_block(null) :- subset_robot_block(null) : er_overlap_block(X0).
-subset_er_overlap_block_subset_robot_block(null) :- not subset_er_overlap_block_subset_robot_block(null).
subset_er_overlap_block_subset_robot_table(null) :- subset_robot_table(null) : er_overlap_block(X0).
-subset_er_overlap_block_subset_robot_table(null) :- not subset_er_overlap_block_subset_robot_table(null).
subset_er_overlap_block_subset_block_table(null) :- subset_block_table(null) : er_overlap_block(X0).
-subset_er_overlap_block_subset_block_table(null) :- not subset_er_overlap_block_subset_block_table(null).
subset_er_shape_block_er_smaller_table(null) :- er_smaller_table(X0) : er_shape_block(X0).
-subset_er_shape_block_er_smaller_table(null) :- not subset_er_shape_block_er_smaller_table(null).
subset_er_shape_block_er_below_table(null) :- er_below_table(X0) : er_shape_block(X0).
-subset_er_shape_block_er_below_table(null) :- not subset_er_shape_block_er_below_table(null).
subset_er_shape_block_er_left_table(null) :- er_left_table(X0) : er_shape_block(X0).
-subset_er_shape_block_er_left_table(null) :- not subset_er_shape_block_er_left_table(null).
subset_er_shape_block_er_overlap_table(null) :- er_overlap_table(X0) : er_shape_block(X0).
-subset_er_shape_block_er_overlap_table(null) :- not subset_er_shape_block_er_overlap_table(null).
subset_er_shape_block_er_shape_table(null) :- er_shape_table(X0) : er_shape_block(X0).
-subset_er_shape_block_er_shape_table(null) :- not subset_er_shape_block_er_shape_table(null).
subset_er_shape_block_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_block(X0).
-subset_er_shape_block_inter_verum_falsum(null) :- not subset_er_shape_block_inter_verum_falsum(null).
subset_er_shape_block_inter_verum_robot(null) :- inter_verum_robot(X0) : er_shape_block(X0).
-subset_er_shape_block_inter_verum_robot(null) :- not subset_er_shape_block_inter_verum_robot(null).
subset_er_shape_block_inter_verum_block(null) :- inter_verum_block(X0) : er_shape_block(X0).
-subset_er_shape_block_inter_verum_block(null) :- not subset_er_shape_block_inter_verum_block(null).
subset_er_shape_block_inter_verum_table(null) :- inter_verum_table(X0) : er_shape_block(X0).
-subset_er_shape_block_inter_verum_table(null) :- not subset_er_shape_block_inter_verum_table(null).
subset_er_shape_block_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_shape_block(X0).
-subset_er_shape_block_inter_falsum_robot(null) :- not subset_er_shape_block_inter_falsum_robot(null).
subset_er_shape_block_inter_falsum_block(null) :- inter_falsum_block(X0) : er_shape_block(X0).
-subset_er_shape_block_inter_falsum_block(null) :- not subset_er_shape_block_inter_falsum_block(null).
subset_er_shape_block_inter_falsum_table(null) :- inter_falsum_table(X0) : er_shape_block(X0).
-subset_er_shape_block_inter_falsum_table(null) :- not subset_er_shape_block_inter_falsum_table(null).
subset_er_shape_block_inter_robot_block(null) :- inter_robot_block(X0) : er_shape_block(X0).
-subset_er_shape_block_inter_robot_block(null) :- not subset_er_shape_block_inter_robot_block(null).
subset_er_shape_block_inter_robot_table(null) :- inter_robot_table(X0) : er_shape_block(X0).
-subset_er_shape_block_inter_robot_table(null) :- not subset_er_shape_block_inter_robot_table(null).
subset_er_shape_block_inter_block_table(null) :- inter_block_table(X0) : er_shape_block(X0).
-subset_er_shape_block_inter_block_table(null) :- not subset_er_shape_block_inter_block_table(null).
subset_er_shape_block_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_block(X0).
-subset_er_shape_block_subset_verum_falsum(null) :- not subset_er_shape_block_subset_verum_falsum(null).
subset_er_shape_block_subset_verum_robot(null) :- subset_verum_robot(null) : er_shape_block(X0).
-subset_er_shape_block_subset_verum_robot(null) :- not subset_er_shape_block_subset_verum_robot(null).
subset_er_shape_block_subset_verum_block(null) :- subset_verum_block(null) : er_shape_block(X0).
-subset_er_shape_block_subset_verum_block(null) :- not subset_er_shape_block_subset_verum_block(null).
subset_er_shape_block_subset_verum_table(null) :- subset_verum_table(null) : er_shape_block(X0).
-subset_er_shape_block_subset_verum_table(null) :- not subset_er_shape_block_subset_verum_table(null).
subset_er_shape_block_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_shape_block(X0).
-subset_er_shape_block_subset_falsum_robot(null) :- not subset_er_shape_block_subset_falsum_robot(null).
subset_er_shape_block_subset_falsum_block(null) :- subset_falsum_block(null) : er_shape_block(X0).
-subset_er_shape_block_subset_falsum_block(null) :- not subset_er_shape_block_subset_falsum_block(null).
subset_er_shape_block_subset_falsum_table(null) :- subset_falsum_table(null) : er_shape_block(X0).
-subset_er_shape_block_subset_falsum_table(null) :- not subset_er_shape_block_subset_falsum_table(null).
subset_er_shape_block_subset_robot_block(null) :- subset_robot_block(null) : er_shape_block(X0).
-subset_er_shape_block_subset_robot_block(null) :- not subset_er_shape_block_subset_robot_block(null).
subset_er_shape_block_subset_robot_table(null) :- subset_robot_table(null) : er_shape_block(X0).
-subset_er_shape_block_subset_robot_table(null) :- not subset_er_shape_block_subset_robot_table(null).
subset_er_shape_block_subset_block_table(null) :- subset_block_table(null) : er_shape_block(X0).
-subset_er_shape_block_subset_block_table(null) :- not subset_er_shape_block_subset_block_table(null).
subset_er_smaller_table_er_below_table(null) :- er_below_table(X0) : er_smaller_table(X0).
-subset_er_smaller_table_er_below_table(null) :- not subset_er_smaller_table_er_below_table(null).
subset_er_smaller_table_er_left_table(null) :- er_left_table(X0) : er_smaller_table(X0).
-subset_er_smaller_table_er_left_table(null) :- not subset_er_smaller_table_er_left_table(null).
subset_er_smaller_table_er_overlap_table(null) :- er_overlap_table(X0) : er_smaller_table(X0).
-subset_er_smaller_table_er_overlap_table(null) :- not subset_er_smaller_table_er_overlap_table(null).
subset_er_smaller_table_er_shape_table(null) :- er_shape_table(X0) : er_smaller_table(X0).
-subset_er_smaller_table_er_shape_table(null) :- not subset_er_smaller_table_er_shape_table(null).
subset_er_smaller_table_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_table(X0).
-subset_er_smaller_table_inter_verum_falsum(null) :- not subset_er_smaller_table_inter_verum_falsum(null).
subset_er_smaller_table_inter_verum_robot(null) :- inter_verum_robot(X0) : er_smaller_table(X0).
-subset_er_smaller_table_inter_verum_robot(null) :- not subset_er_smaller_table_inter_verum_robot(null).
subset_er_smaller_table_inter_verum_block(null) :- inter_verum_block(X0) : er_smaller_table(X0).
-subset_er_smaller_table_inter_verum_block(null) :- not subset_er_smaller_table_inter_verum_block(null).
subset_er_smaller_table_inter_verum_table(null) :- inter_verum_table(X0) : er_smaller_table(X0).
-subset_er_smaller_table_inter_verum_table(null) :- not subset_er_smaller_table_inter_verum_table(null).
subset_er_smaller_table_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_smaller_table(X0).
-subset_er_smaller_table_inter_falsum_robot(null) :- not subset_er_smaller_table_inter_falsum_robot(null).
subset_er_smaller_table_inter_falsum_block(null) :- inter_falsum_block(X0) : er_smaller_table(X0).
-subset_er_smaller_table_inter_falsum_block(null) :- not subset_er_smaller_table_inter_falsum_block(null).
subset_er_smaller_table_inter_falsum_table(null) :- inter_falsum_table(X0) : er_smaller_table(X0).
-subset_er_smaller_table_inter_falsum_table(null) :- not subset_er_smaller_table_inter_falsum_table(null).
subset_er_smaller_table_inter_robot_block(null) :- inter_robot_block(X0) : er_smaller_table(X0).
-subset_er_smaller_table_inter_robot_block(null) :- not subset_er_smaller_table_inter_robot_block(null).
subset_er_smaller_table_inter_robot_table(null) :- inter_robot_table(X0) : er_smaller_table(X0).
-subset_er_smaller_table_inter_robot_table(null) :- not subset_er_smaller_table_inter_robot_table(null).
subset_er_smaller_table_inter_block_table(null) :- inter_block_table(X0) : er_smaller_table(X0).
-subset_er_smaller_table_inter_block_table(null) :- not subset_er_smaller_table_inter_block_table(null).
subset_er_smaller_table_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_table(X0).
-subset_er_smaller_table_subset_verum_falsum(null) :- not subset_er_smaller_table_subset_verum_falsum(null).
subset_er_smaller_table_subset_verum_robot(null) :- subset_verum_robot(null) : er_smaller_table(X0).
-subset_er_smaller_table_subset_verum_robot(null) :- not subset_er_smaller_table_subset_verum_robot(null).
subset_er_smaller_table_subset_verum_block(null) :- subset_verum_block(null) : er_smaller_table(X0).
-subset_er_smaller_table_subset_verum_block(null) :- not subset_er_smaller_table_subset_verum_block(null).
subset_er_smaller_table_subset_verum_table(null) :- subset_verum_table(null) : er_smaller_table(X0).
-subset_er_smaller_table_subset_verum_table(null) :- not subset_er_smaller_table_subset_verum_table(null).
subset_er_smaller_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_smaller_table(X0).
-subset_er_smaller_table_subset_falsum_robot(null) :- not subset_er_smaller_table_subset_falsum_robot(null).
subset_er_smaller_table_subset_falsum_block(null) :- subset_falsum_block(null) : er_smaller_table(X0).
-subset_er_smaller_table_subset_falsum_block(null) :- not subset_er_smaller_table_subset_falsum_block(null).
subset_er_smaller_table_subset_falsum_table(null) :- subset_falsum_table(null) : er_smaller_table(X0).
-subset_er_smaller_table_subset_falsum_table(null) :- not subset_er_smaller_table_subset_falsum_table(null).
subset_er_smaller_table_subset_robot_block(null) :- subset_robot_block(null) : er_smaller_table(X0).
-subset_er_smaller_table_subset_robot_block(null) :- not subset_er_smaller_table_subset_robot_block(null).
subset_er_smaller_table_subset_robot_table(null) :- subset_robot_table(null) : er_smaller_table(X0).
-subset_er_smaller_table_subset_robot_table(null) :- not subset_er_smaller_table_subset_robot_table(null).
subset_er_smaller_table_subset_block_table(null) :- subset_block_table(null) : er_smaller_table(X0).
-subset_er_smaller_table_subset_block_table(null) :- not subset_er_smaller_table_subset_block_table(null).
subset_er_below_table_er_left_table(null) :- er_left_table(X0) : er_below_table(X0).
-subset_er_below_table_er_left_table(null) :- not subset_er_below_table_er_left_table(null).
subset_er_below_table_er_overlap_table(null) :- er_overlap_table(X0) : er_below_table(X0).
-subset_er_below_table_er_overlap_table(null) :- not subset_er_below_table_er_overlap_table(null).
subset_er_below_table_er_shape_table(null) :- er_shape_table(X0) : er_below_table(X0).
-subset_er_below_table_er_shape_table(null) :- not subset_er_below_table_er_shape_table(null).
subset_er_below_table_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_table(X0).
-subset_er_below_table_inter_verum_falsum(null) :- not subset_er_below_table_inter_verum_falsum(null).
subset_er_below_table_inter_verum_robot(null) :- inter_verum_robot(X0) : er_below_table(X0).
-subset_er_below_table_inter_verum_robot(null) :- not subset_er_below_table_inter_verum_robot(null).
subset_er_below_table_inter_verum_block(null) :- inter_verum_block(X0) : er_below_table(X0).
-subset_er_below_table_inter_verum_block(null) :- not subset_er_below_table_inter_verum_block(null).
subset_er_below_table_inter_verum_table(null) :- inter_verum_table(X0) : er_below_table(X0).
-subset_er_below_table_inter_verum_table(null) :- not subset_er_below_table_inter_verum_table(null).
subset_er_below_table_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_below_table(X0).
-subset_er_below_table_inter_falsum_robot(null) :- not subset_er_below_table_inter_falsum_robot(null).
subset_er_below_table_inter_falsum_block(null) :- inter_falsum_block(X0) : er_below_table(X0).
-subset_er_below_table_inter_falsum_block(null) :- not subset_er_below_table_inter_falsum_block(null).
subset_er_below_table_inter_falsum_table(null) :- inter_falsum_table(X0) : er_below_table(X0).
-subset_er_below_table_inter_falsum_table(null) :- not subset_er_below_table_inter_falsum_table(null).
subset_er_below_table_inter_robot_block(null) :- inter_robot_block(X0) : er_below_table(X0).
-subset_er_below_table_inter_robot_block(null) :- not subset_er_below_table_inter_robot_block(null).
subset_er_below_table_inter_robot_table(null) :- inter_robot_table(X0) : er_below_table(X0).
-subset_er_below_table_inter_robot_table(null) :- not subset_er_below_table_inter_robot_table(null).
subset_er_below_table_inter_block_table(null) :- inter_block_table(X0) : er_below_table(X0).
-subset_er_below_table_inter_block_table(null) :- not subset_er_below_table_inter_block_table(null).
subset_er_below_table_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_table(X0).
-subset_er_below_table_subset_verum_falsum(null) :- not subset_er_below_table_subset_verum_falsum(null).
subset_er_below_table_subset_verum_robot(null) :- subset_verum_robot(null) : er_below_table(X0).
-subset_er_below_table_subset_verum_robot(null) :- not subset_er_below_table_subset_verum_robot(null).
subset_er_below_table_subset_verum_block(null) :- subset_verum_block(null) : er_below_table(X0).
-subset_er_below_table_subset_verum_block(null) :- not subset_er_below_table_subset_verum_block(null).
subset_er_below_table_subset_verum_table(null) :- subset_verum_table(null) : er_below_table(X0).
-subset_er_below_table_subset_verum_table(null) :- not subset_er_below_table_subset_verum_table(null).
subset_er_below_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_below_table(X0).
-subset_er_below_table_subset_falsum_robot(null) :- not subset_er_below_table_subset_falsum_robot(null).
subset_er_below_table_subset_falsum_block(null) :- subset_falsum_block(null) : er_below_table(X0).
-subset_er_below_table_subset_falsum_block(null) :- not subset_er_below_table_subset_falsum_block(null).
subset_er_below_table_subset_falsum_table(null) :- subset_falsum_table(null) : er_below_table(X0).
-subset_er_below_table_subset_falsum_table(null) :- not subset_er_below_table_subset_falsum_table(null).
subset_er_below_table_subset_robot_block(null) :- subset_robot_block(null) : er_below_table(X0).
-subset_er_below_table_subset_robot_block(null) :- not subset_er_below_table_subset_robot_block(null).
subset_er_below_table_subset_robot_table(null) :- subset_robot_table(null) : er_below_table(X0).
-subset_er_below_table_subset_robot_table(null) :- not subset_er_below_table_subset_robot_table(null).
subset_er_below_table_subset_block_table(null) :- subset_block_table(null) : er_below_table(X0).
-subset_er_below_table_subset_block_table(null) :- not subset_er_below_table_subset_block_table(null).
subset_er_left_table_er_overlap_table(null) :- er_overlap_table(X0) : er_left_table(X0).
-subset_er_left_table_er_overlap_table(null) :- not subset_er_left_table_er_overlap_table(null).
subset_er_left_table_er_shape_table(null) :- er_shape_table(X0) : er_left_table(X0).
-subset_er_left_table_er_shape_table(null) :- not subset_er_left_table_er_shape_table(null).
subset_er_left_table_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_table(X0).
-subset_er_left_table_inter_verum_falsum(null) :- not subset_er_left_table_inter_verum_falsum(null).
subset_er_left_table_inter_verum_robot(null) :- inter_verum_robot(X0) : er_left_table(X0).
-subset_er_left_table_inter_verum_robot(null) :- not subset_er_left_table_inter_verum_robot(null).
subset_er_left_table_inter_verum_block(null) :- inter_verum_block(X0) : er_left_table(X0).
-subset_er_left_table_inter_verum_block(null) :- not subset_er_left_table_inter_verum_block(null).
subset_er_left_table_inter_verum_table(null) :- inter_verum_table(X0) : er_left_table(X0).
-subset_er_left_table_inter_verum_table(null) :- not subset_er_left_table_inter_verum_table(null).
subset_er_left_table_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_left_table(X0).
-subset_er_left_table_inter_falsum_robot(null) :- not subset_er_left_table_inter_falsum_robot(null).
subset_er_left_table_inter_falsum_block(null) :- inter_falsum_block(X0) : er_left_table(X0).
-subset_er_left_table_inter_falsum_block(null) :- not subset_er_left_table_inter_falsum_block(null).
subset_er_left_table_inter_falsum_table(null) :- inter_falsum_table(X0) : er_left_table(X0).
-subset_er_left_table_inter_falsum_table(null) :- not subset_er_left_table_inter_falsum_table(null).
subset_er_left_table_inter_robot_block(null) :- inter_robot_block(X0) : er_left_table(X0).
-subset_er_left_table_inter_robot_block(null) :- not subset_er_left_table_inter_robot_block(null).
subset_er_left_table_inter_robot_table(null) :- inter_robot_table(X0) : er_left_table(X0).
-subset_er_left_table_inter_robot_table(null) :- not subset_er_left_table_inter_robot_table(null).
subset_er_left_table_inter_block_table(null) :- inter_block_table(X0) : er_left_table(X0).
-subset_er_left_table_inter_block_table(null) :- not subset_er_left_table_inter_block_table(null).
subset_er_left_table_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_table(X0).
-subset_er_left_table_subset_verum_falsum(null) :- not subset_er_left_table_subset_verum_falsum(null).
subset_er_left_table_subset_verum_robot(null) :- subset_verum_robot(null) : er_left_table(X0).
-subset_er_left_table_subset_verum_robot(null) :- not subset_er_left_table_subset_verum_robot(null).
subset_er_left_table_subset_verum_block(null) :- subset_verum_block(null) : er_left_table(X0).
-subset_er_left_table_subset_verum_block(null) :- not subset_er_left_table_subset_verum_block(null).
subset_er_left_table_subset_verum_table(null) :- subset_verum_table(null) : er_left_table(X0).
-subset_er_left_table_subset_verum_table(null) :- not subset_er_left_table_subset_verum_table(null).
subset_er_left_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_left_table(X0).
-subset_er_left_table_subset_falsum_robot(null) :- not subset_er_left_table_subset_falsum_robot(null).
subset_er_left_table_subset_falsum_block(null) :- subset_falsum_block(null) : er_left_table(X0).
-subset_er_left_table_subset_falsum_block(null) :- not subset_er_left_table_subset_falsum_block(null).
subset_er_left_table_subset_falsum_table(null) :- subset_falsum_table(null) : er_left_table(X0).
-subset_er_left_table_subset_falsum_table(null) :- not subset_er_left_table_subset_falsum_table(null).
subset_er_left_table_subset_robot_block(null) :- subset_robot_block(null) : er_left_table(X0).
-subset_er_left_table_subset_robot_block(null) :- not subset_er_left_table_subset_robot_block(null).
subset_er_left_table_subset_robot_table(null) :- subset_robot_table(null) : er_left_table(X0).
-subset_er_left_table_subset_robot_table(null) :- not subset_er_left_table_subset_robot_table(null).
subset_er_left_table_subset_block_table(null) :- subset_block_table(null) : er_left_table(X0).
-subset_er_left_table_subset_block_table(null) :- not subset_er_left_table_subset_block_table(null).
subset_er_overlap_table_er_shape_table(null) :- er_shape_table(X0) : er_overlap_table(X0).
-subset_er_overlap_table_er_shape_table(null) :- not subset_er_overlap_table_er_shape_table(null).
subset_er_overlap_table_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_table(X0).
-subset_er_overlap_table_inter_verum_falsum(null) :- not subset_er_overlap_table_inter_verum_falsum(null).
subset_er_overlap_table_inter_verum_robot(null) :- inter_verum_robot(X0) : er_overlap_table(X0).
-subset_er_overlap_table_inter_verum_robot(null) :- not subset_er_overlap_table_inter_verum_robot(null).
subset_er_overlap_table_inter_verum_block(null) :- inter_verum_block(X0) : er_overlap_table(X0).
-subset_er_overlap_table_inter_verum_block(null) :- not subset_er_overlap_table_inter_verum_block(null).
subset_er_overlap_table_inter_verum_table(null) :- inter_verum_table(X0) : er_overlap_table(X0).
-subset_er_overlap_table_inter_verum_table(null) :- not subset_er_overlap_table_inter_verum_table(null).
subset_er_overlap_table_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_overlap_table(X0).
-subset_er_overlap_table_inter_falsum_robot(null) :- not subset_er_overlap_table_inter_falsum_robot(null).
subset_er_overlap_table_inter_falsum_block(null) :- inter_falsum_block(X0) : er_overlap_table(X0).
-subset_er_overlap_table_inter_falsum_block(null) :- not subset_er_overlap_table_inter_falsum_block(null).
subset_er_overlap_table_inter_falsum_table(null) :- inter_falsum_table(X0) : er_overlap_table(X0).
-subset_er_overlap_table_inter_falsum_table(null) :- not subset_er_overlap_table_inter_falsum_table(null).
subset_er_overlap_table_inter_robot_block(null) :- inter_robot_block(X0) : er_overlap_table(X0).
-subset_er_overlap_table_inter_robot_block(null) :- not subset_er_overlap_table_inter_robot_block(null).
subset_er_overlap_table_inter_robot_table(null) :- inter_robot_table(X0) : er_overlap_table(X0).
-subset_er_overlap_table_inter_robot_table(null) :- not subset_er_overlap_table_inter_robot_table(null).
subset_er_overlap_table_inter_block_table(null) :- inter_block_table(X0) : er_overlap_table(X0).
-subset_er_overlap_table_inter_block_table(null) :- not subset_er_overlap_table_inter_block_table(null).
subset_er_overlap_table_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_table(X0).
-subset_er_overlap_table_subset_verum_falsum(null) :- not subset_er_overlap_table_subset_verum_falsum(null).
subset_er_overlap_table_subset_verum_robot(null) :- subset_verum_robot(null) : er_overlap_table(X0).
-subset_er_overlap_table_subset_verum_robot(null) :- not subset_er_overlap_table_subset_verum_robot(null).
subset_er_overlap_table_subset_verum_block(null) :- subset_verum_block(null) : er_overlap_table(X0).
-subset_er_overlap_table_subset_verum_block(null) :- not subset_er_overlap_table_subset_verum_block(null).
subset_er_overlap_table_subset_verum_table(null) :- subset_verum_table(null) : er_overlap_table(X0).
-subset_er_overlap_table_subset_verum_table(null) :- not subset_er_overlap_table_subset_verum_table(null).
subset_er_overlap_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_overlap_table(X0).
-subset_er_overlap_table_subset_falsum_robot(null) :- not subset_er_overlap_table_subset_falsum_robot(null).
subset_er_overlap_table_subset_falsum_block(null) :- subset_falsum_block(null) : er_overlap_table(X0).
-subset_er_overlap_table_subset_falsum_block(null) :- not subset_er_overlap_table_subset_falsum_block(null).
subset_er_overlap_table_subset_falsum_table(null) :- subset_falsum_table(null) : er_overlap_table(X0).
-subset_er_overlap_table_subset_falsum_table(null) :- not subset_er_overlap_table_subset_falsum_table(null).
subset_er_overlap_table_subset_robot_block(null) :- subset_robot_block(null) : er_overlap_table(X0).
-subset_er_overlap_table_subset_robot_block(null) :- not subset_er_overlap_table_subset_robot_block(null).
subset_er_overlap_table_subset_robot_table(null) :- subset_robot_table(null) : er_overlap_table(X0).
-subset_er_overlap_table_subset_robot_table(null) :- not subset_er_overlap_table_subset_robot_table(null).
subset_er_overlap_table_subset_block_table(null) :- subset_block_table(null) : er_overlap_table(X0).
-subset_er_overlap_table_subset_block_table(null) :- not subset_er_overlap_table_subset_block_table(null).
subset_er_shape_table_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_table(X0).
-subset_er_shape_table_inter_verum_falsum(null) :- not subset_er_shape_table_inter_verum_falsum(null).
subset_er_shape_table_inter_verum_robot(null) :- inter_verum_robot(X0) : er_shape_table(X0).
-subset_er_shape_table_inter_verum_robot(null) :- not subset_er_shape_table_inter_verum_robot(null).
subset_er_shape_table_inter_verum_block(null) :- inter_verum_block(X0) : er_shape_table(X0).
-subset_er_shape_table_inter_verum_block(null) :- not subset_er_shape_table_inter_verum_block(null).
subset_er_shape_table_inter_verum_table(null) :- inter_verum_table(X0) : er_shape_table(X0).
-subset_er_shape_table_inter_verum_table(null) :- not subset_er_shape_table_inter_verum_table(null).
subset_er_shape_table_inter_falsum_robot(null) :- inter_falsum_robot(X0) : er_shape_table(X0).
-subset_er_shape_table_inter_falsum_robot(null) :- not subset_er_shape_table_inter_falsum_robot(null).
subset_er_shape_table_inter_falsum_block(null) :- inter_falsum_block(X0) : er_shape_table(X0).
-subset_er_shape_table_inter_falsum_block(null) :- not subset_er_shape_table_inter_falsum_block(null).
subset_er_shape_table_inter_falsum_table(null) :- inter_falsum_table(X0) : er_shape_table(X0).
-subset_er_shape_table_inter_falsum_table(null) :- not subset_er_shape_table_inter_falsum_table(null).
subset_er_shape_table_inter_robot_block(null) :- inter_robot_block(X0) : er_shape_table(X0).
-subset_er_shape_table_inter_robot_block(null) :- not subset_er_shape_table_inter_robot_block(null).
subset_er_shape_table_inter_robot_table(null) :- inter_robot_table(X0) : er_shape_table(X0).
-subset_er_shape_table_inter_robot_table(null) :- not subset_er_shape_table_inter_robot_table(null).
subset_er_shape_table_inter_block_table(null) :- inter_block_table(X0) : er_shape_table(X0).
-subset_er_shape_table_inter_block_table(null) :- not subset_er_shape_table_inter_block_table(null).
subset_er_shape_table_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_table(X0).
-subset_er_shape_table_subset_verum_falsum(null) :- not subset_er_shape_table_subset_verum_falsum(null).
subset_er_shape_table_subset_verum_robot(null) :- subset_verum_robot(null) : er_shape_table(X0).
-subset_er_shape_table_subset_verum_robot(null) :- not subset_er_shape_table_subset_verum_robot(null).
subset_er_shape_table_subset_verum_block(null) :- subset_verum_block(null) : er_shape_table(X0).
-subset_er_shape_table_subset_verum_block(null) :- not subset_er_shape_table_subset_verum_block(null).
subset_er_shape_table_subset_verum_table(null) :- subset_verum_table(null) : er_shape_table(X0).
-subset_er_shape_table_subset_verum_table(null) :- not subset_er_shape_table_subset_verum_table(null).
subset_er_shape_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : er_shape_table(X0).
-subset_er_shape_table_subset_falsum_robot(null) :- not subset_er_shape_table_subset_falsum_robot(null).
subset_er_shape_table_subset_falsum_block(null) :- subset_falsum_block(null) : er_shape_table(X0).
-subset_er_shape_table_subset_falsum_block(null) :- not subset_er_shape_table_subset_falsum_block(null).
subset_er_shape_table_subset_falsum_table(null) :- subset_falsum_table(null) : er_shape_table(X0).
-subset_er_shape_table_subset_falsum_table(null) :- not subset_er_shape_table_subset_falsum_table(null).
subset_er_shape_table_subset_robot_block(null) :- subset_robot_block(null) : er_shape_table(X0).
-subset_er_shape_table_subset_robot_block(null) :- not subset_er_shape_table_subset_robot_block(null).
subset_er_shape_table_subset_robot_table(null) :- subset_robot_table(null) : er_shape_table(X0).
-subset_er_shape_table_subset_robot_table(null) :- not subset_er_shape_table_subset_robot_table(null).
subset_er_shape_table_subset_block_table(null) :- subset_block_table(null) : er_shape_table(X0).
-subset_er_shape_table_subset_block_table(null) :- not subset_er_shape_table_subset_block_table(null).
subset_inter_verum_falsum_inter_verum_robot(null) :- inter_verum_robot(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_verum_robot(null) :- not subset_inter_verum_falsum_inter_verum_robot(null).
subset_inter_verum_falsum_inter_verum_block(null) :- inter_verum_block(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_verum_block(null) :- not subset_inter_verum_falsum_inter_verum_block(null).
subset_inter_verum_falsum_inter_verum_table(null) :- inter_verum_table(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_verum_table(null) :- not subset_inter_verum_falsum_inter_verum_table(null).
subset_inter_verum_falsum_inter_falsum_robot(null) :- inter_falsum_robot(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_falsum_robot(null) :- not subset_inter_verum_falsum_inter_falsum_robot(null).
subset_inter_verum_falsum_inter_falsum_block(null) :- inter_falsum_block(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_falsum_block(null) :- not subset_inter_verum_falsum_inter_falsum_block(null).
subset_inter_verum_falsum_inter_falsum_table(null) :- inter_falsum_table(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_falsum_table(null) :- not subset_inter_verum_falsum_inter_falsum_table(null).
subset_inter_verum_falsum_inter_robot_block(null) :- inter_robot_block(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_robot_block(null) :- not subset_inter_verum_falsum_inter_robot_block(null).
subset_inter_verum_falsum_inter_robot_table(null) :- inter_robot_table(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_robot_table(null) :- not subset_inter_verum_falsum_inter_robot_table(null).
subset_inter_verum_falsum_inter_block_table(null) :- inter_block_table(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_block_table(null) :- not subset_inter_verum_falsum_inter_block_table(null).
subset_inter_verum_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_falsum(null) :- not subset_inter_verum_falsum_subset_verum_falsum(null).
subset_inter_verum_falsum_subset_verum_robot(null) :- subset_verum_robot(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_robot(null) :- not subset_inter_verum_falsum_subset_verum_robot(null).
subset_inter_verum_falsum_subset_verum_block(null) :- subset_verum_block(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_block(null) :- not subset_inter_verum_falsum_subset_verum_block(null).
subset_inter_verum_falsum_subset_verum_table(null) :- subset_verum_table(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_table(null) :- not subset_inter_verum_falsum_subset_verum_table(null).
subset_inter_verum_falsum_subset_falsum_robot(null) :- subset_falsum_robot(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_falsum_robot(null) :- not subset_inter_verum_falsum_subset_falsum_robot(null).
subset_inter_verum_falsum_subset_falsum_block(null) :- subset_falsum_block(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_falsum_block(null) :- not subset_inter_verum_falsum_subset_falsum_block(null).
subset_inter_verum_falsum_subset_falsum_table(null) :- subset_falsum_table(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_falsum_table(null) :- not subset_inter_verum_falsum_subset_falsum_table(null).
subset_inter_verum_falsum_subset_robot_block(null) :- subset_robot_block(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_robot_block(null) :- not subset_inter_verum_falsum_subset_robot_block(null).
subset_inter_verum_falsum_subset_robot_table(null) :- subset_robot_table(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_robot_table(null) :- not subset_inter_verum_falsum_subset_robot_table(null).
subset_inter_verum_falsum_subset_block_table(null) :- subset_block_table(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_block_table(null) :- not subset_inter_verum_falsum_subset_block_table(null).
subset_inter_verum_robot_inter_verum_block(null) :- inter_verum_block(X0) : inter_verum_robot(X0).
-subset_inter_verum_robot_inter_verum_block(null) :- not subset_inter_verum_robot_inter_verum_block(null).
subset_inter_verum_robot_inter_verum_table(null) :- inter_verum_table(X0) : inter_verum_robot(X0).
-subset_inter_verum_robot_inter_verum_table(null) :- not subset_inter_verum_robot_inter_verum_table(null).
subset_inter_verum_robot_inter_falsum_robot(null) :- inter_falsum_robot(X0) : inter_verum_robot(X0).
-subset_inter_verum_robot_inter_falsum_robot(null) :- not subset_inter_verum_robot_inter_falsum_robot(null).
subset_inter_verum_robot_inter_falsum_block(null) :- inter_falsum_block(X0) : inter_verum_robot(X0).
-subset_inter_verum_robot_inter_falsum_block(null) :- not subset_inter_verum_robot_inter_falsum_block(null).
subset_inter_verum_robot_inter_falsum_table(null) :- inter_falsum_table(X0) : inter_verum_robot(X0).
-subset_inter_verum_robot_inter_falsum_table(null) :- not subset_inter_verum_robot_inter_falsum_table(null).
subset_inter_verum_robot_inter_robot_block(null) :- inter_robot_block(X0) : inter_verum_robot(X0).
-subset_inter_verum_robot_inter_robot_block(null) :- not subset_inter_verum_robot_inter_robot_block(null).
subset_inter_verum_robot_inter_robot_table(null) :- inter_robot_table(X0) : inter_verum_robot(X0).
-subset_inter_verum_robot_inter_robot_table(null) :- not subset_inter_verum_robot_inter_robot_table(null).
subset_inter_verum_robot_inter_block_table(null) :- inter_block_table(X0) : inter_verum_robot(X0).
-subset_inter_verum_robot_inter_block_table(null) :- not subset_inter_verum_robot_inter_block_table(null).
subset_inter_verum_robot_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_robot(X0).
-subset_inter_verum_robot_subset_verum_falsum(null) :- not subset_inter_verum_robot_subset_verum_falsum(null).
subset_inter_verum_robot_subset_verum_robot(null) :- subset_verum_robot(null) : inter_verum_robot(X0).
-subset_inter_verum_robot_subset_verum_robot(null) :- not subset_inter_verum_robot_subset_verum_robot(null).
subset_inter_verum_robot_subset_verum_block(null) :- subset_verum_block(null) : inter_verum_robot(X0).
-subset_inter_verum_robot_subset_verum_block(null) :- not subset_inter_verum_robot_subset_verum_block(null).
subset_inter_verum_robot_subset_verum_table(null) :- subset_verum_table(null) : inter_verum_robot(X0).
-subset_inter_verum_robot_subset_verum_table(null) :- not subset_inter_verum_robot_subset_verum_table(null).
subset_inter_verum_robot_subset_falsum_robot(null) :- subset_falsum_robot(null) : inter_verum_robot(X0).
-subset_inter_verum_robot_subset_falsum_robot(null) :- not subset_inter_verum_robot_subset_falsum_robot(null).
subset_inter_verum_robot_subset_falsum_block(null) :- subset_falsum_block(null) : inter_verum_robot(X0).
-subset_inter_verum_robot_subset_falsum_block(null) :- not subset_inter_verum_robot_subset_falsum_block(null).
subset_inter_verum_robot_subset_falsum_table(null) :- subset_falsum_table(null) : inter_verum_robot(X0).
-subset_inter_verum_robot_subset_falsum_table(null) :- not subset_inter_verum_robot_subset_falsum_table(null).
subset_inter_verum_robot_subset_robot_block(null) :- subset_robot_block(null) : inter_verum_robot(X0).
-subset_inter_verum_robot_subset_robot_block(null) :- not subset_inter_verum_robot_subset_robot_block(null).
subset_inter_verum_robot_subset_robot_table(null) :- subset_robot_table(null) : inter_verum_robot(X0).
-subset_inter_verum_robot_subset_robot_table(null) :- not subset_inter_verum_robot_subset_robot_table(null).
subset_inter_verum_robot_subset_block_table(null) :- subset_block_table(null) : inter_verum_robot(X0).
-subset_inter_verum_robot_subset_block_table(null) :- not subset_inter_verum_robot_subset_block_table(null).
subset_inter_verum_block_inter_verum_table(null) :- inter_verum_table(X0) : inter_verum_block(X0).
-subset_inter_verum_block_inter_verum_table(null) :- not subset_inter_verum_block_inter_verum_table(null).
subset_inter_verum_block_inter_falsum_robot(null) :- inter_falsum_robot(X0) : inter_verum_block(X0).
-subset_inter_verum_block_inter_falsum_robot(null) :- not subset_inter_verum_block_inter_falsum_robot(null).
subset_inter_verum_block_inter_falsum_block(null) :- inter_falsum_block(X0) : inter_verum_block(X0).
-subset_inter_verum_block_inter_falsum_block(null) :- not subset_inter_verum_block_inter_falsum_block(null).
subset_inter_verum_block_inter_falsum_table(null) :- inter_falsum_table(X0) : inter_verum_block(X0).
-subset_inter_verum_block_inter_falsum_table(null) :- not subset_inter_verum_block_inter_falsum_table(null).
subset_inter_verum_block_inter_robot_block(null) :- inter_robot_block(X0) : inter_verum_block(X0).
-subset_inter_verum_block_inter_robot_block(null) :- not subset_inter_verum_block_inter_robot_block(null).
subset_inter_verum_block_inter_robot_table(null) :- inter_robot_table(X0) : inter_verum_block(X0).
-subset_inter_verum_block_inter_robot_table(null) :- not subset_inter_verum_block_inter_robot_table(null).
subset_inter_verum_block_inter_block_table(null) :- inter_block_table(X0) : inter_verum_block(X0).
-subset_inter_verum_block_inter_block_table(null) :- not subset_inter_verum_block_inter_block_table(null).
subset_inter_verum_block_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_block(X0).
-subset_inter_verum_block_subset_verum_falsum(null) :- not subset_inter_verum_block_subset_verum_falsum(null).
subset_inter_verum_block_subset_verum_robot(null) :- subset_verum_robot(null) : inter_verum_block(X0).
-subset_inter_verum_block_subset_verum_robot(null) :- not subset_inter_verum_block_subset_verum_robot(null).
subset_inter_verum_block_subset_verum_block(null) :- subset_verum_block(null) : inter_verum_block(X0).
-subset_inter_verum_block_subset_verum_block(null) :- not subset_inter_verum_block_subset_verum_block(null).
subset_inter_verum_block_subset_verum_table(null) :- subset_verum_table(null) : inter_verum_block(X0).
-subset_inter_verum_block_subset_verum_table(null) :- not subset_inter_verum_block_subset_verum_table(null).
subset_inter_verum_block_subset_falsum_robot(null) :- subset_falsum_robot(null) : inter_verum_block(X0).
-subset_inter_verum_block_subset_falsum_robot(null) :- not subset_inter_verum_block_subset_falsum_robot(null).
subset_inter_verum_block_subset_falsum_block(null) :- subset_falsum_block(null) : inter_verum_block(X0).
-subset_inter_verum_block_subset_falsum_block(null) :- not subset_inter_verum_block_subset_falsum_block(null).
subset_inter_verum_block_subset_falsum_table(null) :- subset_falsum_table(null) : inter_verum_block(X0).
-subset_inter_verum_block_subset_falsum_table(null) :- not subset_inter_verum_block_subset_falsum_table(null).
subset_inter_verum_block_subset_robot_block(null) :- subset_robot_block(null) : inter_verum_block(X0).
-subset_inter_verum_block_subset_robot_block(null) :- not subset_inter_verum_block_subset_robot_block(null).
subset_inter_verum_block_subset_robot_table(null) :- subset_robot_table(null) : inter_verum_block(X0).
-subset_inter_verum_block_subset_robot_table(null) :- not subset_inter_verum_block_subset_robot_table(null).
subset_inter_verum_block_subset_block_table(null) :- subset_block_table(null) : inter_verum_block(X0).
-subset_inter_verum_block_subset_block_table(null) :- not subset_inter_verum_block_subset_block_table(null).
subset_inter_verum_table_inter_falsum_robot(null) :- inter_falsum_robot(X0) : inter_verum_table(X0).
-subset_inter_verum_table_inter_falsum_robot(null) :- not subset_inter_verum_table_inter_falsum_robot(null).
subset_inter_verum_table_inter_falsum_block(null) :- inter_falsum_block(X0) : inter_verum_table(X0).
-subset_inter_verum_table_inter_falsum_block(null) :- not subset_inter_verum_table_inter_falsum_block(null).
subset_inter_verum_table_inter_falsum_table(null) :- inter_falsum_table(X0) : inter_verum_table(X0).
-subset_inter_verum_table_inter_falsum_table(null) :- not subset_inter_verum_table_inter_falsum_table(null).
subset_inter_verum_table_inter_robot_block(null) :- inter_robot_block(X0) : inter_verum_table(X0).
-subset_inter_verum_table_inter_robot_block(null) :- not subset_inter_verum_table_inter_robot_block(null).
subset_inter_verum_table_inter_robot_table(null) :- inter_robot_table(X0) : inter_verum_table(X0).
-subset_inter_verum_table_inter_robot_table(null) :- not subset_inter_verum_table_inter_robot_table(null).
subset_inter_verum_table_inter_block_table(null) :- inter_block_table(X0) : inter_verum_table(X0).
-subset_inter_verum_table_inter_block_table(null) :- not subset_inter_verum_table_inter_block_table(null).
subset_inter_verum_table_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_table(X0).
-subset_inter_verum_table_subset_verum_falsum(null) :- not subset_inter_verum_table_subset_verum_falsum(null).
subset_inter_verum_table_subset_verum_robot(null) :- subset_verum_robot(null) : inter_verum_table(X0).
-subset_inter_verum_table_subset_verum_robot(null) :- not subset_inter_verum_table_subset_verum_robot(null).
subset_inter_verum_table_subset_verum_block(null) :- subset_verum_block(null) : inter_verum_table(X0).
-subset_inter_verum_table_subset_verum_block(null) :- not subset_inter_verum_table_subset_verum_block(null).
subset_inter_verum_table_subset_verum_table(null) :- subset_verum_table(null) : inter_verum_table(X0).
-subset_inter_verum_table_subset_verum_table(null) :- not subset_inter_verum_table_subset_verum_table(null).
subset_inter_verum_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : inter_verum_table(X0).
-subset_inter_verum_table_subset_falsum_robot(null) :- not subset_inter_verum_table_subset_falsum_robot(null).
subset_inter_verum_table_subset_falsum_block(null) :- subset_falsum_block(null) : inter_verum_table(X0).
-subset_inter_verum_table_subset_falsum_block(null) :- not subset_inter_verum_table_subset_falsum_block(null).
subset_inter_verum_table_subset_falsum_table(null) :- subset_falsum_table(null) : inter_verum_table(X0).
-subset_inter_verum_table_subset_falsum_table(null) :- not subset_inter_verum_table_subset_falsum_table(null).
subset_inter_verum_table_subset_robot_block(null) :- subset_robot_block(null) : inter_verum_table(X0).
-subset_inter_verum_table_subset_robot_block(null) :- not subset_inter_verum_table_subset_robot_block(null).
subset_inter_verum_table_subset_robot_table(null) :- subset_robot_table(null) : inter_verum_table(X0).
-subset_inter_verum_table_subset_robot_table(null) :- not subset_inter_verum_table_subset_robot_table(null).
subset_inter_verum_table_subset_block_table(null) :- subset_block_table(null) : inter_verum_table(X0).
-subset_inter_verum_table_subset_block_table(null) :- not subset_inter_verum_table_subset_block_table(null).
subset_inter_falsum_robot_inter_falsum_block(null) :- inter_falsum_block(X0) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_inter_falsum_block(null) :- not subset_inter_falsum_robot_inter_falsum_block(null).
subset_inter_falsum_robot_inter_falsum_table(null) :- inter_falsum_table(X0) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_inter_falsum_table(null) :- not subset_inter_falsum_robot_inter_falsum_table(null).
subset_inter_falsum_robot_inter_robot_block(null) :- inter_robot_block(X0) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_inter_robot_block(null) :- not subset_inter_falsum_robot_inter_robot_block(null).
subset_inter_falsum_robot_inter_robot_table(null) :- inter_robot_table(X0) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_inter_robot_table(null) :- not subset_inter_falsum_robot_inter_robot_table(null).
subset_inter_falsum_robot_inter_block_table(null) :- inter_block_table(X0) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_inter_block_table(null) :- not subset_inter_falsum_robot_inter_block_table(null).
subset_inter_falsum_robot_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_subset_verum_falsum(null) :- not subset_inter_falsum_robot_subset_verum_falsum(null).
subset_inter_falsum_robot_subset_verum_robot(null) :- subset_verum_robot(null) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_subset_verum_robot(null) :- not subset_inter_falsum_robot_subset_verum_robot(null).
subset_inter_falsum_robot_subset_verum_block(null) :- subset_verum_block(null) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_subset_verum_block(null) :- not subset_inter_falsum_robot_subset_verum_block(null).
subset_inter_falsum_robot_subset_verum_table(null) :- subset_verum_table(null) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_subset_verum_table(null) :- not subset_inter_falsum_robot_subset_verum_table(null).
subset_inter_falsum_robot_subset_falsum_robot(null) :- subset_falsum_robot(null) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_subset_falsum_robot(null) :- not subset_inter_falsum_robot_subset_falsum_robot(null).
subset_inter_falsum_robot_subset_falsum_block(null) :- subset_falsum_block(null) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_subset_falsum_block(null) :- not subset_inter_falsum_robot_subset_falsum_block(null).
subset_inter_falsum_robot_subset_falsum_table(null) :- subset_falsum_table(null) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_subset_falsum_table(null) :- not subset_inter_falsum_robot_subset_falsum_table(null).
subset_inter_falsum_robot_subset_robot_block(null) :- subset_robot_block(null) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_subset_robot_block(null) :- not subset_inter_falsum_robot_subset_robot_block(null).
subset_inter_falsum_robot_subset_robot_table(null) :- subset_robot_table(null) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_subset_robot_table(null) :- not subset_inter_falsum_robot_subset_robot_table(null).
subset_inter_falsum_robot_subset_block_table(null) :- subset_block_table(null) : inter_falsum_robot(X0).
-subset_inter_falsum_robot_subset_block_table(null) :- not subset_inter_falsum_robot_subset_block_table(null).
subset_inter_falsum_block_inter_falsum_table(null) :- inter_falsum_table(X0) : inter_falsum_block(X0).
-subset_inter_falsum_block_inter_falsum_table(null) :- not subset_inter_falsum_block_inter_falsum_table(null).
subset_inter_falsum_block_inter_robot_block(null) :- inter_robot_block(X0) : inter_falsum_block(X0).
-subset_inter_falsum_block_inter_robot_block(null) :- not subset_inter_falsum_block_inter_robot_block(null).
subset_inter_falsum_block_inter_robot_table(null) :- inter_robot_table(X0) : inter_falsum_block(X0).
-subset_inter_falsum_block_inter_robot_table(null) :- not subset_inter_falsum_block_inter_robot_table(null).
subset_inter_falsum_block_inter_block_table(null) :- inter_block_table(X0) : inter_falsum_block(X0).
-subset_inter_falsum_block_inter_block_table(null) :- not subset_inter_falsum_block_inter_block_table(null).
subset_inter_falsum_block_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_falsum_block(X0).
-subset_inter_falsum_block_subset_verum_falsum(null) :- not subset_inter_falsum_block_subset_verum_falsum(null).
subset_inter_falsum_block_subset_verum_robot(null) :- subset_verum_robot(null) : inter_falsum_block(X0).
-subset_inter_falsum_block_subset_verum_robot(null) :- not subset_inter_falsum_block_subset_verum_robot(null).
subset_inter_falsum_block_subset_verum_block(null) :- subset_verum_block(null) : inter_falsum_block(X0).
-subset_inter_falsum_block_subset_verum_block(null) :- not subset_inter_falsum_block_subset_verum_block(null).
subset_inter_falsum_block_subset_verum_table(null) :- subset_verum_table(null) : inter_falsum_block(X0).
-subset_inter_falsum_block_subset_verum_table(null) :- not subset_inter_falsum_block_subset_verum_table(null).
subset_inter_falsum_block_subset_falsum_robot(null) :- subset_falsum_robot(null) : inter_falsum_block(X0).
-subset_inter_falsum_block_subset_falsum_robot(null) :- not subset_inter_falsum_block_subset_falsum_robot(null).
subset_inter_falsum_block_subset_falsum_block(null) :- subset_falsum_block(null) : inter_falsum_block(X0).
-subset_inter_falsum_block_subset_falsum_block(null) :- not subset_inter_falsum_block_subset_falsum_block(null).
subset_inter_falsum_block_subset_falsum_table(null) :- subset_falsum_table(null) : inter_falsum_block(X0).
-subset_inter_falsum_block_subset_falsum_table(null) :- not subset_inter_falsum_block_subset_falsum_table(null).
subset_inter_falsum_block_subset_robot_block(null) :- subset_robot_block(null) : inter_falsum_block(X0).
-subset_inter_falsum_block_subset_robot_block(null) :- not subset_inter_falsum_block_subset_robot_block(null).
subset_inter_falsum_block_subset_robot_table(null) :- subset_robot_table(null) : inter_falsum_block(X0).
-subset_inter_falsum_block_subset_robot_table(null) :- not subset_inter_falsum_block_subset_robot_table(null).
subset_inter_falsum_block_subset_block_table(null) :- subset_block_table(null) : inter_falsum_block(X0).
-subset_inter_falsum_block_subset_block_table(null) :- not subset_inter_falsum_block_subset_block_table(null).
subset_inter_falsum_table_inter_robot_block(null) :- inter_robot_block(X0) : inter_falsum_table(X0).
-subset_inter_falsum_table_inter_robot_block(null) :- not subset_inter_falsum_table_inter_robot_block(null).
subset_inter_falsum_table_inter_robot_table(null) :- inter_robot_table(X0) : inter_falsum_table(X0).
-subset_inter_falsum_table_inter_robot_table(null) :- not subset_inter_falsum_table_inter_robot_table(null).
subset_inter_falsum_table_inter_block_table(null) :- inter_block_table(X0) : inter_falsum_table(X0).
-subset_inter_falsum_table_inter_block_table(null) :- not subset_inter_falsum_table_inter_block_table(null).
subset_inter_falsum_table_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_falsum_table(X0).
-subset_inter_falsum_table_subset_verum_falsum(null) :- not subset_inter_falsum_table_subset_verum_falsum(null).
subset_inter_falsum_table_subset_verum_robot(null) :- subset_verum_robot(null) : inter_falsum_table(X0).
-subset_inter_falsum_table_subset_verum_robot(null) :- not subset_inter_falsum_table_subset_verum_robot(null).
subset_inter_falsum_table_subset_verum_block(null) :- subset_verum_block(null) : inter_falsum_table(X0).
-subset_inter_falsum_table_subset_verum_block(null) :- not subset_inter_falsum_table_subset_verum_block(null).
subset_inter_falsum_table_subset_verum_table(null) :- subset_verum_table(null) : inter_falsum_table(X0).
-subset_inter_falsum_table_subset_verum_table(null) :- not subset_inter_falsum_table_subset_verum_table(null).
subset_inter_falsum_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : inter_falsum_table(X0).
-subset_inter_falsum_table_subset_falsum_robot(null) :- not subset_inter_falsum_table_subset_falsum_robot(null).
subset_inter_falsum_table_subset_falsum_block(null) :- subset_falsum_block(null) : inter_falsum_table(X0).
-subset_inter_falsum_table_subset_falsum_block(null) :- not subset_inter_falsum_table_subset_falsum_block(null).
subset_inter_falsum_table_subset_falsum_table(null) :- subset_falsum_table(null) : inter_falsum_table(X0).
-subset_inter_falsum_table_subset_falsum_table(null) :- not subset_inter_falsum_table_subset_falsum_table(null).
subset_inter_falsum_table_subset_robot_block(null) :- subset_robot_block(null) : inter_falsum_table(X0).
-subset_inter_falsum_table_subset_robot_block(null) :- not subset_inter_falsum_table_subset_robot_block(null).
subset_inter_falsum_table_subset_robot_table(null) :- subset_robot_table(null) : inter_falsum_table(X0).
-subset_inter_falsum_table_subset_robot_table(null) :- not subset_inter_falsum_table_subset_robot_table(null).
subset_inter_falsum_table_subset_block_table(null) :- subset_block_table(null) : inter_falsum_table(X0).
-subset_inter_falsum_table_subset_block_table(null) :- not subset_inter_falsum_table_subset_block_table(null).
subset_inter_robot_block_inter_robot_table(null) :- inter_robot_table(X0) : inter_robot_block(X0).
-subset_inter_robot_block_inter_robot_table(null) :- not subset_inter_robot_block_inter_robot_table(null).
subset_inter_robot_block_inter_block_table(null) :- inter_block_table(X0) : inter_robot_block(X0).
-subset_inter_robot_block_inter_block_table(null) :- not subset_inter_robot_block_inter_block_table(null).
subset_inter_robot_block_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_robot_block(X0).
-subset_inter_robot_block_subset_verum_falsum(null) :- not subset_inter_robot_block_subset_verum_falsum(null).
subset_inter_robot_block_subset_verum_robot(null) :- subset_verum_robot(null) : inter_robot_block(X0).
-subset_inter_robot_block_subset_verum_robot(null) :- not subset_inter_robot_block_subset_verum_robot(null).
subset_inter_robot_block_subset_verum_block(null) :- subset_verum_block(null) : inter_robot_block(X0).
-subset_inter_robot_block_subset_verum_block(null) :- not subset_inter_robot_block_subset_verum_block(null).
subset_inter_robot_block_subset_verum_table(null) :- subset_verum_table(null) : inter_robot_block(X0).
-subset_inter_robot_block_subset_verum_table(null) :- not subset_inter_robot_block_subset_verum_table(null).
subset_inter_robot_block_subset_falsum_robot(null) :- subset_falsum_robot(null) : inter_robot_block(X0).
-subset_inter_robot_block_subset_falsum_robot(null) :- not subset_inter_robot_block_subset_falsum_robot(null).
subset_inter_robot_block_subset_falsum_block(null) :- subset_falsum_block(null) : inter_robot_block(X0).
-subset_inter_robot_block_subset_falsum_block(null) :- not subset_inter_robot_block_subset_falsum_block(null).
subset_inter_robot_block_subset_falsum_table(null) :- subset_falsum_table(null) : inter_robot_block(X0).
-subset_inter_robot_block_subset_falsum_table(null) :- not subset_inter_robot_block_subset_falsum_table(null).
subset_inter_robot_block_subset_robot_block(null) :- subset_robot_block(null) : inter_robot_block(X0).
-subset_inter_robot_block_subset_robot_block(null) :- not subset_inter_robot_block_subset_robot_block(null).
subset_inter_robot_block_subset_robot_table(null) :- subset_robot_table(null) : inter_robot_block(X0).
-subset_inter_robot_block_subset_robot_table(null) :- not subset_inter_robot_block_subset_robot_table(null).
subset_inter_robot_block_subset_block_table(null) :- subset_block_table(null) : inter_robot_block(X0).
-subset_inter_robot_block_subset_block_table(null) :- not subset_inter_robot_block_subset_block_table(null).
subset_inter_robot_table_inter_block_table(null) :- inter_block_table(X0) : inter_robot_table(X0).
-subset_inter_robot_table_inter_block_table(null) :- not subset_inter_robot_table_inter_block_table(null).
subset_inter_robot_table_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_robot_table(X0).
-subset_inter_robot_table_subset_verum_falsum(null) :- not subset_inter_robot_table_subset_verum_falsum(null).
subset_inter_robot_table_subset_verum_robot(null) :- subset_verum_robot(null) : inter_robot_table(X0).
-subset_inter_robot_table_subset_verum_robot(null) :- not subset_inter_robot_table_subset_verum_robot(null).
subset_inter_robot_table_subset_verum_block(null) :- subset_verum_block(null) : inter_robot_table(X0).
-subset_inter_robot_table_subset_verum_block(null) :- not subset_inter_robot_table_subset_verum_block(null).
subset_inter_robot_table_subset_verum_table(null) :- subset_verum_table(null) : inter_robot_table(X0).
-subset_inter_robot_table_subset_verum_table(null) :- not subset_inter_robot_table_subset_verum_table(null).
subset_inter_robot_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : inter_robot_table(X0).
-subset_inter_robot_table_subset_falsum_robot(null) :- not subset_inter_robot_table_subset_falsum_robot(null).
subset_inter_robot_table_subset_falsum_block(null) :- subset_falsum_block(null) : inter_robot_table(X0).
-subset_inter_robot_table_subset_falsum_block(null) :- not subset_inter_robot_table_subset_falsum_block(null).
subset_inter_robot_table_subset_falsum_table(null) :- subset_falsum_table(null) : inter_robot_table(X0).
-subset_inter_robot_table_subset_falsum_table(null) :- not subset_inter_robot_table_subset_falsum_table(null).
subset_inter_robot_table_subset_robot_block(null) :- subset_robot_block(null) : inter_robot_table(X0).
-subset_inter_robot_table_subset_robot_block(null) :- not subset_inter_robot_table_subset_robot_block(null).
subset_inter_robot_table_subset_robot_table(null) :- subset_robot_table(null) : inter_robot_table(X0).
-subset_inter_robot_table_subset_robot_table(null) :- not subset_inter_robot_table_subset_robot_table(null).
subset_inter_robot_table_subset_block_table(null) :- subset_block_table(null) : inter_robot_table(X0).
-subset_inter_robot_table_subset_block_table(null) :- not subset_inter_robot_table_subset_block_table(null).
subset_inter_block_table_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_block_table(X0).
-subset_inter_block_table_subset_verum_falsum(null) :- not subset_inter_block_table_subset_verum_falsum(null).
subset_inter_block_table_subset_verum_robot(null) :- subset_verum_robot(null) : inter_block_table(X0).
-subset_inter_block_table_subset_verum_robot(null) :- not subset_inter_block_table_subset_verum_robot(null).
subset_inter_block_table_subset_verum_block(null) :- subset_verum_block(null) : inter_block_table(X0).
-subset_inter_block_table_subset_verum_block(null) :- not subset_inter_block_table_subset_verum_block(null).
subset_inter_block_table_subset_verum_table(null) :- subset_verum_table(null) : inter_block_table(X0).
-subset_inter_block_table_subset_verum_table(null) :- not subset_inter_block_table_subset_verum_table(null).
subset_inter_block_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : inter_block_table(X0).
-subset_inter_block_table_subset_falsum_robot(null) :- not subset_inter_block_table_subset_falsum_robot(null).
subset_inter_block_table_subset_falsum_block(null) :- subset_falsum_block(null) : inter_block_table(X0).
-subset_inter_block_table_subset_falsum_block(null) :- not subset_inter_block_table_subset_falsum_block(null).
subset_inter_block_table_subset_falsum_table(null) :- subset_falsum_table(null) : inter_block_table(X0).
-subset_inter_block_table_subset_falsum_table(null) :- not subset_inter_block_table_subset_falsum_table(null).
subset_inter_block_table_subset_robot_block(null) :- subset_robot_block(null) : inter_block_table(X0).
-subset_inter_block_table_subset_robot_block(null) :- not subset_inter_block_table_subset_robot_block(null).
subset_inter_block_table_subset_robot_table(null) :- subset_robot_table(null) : inter_block_table(X0).
-subset_inter_block_table_subset_robot_table(null) :- not subset_inter_block_table_subset_robot_table(null).
subset_inter_block_table_subset_block_table(null) :- subset_block_table(null) : inter_block_table(X0).
-subset_inter_block_table_subset_block_table(null) :- not subset_inter_block_table_subset_block_table(null).
subset_subset_verum_falsum_subset_verum_robot(null) :- subset_verum_robot(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_verum_robot(null) :- not subset_subset_verum_falsum_subset_verum_robot(null).
subset_subset_verum_falsum_subset_verum_block(null) :- subset_verum_block(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_verum_block(null) :- not subset_subset_verum_falsum_subset_verum_block(null).
subset_subset_verum_falsum_subset_verum_table(null) :- subset_verum_table(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_verum_table(null) :- not subset_subset_verum_falsum_subset_verum_table(null).
subset_subset_verum_falsum_subset_falsum_robot(null) :- subset_falsum_robot(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_falsum_robot(null) :- not subset_subset_verum_falsum_subset_falsum_robot(null).
subset_subset_verum_falsum_subset_falsum_block(null) :- subset_falsum_block(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_falsum_block(null) :- not subset_subset_verum_falsum_subset_falsum_block(null).
subset_subset_verum_falsum_subset_falsum_table(null) :- subset_falsum_table(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_falsum_table(null) :- not subset_subset_verum_falsum_subset_falsum_table(null).
subset_subset_verum_falsum_subset_robot_block(null) :- subset_robot_block(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_robot_block(null) :- not subset_subset_verum_falsum_subset_robot_block(null).
subset_subset_verum_falsum_subset_robot_table(null) :- subset_robot_table(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_robot_table(null) :- not subset_subset_verum_falsum_subset_robot_table(null).
subset_subset_verum_falsum_subset_block_table(null) :- subset_block_table(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_block_table(null) :- not subset_subset_verum_falsum_subset_block_table(null).
subset_subset_verum_robot_subset_verum_block(null) :- subset_verum_block(null) : subset_verum_robot(null).
-subset_subset_verum_robot_subset_verum_block(null) :- not subset_subset_verum_robot_subset_verum_block(null).
subset_subset_verum_robot_subset_verum_table(null) :- subset_verum_table(null) : subset_verum_robot(null).
-subset_subset_verum_robot_subset_verum_table(null) :- not subset_subset_verum_robot_subset_verum_table(null).
subset_subset_verum_robot_subset_falsum_robot(null) :- subset_falsum_robot(null) : subset_verum_robot(null).
-subset_subset_verum_robot_subset_falsum_robot(null) :- not subset_subset_verum_robot_subset_falsum_robot(null).
subset_subset_verum_robot_subset_falsum_block(null) :- subset_falsum_block(null) : subset_verum_robot(null).
-subset_subset_verum_robot_subset_falsum_block(null) :- not subset_subset_verum_robot_subset_falsum_block(null).
subset_subset_verum_robot_subset_falsum_table(null) :- subset_falsum_table(null) : subset_verum_robot(null).
-subset_subset_verum_robot_subset_falsum_table(null) :- not subset_subset_verum_robot_subset_falsum_table(null).
subset_subset_verum_robot_subset_robot_block(null) :- subset_robot_block(null) : subset_verum_robot(null).
-subset_subset_verum_robot_subset_robot_block(null) :- not subset_subset_verum_robot_subset_robot_block(null).
subset_subset_verum_robot_subset_robot_table(null) :- subset_robot_table(null) : subset_verum_robot(null).
-subset_subset_verum_robot_subset_robot_table(null) :- not subset_subset_verum_robot_subset_robot_table(null).
subset_subset_verum_robot_subset_block_table(null) :- subset_block_table(null) : subset_verum_robot(null).
-subset_subset_verum_robot_subset_block_table(null) :- not subset_subset_verum_robot_subset_block_table(null).
subset_subset_verum_block_subset_verum_table(null) :- subset_verum_table(null) : subset_verum_block(null).
-subset_subset_verum_block_subset_verum_table(null) :- not subset_subset_verum_block_subset_verum_table(null).
subset_subset_verum_block_subset_falsum_robot(null) :- subset_falsum_robot(null) : subset_verum_block(null).
-subset_subset_verum_block_subset_falsum_robot(null) :- not subset_subset_verum_block_subset_falsum_robot(null).
subset_subset_verum_block_subset_falsum_block(null) :- subset_falsum_block(null) : subset_verum_block(null).
-subset_subset_verum_block_subset_falsum_block(null) :- not subset_subset_verum_block_subset_falsum_block(null).
subset_subset_verum_block_subset_falsum_table(null) :- subset_falsum_table(null) : subset_verum_block(null).
-subset_subset_verum_block_subset_falsum_table(null) :- not subset_subset_verum_block_subset_falsum_table(null).
subset_subset_verum_block_subset_robot_block(null) :- subset_robot_block(null) : subset_verum_block(null).
-subset_subset_verum_block_subset_robot_block(null) :- not subset_subset_verum_block_subset_robot_block(null).
subset_subset_verum_block_subset_robot_table(null) :- subset_robot_table(null) : subset_verum_block(null).
-subset_subset_verum_block_subset_robot_table(null) :- not subset_subset_verum_block_subset_robot_table(null).
subset_subset_verum_block_subset_block_table(null) :- subset_block_table(null) : subset_verum_block(null).
-subset_subset_verum_block_subset_block_table(null) :- not subset_subset_verum_block_subset_block_table(null).
subset_subset_verum_table_subset_falsum_robot(null) :- subset_falsum_robot(null) : subset_verum_table(null).
-subset_subset_verum_table_subset_falsum_robot(null) :- not subset_subset_verum_table_subset_falsum_robot(null).
subset_subset_verum_table_subset_falsum_block(null) :- subset_falsum_block(null) : subset_verum_table(null).
-subset_subset_verum_table_subset_falsum_block(null) :- not subset_subset_verum_table_subset_falsum_block(null).
subset_subset_verum_table_subset_falsum_table(null) :- subset_falsum_table(null) : subset_verum_table(null).
-subset_subset_verum_table_subset_falsum_table(null) :- not subset_subset_verum_table_subset_falsum_table(null).
subset_subset_verum_table_subset_robot_block(null) :- subset_robot_block(null) : subset_verum_table(null).
-subset_subset_verum_table_subset_robot_block(null) :- not subset_subset_verum_table_subset_robot_block(null).
subset_subset_verum_table_subset_robot_table(null) :- subset_robot_table(null) : subset_verum_table(null).
-subset_subset_verum_table_subset_robot_table(null) :- not subset_subset_verum_table_subset_robot_table(null).
subset_subset_verum_table_subset_block_table(null) :- subset_block_table(null) : subset_verum_table(null).
-subset_subset_verum_table_subset_block_table(null) :- not subset_subset_verum_table_subset_block_table(null).
subset_subset_falsum_robot_subset_falsum_block(null) :- subset_falsum_block(null) : subset_falsum_robot(null).
-subset_subset_falsum_robot_subset_falsum_block(null) :- not subset_subset_falsum_robot_subset_falsum_block(null).
subset_subset_falsum_robot_subset_falsum_table(null) :- subset_falsum_table(null) : subset_falsum_robot(null).
-subset_subset_falsum_robot_subset_falsum_table(null) :- not subset_subset_falsum_robot_subset_falsum_table(null).
subset_subset_falsum_robot_subset_robot_block(null) :- subset_robot_block(null) : subset_falsum_robot(null).
-subset_subset_falsum_robot_subset_robot_block(null) :- not subset_subset_falsum_robot_subset_robot_block(null).
subset_subset_falsum_robot_subset_robot_table(null) :- subset_robot_table(null) : subset_falsum_robot(null).
-subset_subset_falsum_robot_subset_robot_table(null) :- not subset_subset_falsum_robot_subset_robot_table(null).
subset_subset_falsum_robot_subset_block_table(null) :- subset_block_table(null) : subset_falsum_robot(null).
-subset_subset_falsum_robot_subset_block_table(null) :- not subset_subset_falsum_robot_subset_block_table(null).
subset_subset_falsum_block_subset_falsum_table(null) :- subset_falsum_table(null) : subset_falsum_block(null).
-subset_subset_falsum_block_subset_falsum_table(null) :- not subset_subset_falsum_block_subset_falsum_table(null).
subset_subset_falsum_block_subset_robot_block(null) :- subset_robot_block(null) : subset_falsum_block(null).
-subset_subset_falsum_block_subset_robot_block(null) :- not subset_subset_falsum_block_subset_robot_block(null).
subset_subset_falsum_block_subset_robot_table(null) :- subset_robot_table(null) : subset_falsum_block(null).
-subset_subset_falsum_block_subset_robot_table(null) :- not subset_subset_falsum_block_subset_robot_table(null).
subset_subset_falsum_block_subset_block_table(null) :- subset_block_table(null) : subset_falsum_block(null).
-subset_subset_falsum_block_subset_block_table(null) :- not subset_subset_falsum_block_subset_block_table(null).
subset_subset_falsum_table_subset_robot_block(null) :- subset_robot_block(null) : subset_falsum_table(null).
-subset_subset_falsum_table_subset_robot_block(null) :- not subset_subset_falsum_table_subset_robot_block(null).
subset_subset_falsum_table_subset_robot_table(null) :- subset_robot_table(null) : subset_falsum_table(null).
-subset_subset_falsum_table_subset_robot_table(null) :- not subset_subset_falsum_table_subset_robot_table(null).
subset_subset_falsum_table_subset_block_table(null) :- subset_block_table(null) : subset_falsum_table(null).
-subset_subset_falsum_table_subset_block_table(null) :- not subset_subset_falsum_table_subset_block_table(null).
subset_subset_robot_block_subset_robot_table(null) :- subset_robot_table(null) : subset_robot_block(null).
-subset_subset_robot_block_subset_robot_table(null) :- not subset_subset_robot_block_subset_robot_table(null).
subset_subset_robot_block_subset_block_table(null) :- subset_block_table(null) : subset_robot_block(null).
-subset_subset_robot_block_subset_block_table(null) :- not subset_subset_robot_block_subset_block_table(null).
subset_subset_robot_table_subset_block_table(null) :- subset_block_table(null) : subset_robot_table(null).
-subset_subset_robot_table_subset_block_table(null) :- not subset_subset_robot_table_subset_block_table(null).

%%%%%%%%%%%%%%%%%%% LEVEL 1 ROLES %%%%%%%%%%%%%%%%%%%
inv_inv_smaller(X0,X1) :- inv_smaller(X1,X0).
-inv_inv_smaller(X0,X1) :- object(X0),object(X1),not inv_inv_smaller(X0,X1).
inv_inv_below(X0,X1) :- inv_below(X1,X0).
-inv_inv_below(X0,X1) :- object(X0),object(X1),not inv_inv_below(X0,X1).
inv_inv_left(X0,X1) :- inv_left(X1,X0).
-inv_inv_left(X0,X1) :- object(X0),object(X1),not inv_inv_left(X0,X1).
inv_inv_overlap(X0,X1) :- inv_overlap(X1,X0).
-inv_inv_overlap(X0,X1) :- object(X0),object(X1),not inv_inv_overlap(X0,X1).
inv_inv_shape(X0,X1) :- inv_shape(X1,X0).
-inv_inv_shape(X0,X1) :- object(X0),object(X1),not inv_inv_shape(X0,X1).
inv_comp_smaller_below(X0,X1) :- comp_smaller_below(X1,X0).
-inv_comp_smaller_below(X0,X1) :- object(X0),object(X1),not inv_comp_smaller_below(X0,X1).
inv_comp_smaller_left(X0,X1) :- comp_smaller_left(X1,X0).
-inv_comp_smaller_left(X0,X1) :- object(X0),object(X1),not inv_comp_smaller_left(X0,X1).
inv_comp_smaller_overlap(X0,X1) :- comp_smaller_overlap(X1,X0).
-inv_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not inv_comp_smaller_overlap(X0,X1).
inv_comp_smaller_shape(X0,X1) :- comp_smaller_shape(X1,X0).
-inv_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not inv_comp_smaller_shape(X0,X1).
inv_comp_below_left(X0,X1) :- comp_below_left(X1,X0).
-inv_comp_below_left(X0,X1) :- object(X0),object(X1),not inv_comp_below_left(X0,X1).
inv_comp_below_overlap(X0,X1) :- comp_below_overlap(X1,X0).
-inv_comp_below_overlap(X0,X1) :- object(X0),object(X1),not inv_comp_below_overlap(X0,X1).
inv_comp_below_shape(X0,X1) :- comp_below_shape(X1,X0).
-inv_comp_below_shape(X0,X1) :- object(X0),object(X1),not inv_comp_below_shape(X0,X1).
inv_comp_left_overlap(X0,X1) :- comp_left_overlap(X1,X0).
-inv_comp_left_overlap(X0,X1) :- object(X0),object(X1),not inv_comp_left_overlap(X0,X1).
inv_comp_left_shape(X0,X1) :- comp_left_shape(X1,X0).
-inv_comp_left_shape(X0,X1) :- object(X0),object(X1),not inv_comp_left_shape(X0,X1).
inv_comp_overlap_shape(X0,X1) :- comp_overlap_shape(X1,X0).
-inv_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not inv_comp_overlap_shape(X0,X1).
comp_smaller_inv_smaller(X0,X1) :- smaller(X0,X2),inv_smaller(X2,X1).
-comp_smaller_inv_smaller(X0,X1) :- object(X0),object(X1),not comp_smaller_inv_smaller(X0,X1).
comp_smaller_inv_below(X0,X1) :- smaller(X0,X2),inv_below(X2,X1).
-comp_smaller_inv_below(X0,X1) :- object(X0),object(X1),not comp_smaller_inv_below(X0,X1).
comp_smaller_inv_left(X0,X1) :- smaller(X0,X2),inv_left(X2,X1).
-comp_smaller_inv_left(X0,X1) :- object(X0),object(X1),not comp_smaller_inv_left(X0,X1).
comp_smaller_inv_overlap(X0,X1) :- smaller(X0,X2),inv_overlap(X2,X1).
-comp_smaller_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_smaller_inv_overlap(X0,X1).
comp_smaller_inv_shape(X0,X1) :- smaller(X0,X2),inv_shape(X2,X1).
-comp_smaller_inv_shape(X0,X1) :- object(X0),object(X1),not comp_smaller_inv_shape(X0,X1).
comp_smaller_comp_smaller_below(X0,X1) :- smaller(X0,X2),comp_smaller_below(X2,X1).
-comp_smaller_comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_smaller_comp_smaller_below(X0,X1).
comp_smaller_comp_smaller_left(X0,X1) :- smaller(X0,X2),comp_smaller_left(X2,X1).
-comp_smaller_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_smaller_comp_smaller_left(X0,X1).
comp_smaller_comp_smaller_overlap(X0,X1) :- smaller(X0,X2),comp_smaller_overlap(X2,X1).
-comp_smaller_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_smaller_comp_smaller_overlap(X0,X1).
comp_smaller_comp_smaller_shape(X0,X1) :- smaller(X0,X2),comp_smaller_shape(X2,X1).
-comp_smaller_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_smaller_comp_smaller_shape(X0,X1).
comp_smaller_comp_below_left(X0,X1) :- smaller(X0,X2),comp_below_left(X2,X1).
-comp_smaller_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_smaller_comp_below_left(X0,X1).
comp_smaller_comp_below_overlap(X0,X1) :- smaller(X0,X2),comp_below_overlap(X2,X1).
-comp_smaller_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_smaller_comp_below_overlap(X0,X1).
comp_smaller_comp_below_shape(X0,X1) :- smaller(X0,X2),comp_below_shape(X2,X1).
-comp_smaller_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_smaller_comp_below_shape(X0,X1).
comp_smaller_comp_left_overlap(X0,X1) :- smaller(X0,X2),comp_left_overlap(X2,X1).
-comp_smaller_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_smaller_comp_left_overlap(X0,X1).
comp_smaller_comp_left_shape(X0,X1) :- smaller(X0,X2),comp_left_shape(X2,X1).
-comp_smaller_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_smaller_comp_left_shape(X0,X1).
comp_smaller_comp_overlap_shape(X0,X1) :- smaller(X0,X2),comp_overlap_shape(X2,X1).
-comp_smaller_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_smaller_comp_overlap_shape(X0,X1).
comp_below_inv_smaller(X0,X1) :- below(X0,X2),inv_smaller(X2,X1).
-comp_below_inv_smaller(X0,X1) :- object(X0),object(X1),not comp_below_inv_smaller(X0,X1).
comp_below_inv_below(X0,X1) :- below(X0,X2),inv_below(X2,X1).
-comp_below_inv_below(X0,X1) :- object(X0),object(X1),not comp_below_inv_below(X0,X1).
comp_below_inv_left(X0,X1) :- below(X0,X2),inv_left(X2,X1).
-comp_below_inv_left(X0,X1) :- object(X0),object(X1),not comp_below_inv_left(X0,X1).
comp_below_inv_overlap(X0,X1) :- below(X0,X2),inv_overlap(X2,X1).
-comp_below_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_below_inv_overlap(X0,X1).
comp_below_inv_shape(X0,X1) :- below(X0,X2),inv_shape(X2,X1).
-comp_below_inv_shape(X0,X1) :- object(X0),object(X1),not comp_below_inv_shape(X0,X1).
comp_below_comp_smaller_below(X0,X1) :- below(X0,X2),comp_smaller_below(X2,X1).
-comp_below_comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_below_comp_smaller_below(X0,X1).
comp_below_comp_smaller_left(X0,X1) :- below(X0,X2),comp_smaller_left(X2,X1).
-comp_below_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_below_comp_smaller_left(X0,X1).
comp_below_comp_smaller_overlap(X0,X1) :- below(X0,X2),comp_smaller_overlap(X2,X1).
-comp_below_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_below_comp_smaller_overlap(X0,X1).
comp_below_comp_smaller_shape(X0,X1) :- below(X0,X2),comp_smaller_shape(X2,X1).
-comp_below_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_below_comp_smaller_shape(X0,X1).
comp_below_comp_below_left(X0,X1) :- below(X0,X2),comp_below_left(X2,X1).
-comp_below_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_below_comp_below_left(X0,X1).
comp_below_comp_below_overlap(X0,X1) :- below(X0,X2),comp_below_overlap(X2,X1).
-comp_below_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_below_comp_below_overlap(X0,X1).
comp_below_comp_below_shape(X0,X1) :- below(X0,X2),comp_below_shape(X2,X1).
-comp_below_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_below_comp_below_shape(X0,X1).
comp_below_comp_left_overlap(X0,X1) :- below(X0,X2),comp_left_overlap(X2,X1).
-comp_below_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_below_comp_left_overlap(X0,X1).
comp_below_comp_left_shape(X0,X1) :- below(X0,X2),comp_left_shape(X2,X1).
-comp_below_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_below_comp_left_shape(X0,X1).
comp_below_comp_overlap_shape(X0,X1) :- below(X0,X2),comp_overlap_shape(X2,X1).
-comp_below_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_below_comp_overlap_shape(X0,X1).
comp_left_inv_smaller(X0,X1) :- left(X0,X2),inv_smaller(X2,X1).
-comp_left_inv_smaller(X0,X1) :- object(X0),object(X1),not comp_left_inv_smaller(X0,X1).
comp_left_inv_below(X0,X1) :- left(X0,X2),inv_below(X2,X1).
-comp_left_inv_below(X0,X1) :- object(X0),object(X1),not comp_left_inv_below(X0,X1).
comp_left_inv_left(X0,X1) :- left(X0,X2),inv_left(X2,X1).
-comp_left_inv_left(X0,X1) :- object(X0),object(X1),not comp_left_inv_left(X0,X1).
comp_left_inv_overlap(X0,X1) :- left(X0,X2),inv_overlap(X2,X1).
-comp_left_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_left_inv_overlap(X0,X1).
comp_left_inv_shape(X0,X1) :- left(X0,X2),inv_shape(X2,X1).
-comp_left_inv_shape(X0,X1) :- object(X0),object(X1),not comp_left_inv_shape(X0,X1).
comp_left_comp_smaller_below(X0,X1) :- left(X0,X2),comp_smaller_below(X2,X1).
-comp_left_comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_left_comp_smaller_below(X0,X1).
comp_left_comp_smaller_left(X0,X1) :- left(X0,X2),comp_smaller_left(X2,X1).
-comp_left_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_left_comp_smaller_left(X0,X1).
comp_left_comp_smaller_overlap(X0,X1) :- left(X0,X2),comp_smaller_overlap(X2,X1).
-comp_left_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_left_comp_smaller_overlap(X0,X1).
comp_left_comp_smaller_shape(X0,X1) :- left(X0,X2),comp_smaller_shape(X2,X1).
-comp_left_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_left_comp_smaller_shape(X0,X1).
comp_left_comp_below_left(X0,X1) :- left(X0,X2),comp_below_left(X2,X1).
-comp_left_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_left_comp_below_left(X0,X1).
comp_left_comp_below_overlap(X0,X1) :- left(X0,X2),comp_below_overlap(X2,X1).
-comp_left_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_left_comp_below_overlap(X0,X1).
comp_left_comp_below_shape(X0,X1) :- left(X0,X2),comp_below_shape(X2,X1).
-comp_left_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_left_comp_below_shape(X0,X1).
comp_left_comp_left_overlap(X0,X1) :- left(X0,X2),comp_left_overlap(X2,X1).
-comp_left_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_left_comp_left_overlap(X0,X1).
comp_left_comp_left_shape(X0,X1) :- left(X0,X2),comp_left_shape(X2,X1).
-comp_left_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_left_comp_left_shape(X0,X1).
comp_left_comp_overlap_shape(X0,X1) :- left(X0,X2),comp_overlap_shape(X2,X1).
-comp_left_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_left_comp_overlap_shape(X0,X1).
comp_overlap_inv_smaller(X0,X1) :- overlap(X0,X2),inv_smaller(X2,X1).
-comp_overlap_inv_smaller(X0,X1) :- object(X0),object(X1),not comp_overlap_inv_smaller(X0,X1).
comp_overlap_inv_below(X0,X1) :- overlap(X0,X2),inv_below(X2,X1).
-comp_overlap_inv_below(X0,X1) :- object(X0),object(X1),not comp_overlap_inv_below(X0,X1).
comp_overlap_inv_left(X0,X1) :- overlap(X0,X2),inv_left(X2,X1).
-comp_overlap_inv_left(X0,X1) :- object(X0),object(X1),not comp_overlap_inv_left(X0,X1).
comp_overlap_inv_overlap(X0,X1) :- overlap(X0,X2),inv_overlap(X2,X1).
-comp_overlap_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_overlap_inv_overlap(X0,X1).
comp_overlap_inv_shape(X0,X1) :- overlap(X0,X2),inv_shape(X2,X1).
-comp_overlap_inv_shape(X0,X1) :- object(X0),object(X1),not comp_overlap_inv_shape(X0,X1).
comp_overlap_comp_smaller_below(X0,X1) :- overlap(X0,X2),comp_smaller_below(X2,X1).
-comp_overlap_comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_overlap_comp_smaller_below(X0,X1).
comp_overlap_comp_smaller_left(X0,X1) :- overlap(X0,X2),comp_smaller_left(X2,X1).
-comp_overlap_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_overlap_comp_smaller_left(X0,X1).
comp_overlap_comp_smaller_overlap(X0,X1) :- overlap(X0,X2),comp_smaller_overlap(X2,X1).
-comp_overlap_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_overlap_comp_smaller_overlap(X0,X1).
comp_overlap_comp_smaller_shape(X0,X1) :- overlap(X0,X2),comp_smaller_shape(X2,X1).
-comp_overlap_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_overlap_comp_smaller_shape(X0,X1).
comp_overlap_comp_below_left(X0,X1) :- overlap(X0,X2),comp_below_left(X2,X1).
-comp_overlap_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_overlap_comp_below_left(X0,X1).
comp_overlap_comp_below_overlap(X0,X1) :- overlap(X0,X2),comp_below_overlap(X2,X1).
-comp_overlap_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_overlap_comp_below_overlap(X0,X1).
comp_overlap_comp_below_shape(X0,X1) :- overlap(X0,X2),comp_below_shape(X2,X1).
-comp_overlap_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_overlap_comp_below_shape(X0,X1).
comp_overlap_comp_left_overlap(X0,X1) :- overlap(X0,X2),comp_left_overlap(X2,X1).
-comp_overlap_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_overlap_comp_left_overlap(X0,X1).
comp_overlap_comp_left_shape(X0,X1) :- overlap(X0,X2),comp_left_shape(X2,X1).
-comp_overlap_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_overlap_comp_left_shape(X0,X1).
comp_overlap_comp_overlap_shape(X0,X1) :- overlap(X0,X2),comp_overlap_shape(X2,X1).
-comp_overlap_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_overlap_comp_overlap_shape(X0,X1).
comp_shape_inv_smaller(X0,X1) :- shape(X0,X2),inv_smaller(X2,X1).
-comp_shape_inv_smaller(X0,X1) :- object(X0),object(X1),not comp_shape_inv_smaller(X0,X1).
comp_shape_inv_below(X0,X1) :- shape(X0,X2),inv_below(X2,X1).
-comp_shape_inv_below(X0,X1) :- object(X0),object(X1),not comp_shape_inv_below(X0,X1).
comp_shape_inv_left(X0,X1) :- shape(X0,X2),inv_left(X2,X1).
-comp_shape_inv_left(X0,X1) :- object(X0),object(X1),not comp_shape_inv_left(X0,X1).
comp_shape_inv_overlap(X0,X1) :- shape(X0,X2),inv_overlap(X2,X1).
-comp_shape_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_shape_inv_overlap(X0,X1).
comp_shape_inv_shape(X0,X1) :- shape(X0,X2),inv_shape(X2,X1).
-comp_shape_inv_shape(X0,X1) :- object(X0),object(X1),not comp_shape_inv_shape(X0,X1).
comp_shape_comp_smaller_below(X0,X1) :- shape(X0,X2),comp_smaller_below(X2,X1).
-comp_shape_comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_shape_comp_smaller_below(X0,X1).
comp_shape_comp_smaller_left(X0,X1) :- shape(X0,X2),comp_smaller_left(X2,X1).
-comp_shape_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_shape_comp_smaller_left(X0,X1).
comp_shape_comp_smaller_overlap(X0,X1) :- shape(X0,X2),comp_smaller_overlap(X2,X1).
-comp_shape_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_shape_comp_smaller_overlap(X0,X1).
comp_shape_comp_smaller_shape(X0,X1) :- shape(X0,X2),comp_smaller_shape(X2,X1).
-comp_shape_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_shape_comp_smaller_shape(X0,X1).
comp_shape_comp_below_left(X0,X1) :- shape(X0,X2),comp_below_left(X2,X1).
-comp_shape_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_shape_comp_below_left(X0,X1).
comp_shape_comp_below_overlap(X0,X1) :- shape(X0,X2),comp_below_overlap(X2,X1).
-comp_shape_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_shape_comp_below_overlap(X0,X1).
comp_shape_comp_below_shape(X0,X1) :- shape(X0,X2),comp_below_shape(X2,X1).
-comp_shape_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_shape_comp_below_shape(X0,X1).
comp_shape_comp_left_overlap(X0,X1) :- shape(X0,X2),comp_left_overlap(X2,X1).
-comp_shape_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_shape_comp_left_overlap(X0,X1).
comp_shape_comp_left_shape(X0,X1) :- shape(X0,X2),comp_left_shape(X2,X1).
-comp_shape_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_shape_comp_left_shape(X0,X1).
comp_shape_comp_overlap_shape(X0,X1) :- shape(X0,X2),comp_overlap_shape(X2,X1).
-comp_shape_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_shape_comp_overlap_shape(X0,X1).
comp_inv_smaller_inv_below(X0,X1) :- inv_smaller(X0,X2),inv_below(X2,X1).
-comp_inv_smaller_inv_below(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_inv_below(X0,X1).
comp_inv_smaller_inv_left(X0,X1) :- inv_smaller(X0,X2),inv_left(X2,X1).
-comp_inv_smaller_inv_left(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_inv_left(X0,X1).
comp_inv_smaller_inv_overlap(X0,X1) :- inv_smaller(X0,X2),inv_overlap(X2,X1).
-comp_inv_smaller_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_inv_overlap(X0,X1).
comp_inv_smaller_inv_shape(X0,X1) :- inv_smaller(X0,X2),inv_shape(X2,X1).
-comp_inv_smaller_inv_shape(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_inv_shape(X0,X1).
comp_inv_smaller_comp_smaller_below(X0,X1) :- inv_smaller(X0,X2),comp_smaller_below(X2,X1).
-comp_inv_smaller_comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_comp_smaller_below(X0,X1).
comp_inv_smaller_comp_smaller_left(X0,X1) :- inv_smaller(X0,X2),comp_smaller_left(X2,X1).
-comp_inv_smaller_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_comp_smaller_left(X0,X1).
comp_inv_smaller_comp_smaller_overlap(X0,X1) :- inv_smaller(X0,X2),comp_smaller_overlap(X2,X1).
-comp_inv_smaller_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_comp_smaller_overlap(X0,X1).
comp_inv_smaller_comp_smaller_shape(X0,X1) :- inv_smaller(X0,X2),comp_smaller_shape(X2,X1).
-comp_inv_smaller_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_comp_smaller_shape(X0,X1).
comp_inv_smaller_comp_below_left(X0,X1) :- inv_smaller(X0,X2),comp_below_left(X2,X1).
-comp_inv_smaller_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_comp_below_left(X0,X1).
comp_inv_smaller_comp_below_overlap(X0,X1) :- inv_smaller(X0,X2),comp_below_overlap(X2,X1).
-comp_inv_smaller_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_comp_below_overlap(X0,X1).
comp_inv_smaller_comp_below_shape(X0,X1) :- inv_smaller(X0,X2),comp_below_shape(X2,X1).
-comp_inv_smaller_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_comp_below_shape(X0,X1).
comp_inv_smaller_comp_left_overlap(X0,X1) :- inv_smaller(X0,X2),comp_left_overlap(X2,X1).
-comp_inv_smaller_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_comp_left_overlap(X0,X1).
comp_inv_smaller_comp_left_shape(X0,X1) :- inv_smaller(X0,X2),comp_left_shape(X2,X1).
-comp_inv_smaller_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_comp_left_shape(X0,X1).
comp_inv_smaller_comp_overlap_shape(X0,X1) :- inv_smaller(X0,X2),comp_overlap_shape(X2,X1).
-comp_inv_smaller_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_comp_overlap_shape(X0,X1).
comp_inv_below_inv_left(X0,X1) :- inv_below(X0,X2),inv_left(X2,X1).
-comp_inv_below_inv_left(X0,X1) :- object(X0),object(X1),not comp_inv_below_inv_left(X0,X1).
comp_inv_below_inv_overlap(X0,X1) :- inv_below(X0,X2),inv_overlap(X2,X1).
-comp_inv_below_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_below_inv_overlap(X0,X1).
comp_inv_below_inv_shape(X0,X1) :- inv_below(X0,X2),inv_shape(X2,X1).
-comp_inv_below_inv_shape(X0,X1) :- object(X0),object(X1),not comp_inv_below_inv_shape(X0,X1).
comp_inv_below_comp_smaller_below(X0,X1) :- inv_below(X0,X2),comp_smaller_below(X2,X1).
-comp_inv_below_comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_inv_below_comp_smaller_below(X0,X1).
comp_inv_below_comp_smaller_left(X0,X1) :- inv_below(X0,X2),comp_smaller_left(X2,X1).
-comp_inv_below_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_inv_below_comp_smaller_left(X0,X1).
comp_inv_below_comp_smaller_overlap(X0,X1) :- inv_below(X0,X2),comp_smaller_overlap(X2,X1).
-comp_inv_below_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_below_comp_smaller_overlap(X0,X1).
comp_inv_below_comp_smaller_shape(X0,X1) :- inv_below(X0,X2),comp_smaller_shape(X2,X1).
-comp_inv_below_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_inv_below_comp_smaller_shape(X0,X1).
comp_inv_below_comp_below_left(X0,X1) :- inv_below(X0,X2),comp_below_left(X2,X1).
-comp_inv_below_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_inv_below_comp_below_left(X0,X1).
comp_inv_below_comp_below_overlap(X0,X1) :- inv_below(X0,X2),comp_below_overlap(X2,X1).
-comp_inv_below_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_below_comp_below_overlap(X0,X1).
comp_inv_below_comp_below_shape(X0,X1) :- inv_below(X0,X2),comp_below_shape(X2,X1).
-comp_inv_below_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_inv_below_comp_below_shape(X0,X1).
comp_inv_below_comp_left_overlap(X0,X1) :- inv_below(X0,X2),comp_left_overlap(X2,X1).
-comp_inv_below_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_below_comp_left_overlap(X0,X1).
comp_inv_below_comp_left_shape(X0,X1) :- inv_below(X0,X2),comp_left_shape(X2,X1).
-comp_inv_below_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_inv_below_comp_left_shape(X0,X1).
comp_inv_below_comp_overlap_shape(X0,X1) :- inv_below(X0,X2),comp_overlap_shape(X2,X1).
-comp_inv_below_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_inv_below_comp_overlap_shape(X0,X1).
comp_inv_left_inv_overlap(X0,X1) :- inv_left(X0,X2),inv_overlap(X2,X1).
-comp_inv_left_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_left_inv_overlap(X0,X1).
comp_inv_left_inv_shape(X0,X1) :- inv_left(X0,X2),inv_shape(X2,X1).
-comp_inv_left_inv_shape(X0,X1) :- object(X0),object(X1),not comp_inv_left_inv_shape(X0,X1).
comp_inv_left_comp_smaller_below(X0,X1) :- inv_left(X0,X2),comp_smaller_below(X2,X1).
-comp_inv_left_comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_inv_left_comp_smaller_below(X0,X1).
comp_inv_left_comp_smaller_left(X0,X1) :- inv_left(X0,X2),comp_smaller_left(X2,X1).
-comp_inv_left_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_inv_left_comp_smaller_left(X0,X1).
comp_inv_left_comp_smaller_overlap(X0,X1) :- inv_left(X0,X2),comp_smaller_overlap(X2,X1).
-comp_inv_left_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_left_comp_smaller_overlap(X0,X1).
comp_inv_left_comp_smaller_shape(X0,X1) :- inv_left(X0,X2),comp_smaller_shape(X2,X1).
-comp_inv_left_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_inv_left_comp_smaller_shape(X0,X1).
comp_inv_left_comp_below_left(X0,X1) :- inv_left(X0,X2),comp_below_left(X2,X1).
-comp_inv_left_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_inv_left_comp_below_left(X0,X1).
comp_inv_left_comp_below_overlap(X0,X1) :- inv_left(X0,X2),comp_below_overlap(X2,X1).
-comp_inv_left_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_left_comp_below_overlap(X0,X1).
comp_inv_left_comp_below_shape(X0,X1) :- inv_left(X0,X2),comp_below_shape(X2,X1).
-comp_inv_left_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_inv_left_comp_below_shape(X0,X1).
comp_inv_left_comp_left_overlap(X0,X1) :- inv_left(X0,X2),comp_left_overlap(X2,X1).
-comp_inv_left_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_left_comp_left_overlap(X0,X1).
comp_inv_left_comp_left_shape(X0,X1) :- inv_left(X0,X2),comp_left_shape(X2,X1).
-comp_inv_left_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_inv_left_comp_left_shape(X0,X1).
comp_inv_left_comp_overlap_shape(X0,X1) :- inv_left(X0,X2),comp_overlap_shape(X2,X1).
-comp_inv_left_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_inv_left_comp_overlap_shape(X0,X1).
comp_inv_overlap_inv_shape(X0,X1) :- inv_overlap(X0,X2),inv_shape(X2,X1).
-comp_inv_overlap_inv_shape(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_inv_shape(X0,X1).
comp_inv_overlap_comp_smaller_below(X0,X1) :- inv_overlap(X0,X2),comp_smaller_below(X2,X1).
-comp_inv_overlap_comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_comp_smaller_below(X0,X1).
comp_inv_overlap_comp_smaller_left(X0,X1) :- inv_overlap(X0,X2),comp_smaller_left(X2,X1).
-comp_inv_overlap_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_comp_smaller_left(X0,X1).
comp_inv_overlap_comp_smaller_overlap(X0,X1) :- inv_overlap(X0,X2),comp_smaller_overlap(X2,X1).
-comp_inv_overlap_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_comp_smaller_overlap(X0,X1).
comp_inv_overlap_comp_smaller_shape(X0,X1) :- inv_overlap(X0,X2),comp_smaller_shape(X2,X1).
-comp_inv_overlap_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_comp_smaller_shape(X0,X1).
comp_inv_overlap_comp_below_left(X0,X1) :- inv_overlap(X0,X2),comp_below_left(X2,X1).
-comp_inv_overlap_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_comp_below_left(X0,X1).
comp_inv_overlap_comp_below_overlap(X0,X1) :- inv_overlap(X0,X2),comp_below_overlap(X2,X1).
-comp_inv_overlap_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_comp_below_overlap(X0,X1).
comp_inv_overlap_comp_below_shape(X0,X1) :- inv_overlap(X0,X2),comp_below_shape(X2,X1).
-comp_inv_overlap_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_comp_below_shape(X0,X1).
comp_inv_overlap_comp_left_overlap(X0,X1) :- inv_overlap(X0,X2),comp_left_overlap(X2,X1).
-comp_inv_overlap_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_comp_left_overlap(X0,X1).
comp_inv_overlap_comp_left_shape(X0,X1) :- inv_overlap(X0,X2),comp_left_shape(X2,X1).
-comp_inv_overlap_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_comp_left_shape(X0,X1).
comp_inv_overlap_comp_overlap_shape(X0,X1) :- inv_overlap(X0,X2),comp_overlap_shape(X2,X1).
-comp_inv_overlap_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_comp_overlap_shape(X0,X1).
comp_inv_shape_comp_smaller_below(X0,X1) :- inv_shape(X0,X2),comp_smaller_below(X2,X1).
-comp_inv_shape_comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_inv_shape_comp_smaller_below(X0,X1).
comp_inv_shape_comp_smaller_left(X0,X1) :- inv_shape(X0,X2),comp_smaller_left(X2,X1).
-comp_inv_shape_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_inv_shape_comp_smaller_left(X0,X1).
comp_inv_shape_comp_smaller_overlap(X0,X1) :- inv_shape(X0,X2),comp_smaller_overlap(X2,X1).
-comp_inv_shape_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_shape_comp_smaller_overlap(X0,X1).
comp_inv_shape_comp_smaller_shape(X0,X1) :- inv_shape(X0,X2),comp_smaller_shape(X2,X1).
-comp_inv_shape_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_inv_shape_comp_smaller_shape(X0,X1).
comp_inv_shape_comp_below_left(X0,X1) :- inv_shape(X0,X2),comp_below_left(X2,X1).
-comp_inv_shape_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_inv_shape_comp_below_left(X0,X1).
comp_inv_shape_comp_below_overlap(X0,X1) :- inv_shape(X0,X2),comp_below_overlap(X2,X1).
-comp_inv_shape_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_shape_comp_below_overlap(X0,X1).
comp_inv_shape_comp_below_shape(X0,X1) :- inv_shape(X0,X2),comp_below_shape(X2,X1).
-comp_inv_shape_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_inv_shape_comp_below_shape(X0,X1).
comp_inv_shape_comp_left_overlap(X0,X1) :- inv_shape(X0,X2),comp_left_overlap(X2,X1).
-comp_inv_shape_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_shape_comp_left_overlap(X0,X1).
comp_inv_shape_comp_left_shape(X0,X1) :- inv_shape(X0,X2),comp_left_shape(X2,X1).
-comp_inv_shape_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_inv_shape_comp_left_shape(X0,X1).
comp_inv_shape_comp_overlap_shape(X0,X1) :- inv_shape(X0,X2),comp_overlap_shape(X2,X1).
-comp_inv_shape_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_inv_shape_comp_overlap_shape(X0,X1).
comp_comp_smaller_below_comp_smaller_left(X0,X1) :- comp_smaller_below(X0,X2),comp_smaller_left(X2,X1).
-comp_comp_smaller_below_comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_below_comp_smaller_left(X0,X1).
comp_comp_smaller_below_comp_smaller_overlap(X0,X1) :- comp_smaller_below(X0,X2),comp_smaller_overlap(X2,X1).
-comp_comp_smaller_below_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_below_comp_smaller_overlap(X0,X1).
comp_comp_smaller_below_comp_smaller_shape(X0,X1) :- comp_smaller_below(X0,X2),comp_smaller_shape(X2,X1).
-comp_comp_smaller_below_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_below_comp_smaller_shape(X0,X1).
comp_comp_smaller_below_comp_below_left(X0,X1) :- comp_smaller_below(X0,X2),comp_below_left(X2,X1).
-comp_comp_smaller_below_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_below_comp_below_left(X0,X1).
comp_comp_smaller_below_comp_below_overlap(X0,X1) :- comp_smaller_below(X0,X2),comp_below_overlap(X2,X1).
-comp_comp_smaller_below_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_below_comp_below_overlap(X0,X1).
comp_comp_smaller_below_comp_below_shape(X0,X1) :- comp_smaller_below(X0,X2),comp_below_shape(X2,X1).
-comp_comp_smaller_below_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_below_comp_below_shape(X0,X1).
comp_comp_smaller_below_comp_left_overlap(X0,X1) :- comp_smaller_below(X0,X2),comp_left_overlap(X2,X1).
-comp_comp_smaller_below_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_below_comp_left_overlap(X0,X1).
comp_comp_smaller_below_comp_left_shape(X0,X1) :- comp_smaller_below(X0,X2),comp_left_shape(X2,X1).
-comp_comp_smaller_below_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_below_comp_left_shape(X0,X1).
comp_comp_smaller_below_comp_overlap_shape(X0,X1) :- comp_smaller_below(X0,X2),comp_overlap_shape(X2,X1).
-comp_comp_smaller_below_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_below_comp_overlap_shape(X0,X1).
comp_comp_smaller_left_comp_smaller_overlap(X0,X1) :- comp_smaller_left(X0,X2),comp_smaller_overlap(X2,X1).
-comp_comp_smaller_left_comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_left_comp_smaller_overlap(X0,X1).
comp_comp_smaller_left_comp_smaller_shape(X0,X1) :- comp_smaller_left(X0,X2),comp_smaller_shape(X2,X1).
-comp_comp_smaller_left_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_left_comp_smaller_shape(X0,X1).
comp_comp_smaller_left_comp_below_left(X0,X1) :- comp_smaller_left(X0,X2),comp_below_left(X2,X1).
-comp_comp_smaller_left_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_left_comp_below_left(X0,X1).
comp_comp_smaller_left_comp_below_overlap(X0,X1) :- comp_smaller_left(X0,X2),comp_below_overlap(X2,X1).
-comp_comp_smaller_left_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_left_comp_below_overlap(X0,X1).
comp_comp_smaller_left_comp_below_shape(X0,X1) :- comp_smaller_left(X0,X2),comp_below_shape(X2,X1).
-comp_comp_smaller_left_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_left_comp_below_shape(X0,X1).
comp_comp_smaller_left_comp_left_overlap(X0,X1) :- comp_smaller_left(X0,X2),comp_left_overlap(X2,X1).
-comp_comp_smaller_left_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_left_comp_left_overlap(X0,X1).
comp_comp_smaller_left_comp_left_shape(X0,X1) :- comp_smaller_left(X0,X2),comp_left_shape(X2,X1).
-comp_comp_smaller_left_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_left_comp_left_shape(X0,X1).
comp_comp_smaller_left_comp_overlap_shape(X0,X1) :- comp_smaller_left(X0,X2),comp_overlap_shape(X2,X1).
-comp_comp_smaller_left_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_left_comp_overlap_shape(X0,X1).
comp_comp_smaller_overlap_comp_smaller_shape(X0,X1) :- comp_smaller_overlap(X0,X2),comp_smaller_shape(X2,X1).
-comp_comp_smaller_overlap_comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_overlap_comp_smaller_shape(X0,X1).
comp_comp_smaller_overlap_comp_below_left(X0,X1) :- comp_smaller_overlap(X0,X2),comp_below_left(X2,X1).
-comp_comp_smaller_overlap_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_overlap_comp_below_left(X0,X1).
comp_comp_smaller_overlap_comp_below_overlap(X0,X1) :- comp_smaller_overlap(X0,X2),comp_below_overlap(X2,X1).
-comp_comp_smaller_overlap_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_overlap_comp_below_overlap(X0,X1).
comp_comp_smaller_overlap_comp_below_shape(X0,X1) :- comp_smaller_overlap(X0,X2),comp_below_shape(X2,X1).
-comp_comp_smaller_overlap_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_overlap_comp_below_shape(X0,X1).
comp_comp_smaller_overlap_comp_left_overlap(X0,X1) :- comp_smaller_overlap(X0,X2),comp_left_overlap(X2,X1).
-comp_comp_smaller_overlap_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_overlap_comp_left_overlap(X0,X1).
comp_comp_smaller_overlap_comp_left_shape(X0,X1) :- comp_smaller_overlap(X0,X2),comp_left_shape(X2,X1).
-comp_comp_smaller_overlap_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_overlap_comp_left_shape(X0,X1).
comp_comp_smaller_overlap_comp_overlap_shape(X0,X1) :- comp_smaller_overlap(X0,X2),comp_overlap_shape(X2,X1).
-comp_comp_smaller_overlap_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_overlap_comp_overlap_shape(X0,X1).
comp_comp_smaller_shape_comp_below_left(X0,X1) :- comp_smaller_shape(X0,X2),comp_below_left(X2,X1).
-comp_comp_smaller_shape_comp_below_left(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_shape_comp_below_left(X0,X1).
comp_comp_smaller_shape_comp_below_overlap(X0,X1) :- comp_smaller_shape(X0,X2),comp_below_overlap(X2,X1).
-comp_comp_smaller_shape_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_shape_comp_below_overlap(X0,X1).
comp_comp_smaller_shape_comp_below_shape(X0,X1) :- comp_smaller_shape(X0,X2),comp_below_shape(X2,X1).
-comp_comp_smaller_shape_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_shape_comp_below_shape(X0,X1).
comp_comp_smaller_shape_comp_left_overlap(X0,X1) :- comp_smaller_shape(X0,X2),comp_left_overlap(X2,X1).
-comp_comp_smaller_shape_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_shape_comp_left_overlap(X0,X1).
comp_comp_smaller_shape_comp_left_shape(X0,X1) :- comp_smaller_shape(X0,X2),comp_left_shape(X2,X1).
-comp_comp_smaller_shape_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_shape_comp_left_shape(X0,X1).
comp_comp_smaller_shape_comp_overlap_shape(X0,X1) :- comp_smaller_shape(X0,X2),comp_overlap_shape(X2,X1).
-comp_comp_smaller_shape_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_comp_smaller_shape_comp_overlap_shape(X0,X1).
comp_comp_below_left_comp_below_overlap(X0,X1) :- comp_below_left(X0,X2),comp_below_overlap(X2,X1).
-comp_comp_below_left_comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_below_left_comp_below_overlap(X0,X1).
comp_comp_below_left_comp_below_shape(X0,X1) :- comp_below_left(X0,X2),comp_below_shape(X2,X1).
-comp_comp_below_left_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_comp_below_left_comp_below_shape(X0,X1).
comp_comp_below_left_comp_left_overlap(X0,X1) :- comp_below_left(X0,X2),comp_left_overlap(X2,X1).
-comp_comp_below_left_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_below_left_comp_left_overlap(X0,X1).
comp_comp_below_left_comp_left_shape(X0,X1) :- comp_below_left(X0,X2),comp_left_shape(X2,X1).
-comp_comp_below_left_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_comp_below_left_comp_left_shape(X0,X1).
comp_comp_below_left_comp_overlap_shape(X0,X1) :- comp_below_left(X0,X2),comp_overlap_shape(X2,X1).
-comp_comp_below_left_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_comp_below_left_comp_overlap_shape(X0,X1).
comp_comp_below_overlap_comp_below_shape(X0,X1) :- comp_below_overlap(X0,X2),comp_below_shape(X2,X1).
-comp_comp_below_overlap_comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_comp_below_overlap_comp_below_shape(X0,X1).
comp_comp_below_overlap_comp_left_overlap(X0,X1) :- comp_below_overlap(X0,X2),comp_left_overlap(X2,X1).
-comp_comp_below_overlap_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_below_overlap_comp_left_overlap(X0,X1).
comp_comp_below_overlap_comp_left_shape(X0,X1) :- comp_below_overlap(X0,X2),comp_left_shape(X2,X1).
-comp_comp_below_overlap_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_comp_below_overlap_comp_left_shape(X0,X1).
comp_comp_below_overlap_comp_overlap_shape(X0,X1) :- comp_below_overlap(X0,X2),comp_overlap_shape(X2,X1).
-comp_comp_below_overlap_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_comp_below_overlap_comp_overlap_shape(X0,X1).
comp_comp_below_shape_comp_left_overlap(X0,X1) :- comp_below_shape(X0,X2),comp_left_overlap(X2,X1).
-comp_comp_below_shape_comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_comp_below_shape_comp_left_overlap(X0,X1).
comp_comp_below_shape_comp_left_shape(X0,X1) :- comp_below_shape(X0,X2),comp_left_shape(X2,X1).
-comp_comp_below_shape_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_comp_below_shape_comp_left_shape(X0,X1).
comp_comp_below_shape_comp_overlap_shape(X0,X1) :- comp_below_shape(X0,X2),comp_overlap_shape(X2,X1).
-comp_comp_below_shape_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_comp_below_shape_comp_overlap_shape(X0,X1).
comp_comp_left_overlap_comp_left_shape(X0,X1) :- comp_left_overlap(X0,X2),comp_left_shape(X2,X1).
-comp_comp_left_overlap_comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_comp_left_overlap_comp_left_shape(X0,X1).
comp_comp_left_overlap_comp_overlap_shape(X0,X1) :- comp_left_overlap(X0,X2),comp_overlap_shape(X2,X1).
-comp_comp_left_overlap_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_comp_left_overlap_comp_overlap_shape(X0,X1).
comp_comp_left_shape_comp_overlap_shape(X0,X1) :- comp_left_shape(X0,X2),comp_overlap_shape(X2,X1).
-comp_comp_left_shape_comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_comp_left_shape_comp_overlap_shape(X0,X1).
% Number of generated preds: 3660
