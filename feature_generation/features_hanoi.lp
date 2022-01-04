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
er_smaller_key(X0) :- key(X1),smaller(X0,X1).
-er_smaller_key(X0) :- object(X0),not er_smaller_key(X0).
er_below_key(X0) :- key(X1),below(X0,X1).
-er_below_key(X0) :- object(X0),not er_below_key(X0).
er_left_key(X0) :- key(X1),left(X0,X1).
-er_left_key(X0) :- object(X0),not er_left_key(X0).
er_overlap_key(X0) :- key(X1),overlap(X0,X1).
-er_overlap_key(X0) :- object(X0),not er_overlap_key(X0).
er_shape_key(X0) :- key(X1),shape(X0,X1).
-er_shape_key(X0) :- object(X0),not er_shape_key(X0).
er_smaller_peg(X0) :- peg(X1),smaller(X0,X1).
-er_smaller_peg(X0) :- object(X0),not er_smaller_peg(X0).
er_below_peg(X0) :- peg(X1),below(X0,X1).
-er_below_peg(X0) :- object(X0),not er_below_peg(X0).
er_left_peg(X0) :- peg(X1),left(X0,X1).
-er_left_peg(X0) :- object(X0),not er_left_peg(X0).
er_overlap_peg(X0) :- peg(X1),overlap(X0,X1).
-er_overlap_peg(X0) :- object(X0),not er_overlap_peg(X0).
er_shape_peg(X0) :- peg(X1),shape(X0,X1).
-er_shape_peg(X0) :- object(X0),not er_shape_peg(X0).
er_smaller_disk(X0) :- disk(X1),smaller(X0,X1).
-er_smaller_disk(X0) :- object(X0),not er_smaller_disk(X0).
er_below_disk(X0) :- disk(X1),below(X0,X1).
-er_below_disk(X0) :- object(X0),not er_below_disk(X0).
er_left_disk(X0) :- disk(X1),left(X0,X1).
-er_left_disk(X0) :- object(X0),not er_left_disk(X0).
er_overlap_disk(X0) :- disk(X1),overlap(X0,X1).
-er_overlap_disk(X0) :- object(X0),not er_overlap_disk(X0).
er_shape_disk(X0) :- disk(X1),shape(X0,X1).
-er_shape_disk(X0) :- object(X0),not er_shape_disk(X0).
inter_verum_falsum(X0) :- verum(X0),falsum(X0).
-inter_verum_falsum(X0) :- object(X0),not inter_verum_falsum(X0).
inter_verum_key(X0) :- verum(X0),key(X0).
-inter_verum_key(X0) :- object(X0),not inter_verum_key(X0).
inter_verum_peg(X0) :- verum(X0),peg(X0).
-inter_verum_peg(X0) :- object(X0),not inter_verum_peg(X0).
inter_verum_disk(X0) :- verum(X0),disk(X0).
-inter_verum_disk(X0) :- object(X0),not inter_verum_disk(X0).
inter_falsum_key(X0) :- falsum(X0),key(X0).
-inter_falsum_key(X0) :- object(X0),not inter_falsum_key(X0).
inter_falsum_peg(X0) :- falsum(X0),peg(X0).
-inter_falsum_peg(X0) :- object(X0),not inter_falsum_peg(X0).
inter_falsum_disk(X0) :- falsum(X0),disk(X0).
-inter_falsum_disk(X0) :- object(X0),not inter_falsum_disk(X0).
inter_key_peg(X0) :- key(X0),peg(X0).
-inter_key_peg(X0) :- object(X0),not inter_key_peg(X0).
inter_key_disk(X0) :- key(X0),disk(X0).
-inter_key_disk(X0) :- object(X0),not inter_key_disk(X0).
inter_peg_disk(X0) :- peg(X0),disk(X0).
-inter_peg_disk(X0) :- object(X0),not inter_peg_disk(X0).
subset_verum_falsum(null) :- falsum(X0) : verum(X0).
-subset_verum_falsum(null) :- not subset_verum_falsum(null).
subset_verum_key(null) :- key(X0) : verum(X0).
-subset_verum_key(null) :- not subset_verum_key(null).
subset_verum_peg(null) :- peg(X0) : verum(X0).
-subset_verum_peg(null) :- not subset_verum_peg(null).
subset_verum_disk(null) :- disk(X0) : verum(X0).
-subset_verum_disk(null) :- not subset_verum_disk(null).
subset_falsum_key(null) :- key(X0) : falsum(X0).
-subset_falsum_key(null) :- not subset_falsum_key(null).
subset_falsum_peg(null) :- peg(X0) : falsum(X0).
-subset_falsum_peg(null) :- not subset_falsum_peg(null).
subset_falsum_disk(null) :- disk(X0) : falsum(X0).
-subset_falsum_disk(null) :- not subset_falsum_disk(null).
subset_key_peg(null) :- peg(X0) : key(X0).
-subset_key_peg(null) :- not subset_key_peg(null).
subset_key_disk(null) :- disk(X0) : key(X0).
-subset_key_disk(null) :- not subset_key_disk(null).
subset_peg_disk(null) :- disk(X0) : peg(X0).
-subset_peg_disk(null) :- not subset_peg_disk(null).

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
er_inv_smaller_key(X0) :- key(X1),inv_smaller(X0,X1).
-er_inv_smaller_key(X0) :- object(X0),not er_inv_smaller_key(X0).
er_inv_below_key(X0) :- key(X1),inv_below(X0,X1).
-er_inv_below_key(X0) :- object(X0),not er_inv_below_key(X0).
er_inv_left_key(X0) :- key(X1),inv_left(X0,X1).
-er_inv_left_key(X0) :- object(X0),not er_inv_left_key(X0).
er_inv_overlap_key(X0) :- key(X1),inv_overlap(X0,X1).
-er_inv_overlap_key(X0) :- object(X0),not er_inv_overlap_key(X0).
er_inv_shape_key(X0) :- key(X1),inv_shape(X0,X1).
-er_inv_shape_key(X0) :- object(X0),not er_inv_shape_key(X0).
er_comp_smaller_below_key(X0) :- key(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_key(X0) :- object(X0),not er_comp_smaller_below_key(X0).
er_comp_smaller_left_key(X0) :- key(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_key(X0) :- object(X0),not er_comp_smaller_left_key(X0).
er_comp_smaller_overlap_key(X0) :- key(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_key(X0) :- object(X0),not er_comp_smaller_overlap_key(X0).
er_comp_smaller_shape_key(X0) :- key(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_key(X0) :- object(X0),not er_comp_smaller_shape_key(X0).
er_comp_below_left_key(X0) :- key(X1),comp_below_left(X0,X1).
-er_comp_below_left_key(X0) :- object(X0),not er_comp_below_left_key(X0).
er_comp_below_overlap_key(X0) :- key(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_key(X0) :- object(X0),not er_comp_below_overlap_key(X0).
er_comp_below_shape_key(X0) :- key(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_key(X0) :- object(X0),not er_comp_below_shape_key(X0).
er_comp_left_overlap_key(X0) :- key(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_key(X0) :- object(X0),not er_comp_left_overlap_key(X0).
er_comp_left_shape_key(X0) :- key(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_key(X0) :- object(X0),not er_comp_left_shape_key(X0).
er_comp_overlap_shape_key(X0) :- key(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_key(X0) :- object(X0),not er_comp_overlap_shape_key(X0).
er_inv_smaller_peg(X0) :- peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_peg(X0) :- object(X0),not er_inv_smaller_peg(X0).
er_inv_below_peg(X0) :- peg(X1),inv_below(X0,X1).
-er_inv_below_peg(X0) :- object(X0),not er_inv_below_peg(X0).
er_inv_left_peg(X0) :- peg(X1),inv_left(X0,X1).
-er_inv_left_peg(X0) :- object(X0),not er_inv_left_peg(X0).
er_inv_overlap_peg(X0) :- peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_peg(X0) :- object(X0),not er_inv_overlap_peg(X0).
er_inv_shape_peg(X0) :- peg(X1),inv_shape(X0,X1).
-er_inv_shape_peg(X0) :- object(X0),not er_inv_shape_peg(X0).
er_comp_smaller_below_peg(X0) :- peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_peg(X0) :- object(X0),not er_comp_smaller_below_peg(X0).
er_comp_smaller_left_peg(X0) :- peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_peg(X0) :- object(X0),not er_comp_smaller_left_peg(X0).
er_comp_smaller_overlap_peg(X0) :- peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_peg(X0) :- object(X0),not er_comp_smaller_overlap_peg(X0).
er_comp_smaller_shape_peg(X0) :- peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_peg(X0) :- object(X0),not er_comp_smaller_shape_peg(X0).
er_comp_below_left_peg(X0) :- peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_peg(X0) :- object(X0),not er_comp_below_left_peg(X0).
er_comp_below_overlap_peg(X0) :- peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_peg(X0) :- object(X0),not er_comp_below_overlap_peg(X0).
er_comp_below_shape_peg(X0) :- peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_peg(X0) :- object(X0),not er_comp_below_shape_peg(X0).
er_comp_left_overlap_peg(X0) :- peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_peg(X0) :- object(X0),not er_comp_left_overlap_peg(X0).
er_comp_left_shape_peg(X0) :- peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_peg(X0) :- object(X0),not er_comp_left_shape_peg(X0).
er_comp_overlap_shape_peg(X0) :- peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_peg(X0) :- object(X0),not er_comp_overlap_shape_peg(X0).
er_inv_smaller_disk(X0) :- disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_disk(X0) :- object(X0),not er_inv_smaller_disk(X0).
er_inv_below_disk(X0) :- disk(X1),inv_below(X0,X1).
-er_inv_below_disk(X0) :- object(X0),not er_inv_below_disk(X0).
er_inv_left_disk(X0) :- disk(X1),inv_left(X0,X1).
-er_inv_left_disk(X0) :- object(X0),not er_inv_left_disk(X0).
er_inv_overlap_disk(X0) :- disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_disk(X0) :- object(X0),not er_inv_overlap_disk(X0).
er_inv_shape_disk(X0) :- disk(X1),inv_shape(X0,X1).
-er_inv_shape_disk(X0) :- object(X0),not er_inv_shape_disk(X0).
er_comp_smaller_below_disk(X0) :- disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_disk(X0) :- object(X0),not er_comp_smaller_below_disk(X0).
er_comp_smaller_left_disk(X0) :- disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_disk(X0) :- object(X0),not er_comp_smaller_left_disk(X0).
er_comp_smaller_overlap_disk(X0) :- disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_disk(X0) :- object(X0),not er_comp_smaller_overlap_disk(X0).
er_comp_smaller_shape_disk(X0) :- disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_disk(X0) :- object(X0),not er_comp_smaller_shape_disk(X0).
er_comp_below_left_disk(X0) :- disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_disk(X0) :- object(X0),not er_comp_below_left_disk(X0).
er_comp_below_overlap_disk(X0) :- disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_disk(X0) :- object(X0),not er_comp_below_overlap_disk(X0).
er_comp_below_shape_disk(X0) :- disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_disk(X0) :- object(X0),not er_comp_below_shape_disk(X0).
er_comp_left_overlap_disk(X0) :- disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_disk(X0) :- object(X0),not er_comp_left_overlap_disk(X0).
er_comp_left_shape_disk(X0) :- disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_disk(X0) :- object(X0),not er_comp_left_shape_disk(X0).
er_comp_overlap_shape_disk(X0) :- disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_disk(X0) :- object(X0),not er_comp_overlap_shape_disk(X0).
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
er_smaller_er_smaller_key(X0) :- er_smaller_key(X1),smaller(X0,X1).
-er_smaller_er_smaller_key(X0) :- object(X0),not er_smaller_er_smaller_key(X0).
er_below_er_smaller_key(X0) :- er_smaller_key(X1),below(X0,X1).
-er_below_er_smaller_key(X0) :- object(X0),not er_below_er_smaller_key(X0).
er_left_er_smaller_key(X0) :- er_smaller_key(X1),left(X0,X1).
-er_left_er_smaller_key(X0) :- object(X0),not er_left_er_smaller_key(X0).
er_overlap_er_smaller_key(X0) :- er_smaller_key(X1),overlap(X0,X1).
-er_overlap_er_smaller_key(X0) :- object(X0),not er_overlap_er_smaller_key(X0).
er_shape_er_smaller_key(X0) :- er_smaller_key(X1),shape(X0,X1).
-er_shape_er_smaller_key(X0) :- object(X0),not er_shape_er_smaller_key(X0).
er_inv_smaller_er_smaller_key(X0) :- er_smaller_key(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_smaller_key(X0) :- object(X0),not er_inv_smaller_er_smaller_key(X0).
er_inv_below_er_smaller_key(X0) :- er_smaller_key(X1),inv_below(X0,X1).
-er_inv_below_er_smaller_key(X0) :- object(X0),not er_inv_below_er_smaller_key(X0).
er_inv_left_er_smaller_key(X0) :- er_smaller_key(X1),inv_left(X0,X1).
-er_inv_left_er_smaller_key(X0) :- object(X0),not er_inv_left_er_smaller_key(X0).
er_inv_overlap_er_smaller_key(X0) :- er_smaller_key(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_smaller_key(X0) :- object(X0),not er_inv_overlap_er_smaller_key(X0).
er_inv_shape_er_smaller_key(X0) :- er_smaller_key(X1),inv_shape(X0,X1).
-er_inv_shape_er_smaller_key(X0) :- object(X0),not er_inv_shape_er_smaller_key(X0).
er_comp_smaller_below_er_smaller_key(X0) :- er_smaller_key(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_smaller_key(X0) :- object(X0),not er_comp_smaller_below_er_smaller_key(X0).
er_comp_smaller_left_er_smaller_key(X0) :- er_smaller_key(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_smaller_key(X0) :- object(X0),not er_comp_smaller_left_er_smaller_key(X0).
er_comp_smaller_overlap_er_smaller_key(X0) :- er_smaller_key(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_smaller_key(X0) :- object(X0),not er_comp_smaller_overlap_er_smaller_key(X0).
er_comp_smaller_shape_er_smaller_key(X0) :- er_smaller_key(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_smaller_key(X0) :- object(X0),not er_comp_smaller_shape_er_smaller_key(X0).
er_comp_below_left_er_smaller_key(X0) :- er_smaller_key(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_smaller_key(X0) :- object(X0),not er_comp_below_left_er_smaller_key(X0).
er_comp_below_overlap_er_smaller_key(X0) :- er_smaller_key(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_smaller_key(X0) :- object(X0),not er_comp_below_overlap_er_smaller_key(X0).
er_comp_below_shape_er_smaller_key(X0) :- er_smaller_key(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_smaller_key(X0) :- object(X0),not er_comp_below_shape_er_smaller_key(X0).
er_comp_left_overlap_er_smaller_key(X0) :- er_smaller_key(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_smaller_key(X0) :- object(X0),not er_comp_left_overlap_er_smaller_key(X0).
er_comp_left_shape_er_smaller_key(X0) :- er_smaller_key(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_smaller_key(X0) :- object(X0),not er_comp_left_shape_er_smaller_key(X0).
er_comp_overlap_shape_er_smaller_key(X0) :- er_smaller_key(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_smaller_key(X0) :- object(X0),not er_comp_overlap_shape_er_smaller_key(X0).
er_smaller_er_below_key(X0) :- er_below_key(X1),smaller(X0,X1).
-er_smaller_er_below_key(X0) :- object(X0),not er_smaller_er_below_key(X0).
er_below_er_below_key(X0) :- er_below_key(X1),below(X0,X1).
-er_below_er_below_key(X0) :- object(X0),not er_below_er_below_key(X0).
er_left_er_below_key(X0) :- er_below_key(X1),left(X0,X1).
-er_left_er_below_key(X0) :- object(X0),not er_left_er_below_key(X0).
er_overlap_er_below_key(X0) :- er_below_key(X1),overlap(X0,X1).
-er_overlap_er_below_key(X0) :- object(X0),not er_overlap_er_below_key(X0).
er_shape_er_below_key(X0) :- er_below_key(X1),shape(X0,X1).
-er_shape_er_below_key(X0) :- object(X0),not er_shape_er_below_key(X0).
er_inv_smaller_er_below_key(X0) :- er_below_key(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_below_key(X0) :- object(X0),not er_inv_smaller_er_below_key(X0).
er_inv_below_er_below_key(X0) :- er_below_key(X1),inv_below(X0,X1).
-er_inv_below_er_below_key(X0) :- object(X0),not er_inv_below_er_below_key(X0).
er_inv_left_er_below_key(X0) :- er_below_key(X1),inv_left(X0,X1).
-er_inv_left_er_below_key(X0) :- object(X0),not er_inv_left_er_below_key(X0).
er_inv_overlap_er_below_key(X0) :- er_below_key(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_below_key(X0) :- object(X0),not er_inv_overlap_er_below_key(X0).
er_inv_shape_er_below_key(X0) :- er_below_key(X1),inv_shape(X0,X1).
-er_inv_shape_er_below_key(X0) :- object(X0),not er_inv_shape_er_below_key(X0).
er_comp_smaller_below_er_below_key(X0) :- er_below_key(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_below_key(X0) :- object(X0),not er_comp_smaller_below_er_below_key(X0).
er_comp_smaller_left_er_below_key(X0) :- er_below_key(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_below_key(X0) :- object(X0),not er_comp_smaller_left_er_below_key(X0).
er_comp_smaller_overlap_er_below_key(X0) :- er_below_key(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_below_key(X0) :- object(X0),not er_comp_smaller_overlap_er_below_key(X0).
er_comp_smaller_shape_er_below_key(X0) :- er_below_key(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_below_key(X0) :- object(X0),not er_comp_smaller_shape_er_below_key(X0).
er_comp_below_left_er_below_key(X0) :- er_below_key(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_below_key(X0) :- object(X0),not er_comp_below_left_er_below_key(X0).
er_comp_below_overlap_er_below_key(X0) :- er_below_key(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_below_key(X0) :- object(X0),not er_comp_below_overlap_er_below_key(X0).
er_comp_below_shape_er_below_key(X0) :- er_below_key(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_below_key(X0) :- object(X0),not er_comp_below_shape_er_below_key(X0).
er_comp_left_overlap_er_below_key(X0) :- er_below_key(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_below_key(X0) :- object(X0),not er_comp_left_overlap_er_below_key(X0).
er_comp_left_shape_er_below_key(X0) :- er_below_key(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_below_key(X0) :- object(X0),not er_comp_left_shape_er_below_key(X0).
er_comp_overlap_shape_er_below_key(X0) :- er_below_key(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_below_key(X0) :- object(X0),not er_comp_overlap_shape_er_below_key(X0).
er_smaller_er_left_key(X0) :- er_left_key(X1),smaller(X0,X1).
-er_smaller_er_left_key(X0) :- object(X0),not er_smaller_er_left_key(X0).
er_below_er_left_key(X0) :- er_left_key(X1),below(X0,X1).
-er_below_er_left_key(X0) :- object(X0),not er_below_er_left_key(X0).
er_left_er_left_key(X0) :- er_left_key(X1),left(X0,X1).
-er_left_er_left_key(X0) :- object(X0),not er_left_er_left_key(X0).
er_overlap_er_left_key(X0) :- er_left_key(X1),overlap(X0,X1).
-er_overlap_er_left_key(X0) :- object(X0),not er_overlap_er_left_key(X0).
er_shape_er_left_key(X0) :- er_left_key(X1),shape(X0,X1).
-er_shape_er_left_key(X0) :- object(X0),not er_shape_er_left_key(X0).
er_inv_smaller_er_left_key(X0) :- er_left_key(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_left_key(X0) :- object(X0),not er_inv_smaller_er_left_key(X0).
er_inv_below_er_left_key(X0) :- er_left_key(X1),inv_below(X0,X1).
-er_inv_below_er_left_key(X0) :- object(X0),not er_inv_below_er_left_key(X0).
er_inv_left_er_left_key(X0) :- er_left_key(X1),inv_left(X0,X1).
-er_inv_left_er_left_key(X0) :- object(X0),not er_inv_left_er_left_key(X0).
er_inv_overlap_er_left_key(X0) :- er_left_key(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_left_key(X0) :- object(X0),not er_inv_overlap_er_left_key(X0).
er_inv_shape_er_left_key(X0) :- er_left_key(X1),inv_shape(X0,X1).
-er_inv_shape_er_left_key(X0) :- object(X0),not er_inv_shape_er_left_key(X0).
er_comp_smaller_below_er_left_key(X0) :- er_left_key(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_left_key(X0) :- object(X0),not er_comp_smaller_below_er_left_key(X0).
er_comp_smaller_left_er_left_key(X0) :- er_left_key(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_left_key(X0) :- object(X0),not er_comp_smaller_left_er_left_key(X0).
er_comp_smaller_overlap_er_left_key(X0) :- er_left_key(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_left_key(X0) :- object(X0),not er_comp_smaller_overlap_er_left_key(X0).
er_comp_smaller_shape_er_left_key(X0) :- er_left_key(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_left_key(X0) :- object(X0),not er_comp_smaller_shape_er_left_key(X0).
er_comp_below_left_er_left_key(X0) :- er_left_key(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_left_key(X0) :- object(X0),not er_comp_below_left_er_left_key(X0).
er_comp_below_overlap_er_left_key(X0) :- er_left_key(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_left_key(X0) :- object(X0),not er_comp_below_overlap_er_left_key(X0).
er_comp_below_shape_er_left_key(X0) :- er_left_key(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_left_key(X0) :- object(X0),not er_comp_below_shape_er_left_key(X0).
er_comp_left_overlap_er_left_key(X0) :- er_left_key(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_left_key(X0) :- object(X0),not er_comp_left_overlap_er_left_key(X0).
er_comp_left_shape_er_left_key(X0) :- er_left_key(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_left_key(X0) :- object(X0),not er_comp_left_shape_er_left_key(X0).
er_comp_overlap_shape_er_left_key(X0) :- er_left_key(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_left_key(X0) :- object(X0),not er_comp_overlap_shape_er_left_key(X0).
er_smaller_er_overlap_key(X0) :- er_overlap_key(X1),smaller(X0,X1).
-er_smaller_er_overlap_key(X0) :- object(X0),not er_smaller_er_overlap_key(X0).
er_below_er_overlap_key(X0) :- er_overlap_key(X1),below(X0,X1).
-er_below_er_overlap_key(X0) :- object(X0),not er_below_er_overlap_key(X0).
er_left_er_overlap_key(X0) :- er_overlap_key(X1),left(X0,X1).
-er_left_er_overlap_key(X0) :- object(X0),not er_left_er_overlap_key(X0).
er_overlap_er_overlap_key(X0) :- er_overlap_key(X1),overlap(X0,X1).
-er_overlap_er_overlap_key(X0) :- object(X0),not er_overlap_er_overlap_key(X0).
er_shape_er_overlap_key(X0) :- er_overlap_key(X1),shape(X0,X1).
-er_shape_er_overlap_key(X0) :- object(X0),not er_shape_er_overlap_key(X0).
er_inv_smaller_er_overlap_key(X0) :- er_overlap_key(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_overlap_key(X0) :- object(X0),not er_inv_smaller_er_overlap_key(X0).
er_inv_below_er_overlap_key(X0) :- er_overlap_key(X1),inv_below(X0,X1).
-er_inv_below_er_overlap_key(X0) :- object(X0),not er_inv_below_er_overlap_key(X0).
er_inv_left_er_overlap_key(X0) :- er_overlap_key(X1),inv_left(X0,X1).
-er_inv_left_er_overlap_key(X0) :- object(X0),not er_inv_left_er_overlap_key(X0).
er_inv_overlap_er_overlap_key(X0) :- er_overlap_key(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_overlap_key(X0) :- object(X0),not er_inv_overlap_er_overlap_key(X0).
er_inv_shape_er_overlap_key(X0) :- er_overlap_key(X1),inv_shape(X0,X1).
-er_inv_shape_er_overlap_key(X0) :- object(X0),not er_inv_shape_er_overlap_key(X0).
er_comp_smaller_below_er_overlap_key(X0) :- er_overlap_key(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_overlap_key(X0) :- object(X0),not er_comp_smaller_below_er_overlap_key(X0).
er_comp_smaller_left_er_overlap_key(X0) :- er_overlap_key(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_overlap_key(X0) :- object(X0),not er_comp_smaller_left_er_overlap_key(X0).
er_comp_smaller_overlap_er_overlap_key(X0) :- er_overlap_key(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_overlap_key(X0) :- object(X0),not er_comp_smaller_overlap_er_overlap_key(X0).
er_comp_smaller_shape_er_overlap_key(X0) :- er_overlap_key(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_overlap_key(X0) :- object(X0),not er_comp_smaller_shape_er_overlap_key(X0).
er_comp_below_left_er_overlap_key(X0) :- er_overlap_key(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_overlap_key(X0) :- object(X0),not er_comp_below_left_er_overlap_key(X0).
er_comp_below_overlap_er_overlap_key(X0) :- er_overlap_key(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_overlap_key(X0) :- object(X0),not er_comp_below_overlap_er_overlap_key(X0).
er_comp_below_shape_er_overlap_key(X0) :- er_overlap_key(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_overlap_key(X0) :- object(X0),not er_comp_below_shape_er_overlap_key(X0).
er_comp_left_overlap_er_overlap_key(X0) :- er_overlap_key(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_overlap_key(X0) :- object(X0),not er_comp_left_overlap_er_overlap_key(X0).
er_comp_left_shape_er_overlap_key(X0) :- er_overlap_key(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_overlap_key(X0) :- object(X0),not er_comp_left_shape_er_overlap_key(X0).
er_comp_overlap_shape_er_overlap_key(X0) :- er_overlap_key(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_overlap_key(X0) :- object(X0),not er_comp_overlap_shape_er_overlap_key(X0).
er_smaller_er_shape_key(X0) :- er_shape_key(X1),smaller(X0,X1).
-er_smaller_er_shape_key(X0) :- object(X0),not er_smaller_er_shape_key(X0).
er_below_er_shape_key(X0) :- er_shape_key(X1),below(X0,X1).
-er_below_er_shape_key(X0) :- object(X0),not er_below_er_shape_key(X0).
er_left_er_shape_key(X0) :- er_shape_key(X1),left(X0,X1).
-er_left_er_shape_key(X0) :- object(X0),not er_left_er_shape_key(X0).
er_overlap_er_shape_key(X0) :- er_shape_key(X1),overlap(X0,X1).
-er_overlap_er_shape_key(X0) :- object(X0),not er_overlap_er_shape_key(X0).
er_shape_er_shape_key(X0) :- er_shape_key(X1),shape(X0,X1).
-er_shape_er_shape_key(X0) :- object(X0),not er_shape_er_shape_key(X0).
er_inv_smaller_er_shape_key(X0) :- er_shape_key(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_shape_key(X0) :- object(X0),not er_inv_smaller_er_shape_key(X0).
er_inv_below_er_shape_key(X0) :- er_shape_key(X1),inv_below(X0,X1).
-er_inv_below_er_shape_key(X0) :- object(X0),not er_inv_below_er_shape_key(X0).
er_inv_left_er_shape_key(X0) :- er_shape_key(X1),inv_left(X0,X1).
-er_inv_left_er_shape_key(X0) :- object(X0),not er_inv_left_er_shape_key(X0).
er_inv_overlap_er_shape_key(X0) :- er_shape_key(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_shape_key(X0) :- object(X0),not er_inv_overlap_er_shape_key(X0).
er_inv_shape_er_shape_key(X0) :- er_shape_key(X1),inv_shape(X0,X1).
-er_inv_shape_er_shape_key(X0) :- object(X0),not er_inv_shape_er_shape_key(X0).
er_comp_smaller_below_er_shape_key(X0) :- er_shape_key(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_shape_key(X0) :- object(X0),not er_comp_smaller_below_er_shape_key(X0).
er_comp_smaller_left_er_shape_key(X0) :- er_shape_key(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_shape_key(X0) :- object(X0),not er_comp_smaller_left_er_shape_key(X0).
er_comp_smaller_overlap_er_shape_key(X0) :- er_shape_key(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_shape_key(X0) :- object(X0),not er_comp_smaller_overlap_er_shape_key(X0).
er_comp_smaller_shape_er_shape_key(X0) :- er_shape_key(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_shape_key(X0) :- object(X0),not er_comp_smaller_shape_er_shape_key(X0).
er_comp_below_left_er_shape_key(X0) :- er_shape_key(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_shape_key(X0) :- object(X0),not er_comp_below_left_er_shape_key(X0).
er_comp_below_overlap_er_shape_key(X0) :- er_shape_key(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_shape_key(X0) :- object(X0),not er_comp_below_overlap_er_shape_key(X0).
er_comp_below_shape_er_shape_key(X0) :- er_shape_key(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_shape_key(X0) :- object(X0),not er_comp_below_shape_er_shape_key(X0).
er_comp_left_overlap_er_shape_key(X0) :- er_shape_key(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_shape_key(X0) :- object(X0),not er_comp_left_overlap_er_shape_key(X0).
er_comp_left_shape_er_shape_key(X0) :- er_shape_key(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_shape_key(X0) :- object(X0),not er_comp_left_shape_er_shape_key(X0).
er_comp_overlap_shape_er_shape_key(X0) :- er_shape_key(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_shape_key(X0) :- object(X0),not er_comp_overlap_shape_er_shape_key(X0).
er_smaller_er_smaller_peg(X0) :- er_smaller_peg(X1),smaller(X0,X1).
-er_smaller_er_smaller_peg(X0) :- object(X0),not er_smaller_er_smaller_peg(X0).
er_below_er_smaller_peg(X0) :- er_smaller_peg(X1),below(X0,X1).
-er_below_er_smaller_peg(X0) :- object(X0),not er_below_er_smaller_peg(X0).
er_left_er_smaller_peg(X0) :- er_smaller_peg(X1),left(X0,X1).
-er_left_er_smaller_peg(X0) :- object(X0),not er_left_er_smaller_peg(X0).
er_overlap_er_smaller_peg(X0) :- er_smaller_peg(X1),overlap(X0,X1).
-er_overlap_er_smaller_peg(X0) :- object(X0),not er_overlap_er_smaller_peg(X0).
er_shape_er_smaller_peg(X0) :- er_smaller_peg(X1),shape(X0,X1).
-er_shape_er_smaller_peg(X0) :- object(X0),not er_shape_er_smaller_peg(X0).
er_inv_smaller_er_smaller_peg(X0) :- er_smaller_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_smaller_peg(X0) :- object(X0),not er_inv_smaller_er_smaller_peg(X0).
er_inv_below_er_smaller_peg(X0) :- er_smaller_peg(X1),inv_below(X0,X1).
-er_inv_below_er_smaller_peg(X0) :- object(X0),not er_inv_below_er_smaller_peg(X0).
er_inv_left_er_smaller_peg(X0) :- er_smaller_peg(X1),inv_left(X0,X1).
-er_inv_left_er_smaller_peg(X0) :- object(X0),not er_inv_left_er_smaller_peg(X0).
er_inv_overlap_er_smaller_peg(X0) :- er_smaller_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_smaller_peg(X0) :- object(X0),not er_inv_overlap_er_smaller_peg(X0).
er_inv_shape_er_smaller_peg(X0) :- er_smaller_peg(X1),inv_shape(X0,X1).
-er_inv_shape_er_smaller_peg(X0) :- object(X0),not er_inv_shape_er_smaller_peg(X0).
er_comp_smaller_below_er_smaller_peg(X0) :- er_smaller_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_smaller_peg(X0) :- object(X0),not er_comp_smaller_below_er_smaller_peg(X0).
er_comp_smaller_left_er_smaller_peg(X0) :- er_smaller_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_smaller_peg(X0) :- object(X0),not er_comp_smaller_left_er_smaller_peg(X0).
er_comp_smaller_overlap_er_smaller_peg(X0) :- er_smaller_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_smaller_peg(X0) :- object(X0),not er_comp_smaller_overlap_er_smaller_peg(X0).
er_comp_smaller_shape_er_smaller_peg(X0) :- er_smaller_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_smaller_peg(X0) :- object(X0),not er_comp_smaller_shape_er_smaller_peg(X0).
er_comp_below_left_er_smaller_peg(X0) :- er_smaller_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_smaller_peg(X0) :- object(X0),not er_comp_below_left_er_smaller_peg(X0).
er_comp_below_overlap_er_smaller_peg(X0) :- er_smaller_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_smaller_peg(X0) :- object(X0),not er_comp_below_overlap_er_smaller_peg(X0).
er_comp_below_shape_er_smaller_peg(X0) :- er_smaller_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_smaller_peg(X0) :- object(X0),not er_comp_below_shape_er_smaller_peg(X0).
er_comp_left_overlap_er_smaller_peg(X0) :- er_smaller_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_smaller_peg(X0) :- object(X0),not er_comp_left_overlap_er_smaller_peg(X0).
er_comp_left_shape_er_smaller_peg(X0) :- er_smaller_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_smaller_peg(X0) :- object(X0),not er_comp_left_shape_er_smaller_peg(X0).
er_comp_overlap_shape_er_smaller_peg(X0) :- er_smaller_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_smaller_peg(X0) :- object(X0),not er_comp_overlap_shape_er_smaller_peg(X0).
er_smaller_er_below_peg(X0) :- er_below_peg(X1),smaller(X0,X1).
-er_smaller_er_below_peg(X0) :- object(X0),not er_smaller_er_below_peg(X0).
er_below_er_below_peg(X0) :- er_below_peg(X1),below(X0,X1).
-er_below_er_below_peg(X0) :- object(X0),not er_below_er_below_peg(X0).
er_left_er_below_peg(X0) :- er_below_peg(X1),left(X0,X1).
-er_left_er_below_peg(X0) :- object(X0),not er_left_er_below_peg(X0).
er_overlap_er_below_peg(X0) :- er_below_peg(X1),overlap(X0,X1).
-er_overlap_er_below_peg(X0) :- object(X0),not er_overlap_er_below_peg(X0).
er_shape_er_below_peg(X0) :- er_below_peg(X1),shape(X0,X1).
-er_shape_er_below_peg(X0) :- object(X0),not er_shape_er_below_peg(X0).
er_inv_smaller_er_below_peg(X0) :- er_below_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_below_peg(X0) :- object(X0),not er_inv_smaller_er_below_peg(X0).
er_inv_below_er_below_peg(X0) :- er_below_peg(X1),inv_below(X0,X1).
-er_inv_below_er_below_peg(X0) :- object(X0),not er_inv_below_er_below_peg(X0).
er_inv_left_er_below_peg(X0) :- er_below_peg(X1),inv_left(X0,X1).
-er_inv_left_er_below_peg(X0) :- object(X0),not er_inv_left_er_below_peg(X0).
er_inv_overlap_er_below_peg(X0) :- er_below_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_below_peg(X0) :- object(X0),not er_inv_overlap_er_below_peg(X0).
er_inv_shape_er_below_peg(X0) :- er_below_peg(X1),inv_shape(X0,X1).
-er_inv_shape_er_below_peg(X0) :- object(X0),not er_inv_shape_er_below_peg(X0).
er_comp_smaller_below_er_below_peg(X0) :- er_below_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_below_peg(X0) :- object(X0),not er_comp_smaller_below_er_below_peg(X0).
er_comp_smaller_left_er_below_peg(X0) :- er_below_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_below_peg(X0) :- object(X0),not er_comp_smaller_left_er_below_peg(X0).
er_comp_smaller_overlap_er_below_peg(X0) :- er_below_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_below_peg(X0) :- object(X0),not er_comp_smaller_overlap_er_below_peg(X0).
er_comp_smaller_shape_er_below_peg(X0) :- er_below_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_below_peg(X0) :- object(X0),not er_comp_smaller_shape_er_below_peg(X0).
er_comp_below_left_er_below_peg(X0) :- er_below_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_below_peg(X0) :- object(X0),not er_comp_below_left_er_below_peg(X0).
er_comp_below_overlap_er_below_peg(X0) :- er_below_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_below_peg(X0) :- object(X0),not er_comp_below_overlap_er_below_peg(X0).
er_comp_below_shape_er_below_peg(X0) :- er_below_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_below_peg(X0) :- object(X0),not er_comp_below_shape_er_below_peg(X0).
er_comp_left_overlap_er_below_peg(X0) :- er_below_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_below_peg(X0) :- object(X0),not er_comp_left_overlap_er_below_peg(X0).
er_comp_left_shape_er_below_peg(X0) :- er_below_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_below_peg(X0) :- object(X0),not er_comp_left_shape_er_below_peg(X0).
er_comp_overlap_shape_er_below_peg(X0) :- er_below_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_below_peg(X0) :- object(X0),not er_comp_overlap_shape_er_below_peg(X0).
er_smaller_er_left_peg(X0) :- er_left_peg(X1),smaller(X0,X1).
-er_smaller_er_left_peg(X0) :- object(X0),not er_smaller_er_left_peg(X0).
er_below_er_left_peg(X0) :- er_left_peg(X1),below(X0,X1).
-er_below_er_left_peg(X0) :- object(X0),not er_below_er_left_peg(X0).
er_left_er_left_peg(X0) :- er_left_peg(X1),left(X0,X1).
-er_left_er_left_peg(X0) :- object(X0),not er_left_er_left_peg(X0).
er_overlap_er_left_peg(X0) :- er_left_peg(X1),overlap(X0,X1).
-er_overlap_er_left_peg(X0) :- object(X0),not er_overlap_er_left_peg(X0).
er_shape_er_left_peg(X0) :- er_left_peg(X1),shape(X0,X1).
-er_shape_er_left_peg(X0) :- object(X0),not er_shape_er_left_peg(X0).
er_inv_smaller_er_left_peg(X0) :- er_left_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_left_peg(X0) :- object(X0),not er_inv_smaller_er_left_peg(X0).
er_inv_below_er_left_peg(X0) :- er_left_peg(X1),inv_below(X0,X1).
-er_inv_below_er_left_peg(X0) :- object(X0),not er_inv_below_er_left_peg(X0).
er_inv_left_er_left_peg(X0) :- er_left_peg(X1),inv_left(X0,X1).
-er_inv_left_er_left_peg(X0) :- object(X0),not er_inv_left_er_left_peg(X0).
er_inv_overlap_er_left_peg(X0) :- er_left_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_left_peg(X0) :- object(X0),not er_inv_overlap_er_left_peg(X0).
er_inv_shape_er_left_peg(X0) :- er_left_peg(X1),inv_shape(X0,X1).
-er_inv_shape_er_left_peg(X0) :- object(X0),not er_inv_shape_er_left_peg(X0).
er_comp_smaller_below_er_left_peg(X0) :- er_left_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_left_peg(X0) :- object(X0),not er_comp_smaller_below_er_left_peg(X0).
er_comp_smaller_left_er_left_peg(X0) :- er_left_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_left_peg(X0) :- object(X0),not er_comp_smaller_left_er_left_peg(X0).
er_comp_smaller_overlap_er_left_peg(X0) :- er_left_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_left_peg(X0) :- object(X0),not er_comp_smaller_overlap_er_left_peg(X0).
er_comp_smaller_shape_er_left_peg(X0) :- er_left_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_left_peg(X0) :- object(X0),not er_comp_smaller_shape_er_left_peg(X0).
er_comp_below_left_er_left_peg(X0) :- er_left_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_left_peg(X0) :- object(X0),not er_comp_below_left_er_left_peg(X0).
er_comp_below_overlap_er_left_peg(X0) :- er_left_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_left_peg(X0) :- object(X0),not er_comp_below_overlap_er_left_peg(X0).
er_comp_below_shape_er_left_peg(X0) :- er_left_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_left_peg(X0) :- object(X0),not er_comp_below_shape_er_left_peg(X0).
er_comp_left_overlap_er_left_peg(X0) :- er_left_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_left_peg(X0) :- object(X0),not er_comp_left_overlap_er_left_peg(X0).
er_comp_left_shape_er_left_peg(X0) :- er_left_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_left_peg(X0) :- object(X0),not er_comp_left_shape_er_left_peg(X0).
er_comp_overlap_shape_er_left_peg(X0) :- er_left_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_left_peg(X0) :- object(X0),not er_comp_overlap_shape_er_left_peg(X0).
er_smaller_er_overlap_peg(X0) :- er_overlap_peg(X1),smaller(X0,X1).
-er_smaller_er_overlap_peg(X0) :- object(X0),not er_smaller_er_overlap_peg(X0).
er_below_er_overlap_peg(X0) :- er_overlap_peg(X1),below(X0,X1).
-er_below_er_overlap_peg(X0) :- object(X0),not er_below_er_overlap_peg(X0).
er_left_er_overlap_peg(X0) :- er_overlap_peg(X1),left(X0,X1).
-er_left_er_overlap_peg(X0) :- object(X0),not er_left_er_overlap_peg(X0).
er_overlap_er_overlap_peg(X0) :- er_overlap_peg(X1),overlap(X0,X1).
-er_overlap_er_overlap_peg(X0) :- object(X0),not er_overlap_er_overlap_peg(X0).
er_shape_er_overlap_peg(X0) :- er_overlap_peg(X1),shape(X0,X1).
-er_shape_er_overlap_peg(X0) :- object(X0),not er_shape_er_overlap_peg(X0).
er_inv_smaller_er_overlap_peg(X0) :- er_overlap_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_overlap_peg(X0) :- object(X0),not er_inv_smaller_er_overlap_peg(X0).
er_inv_below_er_overlap_peg(X0) :- er_overlap_peg(X1),inv_below(X0,X1).
-er_inv_below_er_overlap_peg(X0) :- object(X0),not er_inv_below_er_overlap_peg(X0).
er_inv_left_er_overlap_peg(X0) :- er_overlap_peg(X1),inv_left(X0,X1).
-er_inv_left_er_overlap_peg(X0) :- object(X0),not er_inv_left_er_overlap_peg(X0).
er_inv_overlap_er_overlap_peg(X0) :- er_overlap_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_overlap_peg(X0) :- object(X0),not er_inv_overlap_er_overlap_peg(X0).
er_inv_shape_er_overlap_peg(X0) :- er_overlap_peg(X1),inv_shape(X0,X1).
-er_inv_shape_er_overlap_peg(X0) :- object(X0),not er_inv_shape_er_overlap_peg(X0).
er_comp_smaller_below_er_overlap_peg(X0) :- er_overlap_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_overlap_peg(X0) :- object(X0),not er_comp_smaller_below_er_overlap_peg(X0).
er_comp_smaller_left_er_overlap_peg(X0) :- er_overlap_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_overlap_peg(X0) :- object(X0),not er_comp_smaller_left_er_overlap_peg(X0).
er_comp_smaller_overlap_er_overlap_peg(X0) :- er_overlap_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_overlap_peg(X0) :- object(X0),not er_comp_smaller_overlap_er_overlap_peg(X0).
er_comp_smaller_shape_er_overlap_peg(X0) :- er_overlap_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_overlap_peg(X0) :- object(X0),not er_comp_smaller_shape_er_overlap_peg(X0).
er_comp_below_left_er_overlap_peg(X0) :- er_overlap_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_overlap_peg(X0) :- object(X0),not er_comp_below_left_er_overlap_peg(X0).
er_comp_below_overlap_er_overlap_peg(X0) :- er_overlap_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_overlap_peg(X0) :- object(X0),not er_comp_below_overlap_er_overlap_peg(X0).
er_comp_below_shape_er_overlap_peg(X0) :- er_overlap_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_overlap_peg(X0) :- object(X0),not er_comp_below_shape_er_overlap_peg(X0).
er_comp_left_overlap_er_overlap_peg(X0) :- er_overlap_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_overlap_peg(X0) :- object(X0),not er_comp_left_overlap_er_overlap_peg(X0).
er_comp_left_shape_er_overlap_peg(X0) :- er_overlap_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_overlap_peg(X0) :- object(X0),not er_comp_left_shape_er_overlap_peg(X0).
er_comp_overlap_shape_er_overlap_peg(X0) :- er_overlap_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_overlap_peg(X0) :- object(X0),not er_comp_overlap_shape_er_overlap_peg(X0).
er_smaller_er_shape_peg(X0) :- er_shape_peg(X1),smaller(X0,X1).
-er_smaller_er_shape_peg(X0) :- object(X0),not er_smaller_er_shape_peg(X0).
er_below_er_shape_peg(X0) :- er_shape_peg(X1),below(X0,X1).
-er_below_er_shape_peg(X0) :- object(X0),not er_below_er_shape_peg(X0).
er_left_er_shape_peg(X0) :- er_shape_peg(X1),left(X0,X1).
-er_left_er_shape_peg(X0) :- object(X0),not er_left_er_shape_peg(X0).
er_overlap_er_shape_peg(X0) :- er_shape_peg(X1),overlap(X0,X1).
-er_overlap_er_shape_peg(X0) :- object(X0),not er_overlap_er_shape_peg(X0).
er_shape_er_shape_peg(X0) :- er_shape_peg(X1),shape(X0,X1).
-er_shape_er_shape_peg(X0) :- object(X0),not er_shape_er_shape_peg(X0).
er_inv_smaller_er_shape_peg(X0) :- er_shape_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_shape_peg(X0) :- object(X0),not er_inv_smaller_er_shape_peg(X0).
er_inv_below_er_shape_peg(X0) :- er_shape_peg(X1),inv_below(X0,X1).
-er_inv_below_er_shape_peg(X0) :- object(X0),not er_inv_below_er_shape_peg(X0).
er_inv_left_er_shape_peg(X0) :- er_shape_peg(X1),inv_left(X0,X1).
-er_inv_left_er_shape_peg(X0) :- object(X0),not er_inv_left_er_shape_peg(X0).
er_inv_overlap_er_shape_peg(X0) :- er_shape_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_shape_peg(X0) :- object(X0),not er_inv_overlap_er_shape_peg(X0).
er_inv_shape_er_shape_peg(X0) :- er_shape_peg(X1),inv_shape(X0,X1).
-er_inv_shape_er_shape_peg(X0) :- object(X0),not er_inv_shape_er_shape_peg(X0).
er_comp_smaller_below_er_shape_peg(X0) :- er_shape_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_shape_peg(X0) :- object(X0),not er_comp_smaller_below_er_shape_peg(X0).
er_comp_smaller_left_er_shape_peg(X0) :- er_shape_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_shape_peg(X0) :- object(X0),not er_comp_smaller_left_er_shape_peg(X0).
er_comp_smaller_overlap_er_shape_peg(X0) :- er_shape_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_shape_peg(X0) :- object(X0),not er_comp_smaller_overlap_er_shape_peg(X0).
er_comp_smaller_shape_er_shape_peg(X0) :- er_shape_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_shape_peg(X0) :- object(X0),not er_comp_smaller_shape_er_shape_peg(X0).
er_comp_below_left_er_shape_peg(X0) :- er_shape_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_shape_peg(X0) :- object(X0),not er_comp_below_left_er_shape_peg(X0).
er_comp_below_overlap_er_shape_peg(X0) :- er_shape_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_shape_peg(X0) :- object(X0),not er_comp_below_overlap_er_shape_peg(X0).
er_comp_below_shape_er_shape_peg(X0) :- er_shape_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_shape_peg(X0) :- object(X0),not er_comp_below_shape_er_shape_peg(X0).
er_comp_left_overlap_er_shape_peg(X0) :- er_shape_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_shape_peg(X0) :- object(X0),not er_comp_left_overlap_er_shape_peg(X0).
er_comp_left_shape_er_shape_peg(X0) :- er_shape_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_shape_peg(X0) :- object(X0),not er_comp_left_shape_er_shape_peg(X0).
er_comp_overlap_shape_er_shape_peg(X0) :- er_shape_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_shape_peg(X0) :- object(X0),not er_comp_overlap_shape_er_shape_peg(X0).
er_smaller_er_smaller_disk(X0) :- er_smaller_disk(X1),smaller(X0,X1).
-er_smaller_er_smaller_disk(X0) :- object(X0),not er_smaller_er_smaller_disk(X0).
er_below_er_smaller_disk(X0) :- er_smaller_disk(X1),below(X0,X1).
-er_below_er_smaller_disk(X0) :- object(X0),not er_below_er_smaller_disk(X0).
er_left_er_smaller_disk(X0) :- er_smaller_disk(X1),left(X0,X1).
-er_left_er_smaller_disk(X0) :- object(X0),not er_left_er_smaller_disk(X0).
er_overlap_er_smaller_disk(X0) :- er_smaller_disk(X1),overlap(X0,X1).
-er_overlap_er_smaller_disk(X0) :- object(X0),not er_overlap_er_smaller_disk(X0).
er_shape_er_smaller_disk(X0) :- er_smaller_disk(X1),shape(X0,X1).
-er_shape_er_smaller_disk(X0) :- object(X0),not er_shape_er_smaller_disk(X0).
er_inv_smaller_er_smaller_disk(X0) :- er_smaller_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_smaller_disk(X0) :- object(X0),not er_inv_smaller_er_smaller_disk(X0).
er_inv_below_er_smaller_disk(X0) :- er_smaller_disk(X1),inv_below(X0,X1).
-er_inv_below_er_smaller_disk(X0) :- object(X0),not er_inv_below_er_smaller_disk(X0).
er_inv_left_er_smaller_disk(X0) :- er_smaller_disk(X1),inv_left(X0,X1).
-er_inv_left_er_smaller_disk(X0) :- object(X0),not er_inv_left_er_smaller_disk(X0).
er_inv_overlap_er_smaller_disk(X0) :- er_smaller_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_smaller_disk(X0) :- object(X0),not er_inv_overlap_er_smaller_disk(X0).
er_inv_shape_er_smaller_disk(X0) :- er_smaller_disk(X1),inv_shape(X0,X1).
-er_inv_shape_er_smaller_disk(X0) :- object(X0),not er_inv_shape_er_smaller_disk(X0).
er_comp_smaller_below_er_smaller_disk(X0) :- er_smaller_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_smaller_disk(X0) :- object(X0),not er_comp_smaller_below_er_smaller_disk(X0).
er_comp_smaller_left_er_smaller_disk(X0) :- er_smaller_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_smaller_disk(X0) :- object(X0),not er_comp_smaller_left_er_smaller_disk(X0).
er_comp_smaller_overlap_er_smaller_disk(X0) :- er_smaller_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_smaller_disk(X0) :- object(X0),not er_comp_smaller_overlap_er_smaller_disk(X0).
er_comp_smaller_shape_er_smaller_disk(X0) :- er_smaller_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_smaller_disk(X0) :- object(X0),not er_comp_smaller_shape_er_smaller_disk(X0).
er_comp_below_left_er_smaller_disk(X0) :- er_smaller_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_smaller_disk(X0) :- object(X0),not er_comp_below_left_er_smaller_disk(X0).
er_comp_below_overlap_er_smaller_disk(X0) :- er_smaller_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_smaller_disk(X0) :- object(X0),not er_comp_below_overlap_er_smaller_disk(X0).
er_comp_below_shape_er_smaller_disk(X0) :- er_smaller_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_smaller_disk(X0) :- object(X0),not er_comp_below_shape_er_smaller_disk(X0).
er_comp_left_overlap_er_smaller_disk(X0) :- er_smaller_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_smaller_disk(X0) :- object(X0),not er_comp_left_overlap_er_smaller_disk(X0).
er_comp_left_shape_er_smaller_disk(X0) :- er_smaller_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_smaller_disk(X0) :- object(X0),not er_comp_left_shape_er_smaller_disk(X0).
er_comp_overlap_shape_er_smaller_disk(X0) :- er_smaller_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_smaller_disk(X0) :- object(X0),not er_comp_overlap_shape_er_smaller_disk(X0).
er_smaller_er_below_disk(X0) :- er_below_disk(X1),smaller(X0,X1).
-er_smaller_er_below_disk(X0) :- object(X0),not er_smaller_er_below_disk(X0).
er_below_er_below_disk(X0) :- er_below_disk(X1),below(X0,X1).
-er_below_er_below_disk(X0) :- object(X0),not er_below_er_below_disk(X0).
er_left_er_below_disk(X0) :- er_below_disk(X1),left(X0,X1).
-er_left_er_below_disk(X0) :- object(X0),not er_left_er_below_disk(X0).
er_overlap_er_below_disk(X0) :- er_below_disk(X1),overlap(X0,X1).
-er_overlap_er_below_disk(X0) :- object(X0),not er_overlap_er_below_disk(X0).
er_shape_er_below_disk(X0) :- er_below_disk(X1),shape(X0,X1).
-er_shape_er_below_disk(X0) :- object(X0),not er_shape_er_below_disk(X0).
er_inv_smaller_er_below_disk(X0) :- er_below_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_below_disk(X0) :- object(X0),not er_inv_smaller_er_below_disk(X0).
er_inv_below_er_below_disk(X0) :- er_below_disk(X1),inv_below(X0,X1).
-er_inv_below_er_below_disk(X0) :- object(X0),not er_inv_below_er_below_disk(X0).
er_inv_left_er_below_disk(X0) :- er_below_disk(X1),inv_left(X0,X1).
-er_inv_left_er_below_disk(X0) :- object(X0),not er_inv_left_er_below_disk(X0).
er_inv_overlap_er_below_disk(X0) :- er_below_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_below_disk(X0) :- object(X0),not er_inv_overlap_er_below_disk(X0).
er_inv_shape_er_below_disk(X0) :- er_below_disk(X1),inv_shape(X0,X1).
-er_inv_shape_er_below_disk(X0) :- object(X0),not er_inv_shape_er_below_disk(X0).
er_comp_smaller_below_er_below_disk(X0) :- er_below_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_below_disk(X0) :- object(X0),not er_comp_smaller_below_er_below_disk(X0).
er_comp_smaller_left_er_below_disk(X0) :- er_below_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_below_disk(X0) :- object(X0),not er_comp_smaller_left_er_below_disk(X0).
er_comp_smaller_overlap_er_below_disk(X0) :- er_below_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_below_disk(X0) :- object(X0),not er_comp_smaller_overlap_er_below_disk(X0).
er_comp_smaller_shape_er_below_disk(X0) :- er_below_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_below_disk(X0) :- object(X0),not er_comp_smaller_shape_er_below_disk(X0).
er_comp_below_left_er_below_disk(X0) :- er_below_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_below_disk(X0) :- object(X0),not er_comp_below_left_er_below_disk(X0).
er_comp_below_overlap_er_below_disk(X0) :- er_below_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_below_disk(X0) :- object(X0),not er_comp_below_overlap_er_below_disk(X0).
er_comp_below_shape_er_below_disk(X0) :- er_below_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_below_disk(X0) :- object(X0),not er_comp_below_shape_er_below_disk(X0).
er_comp_left_overlap_er_below_disk(X0) :- er_below_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_below_disk(X0) :- object(X0),not er_comp_left_overlap_er_below_disk(X0).
er_comp_left_shape_er_below_disk(X0) :- er_below_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_below_disk(X0) :- object(X0),not er_comp_left_shape_er_below_disk(X0).
er_comp_overlap_shape_er_below_disk(X0) :- er_below_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_below_disk(X0) :- object(X0),not er_comp_overlap_shape_er_below_disk(X0).
er_smaller_er_left_disk(X0) :- er_left_disk(X1),smaller(X0,X1).
-er_smaller_er_left_disk(X0) :- object(X0),not er_smaller_er_left_disk(X0).
er_below_er_left_disk(X0) :- er_left_disk(X1),below(X0,X1).
-er_below_er_left_disk(X0) :- object(X0),not er_below_er_left_disk(X0).
er_left_er_left_disk(X0) :- er_left_disk(X1),left(X0,X1).
-er_left_er_left_disk(X0) :- object(X0),not er_left_er_left_disk(X0).
er_overlap_er_left_disk(X0) :- er_left_disk(X1),overlap(X0,X1).
-er_overlap_er_left_disk(X0) :- object(X0),not er_overlap_er_left_disk(X0).
er_shape_er_left_disk(X0) :- er_left_disk(X1),shape(X0,X1).
-er_shape_er_left_disk(X0) :- object(X0),not er_shape_er_left_disk(X0).
er_inv_smaller_er_left_disk(X0) :- er_left_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_left_disk(X0) :- object(X0),not er_inv_smaller_er_left_disk(X0).
er_inv_below_er_left_disk(X0) :- er_left_disk(X1),inv_below(X0,X1).
-er_inv_below_er_left_disk(X0) :- object(X0),not er_inv_below_er_left_disk(X0).
er_inv_left_er_left_disk(X0) :- er_left_disk(X1),inv_left(X0,X1).
-er_inv_left_er_left_disk(X0) :- object(X0),not er_inv_left_er_left_disk(X0).
er_inv_overlap_er_left_disk(X0) :- er_left_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_left_disk(X0) :- object(X0),not er_inv_overlap_er_left_disk(X0).
er_inv_shape_er_left_disk(X0) :- er_left_disk(X1),inv_shape(X0,X1).
-er_inv_shape_er_left_disk(X0) :- object(X0),not er_inv_shape_er_left_disk(X0).
er_comp_smaller_below_er_left_disk(X0) :- er_left_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_left_disk(X0) :- object(X0),not er_comp_smaller_below_er_left_disk(X0).
er_comp_smaller_left_er_left_disk(X0) :- er_left_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_left_disk(X0) :- object(X0),not er_comp_smaller_left_er_left_disk(X0).
er_comp_smaller_overlap_er_left_disk(X0) :- er_left_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_left_disk(X0) :- object(X0),not er_comp_smaller_overlap_er_left_disk(X0).
er_comp_smaller_shape_er_left_disk(X0) :- er_left_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_left_disk(X0) :- object(X0),not er_comp_smaller_shape_er_left_disk(X0).
er_comp_below_left_er_left_disk(X0) :- er_left_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_left_disk(X0) :- object(X0),not er_comp_below_left_er_left_disk(X0).
er_comp_below_overlap_er_left_disk(X0) :- er_left_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_left_disk(X0) :- object(X0),not er_comp_below_overlap_er_left_disk(X0).
er_comp_below_shape_er_left_disk(X0) :- er_left_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_left_disk(X0) :- object(X0),not er_comp_below_shape_er_left_disk(X0).
er_comp_left_overlap_er_left_disk(X0) :- er_left_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_left_disk(X0) :- object(X0),not er_comp_left_overlap_er_left_disk(X0).
er_comp_left_shape_er_left_disk(X0) :- er_left_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_left_disk(X0) :- object(X0),not er_comp_left_shape_er_left_disk(X0).
er_comp_overlap_shape_er_left_disk(X0) :- er_left_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_left_disk(X0) :- object(X0),not er_comp_overlap_shape_er_left_disk(X0).
er_smaller_er_overlap_disk(X0) :- er_overlap_disk(X1),smaller(X0,X1).
-er_smaller_er_overlap_disk(X0) :- object(X0),not er_smaller_er_overlap_disk(X0).
er_below_er_overlap_disk(X0) :- er_overlap_disk(X1),below(X0,X1).
-er_below_er_overlap_disk(X0) :- object(X0),not er_below_er_overlap_disk(X0).
er_left_er_overlap_disk(X0) :- er_overlap_disk(X1),left(X0,X1).
-er_left_er_overlap_disk(X0) :- object(X0),not er_left_er_overlap_disk(X0).
er_overlap_er_overlap_disk(X0) :- er_overlap_disk(X1),overlap(X0,X1).
-er_overlap_er_overlap_disk(X0) :- object(X0),not er_overlap_er_overlap_disk(X0).
er_shape_er_overlap_disk(X0) :- er_overlap_disk(X1),shape(X0,X1).
-er_shape_er_overlap_disk(X0) :- object(X0),not er_shape_er_overlap_disk(X0).
er_inv_smaller_er_overlap_disk(X0) :- er_overlap_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_overlap_disk(X0) :- object(X0),not er_inv_smaller_er_overlap_disk(X0).
er_inv_below_er_overlap_disk(X0) :- er_overlap_disk(X1),inv_below(X0,X1).
-er_inv_below_er_overlap_disk(X0) :- object(X0),not er_inv_below_er_overlap_disk(X0).
er_inv_left_er_overlap_disk(X0) :- er_overlap_disk(X1),inv_left(X0,X1).
-er_inv_left_er_overlap_disk(X0) :- object(X0),not er_inv_left_er_overlap_disk(X0).
er_inv_overlap_er_overlap_disk(X0) :- er_overlap_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_overlap_disk(X0) :- object(X0),not er_inv_overlap_er_overlap_disk(X0).
er_inv_shape_er_overlap_disk(X0) :- er_overlap_disk(X1),inv_shape(X0,X1).
-er_inv_shape_er_overlap_disk(X0) :- object(X0),not er_inv_shape_er_overlap_disk(X0).
er_comp_smaller_below_er_overlap_disk(X0) :- er_overlap_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_overlap_disk(X0) :- object(X0),not er_comp_smaller_below_er_overlap_disk(X0).
er_comp_smaller_left_er_overlap_disk(X0) :- er_overlap_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_overlap_disk(X0) :- object(X0),not er_comp_smaller_left_er_overlap_disk(X0).
er_comp_smaller_overlap_er_overlap_disk(X0) :- er_overlap_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_overlap_disk(X0) :- object(X0),not er_comp_smaller_overlap_er_overlap_disk(X0).
er_comp_smaller_shape_er_overlap_disk(X0) :- er_overlap_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_overlap_disk(X0) :- object(X0),not er_comp_smaller_shape_er_overlap_disk(X0).
er_comp_below_left_er_overlap_disk(X0) :- er_overlap_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_overlap_disk(X0) :- object(X0),not er_comp_below_left_er_overlap_disk(X0).
er_comp_below_overlap_er_overlap_disk(X0) :- er_overlap_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_overlap_disk(X0) :- object(X0),not er_comp_below_overlap_er_overlap_disk(X0).
er_comp_below_shape_er_overlap_disk(X0) :- er_overlap_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_overlap_disk(X0) :- object(X0),not er_comp_below_shape_er_overlap_disk(X0).
er_comp_left_overlap_er_overlap_disk(X0) :- er_overlap_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_overlap_disk(X0) :- object(X0),not er_comp_left_overlap_er_overlap_disk(X0).
er_comp_left_shape_er_overlap_disk(X0) :- er_overlap_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_overlap_disk(X0) :- object(X0),not er_comp_left_shape_er_overlap_disk(X0).
er_comp_overlap_shape_er_overlap_disk(X0) :- er_overlap_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_overlap_disk(X0) :- object(X0),not er_comp_overlap_shape_er_overlap_disk(X0).
er_smaller_er_shape_disk(X0) :- er_shape_disk(X1),smaller(X0,X1).
-er_smaller_er_shape_disk(X0) :- object(X0),not er_smaller_er_shape_disk(X0).
er_below_er_shape_disk(X0) :- er_shape_disk(X1),below(X0,X1).
-er_below_er_shape_disk(X0) :- object(X0),not er_below_er_shape_disk(X0).
er_left_er_shape_disk(X0) :- er_shape_disk(X1),left(X0,X1).
-er_left_er_shape_disk(X0) :- object(X0),not er_left_er_shape_disk(X0).
er_overlap_er_shape_disk(X0) :- er_shape_disk(X1),overlap(X0,X1).
-er_overlap_er_shape_disk(X0) :- object(X0),not er_overlap_er_shape_disk(X0).
er_shape_er_shape_disk(X0) :- er_shape_disk(X1),shape(X0,X1).
-er_shape_er_shape_disk(X0) :- object(X0),not er_shape_er_shape_disk(X0).
er_inv_smaller_er_shape_disk(X0) :- er_shape_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_shape_disk(X0) :- object(X0),not er_inv_smaller_er_shape_disk(X0).
er_inv_below_er_shape_disk(X0) :- er_shape_disk(X1),inv_below(X0,X1).
-er_inv_below_er_shape_disk(X0) :- object(X0),not er_inv_below_er_shape_disk(X0).
er_inv_left_er_shape_disk(X0) :- er_shape_disk(X1),inv_left(X0,X1).
-er_inv_left_er_shape_disk(X0) :- object(X0),not er_inv_left_er_shape_disk(X0).
er_inv_overlap_er_shape_disk(X0) :- er_shape_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_shape_disk(X0) :- object(X0),not er_inv_overlap_er_shape_disk(X0).
er_inv_shape_er_shape_disk(X0) :- er_shape_disk(X1),inv_shape(X0,X1).
-er_inv_shape_er_shape_disk(X0) :- object(X0),not er_inv_shape_er_shape_disk(X0).
er_comp_smaller_below_er_shape_disk(X0) :- er_shape_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_shape_disk(X0) :- object(X0),not er_comp_smaller_below_er_shape_disk(X0).
er_comp_smaller_left_er_shape_disk(X0) :- er_shape_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_shape_disk(X0) :- object(X0),not er_comp_smaller_left_er_shape_disk(X0).
er_comp_smaller_overlap_er_shape_disk(X0) :- er_shape_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_shape_disk(X0) :- object(X0),not er_comp_smaller_overlap_er_shape_disk(X0).
er_comp_smaller_shape_er_shape_disk(X0) :- er_shape_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_shape_disk(X0) :- object(X0),not er_comp_smaller_shape_er_shape_disk(X0).
er_comp_below_left_er_shape_disk(X0) :- er_shape_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_shape_disk(X0) :- object(X0),not er_comp_below_left_er_shape_disk(X0).
er_comp_below_overlap_er_shape_disk(X0) :- er_shape_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_shape_disk(X0) :- object(X0),not er_comp_below_overlap_er_shape_disk(X0).
er_comp_below_shape_er_shape_disk(X0) :- er_shape_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_shape_disk(X0) :- object(X0),not er_comp_below_shape_er_shape_disk(X0).
er_comp_left_overlap_er_shape_disk(X0) :- er_shape_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_shape_disk(X0) :- object(X0),not er_comp_left_overlap_er_shape_disk(X0).
er_comp_left_shape_er_shape_disk(X0) :- er_shape_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_shape_disk(X0) :- object(X0),not er_comp_left_shape_er_shape_disk(X0).
er_comp_overlap_shape_er_shape_disk(X0) :- er_shape_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_shape_disk(X0) :- object(X0),not er_comp_overlap_shape_er_shape_disk(X0).
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
er_smaller_inter_verum_key(X0) :- inter_verum_key(X1),smaller(X0,X1).
-er_smaller_inter_verum_key(X0) :- object(X0),not er_smaller_inter_verum_key(X0).
er_below_inter_verum_key(X0) :- inter_verum_key(X1),below(X0,X1).
-er_below_inter_verum_key(X0) :- object(X0),not er_below_inter_verum_key(X0).
er_left_inter_verum_key(X0) :- inter_verum_key(X1),left(X0,X1).
-er_left_inter_verum_key(X0) :- object(X0),not er_left_inter_verum_key(X0).
er_overlap_inter_verum_key(X0) :- inter_verum_key(X1),overlap(X0,X1).
-er_overlap_inter_verum_key(X0) :- object(X0),not er_overlap_inter_verum_key(X0).
er_shape_inter_verum_key(X0) :- inter_verum_key(X1),shape(X0,X1).
-er_shape_inter_verum_key(X0) :- object(X0),not er_shape_inter_verum_key(X0).
er_inv_smaller_inter_verum_key(X0) :- inter_verum_key(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_verum_key(X0) :- object(X0),not er_inv_smaller_inter_verum_key(X0).
er_inv_below_inter_verum_key(X0) :- inter_verum_key(X1),inv_below(X0,X1).
-er_inv_below_inter_verum_key(X0) :- object(X0),not er_inv_below_inter_verum_key(X0).
er_inv_left_inter_verum_key(X0) :- inter_verum_key(X1),inv_left(X0,X1).
-er_inv_left_inter_verum_key(X0) :- object(X0),not er_inv_left_inter_verum_key(X0).
er_inv_overlap_inter_verum_key(X0) :- inter_verum_key(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_verum_key(X0) :- object(X0),not er_inv_overlap_inter_verum_key(X0).
er_inv_shape_inter_verum_key(X0) :- inter_verum_key(X1),inv_shape(X0,X1).
-er_inv_shape_inter_verum_key(X0) :- object(X0),not er_inv_shape_inter_verum_key(X0).
er_comp_smaller_below_inter_verum_key(X0) :- inter_verum_key(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_verum_key(X0) :- object(X0),not er_comp_smaller_below_inter_verum_key(X0).
er_comp_smaller_left_inter_verum_key(X0) :- inter_verum_key(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_verum_key(X0) :- object(X0),not er_comp_smaller_left_inter_verum_key(X0).
er_comp_smaller_overlap_inter_verum_key(X0) :- inter_verum_key(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_verum_key(X0) :- object(X0),not er_comp_smaller_overlap_inter_verum_key(X0).
er_comp_smaller_shape_inter_verum_key(X0) :- inter_verum_key(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_verum_key(X0) :- object(X0),not er_comp_smaller_shape_inter_verum_key(X0).
er_comp_below_left_inter_verum_key(X0) :- inter_verum_key(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_verum_key(X0) :- object(X0),not er_comp_below_left_inter_verum_key(X0).
er_comp_below_overlap_inter_verum_key(X0) :- inter_verum_key(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_verum_key(X0) :- object(X0),not er_comp_below_overlap_inter_verum_key(X0).
er_comp_below_shape_inter_verum_key(X0) :- inter_verum_key(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_verum_key(X0) :- object(X0),not er_comp_below_shape_inter_verum_key(X0).
er_comp_left_overlap_inter_verum_key(X0) :- inter_verum_key(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_verum_key(X0) :- object(X0),not er_comp_left_overlap_inter_verum_key(X0).
er_comp_left_shape_inter_verum_key(X0) :- inter_verum_key(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_verum_key(X0) :- object(X0),not er_comp_left_shape_inter_verum_key(X0).
er_comp_overlap_shape_inter_verum_key(X0) :- inter_verum_key(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_verum_key(X0) :- object(X0),not er_comp_overlap_shape_inter_verum_key(X0).
er_smaller_inter_verum_peg(X0) :- inter_verum_peg(X1),smaller(X0,X1).
-er_smaller_inter_verum_peg(X0) :- object(X0),not er_smaller_inter_verum_peg(X0).
er_below_inter_verum_peg(X0) :- inter_verum_peg(X1),below(X0,X1).
-er_below_inter_verum_peg(X0) :- object(X0),not er_below_inter_verum_peg(X0).
er_left_inter_verum_peg(X0) :- inter_verum_peg(X1),left(X0,X1).
-er_left_inter_verum_peg(X0) :- object(X0),not er_left_inter_verum_peg(X0).
er_overlap_inter_verum_peg(X0) :- inter_verum_peg(X1),overlap(X0,X1).
-er_overlap_inter_verum_peg(X0) :- object(X0),not er_overlap_inter_verum_peg(X0).
er_shape_inter_verum_peg(X0) :- inter_verum_peg(X1),shape(X0,X1).
-er_shape_inter_verum_peg(X0) :- object(X0),not er_shape_inter_verum_peg(X0).
er_inv_smaller_inter_verum_peg(X0) :- inter_verum_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_verum_peg(X0) :- object(X0),not er_inv_smaller_inter_verum_peg(X0).
er_inv_below_inter_verum_peg(X0) :- inter_verum_peg(X1),inv_below(X0,X1).
-er_inv_below_inter_verum_peg(X0) :- object(X0),not er_inv_below_inter_verum_peg(X0).
er_inv_left_inter_verum_peg(X0) :- inter_verum_peg(X1),inv_left(X0,X1).
-er_inv_left_inter_verum_peg(X0) :- object(X0),not er_inv_left_inter_verum_peg(X0).
er_inv_overlap_inter_verum_peg(X0) :- inter_verum_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_verum_peg(X0) :- object(X0),not er_inv_overlap_inter_verum_peg(X0).
er_inv_shape_inter_verum_peg(X0) :- inter_verum_peg(X1),inv_shape(X0,X1).
-er_inv_shape_inter_verum_peg(X0) :- object(X0),not er_inv_shape_inter_verum_peg(X0).
er_comp_smaller_below_inter_verum_peg(X0) :- inter_verum_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_verum_peg(X0) :- object(X0),not er_comp_smaller_below_inter_verum_peg(X0).
er_comp_smaller_left_inter_verum_peg(X0) :- inter_verum_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_verum_peg(X0) :- object(X0),not er_comp_smaller_left_inter_verum_peg(X0).
er_comp_smaller_overlap_inter_verum_peg(X0) :- inter_verum_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_verum_peg(X0) :- object(X0),not er_comp_smaller_overlap_inter_verum_peg(X0).
er_comp_smaller_shape_inter_verum_peg(X0) :- inter_verum_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_verum_peg(X0) :- object(X0),not er_comp_smaller_shape_inter_verum_peg(X0).
er_comp_below_left_inter_verum_peg(X0) :- inter_verum_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_verum_peg(X0) :- object(X0),not er_comp_below_left_inter_verum_peg(X0).
er_comp_below_overlap_inter_verum_peg(X0) :- inter_verum_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_verum_peg(X0) :- object(X0),not er_comp_below_overlap_inter_verum_peg(X0).
er_comp_below_shape_inter_verum_peg(X0) :- inter_verum_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_verum_peg(X0) :- object(X0),not er_comp_below_shape_inter_verum_peg(X0).
er_comp_left_overlap_inter_verum_peg(X0) :- inter_verum_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_verum_peg(X0) :- object(X0),not er_comp_left_overlap_inter_verum_peg(X0).
er_comp_left_shape_inter_verum_peg(X0) :- inter_verum_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_verum_peg(X0) :- object(X0),not er_comp_left_shape_inter_verum_peg(X0).
er_comp_overlap_shape_inter_verum_peg(X0) :- inter_verum_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_verum_peg(X0) :- object(X0),not er_comp_overlap_shape_inter_verum_peg(X0).
er_smaller_inter_verum_disk(X0) :- inter_verum_disk(X1),smaller(X0,X1).
-er_smaller_inter_verum_disk(X0) :- object(X0),not er_smaller_inter_verum_disk(X0).
er_below_inter_verum_disk(X0) :- inter_verum_disk(X1),below(X0,X1).
-er_below_inter_verum_disk(X0) :- object(X0),not er_below_inter_verum_disk(X0).
er_left_inter_verum_disk(X0) :- inter_verum_disk(X1),left(X0,X1).
-er_left_inter_verum_disk(X0) :- object(X0),not er_left_inter_verum_disk(X0).
er_overlap_inter_verum_disk(X0) :- inter_verum_disk(X1),overlap(X0,X1).
-er_overlap_inter_verum_disk(X0) :- object(X0),not er_overlap_inter_verum_disk(X0).
er_shape_inter_verum_disk(X0) :- inter_verum_disk(X1),shape(X0,X1).
-er_shape_inter_verum_disk(X0) :- object(X0),not er_shape_inter_verum_disk(X0).
er_inv_smaller_inter_verum_disk(X0) :- inter_verum_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_verum_disk(X0) :- object(X0),not er_inv_smaller_inter_verum_disk(X0).
er_inv_below_inter_verum_disk(X0) :- inter_verum_disk(X1),inv_below(X0,X1).
-er_inv_below_inter_verum_disk(X0) :- object(X0),not er_inv_below_inter_verum_disk(X0).
er_inv_left_inter_verum_disk(X0) :- inter_verum_disk(X1),inv_left(X0,X1).
-er_inv_left_inter_verum_disk(X0) :- object(X0),not er_inv_left_inter_verum_disk(X0).
er_inv_overlap_inter_verum_disk(X0) :- inter_verum_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_verum_disk(X0) :- object(X0),not er_inv_overlap_inter_verum_disk(X0).
er_inv_shape_inter_verum_disk(X0) :- inter_verum_disk(X1),inv_shape(X0,X1).
-er_inv_shape_inter_verum_disk(X0) :- object(X0),not er_inv_shape_inter_verum_disk(X0).
er_comp_smaller_below_inter_verum_disk(X0) :- inter_verum_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_verum_disk(X0) :- object(X0),not er_comp_smaller_below_inter_verum_disk(X0).
er_comp_smaller_left_inter_verum_disk(X0) :- inter_verum_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_verum_disk(X0) :- object(X0),not er_comp_smaller_left_inter_verum_disk(X0).
er_comp_smaller_overlap_inter_verum_disk(X0) :- inter_verum_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_verum_disk(X0) :- object(X0),not er_comp_smaller_overlap_inter_verum_disk(X0).
er_comp_smaller_shape_inter_verum_disk(X0) :- inter_verum_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_verum_disk(X0) :- object(X0),not er_comp_smaller_shape_inter_verum_disk(X0).
er_comp_below_left_inter_verum_disk(X0) :- inter_verum_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_verum_disk(X0) :- object(X0),not er_comp_below_left_inter_verum_disk(X0).
er_comp_below_overlap_inter_verum_disk(X0) :- inter_verum_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_verum_disk(X0) :- object(X0),not er_comp_below_overlap_inter_verum_disk(X0).
er_comp_below_shape_inter_verum_disk(X0) :- inter_verum_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_verum_disk(X0) :- object(X0),not er_comp_below_shape_inter_verum_disk(X0).
er_comp_left_overlap_inter_verum_disk(X0) :- inter_verum_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_verum_disk(X0) :- object(X0),not er_comp_left_overlap_inter_verum_disk(X0).
er_comp_left_shape_inter_verum_disk(X0) :- inter_verum_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_verum_disk(X0) :- object(X0),not er_comp_left_shape_inter_verum_disk(X0).
er_comp_overlap_shape_inter_verum_disk(X0) :- inter_verum_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_verum_disk(X0) :- object(X0),not er_comp_overlap_shape_inter_verum_disk(X0).
er_smaller_inter_falsum_key(X0) :- inter_falsum_key(X1),smaller(X0,X1).
-er_smaller_inter_falsum_key(X0) :- object(X0),not er_smaller_inter_falsum_key(X0).
er_below_inter_falsum_key(X0) :- inter_falsum_key(X1),below(X0,X1).
-er_below_inter_falsum_key(X0) :- object(X0),not er_below_inter_falsum_key(X0).
er_left_inter_falsum_key(X0) :- inter_falsum_key(X1),left(X0,X1).
-er_left_inter_falsum_key(X0) :- object(X0),not er_left_inter_falsum_key(X0).
er_overlap_inter_falsum_key(X0) :- inter_falsum_key(X1),overlap(X0,X1).
-er_overlap_inter_falsum_key(X0) :- object(X0),not er_overlap_inter_falsum_key(X0).
er_shape_inter_falsum_key(X0) :- inter_falsum_key(X1),shape(X0,X1).
-er_shape_inter_falsum_key(X0) :- object(X0),not er_shape_inter_falsum_key(X0).
er_inv_smaller_inter_falsum_key(X0) :- inter_falsum_key(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_falsum_key(X0) :- object(X0),not er_inv_smaller_inter_falsum_key(X0).
er_inv_below_inter_falsum_key(X0) :- inter_falsum_key(X1),inv_below(X0,X1).
-er_inv_below_inter_falsum_key(X0) :- object(X0),not er_inv_below_inter_falsum_key(X0).
er_inv_left_inter_falsum_key(X0) :- inter_falsum_key(X1),inv_left(X0,X1).
-er_inv_left_inter_falsum_key(X0) :- object(X0),not er_inv_left_inter_falsum_key(X0).
er_inv_overlap_inter_falsum_key(X0) :- inter_falsum_key(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_falsum_key(X0) :- object(X0),not er_inv_overlap_inter_falsum_key(X0).
er_inv_shape_inter_falsum_key(X0) :- inter_falsum_key(X1),inv_shape(X0,X1).
-er_inv_shape_inter_falsum_key(X0) :- object(X0),not er_inv_shape_inter_falsum_key(X0).
er_comp_smaller_below_inter_falsum_key(X0) :- inter_falsum_key(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_falsum_key(X0) :- object(X0),not er_comp_smaller_below_inter_falsum_key(X0).
er_comp_smaller_left_inter_falsum_key(X0) :- inter_falsum_key(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_falsum_key(X0) :- object(X0),not er_comp_smaller_left_inter_falsum_key(X0).
er_comp_smaller_overlap_inter_falsum_key(X0) :- inter_falsum_key(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_falsum_key(X0) :- object(X0),not er_comp_smaller_overlap_inter_falsum_key(X0).
er_comp_smaller_shape_inter_falsum_key(X0) :- inter_falsum_key(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_falsum_key(X0) :- object(X0),not er_comp_smaller_shape_inter_falsum_key(X0).
er_comp_below_left_inter_falsum_key(X0) :- inter_falsum_key(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_falsum_key(X0) :- object(X0),not er_comp_below_left_inter_falsum_key(X0).
er_comp_below_overlap_inter_falsum_key(X0) :- inter_falsum_key(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_falsum_key(X0) :- object(X0),not er_comp_below_overlap_inter_falsum_key(X0).
er_comp_below_shape_inter_falsum_key(X0) :- inter_falsum_key(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_falsum_key(X0) :- object(X0),not er_comp_below_shape_inter_falsum_key(X0).
er_comp_left_overlap_inter_falsum_key(X0) :- inter_falsum_key(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_falsum_key(X0) :- object(X0),not er_comp_left_overlap_inter_falsum_key(X0).
er_comp_left_shape_inter_falsum_key(X0) :- inter_falsum_key(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_falsum_key(X0) :- object(X0),not er_comp_left_shape_inter_falsum_key(X0).
er_comp_overlap_shape_inter_falsum_key(X0) :- inter_falsum_key(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_falsum_key(X0) :- object(X0),not er_comp_overlap_shape_inter_falsum_key(X0).
er_smaller_inter_falsum_peg(X0) :- inter_falsum_peg(X1),smaller(X0,X1).
-er_smaller_inter_falsum_peg(X0) :- object(X0),not er_smaller_inter_falsum_peg(X0).
er_below_inter_falsum_peg(X0) :- inter_falsum_peg(X1),below(X0,X1).
-er_below_inter_falsum_peg(X0) :- object(X0),not er_below_inter_falsum_peg(X0).
er_left_inter_falsum_peg(X0) :- inter_falsum_peg(X1),left(X0,X1).
-er_left_inter_falsum_peg(X0) :- object(X0),not er_left_inter_falsum_peg(X0).
er_overlap_inter_falsum_peg(X0) :- inter_falsum_peg(X1),overlap(X0,X1).
-er_overlap_inter_falsum_peg(X0) :- object(X0),not er_overlap_inter_falsum_peg(X0).
er_shape_inter_falsum_peg(X0) :- inter_falsum_peg(X1),shape(X0,X1).
-er_shape_inter_falsum_peg(X0) :- object(X0),not er_shape_inter_falsum_peg(X0).
er_inv_smaller_inter_falsum_peg(X0) :- inter_falsum_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_falsum_peg(X0) :- object(X0),not er_inv_smaller_inter_falsum_peg(X0).
er_inv_below_inter_falsum_peg(X0) :- inter_falsum_peg(X1),inv_below(X0,X1).
-er_inv_below_inter_falsum_peg(X0) :- object(X0),not er_inv_below_inter_falsum_peg(X0).
er_inv_left_inter_falsum_peg(X0) :- inter_falsum_peg(X1),inv_left(X0,X1).
-er_inv_left_inter_falsum_peg(X0) :- object(X0),not er_inv_left_inter_falsum_peg(X0).
er_inv_overlap_inter_falsum_peg(X0) :- inter_falsum_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_falsum_peg(X0) :- object(X0),not er_inv_overlap_inter_falsum_peg(X0).
er_inv_shape_inter_falsum_peg(X0) :- inter_falsum_peg(X1),inv_shape(X0,X1).
-er_inv_shape_inter_falsum_peg(X0) :- object(X0),not er_inv_shape_inter_falsum_peg(X0).
er_comp_smaller_below_inter_falsum_peg(X0) :- inter_falsum_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_falsum_peg(X0) :- object(X0),not er_comp_smaller_below_inter_falsum_peg(X0).
er_comp_smaller_left_inter_falsum_peg(X0) :- inter_falsum_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_falsum_peg(X0) :- object(X0),not er_comp_smaller_left_inter_falsum_peg(X0).
er_comp_smaller_overlap_inter_falsum_peg(X0) :- inter_falsum_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_falsum_peg(X0) :- object(X0),not er_comp_smaller_overlap_inter_falsum_peg(X0).
er_comp_smaller_shape_inter_falsum_peg(X0) :- inter_falsum_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_falsum_peg(X0) :- object(X0),not er_comp_smaller_shape_inter_falsum_peg(X0).
er_comp_below_left_inter_falsum_peg(X0) :- inter_falsum_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_falsum_peg(X0) :- object(X0),not er_comp_below_left_inter_falsum_peg(X0).
er_comp_below_overlap_inter_falsum_peg(X0) :- inter_falsum_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_falsum_peg(X0) :- object(X0),not er_comp_below_overlap_inter_falsum_peg(X0).
er_comp_below_shape_inter_falsum_peg(X0) :- inter_falsum_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_falsum_peg(X0) :- object(X0),not er_comp_below_shape_inter_falsum_peg(X0).
er_comp_left_overlap_inter_falsum_peg(X0) :- inter_falsum_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_falsum_peg(X0) :- object(X0),not er_comp_left_overlap_inter_falsum_peg(X0).
er_comp_left_shape_inter_falsum_peg(X0) :- inter_falsum_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_falsum_peg(X0) :- object(X0),not er_comp_left_shape_inter_falsum_peg(X0).
er_comp_overlap_shape_inter_falsum_peg(X0) :- inter_falsum_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_falsum_peg(X0) :- object(X0),not er_comp_overlap_shape_inter_falsum_peg(X0).
er_smaller_inter_falsum_disk(X0) :- inter_falsum_disk(X1),smaller(X0,X1).
-er_smaller_inter_falsum_disk(X0) :- object(X0),not er_smaller_inter_falsum_disk(X0).
er_below_inter_falsum_disk(X0) :- inter_falsum_disk(X1),below(X0,X1).
-er_below_inter_falsum_disk(X0) :- object(X0),not er_below_inter_falsum_disk(X0).
er_left_inter_falsum_disk(X0) :- inter_falsum_disk(X1),left(X0,X1).
-er_left_inter_falsum_disk(X0) :- object(X0),not er_left_inter_falsum_disk(X0).
er_overlap_inter_falsum_disk(X0) :- inter_falsum_disk(X1),overlap(X0,X1).
-er_overlap_inter_falsum_disk(X0) :- object(X0),not er_overlap_inter_falsum_disk(X0).
er_shape_inter_falsum_disk(X0) :- inter_falsum_disk(X1),shape(X0,X1).
-er_shape_inter_falsum_disk(X0) :- object(X0),not er_shape_inter_falsum_disk(X0).
er_inv_smaller_inter_falsum_disk(X0) :- inter_falsum_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_falsum_disk(X0) :- object(X0),not er_inv_smaller_inter_falsum_disk(X0).
er_inv_below_inter_falsum_disk(X0) :- inter_falsum_disk(X1),inv_below(X0,X1).
-er_inv_below_inter_falsum_disk(X0) :- object(X0),not er_inv_below_inter_falsum_disk(X0).
er_inv_left_inter_falsum_disk(X0) :- inter_falsum_disk(X1),inv_left(X0,X1).
-er_inv_left_inter_falsum_disk(X0) :- object(X0),not er_inv_left_inter_falsum_disk(X0).
er_inv_overlap_inter_falsum_disk(X0) :- inter_falsum_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_falsum_disk(X0) :- object(X0),not er_inv_overlap_inter_falsum_disk(X0).
er_inv_shape_inter_falsum_disk(X0) :- inter_falsum_disk(X1),inv_shape(X0,X1).
-er_inv_shape_inter_falsum_disk(X0) :- object(X0),not er_inv_shape_inter_falsum_disk(X0).
er_comp_smaller_below_inter_falsum_disk(X0) :- inter_falsum_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_falsum_disk(X0) :- object(X0),not er_comp_smaller_below_inter_falsum_disk(X0).
er_comp_smaller_left_inter_falsum_disk(X0) :- inter_falsum_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_falsum_disk(X0) :- object(X0),not er_comp_smaller_left_inter_falsum_disk(X0).
er_comp_smaller_overlap_inter_falsum_disk(X0) :- inter_falsum_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_falsum_disk(X0) :- object(X0),not er_comp_smaller_overlap_inter_falsum_disk(X0).
er_comp_smaller_shape_inter_falsum_disk(X0) :- inter_falsum_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_falsum_disk(X0) :- object(X0),not er_comp_smaller_shape_inter_falsum_disk(X0).
er_comp_below_left_inter_falsum_disk(X0) :- inter_falsum_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_falsum_disk(X0) :- object(X0),not er_comp_below_left_inter_falsum_disk(X0).
er_comp_below_overlap_inter_falsum_disk(X0) :- inter_falsum_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_falsum_disk(X0) :- object(X0),not er_comp_below_overlap_inter_falsum_disk(X0).
er_comp_below_shape_inter_falsum_disk(X0) :- inter_falsum_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_falsum_disk(X0) :- object(X0),not er_comp_below_shape_inter_falsum_disk(X0).
er_comp_left_overlap_inter_falsum_disk(X0) :- inter_falsum_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_falsum_disk(X0) :- object(X0),not er_comp_left_overlap_inter_falsum_disk(X0).
er_comp_left_shape_inter_falsum_disk(X0) :- inter_falsum_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_falsum_disk(X0) :- object(X0),not er_comp_left_shape_inter_falsum_disk(X0).
er_comp_overlap_shape_inter_falsum_disk(X0) :- inter_falsum_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_falsum_disk(X0) :- object(X0),not er_comp_overlap_shape_inter_falsum_disk(X0).
er_smaller_inter_key_peg(X0) :- inter_key_peg(X1),smaller(X0,X1).
-er_smaller_inter_key_peg(X0) :- object(X0),not er_smaller_inter_key_peg(X0).
er_below_inter_key_peg(X0) :- inter_key_peg(X1),below(X0,X1).
-er_below_inter_key_peg(X0) :- object(X0),not er_below_inter_key_peg(X0).
er_left_inter_key_peg(X0) :- inter_key_peg(X1),left(X0,X1).
-er_left_inter_key_peg(X0) :- object(X0),not er_left_inter_key_peg(X0).
er_overlap_inter_key_peg(X0) :- inter_key_peg(X1),overlap(X0,X1).
-er_overlap_inter_key_peg(X0) :- object(X0),not er_overlap_inter_key_peg(X0).
er_shape_inter_key_peg(X0) :- inter_key_peg(X1),shape(X0,X1).
-er_shape_inter_key_peg(X0) :- object(X0),not er_shape_inter_key_peg(X0).
er_inv_smaller_inter_key_peg(X0) :- inter_key_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_key_peg(X0) :- object(X0),not er_inv_smaller_inter_key_peg(X0).
er_inv_below_inter_key_peg(X0) :- inter_key_peg(X1),inv_below(X0,X1).
-er_inv_below_inter_key_peg(X0) :- object(X0),not er_inv_below_inter_key_peg(X0).
er_inv_left_inter_key_peg(X0) :- inter_key_peg(X1),inv_left(X0,X1).
-er_inv_left_inter_key_peg(X0) :- object(X0),not er_inv_left_inter_key_peg(X0).
er_inv_overlap_inter_key_peg(X0) :- inter_key_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_key_peg(X0) :- object(X0),not er_inv_overlap_inter_key_peg(X0).
er_inv_shape_inter_key_peg(X0) :- inter_key_peg(X1),inv_shape(X0,X1).
-er_inv_shape_inter_key_peg(X0) :- object(X0),not er_inv_shape_inter_key_peg(X0).
er_comp_smaller_below_inter_key_peg(X0) :- inter_key_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_key_peg(X0) :- object(X0),not er_comp_smaller_below_inter_key_peg(X0).
er_comp_smaller_left_inter_key_peg(X0) :- inter_key_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_key_peg(X0) :- object(X0),not er_comp_smaller_left_inter_key_peg(X0).
er_comp_smaller_overlap_inter_key_peg(X0) :- inter_key_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_key_peg(X0) :- object(X0),not er_comp_smaller_overlap_inter_key_peg(X0).
er_comp_smaller_shape_inter_key_peg(X0) :- inter_key_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_key_peg(X0) :- object(X0),not er_comp_smaller_shape_inter_key_peg(X0).
er_comp_below_left_inter_key_peg(X0) :- inter_key_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_key_peg(X0) :- object(X0),not er_comp_below_left_inter_key_peg(X0).
er_comp_below_overlap_inter_key_peg(X0) :- inter_key_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_key_peg(X0) :- object(X0),not er_comp_below_overlap_inter_key_peg(X0).
er_comp_below_shape_inter_key_peg(X0) :- inter_key_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_key_peg(X0) :- object(X0),not er_comp_below_shape_inter_key_peg(X0).
er_comp_left_overlap_inter_key_peg(X0) :- inter_key_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_key_peg(X0) :- object(X0),not er_comp_left_overlap_inter_key_peg(X0).
er_comp_left_shape_inter_key_peg(X0) :- inter_key_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_key_peg(X0) :- object(X0),not er_comp_left_shape_inter_key_peg(X0).
er_comp_overlap_shape_inter_key_peg(X0) :- inter_key_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_key_peg(X0) :- object(X0),not er_comp_overlap_shape_inter_key_peg(X0).
er_smaller_inter_key_disk(X0) :- inter_key_disk(X1),smaller(X0,X1).
-er_smaller_inter_key_disk(X0) :- object(X0),not er_smaller_inter_key_disk(X0).
er_below_inter_key_disk(X0) :- inter_key_disk(X1),below(X0,X1).
-er_below_inter_key_disk(X0) :- object(X0),not er_below_inter_key_disk(X0).
er_left_inter_key_disk(X0) :- inter_key_disk(X1),left(X0,X1).
-er_left_inter_key_disk(X0) :- object(X0),not er_left_inter_key_disk(X0).
er_overlap_inter_key_disk(X0) :- inter_key_disk(X1),overlap(X0,X1).
-er_overlap_inter_key_disk(X0) :- object(X0),not er_overlap_inter_key_disk(X0).
er_shape_inter_key_disk(X0) :- inter_key_disk(X1),shape(X0,X1).
-er_shape_inter_key_disk(X0) :- object(X0),not er_shape_inter_key_disk(X0).
er_inv_smaller_inter_key_disk(X0) :- inter_key_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_key_disk(X0) :- object(X0),not er_inv_smaller_inter_key_disk(X0).
er_inv_below_inter_key_disk(X0) :- inter_key_disk(X1),inv_below(X0,X1).
-er_inv_below_inter_key_disk(X0) :- object(X0),not er_inv_below_inter_key_disk(X0).
er_inv_left_inter_key_disk(X0) :- inter_key_disk(X1),inv_left(X0,X1).
-er_inv_left_inter_key_disk(X0) :- object(X0),not er_inv_left_inter_key_disk(X0).
er_inv_overlap_inter_key_disk(X0) :- inter_key_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_key_disk(X0) :- object(X0),not er_inv_overlap_inter_key_disk(X0).
er_inv_shape_inter_key_disk(X0) :- inter_key_disk(X1),inv_shape(X0,X1).
-er_inv_shape_inter_key_disk(X0) :- object(X0),not er_inv_shape_inter_key_disk(X0).
er_comp_smaller_below_inter_key_disk(X0) :- inter_key_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_key_disk(X0) :- object(X0),not er_comp_smaller_below_inter_key_disk(X0).
er_comp_smaller_left_inter_key_disk(X0) :- inter_key_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_key_disk(X0) :- object(X0),not er_comp_smaller_left_inter_key_disk(X0).
er_comp_smaller_overlap_inter_key_disk(X0) :- inter_key_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_key_disk(X0) :- object(X0),not er_comp_smaller_overlap_inter_key_disk(X0).
er_comp_smaller_shape_inter_key_disk(X0) :- inter_key_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_key_disk(X0) :- object(X0),not er_comp_smaller_shape_inter_key_disk(X0).
er_comp_below_left_inter_key_disk(X0) :- inter_key_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_key_disk(X0) :- object(X0),not er_comp_below_left_inter_key_disk(X0).
er_comp_below_overlap_inter_key_disk(X0) :- inter_key_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_key_disk(X0) :- object(X0),not er_comp_below_overlap_inter_key_disk(X0).
er_comp_below_shape_inter_key_disk(X0) :- inter_key_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_key_disk(X0) :- object(X0),not er_comp_below_shape_inter_key_disk(X0).
er_comp_left_overlap_inter_key_disk(X0) :- inter_key_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_key_disk(X0) :- object(X0),not er_comp_left_overlap_inter_key_disk(X0).
er_comp_left_shape_inter_key_disk(X0) :- inter_key_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_key_disk(X0) :- object(X0),not er_comp_left_shape_inter_key_disk(X0).
er_comp_overlap_shape_inter_key_disk(X0) :- inter_key_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_key_disk(X0) :- object(X0),not er_comp_overlap_shape_inter_key_disk(X0).
er_smaller_inter_peg_disk(X0) :- inter_peg_disk(X1),smaller(X0,X1).
-er_smaller_inter_peg_disk(X0) :- object(X0),not er_smaller_inter_peg_disk(X0).
er_below_inter_peg_disk(X0) :- inter_peg_disk(X1),below(X0,X1).
-er_below_inter_peg_disk(X0) :- object(X0),not er_below_inter_peg_disk(X0).
er_left_inter_peg_disk(X0) :- inter_peg_disk(X1),left(X0,X1).
-er_left_inter_peg_disk(X0) :- object(X0),not er_left_inter_peg_disk(X0).
er_overlap_inter_peg_disk(X0) :- inter_peg_disk(X1),overlap(X0,X1).
-er_overlap_inter_peg_disk(X0) :- object(X0),not er_overlap_inter_peg_disk(X0).
er_shape_inter_peg_disk(X0) :- inter_peg_disk(X1),shape(X0,X1).
-er_shape_inter_peg_disk(X0) :- object(X0),not er_shape_inter_peg_disk(X0).
er_inv_smaller_inter_peg_disk(X0) :- inter_peg_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_peg_disk(X0) :- object(X0),not er_inv_smaller_inter_peg_disk(X0).
er_inv_below_inter_peg_disk(X0) :- inter_peg_disk(X1),inv_below(X0,X1).
-er_inv_below_inter_peg_disk(X0) :- object(X0),not er_inv_below_inter_peg_disk(X0).
er_inv_left_inter_peg_disk(X0) :- inter_peg_disk(X1),inv_left(X0,X1).
-er_inv_left_inter_peg_disk(X0) :- object(X0),not er_inv_left_inter_peg_disk(X0).
er_inv_overlap_inter_peg_disk(X0) :- inter_peg_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_peg_disk(X0) :- object(X0),not er_inv_overlap_inter_peg_disk(X0).
er_inv_shape_inter_peg_disk(X0) :- inter_peg_disk(X1),inv_shape(X0,X1).
-er_inv_shape_inter_peg_disk(X0) :- object(X0),not er_inv_shape_inter_peg_disk(X0).
er_comp_smaller_below_inter_peg_disk(X0) :- inter_peg_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_peg_disk(X0) :- object(X0),not er_comp_smaller_below_inter_peg_disk(X0).
er_comp_smaller_left_inter_peg_disk(X0) :- inter_peg_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_peg_disk(X0) :- object(X0),not er_comp_smaller_left_inter_peg_disk(X0).
er_comp_smaller_overlap_inter_peg_disk(X0) :- inter_peg_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_peg_disk(X0) :- object(X0),not er_comp_smaller_overlap_inter_peg_disk(X0).
er_comp_smaller_shape_inter_peg_disk(X0) :- inter_peg_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_peg_disk(X0) :- object(X0),not er_comp_smaller_shape_inter_peg_disk(X0).
er_comp_below_left_inter_peg_disk(X0) :- inter_peg_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_peg_disk(X0) :- object(X0),not er_comp_below_left_inter_peg_disk(X0).
er_comp_below_overlap_inter_peg_disk(X0) :- inter_peg_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_peg_disk(X0) :- object(X0),not er_comp_below_overlap_inter_peg_disk(X0).
er_comp_below_shape_inter_peg_disk(X0) :- inter_peg_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_peg_disk(X0) :- object(X0),not er_comp_below_shape_inter_peg_disk(X0).
er_comp_left_overlap_inter_peg_disk(X0) :- inter_peg_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_peg_disk(X0) :- object(X0),not er_comp_left_overlap_inter_peg_disk(X0).
er_comp_left_shape_inter_peg_disk(X0) :- inter_peg_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_peg_disk(X0) :- object(X0),not er_comp_left_shape_inter_peg_disk(X0).
er_comp_overlap_shape_inter_peg_disk(X0) :- inter_peg_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_peg_disk(X0) :- object(X0),not er_comp_overlap_shape_inter_peg_disk(X0).
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
er_smaller_subset_verum_key(X0) :- subset_verum_key(X1),smaller(X0,X1).
-er_smaller_subset_verum_key(X0) :- object(X0),not er_smaller_subset_verum_key(X0).
er_below_subset_verum_key(X0) :- subset_verum_key(X1),below(X0,X1).
-er_below_subset_verum_key(X0) :- object(X0),not er_below_subset_verum_key(X0).
er_left_subset_verum_key(X0) :- subset_verum_key(X1),left(X0,X1).
-er_left_subset_verum_key(X0) :- object(X0),not er_left_subset_verum_key(X0).
er_overlap_subset_verum_key(X0) :- subset_verum_key(X1),overlap(X0,X1).
-er_overlap_subset_verum_key(X0) :- object(X0),not er_overlap_subset_verum_key(X0).
er_shape_subset_verum_key(X0) :- subset_verum_key(X1),shape(X0,X1).
-er_shape_subset_verum_key(X0) :- object(X0),not er_shape_subset_verum_key(X0).
er_inv_smaller_subset_verum_key(X0) :- subset_verum_key(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_verum_key(X0) :- object(X0),not er_inv_smaller_subset_verum_key(X0).
er_inv_below_subset_verum_key(X0) :- subset_verum_key(X1),inv_below(X0,X1).
-er_inv_below_subset_verum_key(X0) :- object(X0),not er_inv_below_subset_verum_key(X0).
er_inv_left_subset_verum_key(X0) :- subset_verum_key(X1),inv_left(X0,X1).
-er_inv_left_subset_verum_key(X0) :- object(X0),not er_inv_left_subset_verum_key(X0).
er_inv_overlap_subset_verum_key(X0) :- subset_verum_key(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_verum_key(X0) :- object(X0),not er_inv_overlap_subset_verum_key(X0).
er_inv_shape_subset_verum_key(X0) :- subset_verum_key(X1),inv_shape(X0,X1).
-er_inv_shape_subset_verum_key(X0) :- object(X0),not er_inv_shape_subset_verum_key(X0).
er_comp_smaller_below_subset_verum_key(X0) :- subset_verum_key(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_verum_key(X0) :- object(X0),not er_comp_smaller_below_subset_verum_key(X0).
er_comp_smaller_left_subset_verum_key(X0) :- subset_verum_key(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_verum_key(X0) :- object(X0),not er_comp_smaller_left_subset_verum_key(X0).
er_comp_smaller_overlap_subset_verum_key(X0) :- subset_verum_key(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_verum_key(X0) :- object(X0),not er_comp_smaller_overlap_subset_verum_key(X0).
er_comp_smaller_shape_subset_verum_key(X0) :- subset_verum_key(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_verum_key(X0) :- object(X0),not er_comp_smaller_shape_subset_verum_key(X0).
er_comp_below_left_subset_verum_key(X0) :- subset_verum_key(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_verum_key(X0) :- object(X0),not er_comp_below_left_subset_verum_key(X0).
er_comp_below_overlap_subset_verum_key(X0) :- subset_verum_key(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_verum_key(X0) :- object(X0),not er_comp_below_overlap_subset_verum_key(X0).
er_comp_below_shape_subset_verum_key(X0) :- subset_verum_key(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_verum_key(X0) :- object(X0),not er_comp_below_shape_subset_verum_key(X0).
er_comp_left_overlap_subset_verum_key(X0) :- subset_verum_key(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_verum_key(X0) :- object(X0),not er_comp_left_overlap_subset_verum_key(X0).
er_comp_left_shape_subset_verum_key(X0) :- subset_verum_key(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_verum_key(X0) :- object(X0),not er_comp_left_shape_subset_verum_key(X0).
er_comp_overlap_shape_subset_verum_key(X0) :- subset_verum_key(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_verum_key(X0) :- object(X0),not er_comp_overlap_shape_subset_verum_key(X0).
er_smaller_subset_verum_peg(X0) :- subset_verum_peg(X1),smaller(X0,X1).
-er_smaller_subset_verum_peg(X0) :- object(X0),not er_smaller_subset_verum_peg(X0).
er_below_subset_verum_peg(X0) :- subset_verum_peg(X1),below(X0,X1).
-er_below_subset_verum_peg(X0) :- object(X0),not er_below_subset_verum_peg(X0).
er_left_subset_verum_peg(X0) :- subset_verum_peg(X1),left(X0,X1).
-er_left_subset_verum_peg(X0) :- object(X0),not er_left_subset_verum_peg(X0).
er_overlap_subset_verum_peg(X0) :- subset_verum_peg(X1),overlap(X0,X1).
-er_overlap_subset_verum_peg(X0) :- object(X0),not er_overlap_subset_verum_peg(X0).
er_shape_subset_verum_peg(X0) :- subset_verum_peg(X1),shape(X0,X1).
-er_shape_subset_verum_peg(X0) :- object(X0),not er_shape_subset_verum_peg(X0).
er_inv_smaller_subset_verum_peg(X0) :- subset_verum_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_verum_peg(X0) :- object(X0),not er_inv_smaller_subset_verum_peg(X0).
er_inv_below_subset_verum_peg(X0) :- subset_verum_peg(X1),inv_below(X0,X1).
-er_inv_below_subset_verum_peg(X0) :- object(X0),not er_inv_below_subset_verum_peg(X0).
er_inv_left_subset_verum_peg(X0) :- subset_verum_peg(X1),inv_left(X0,X1).
-er_inv_left_subset_verum_peg(X0) :- object(X0),not er_inv_left_subset_verum_peg(X0).
er_inv_overlap_subset_verum_peg(X0) :- subset_verum_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_verum_peg(X0) :- object(X0),not er_inv_overlap_subset_verum_peg(X0).
er_inv_shape_subset_verum_peg(X0) :- subset_verum_peg(X1),inv_shape(X0,X1).
-er_inv_shape_subset_verum_peg(X0) :- object(X0),not er_inv_shape_subset_verum_peg(X0).
er_comp_smaller_below_subset_verum_peg(X0) :- subset_verum_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_verum_peg(X0) :- object(X0),not er_comp_smaller_below_subset_verum_peg(X0).
er_comp_smaller_left_subset_verum_peg(X0) :- subset_verum_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_verum_peg(X0) :- object(X0),not er_comp_smaller_left_subset_verum_peg(X0).
er_comp_smaller_overlap_subset_verum_peg(X0) :- subset_verum_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_verum_peg(X0) :- object(X0),not er_comp_smaller_overlap_subset_verum_peg(X0).
er_comp_smaller_shape_subset_verum_peg(X0) :- subset_verum_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_verum_peg(X0) :- object(X0),not er_comp_smaller_shape_subset_verum_peg(X0).
er_comp_below_left_subset_verum_peg(X0) :- subset_verum_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_verum_peg(X0) :- object(X0),not er_comp_below_left_subset_verum_peg(X0).
er_comp_below_overlap_subset_verum_peg(X0) :- subset_verum_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_verum_peg(X0) :- object(X0),not er_comp_below_overlap_subset_verum_peg(X0).
er_comp_below_shape_subset_verum_peg(X0) :- subset_verum_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_verum_peg(X0) :- object(X0),not er_comp_below_shape_subset_verum_peg(X0).
er_comp_left_overlap_subset_verum_peg(X0) :- subset_verum_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_verum_peg(X0) :- object(X0),not er_comp_left_overlap_subset_verum_peg(X0).
er_comp_left_shape_subset_verum_peg(X0) :- subset_verum_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_verum_peg(X0) :- object(X0),not er_comp_left_shape_subset_verum_peg(X0).
er_comp_overlap_shape_subset_verum_peg(X0) :- subset_verum_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_verum_peg(X0) :- object(X0),not er_comp_overlap_shape_subset_verum_peg(X0).
er_smaller_subset_verum_disk(X0) :- subset_verum_disk(X1),smaller(X0,X1).
-er_smaller_subset_verum_disk(X0) :- object(X0),not er_smaller_subset_verum_disk(X0).
er_below_subset_verum_disk(X0) :- subset_verum_disk(X1),below(X0,X1).
-er_below_subset_verum_disk(X0) :- object(X0),not er_below_subset_verum_disk(X0).
er_left_subset_verum_disk(X0) :- subset_verum_disk(X1),left(X0,X1).
-er_left_subset_verum_disk(X0) :- object(X0),not er_left_subset_verum_disk(X0).
er_overlap_subset_verum_disk(X0) :- subset_verum_disk(X1),overlap(X0,X1).
-er_overlap_subset_verum_disk(X0) :- object(X0),not er_overlap_subset_verum_disk(X0).
er_shape_subset_verum_disk(X0) :- subset_verum_disk(X1),shape(X0,X1).
-er_shape_subset_verum_disk(X0) :- object(X0),not er_shape_subset_verum_disk(X0).
er_inv_smaller_subset_verum_disk(X0) :- subset_verum_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_verum_disk(X0) :- object(X0),not er_inv_smaller_subset_verum_disk(X0).
er_inv_below_subset_verum_disk(X0) :- subset_verum_disk(X1),inv_below(X0,X1).
-er_inv_below_subset_verum_disk(X0) :- object(X0),not er_inv_below_subset_verum_disk(X0).
er_inv_left_subset_verum_disk(X0) :- subset_verum_disk(X1),inv_left(X0,X1).
-er_inv_left_subset_verum_disk(X0) :- object(X0),not er_inv_left_subset_verum_disk(X0).
er_inv_overlap_subset_verum_disk(X0) :- subset_verum_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_verum_disk(X0) :- object(X0),not er_inv_overlap_subset_verum_disk(X0).
er_inv_shape_subset_verum_disk(X0) :- subset_verum_disk(X1),inv_shape(X0,X1).
-er_inv_shape_subset_verum_disk(X0) :- object(X0),not er_inv_shape_subset_verum_disk(X0).
er_comp_smaller_below_subset_verum_disk(X0) :- subset_verum_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_verum_disk(X0) :- object(X0),not er_comp_smaller_below_subset_verum_disk(X0).
er_comp_smaller_left_subset_verum_disk(X0) :- subset_verum_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_verum_disk(X0) :- object(X0),not er_comp_smaller_left_subset_verum_disk(X0).
er_comp_smaller_overlap_subset_verum_disk(X0) :- subset_verum_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_verum_disk(X0) :- object(X0),not er_comp_smaller_overlap_subset_verum_disk(X0).
er_comp_smaller_shape_subset_verum_disk(X0) :- subset_verum_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_verum_disk(X0) :- object(X0),not er_comp_smaller_shape_subset_verum_disk(X0).
er_comp_below_left_subset_verum_disk(X0) :- subset_verum_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_verum_disk(X0) :- object(X0),not er_comp_below_left_subset_verum_disk(X0).
er_comp_below_overlap_subset_verum_disk(X0) :- subset_verum_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_verum_disk(X0) :- object(X0),not er_comp_below_overlap_subset_verum_disk(X0).
er_comp_below_shape_subset_verum_disk(X0) :- subset_verum_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_verum_disk(X0) :- object(X0),not er_comp_below_shape_subset_verum_disk(X0).
er_comp_left_overlap_subset_verum_disk(X0) :- subset_verum_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_verum_disk(X0) :- object(X0),not er_comp_left_overlap_subset_verum_disk(X0).
er_comp_left_shape_subset_verum_disk(X0) :- subset_verum_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_verum_disk(X0) :- object(X0),not er_comp_left_shape_subset_verum_disk(X0).
er_comp_overlap_shape_subset_verum_disk(X0) :- subset_verum_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_verum_disk(X0) :- object(X0),not er_comp_overlap_shape_subset_verum_disk(X0).
er_smaller_subset_falsum_key(X0) :- subset_falsum_key(X1),smaller(X0,X1).
-er_smaller_subset_falsum_key(X0) :- object(X0),not er_smaller_subset_falsum_key(X0).
er_below_subset_falsum_key(X0) :- subset_falsum_key(X1),below(X0,X1).
-er_below_subset_falsum_key(X0) :- object(X0),not er_below_subset_falsum_key(X0).
er_left_subset_falsum_key(X0) :- subset_falsum_key(X1),left(X0,X1).
-er_left_subset_falsum_key(X0) :- object(X0),not er_left_subset_falsum_key(X0).
er_overlap_subset_falsum_key(X0) :- subset_falsum_key(X1),overlap(X0,X1).
-er_overlap_subset_falsum_key(X0) :- object(X0),not er_overlap_subset_falsum_key(X0).
er_shape_subset_falsum_key(X0) :- subset_falsum_key(X1),shape(X0,X1).
-er_shape_subset_falsum_key(X0) :- object(X0),not er_shape_subset_falsum_key(X0).
er_inv_smaller_subset_falsum_key(X0) :- subset_falsum_key(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_falsum_key(X0) :- object(X0),not er_inv_smaller_subset_falsum_key(X0).
er_inv_below_subset_falsum_key(X0) :- subset_falsum_key(X1),inv_below(X0,X1).
-er_inv_below_subset_falsum_key(X0) :- object(X0),not er_inv_below_subset_falsum_key(X0).
er_inv_left_subset_falsum_key(X0) :- subset_falsum_key(X1),inv_left(X0,X1).
-er_inv_left_subset_falsum_key(X0) :- object(X0),not er_inv_left_subset_falsum_key(X0).
er_inv_overlap_subset_falsum_key(X0) :- subset_falsum_key(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_falsum_key(X0) :- object(X0),not er_inv_overlap_subset_falsum_key(X0).
er_inv_shape_subset_falsum_key(X0) :- subset_falsum_key(X1),inv_shape(X0,X1).
-er_inv_shape_subset_falsum_key(X0) :- object(X0),not er_inv_shape_subset_falsum_key(X0).
er_comp_smaller_below_subset_falsum_key(X0) :- subset_falsum_key(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_falsum_key(X0) :- object(X0),not er_comp_smaller_below_subset_falsum_key(X0).
er_comp_smaller_left_subset_falsum_key(X0) :- subset_falsum_key(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_falsum_key(X0) :- object(X0),not er_comp_smaller_left_subset_falsum_key(X0).
er_comp_smaller_overlap_subset_falsum_key(X0) :- subset_falsum_key(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_falsum_key(X0) :- object(X0),not er_comp_smaller_overlap_subset_falsum_key(X0).
er_comp_smaller_shape_subset_falsum_key(X0) :- subset_falsum_key(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_falsum_key(X0) :- object(X0),not er_comp_smaller_shape_subset_falsum_key(X0).
er_comp_below_left_subset_falsum_key(X0) :- subset_falsum_key(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_falsum_key(X0) :- object(X0),not er_comp_below_left_subset_falsum_key(X0).
er_comp_below_overlap_subset_falsum_key(X0) :- subset_falsum_key(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_falsum_key(X0) :- object(X0),not er_comp_below_overlap_subset_falsum_key(X0).
er_comp_below_shape_subset_falsum_key(X0) :- subset_falsum_key(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_falsum_key(X0) :- object(X0),not er_comp_below_shape_subset_falsum_key(X0).
er_comp_left_overlap_subset_falsum_key(X0) :- subset_falsum_key(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_falsum_key(X0) :- object(X0),not er_comp_left_overlap_subset_falsum_key(X0).
er_comp_left_shape_subset_falsum_key(X0) :- subset_falsum_key(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_falsum_key(X0) :- object(X0),not er_comp_left_shape_subset_falsum_key(X0).
er_comp_overlap_shape_subset_falsum_key(X0) :- subset_falsum_key(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_falsum_key(X0) :- object(X0),not er_comp_overlap_shape_subset_falsum_key(X0).
er_smaller_subset_falsum_peg(X0) :- subset_falsum_peg(X1),smaller(X0,X1).
-er_smaller_subset_falsum_peg(X0) :- object(X0),not er_smaller_subset_falsum_peg(X0).
er_below_subset_falsum_peg(X0) :- subset_falsum_peg(X1),below(X0,X1).
-er_below_subset_falsum_peg(X0) :- object(X0),not er_below_subset_falsum_peg(X0).
er_left_subset_falsum_peg(X0) :- subset_falsum_peg(X1),left(X0,X1).
-er_left_subset_falsum_peg(X0) :- object(X0),not er_left_subset_falsum_peg(X0).
er_overlap_subset_falsum_peg(X0) :- subset_falsum_peg(X1),overlap(X0,X1).
-er_overlap_subset_falsum_peg(X0) :- object(X0),not er_overlap_subset_falsum_peg(X0).
er_shape_subset_falsum_peg(X0) :- subset_falsum_peg(X1),shape(X0,X1).
-er_shape_subset_falsum_peg(X0) :- object(X0),not er_shape_subset_falsum_peg(X0).
er_inv_smaller_subset_falsum_peg(X0) :- subset_falsum_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_falsum_peg(X0) :- object(X0),not er_inv_smaller_subset_falsum_peg(X0).
er_inv_below_subset_falsum_peg(X0) :- subset_falsum_peg(X1),inv_below(X0,X1).
-er_inv_below_subset_falsum_peg(X0) :- object(X0),not er_inv_below_subset_falsum_peg(X0).
er_inv_left_subset_falsum_peg(X0) :- subset_falsum_peg(X1),inv_left(X0,X1).
-er_inv_left_subset_falsum_peg(X0) :- object(X0),not er_inv_left_subset_falsum_peg(X0).
er_inv_overlap_subset_falsum_peg(X0) :- subset_falsum_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_falsum_peg(X0) :- object(X0),not er_inv_overlap_subset_falsum_peg(X0).
er_inv_shape_subset_falsum_peg(X0) :- subset_falsum_peg(X1),inv_shape(X0,X1).
-er_inv_shape_subset_falsum_peg(X0) :- object(X0),not er_inv_shape_subset_falsum_peg(X0).
er_comp_smaller_below_subset_falsum_peg(X0) :- subset_falsum_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_falsum_peg(X0) :- object(X0),not er_comp_smaller_below_subset_falsum_peg(X0).
er_comp_smaller_left_subset_falsum_peg(X0) :- subset_falsum_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_falsum_peg(X0) :- object(X0),not er_comp_smaller_left_subset_falsum_peg(X0).
er_comp_smaller_overlap_subset_falsum_peg(X0) :- subset_falsum_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_falsum_peg(X0) :- object(X0),not er_comp_smaller_overlap_subset_falsum_peg(X0).
er_comp_smaller_shape_subset_falsum_peg(X0) :- subset_falsum_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_falsum_peg(X0) :- object(X0),not er_comp_smaller_shape_subset_falsum_peg(X0).
er_comp_below_left_subset_falsum_peg(X0) :- subset_falsum_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_falsum_peg(X0) :- object(X0),not er_comp_below_left_subset_falsum_peg(X0).
er_comp_below_overlap_subset_falsum_peg(X0) :- subset_falsum_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_falsum_peg(X0) :- object(X0),not er_comp_below_overlap_subset_falsum_peg(X0).
er_comp_below_shape_subset_falsum_peg(X0) :- subset_falsum_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_falsum_peg(X0) :- object(X0),not er_comp_below_shape_subset_falsum_peg(X0).
er_comp_left_overlap_subset_falsum_peg(X0) :- subset_falsum_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_falsum_peg(X0) :- object(X0),not er_comp_left_overlap_subset_falsum_peg(X0).
er_comp_left_shape_subset_falsum_peg(X0) :- subset_falsum_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_falsum_peg(X0) :- object(X0),not er_comp_left_shape_subset_falsum_peg(X0).
er_comp_overlap_shape_subset_falsum_peg(X0) :- subset_falsum_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_falsum_peg(X0) :- object(X0),not er_comp_overlap_shape_subset_falsum_peg(X0).
er_smaller_subset_falsum_disk(X0) :- subset_falsum_disk(X1),smaller(X0,X1).
-er_smaller_subset_falsum_disk(X0) :- object(X0),not er_smaller_subset_falsum_disk(X0).
er_below_subset_falsum_disk(X0) :- subset_falsum_disk(X1),below(X0,X1).
-er_below_subset_falsum_disk(X0) :- object(X0),not er_below_subset_falsum_disk(X0).
er_left_subset_falsum_disk(X0) :- subset_falsum_disk(X1),left(X0,X1).
-er_left_subset_falsum_disk(X0) :- object(X0),not er_left_subset_falsum_disk(X0).
er_overlap_subset_falsum_disk(X0) :- subset_falsum_disk(X1),overlap(X0,X1).
-er_overlap_subset_falsum_disk(X0) :- object(X0),not er_overlap_subset_falsum_disk(X0).
er_shape_subset_falsum_disk(X0) :- subset_falsum_disk(X1),shape(X0,X1).
-er_shape_subset_falsum_disk(X0) :- object(X0),not er_shape_subset_falsum_disk(X0).
er_inv_smaller_subset_falsum_disk(X0) :- subset_falsum_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_falsum_disk(X0) :- object(X0),not er_inv_smaller_subset_falsum_disk(X0).
er_inv_below_subset_falsum_disk(X0) :- subset_falsum_disk(X1),inv_below(X0,X1).
-er_inv_below_subset_falsum_disk(X0) :- object(X0),not er_inv_below_subset_falsum_disk(X0).
er_inv_left_subset_falsum_disk(X0) :- subset_falsum_disk(X1),inv_left(X0,X1).
-er_inv_left_subset_falsum_disk(X0) :- object(X0),not er_inv_left_subset_falsum_disk(X0).
er_inv_overlap_subset_falsum_disk(X0) :- subset_falsum_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_falsum_disk(X0) :- object(X0),not er_inv_overlap_subset_falsum_disk(X0).
er_inv_shape_subset_falsum_disk(X0) :- subset_falsum_disk(X1),inv_shape(X0,X1).
-er_inv_shape_subset_falsum_disk(X0) :- object(X0),not er_inv_shape_subset_falsum_disk(X0).
er_comp_smaller_below_subset_falsum_disk(X0) :- subset_falsum_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_falsum_disk(X0) :- object(X0),not er_comp_smaller_below_subset_falsum_disk(X0).
er_comp_smaller_left_subset_falsum_disk(X0) :- subset_falsum_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_falsum_disk(X0) :- object(X0),not er_comp_smaller_left_subset_falsum_disk(X0).
er_comp_smaller_overlap_subset_falsum_disk(X0) :- subset_falsum_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_falsum_disk(X0) :- object(X0),not er_comp_smaller_overlap_subset_falsum_disk(X0).
er_comp_smaller_shape_subset_falsum_disk(X0) :- subset_falsum_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_falsum_disk(X0) :- object(X0),not er_comp_smaller_shape_subset_falsum_disk(X0).
er_comp_below_left_subset_falsum_disk(X0) :- subset_falsum_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_falsum_disk(X0) :- object(X0),not er_comp_below_left_subset_falsum_disk(X0).
er_comp_below_overlap_subset_falsum_disk(X0) :- subset_falsum_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_falsum_disk(X0) :- object(X0),not er_comp_below_overlap_subset_falsum_disk(X0).
er_comp_below_shape_subset_falsum_disk(X0) :- subset_falsum_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_falsum_disk(X0) :- object(X0),not er_comp_below_shape_subset_falsum_disk(X0).
er_comp_left_overlap_subset_falsum_disk(X0) :- subset_falsum_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_falsum_disk(X0) :- object(X0),not er_comp_left_overlap_subset_falsum_disk(X0).
er_comp_left_shape_subset_falsum_disk(X0) :- subset_falsum_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_falsum_disk(X0) :- object(X0),not er_comp_left_shape_subset_falsum_disk(X0).
er_comp_overlap_shape_subset_falsum_disk(X0) :- subset_falsum_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_falsum_disk(X0) :- object(X0),not er_comp_overlap_shape_subset_falsum_disk(X0).
er_smaller_subset_key_peg(X0) :- subset_key_peg(X1),smaller(X0,X1).
-er_smaller_subset_key_peg(X0) :- object(X0),not er_smaller_subset_key_peg(X0).
er_below_subset_key_peg(X0) :- subset_key_peg(X1),below(X0,X1).
-er_below_subset_key_peg(X0) :- object(X0),not er_below_subset_key_peg(X0).
er_left_subset_key_peg(X0) :- subset_key_peg(X1),left(X0,X1).
-er_left_subset_key_peg(X0) :- object(X0),not er_left_subset_key_peg(X0).
er_overlap_subset_key_peg(X0) :- subset_key_peg(X1),overlap(X0,X1).
-er_overlap_subset_key_peg(X0) :- object(X0),not er_overlap_subset_key_peg(X0).
er_shape_subset_key_peg(X0) :- subset_key_peg(X1),shape(X0,X1).
-er_shape_subset_key_peg(X0) :- object(X0),not er_shape_subset_key_peg(X0).
er_inv_smaller_subset_key_peg(X0) :- subset_key_peg(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_key_peg(X0) :- object(X0),not er_inv_smaller_subset_key_peg(X0).
er_inv_below_subset_key_peg(X0) :- subset_key_peg(X1),inv_below(X0,X1).
-er_inv_below_subset_key_peg(X0) :- object(X0),not er_inv_below_subset_key_peg(X0).
er_inv_left_subset_key_peg(X0) :- subset_key_peg(X1),inv_left(X0,X1).
-er_inv_left_subset_key_peg(X0) :- object(X0),not er_inv_left_subset_key_peg(X0).
er_inv_overlap_subset_key_peg(X0) :- subset_key_peg(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_key_peg(X0) :- object(X0),not er_inv_overlap_subset_key_peg(X0).
er_inv_shape_subset_key_peg(X0) :- subset_key_peg(X1),inv_shape(X0,X1).
-er_inv_shape_subset_key_peg(X0) :- object(X0),not er_inv_shape_subset_key_peg(X0).
er_comp_smaller_below_subset_key_peg(X0) :- subset_key_peg(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_key_peg(X0) :- object(X0),not er_comp_smaller_below_subset_key_peg(X0).
er_comp_smaller_left_subset_key_peg(X0) :- subset_key_peg(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_key_peg(X0) :- object(X0),not er_comp_smaller_left_subset_key_peg(X0).
er_comp_smaller_overlap_subset_key_peg(X0) :- subset_key_peg(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_key_peg(X0) :- object(X0),not er_comp_smaller_overlap_subset_key_peg(X0).
er_comp_smaller_shape_subset_key_peg(X0) :- subset_key_peg(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_key_peg(X0) :- object(X0),not er_comp_smaller_shape_subset_key_peg(X0).
er_comp_below_left_subset_key_peg(X0) :- subset_key_peg(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_key_peg(X0) :- object(X0),not er_comp_below_left_subset_key_peg(X0).
er_comp_below_overlap_subset_key_peg(X0) :- subset_key_peg(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_key_peg(X0) :- object(X0),not er_comp_below_overlap_subset_key_peg(X0).
er_comp_below_shape_subset_key_peg(X0) :- subset_key_peg(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_key_peg(X0) :- object(X0),not er_comp_below_shape_subset_key_peg(X0).
er_comp_left_overlap_subset_key_peg(X0) :- subset_key_peg(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_key_peg(X0) :- object(X0),not er_comp_left_overlap_subset_key_peg(X0).
er_comp_left_shape_subset_key_peg(X0) :- subset_key_peg(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_key_peg(X0) :- object(X0),not er_comp_left_shape_subset_key_peg(X0).
er_comp_overlap_shape_subset_key_peg(X0) :- subset_key_peg(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_key_peg(X0) :- object(X0),not er_comp_overlap_shape_subset_key_peg(X0).
er_smaller_subset_key_disk(X0) :- subset_key_disk(X1),smaller(X0,X1).
-er_smaller_subset_key_disk(X0) :- object(X0),not er_smaller_subset_key_disk(X0).
er_below_subset_key_disk(X0) :- subset_key_disk(X1),below(X0,X1).
-er_below_subset_key_disk(X0) :- object(X0),not er_below_subset_key_disk(X0).
er_left_subset_key_disk(X0) :- subset_key_disk(X1),left(X0,X1).
-er_left_subset_key_disk(X0) :- object(X0),not er_left_subset_key_disk(X0).
er_overlap_subset_key_disk(X0) :- subset_key_disk(X1),overlap(X0,X1).
-er_overlap_subset_key_disk(X0) :- object(X0),not er_overlap_subset_key_disk(X0).
er_shape_subset_key_disk(X0) :- subset_key_disk(X1),shape(X0,X1).
-er_shape_subset_key_disk(X0) :- object(X0),not er_shape_subset_key_disk(X0).
er_inv_smaller_subset_key_disk(X0) :- subset_key_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_key_disk(X0) :- object(X0),not er_inv_smaller_subset_key_disk(X0).
er_inv_below_subset_key_disk(X0) :- subset_key_disk(X1),inv_below(X0,X1).
-er_inv_below_subset_key_disk(X0) :- object(X0),not er_inv_below_subset_key_disk(X0).
er_inv_left_subset_key_disk(X0) :- subset_key_disk(X1),inv_left(X0,X1).
-er_inv_left_subset_key_disk(X0) :- object(X0),not er_inv_left_subset_key_disk(X0).
er_inv_overlap_subset_key_disk(X0) :- subset_key_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_key_disk(X0) :- object(X0),not er_inv_overlap_subset_key_disk(X0).
er_inv_shape_subset_key_disk(X0) :- subset_key_disk(X1),inv_shape(X0,X1).
-er_inv_shape_subset_key_disk(X0) :- object(X0),not er_inv_shape_subset_key_disk(X0).
er_comp_smaller_below_subset_key_disk(X0) :- subset_key_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_key_disk(X0) :- object(X0),not er_comp_smaller_below_subset_key_disk(X0).
er_comp_smaller_left_subset_key_disk(X0) :- subset_key_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_key_disk(X0) :- object(X0),not er_comp_smaller_left_subset_key_disk(X0).
er_comp_smaller_overlap_subset_key_disk(X0) :- subset_key_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_key_disk(X0) :- object(X0),not er_comp_smaller_overlap_subset_key_disk(X0).
er_comp_smaller_shape_subset_key_disk(X0) :- subset_key_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_key_disk(X0) :- object(X0),not er_comp_smaller_shape_subset_key_disk(X0).
er_comp_below_left_subset_key_disk(X0) :- subset_key_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_key_disk(X0) :- object(X0),not er_comp_below_left_subset_key_disk(X0).
er_comp_below_overlap_subset_key_disk(X0) :- subset_key_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_key_disk(X0) :- object(X0),not er_comp_below_overlap_subset_key_disk(X0).
er_comp_below_shape_subset_key_disk(X0) :- subset_key_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_key_disk(X0) :- object(X0),not er_comp_below_shape_subset_key_disk(X0).
er_comp_left_overlap_subset_key_disk(X0) :- subset_key_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_key_disk(X0) :- object(X0),not er_comp_left_overlap_subset_key_disk(X0).
er_comp_left_shape_subset_key_disk(X0) :- subset_key_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_key_disk(X0) :- object(X0),not er_comp_left_shape_subset_key_disk(X0).
er_comp_overlap_shape_subset_key_disk(X0) :- subset_key_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_key_disk(X0) :- object(X0),not er_comp_overlap_shape_subset_key_disk(X0).
er_smaller_subset_peg_disk(X0) :- subset_peg_disk(X1),smaller(X0,X1).
-er_smaller_subset_peg_disk(X0) :- object(X0),not er_smaller_subset_peg_disk(X0).
er_below_subset_peg_disk(X0) :- subset_peg_disk(X1),below(X0,X1).
-er_below_subset_peg_disk(X0) :- object(X0),not er_below_subset_peg_disk(X0).
er_left_subset_peg_disk(X0) :- subset_peg_disk(X1),left(X0,X1).
-er_left_subset_peg_disk(X0) :- object(X0),not er_left_subset_peg_disk(X0).
er_overlap_subset_peg_disk(X0) :- subset_peg_disk(X1),overlap(X0,X1).
-er_overlap_subset_peg_disk(X0) :- object(X0),not er_overlap_subset_peg_disk(X0).
er_shape_subset_peg_disk(X0) :- subset_peg_disk(X1),shape(X0,X1).
-er_shape_subset_peg_disk(X0) :- object(X0),not er_shape_subset_peg_disk(X0).
er_inv_smaller_subset_peg_disk(X0) :- subset_peg_disk(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_peg_disk(X0) :- object(X0),not er_inv_smaller_subset_peg_disk(X0).
er_inv_below_subset_peg_disk(X0) :- subset_peg_disk(X1),inv_below(X0,X1).
-er_inv_below_subset_peg_disk(X0) :- object(X0),not er_inv_below_subset_peg_disk(X0).
er_inv_left_subset_peg_disk(X0) :- subset_peg_disk(X1),inv_left(X0,X1).
-er_inv_left_subset_peg_disk(X0) :- object(X0),not er_inv_left_subset_peg_disk(X0).
er_inv_overlap_subset_peg_disk(X0) :- subset_peg_disk(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_peg_disk(X0) :- object(X0),not er_inv_overlap_subset_peg_disk(X0).
er_inv_shape_subset_peg_disk(X0) :- subset_peg_disk(X1),inv_shape(X0,X1).
-er_inv_shape_subset_peg_disk(X0) :- object(X0),not er_inv_shape_subset_peg_disk(X0).
er_comp_smaller_below_subset_peg_disk(X0) :- subset_peg_disk(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_peg_disk(X0) :- object(X0),not er_comp_smaller_below_subset_peg_disk(X0).
er_comp_smaller_left_subset_peg_disk(X0) :- subset_peg_disk(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_peg_disk(X0) :- object(X0),not er_comp_smaller_left_subset_peg_disk(X0).
er_comp_smaller_overlap_subset_peg_disk(X0) :- subset_peg_disk(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_peg_disk(X0) :- object(X0),not er_comp_smaller_overlap_subset_peg_disk(X0).
er_comp_smaller_shape_subset_peg_disk(X0) :- subset_peg_disk(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_peg_disk(X0) :- object(X0),not er_comp_smaller_shape_subset_peg_disk(X0).
er_comp_below_left_subset_peg_disk(X0) :- subset_peg_disk(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_peg_disk(X0) :- object(X0),not er_comp_below_left_subset_peg_disk(X0).
er_comp_below_overlap_subset_peg_disk(X0) :- subset_peg_disk(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_peg_disk(X0) :- object(X0),not er_comp_below_overlap_subset_peg_disk(X0).
er_comp_below_shape_subset_peg_disk(X0) :- subset_peg_disk(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_peg_disk(X0) :- object(X0),not er_comp_below_shape_subset_peg_disk(X0).
er_comp_left_overlap_subset_peg_disk(X0) :- subset_peg_disk(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_peg_disk(X0) :- object(X0),not er_comp_left_overlap_subset_peg_disk(X0).
er_comp_left_shape_subset_peg_disk(X0) :- subset_peg_disk(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_peg_disk(X0) :- object(X0),not er_comp_left_shape_subset_peg_disk(X0).
er_comp_overlap_shape_subset_peg_disk(X0) :- subset_peg_disk(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_peg_disk(X0) :- object(X0),not er_comp_overlap_shape_subset_peg_disk(X0).
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
inter_verum_er_smaller_key(X0) :- verum(X0),er_smaller_key(X0).
-inter_verum_er_smaller_key(X0) :- object(X0),not inter_verum_er_smaller_key(X0).
inter_verum_er_below_key(X0) :- verum(X0),er_below_key(X0).
-inter_verum_er_below_key(X0) :- object(X0),not inter_verum_er_below_key(X0).
inter_verum_er_left_key(X0) :- verum(X0),er_left_key(X0).
-inter_verum_er_left_key(X0) :- object(X0),not inter_verum_er_left_key(X0).
inter_verum_er_overlap_key(X0) :- verum(X0),er_overlap_key(X0).
-inter_verum_er_overlap_key(X0) :- object(X0),not inter_verum_er_overlap_key(X0).
inter_verum_er_shape_key(X0) :- verum(X0),er_shape_key(X0).
-inter_verum_er_shape_key(X0) :- object(X0),not inter_verum_er_shape_key(X0).
inter_verum_er_smaller_peg(X0) :- verum(X0),er_smaller_peg(X0).
-inter_verum_er_smaller_peg(X0) :- object(X0),not inter_verum_er_smaller_peg(X0).
inter_verum_er_below_peg(X0) :- verum(X0),er_below_peg(X0).
-inter_verum_er_below_peg(X0) :- object(X0),not inter_verum_er_below_peg(X0).
inter_verum_er_left_peg(X0) :- verum(X0),er_left_peg(X0).
-inter_verum_er_left_peg(X0) :- object(X0),not inter_verum_er_left_peg(X0).
inter_verum_er_overlap_peg(X0) :- verum(X0),er_overlap_peg(X0).
-inter_verum_er_overlap_peg(X0) :- object(X0),not inter_verum_er_overlap_peg(X0).
inter_verum_er_shape_peg(X0) :- verum(X0),er_shape_peg(X0).
-inter_verum_er_shape_peg(X0) :- object(X0),not inter_verum_er_shape_peg(X0).
inter_verum_er_smaller_disk(X0) :- verum(X0),er_smaller_disk(X0).
-inter_verum_er_smaller_disk(X0) :- object(X0),not inter_verum_er_smaller_disk(X0).
inter_verum_er_below_disk(X0) :- verum(X0),er_below_disk(X0).
-inter_verum_er_below_disk(X0) :- object(X0),not inter_verum_er_below_disk(X0).
inter_verum_er_left_disk(X0) :- verum(X0),er_left_disk(X0).
-inter_verum_er_left_disk(X0) :- object(X0),not inter_verum_er_left_disk(X0).
inter_verum_er_overlap_disk(X0) :- verum(X0),er_overlap_disk(X0).
-inter_verum_er_overlap_disk(X0) :- object(X0),not inter_verum_er_overlap_disk(X0).
inter_verum_er_shape_disk(X0) :- verum(X0),er_shape_disk(X0).
-inter_verum_er_shape_disk(X0) :- object(X0),not inter_verum_er_shape_disk(X0).
inter_verum_inter_verum_falsum(X0) :- verum(X0),inter_verum_falsum(X0).
-inter_verum_inter_verum_falsum(X0) :- object(X0),not inter_verum_inter_verum_falsum(X0).
inter_verum_inter_verum_key(X0) :- verum(X0),inter_verum_key(X0).
-inter_verum_inter_verum_key(X0) :- object(X0),not inter_verum_inter_verum_key(X0).
inter_verum_inter_verum_peg(X0) :- verum(X0),inter_verum_peg(X0).
-inter_verum_inter_verum_peg(X0) :- object(X0),not inter_verum_inter_verum_peg(X0).
inter_verum_inter_verum_disk(X0) :- verum(X0),inter_verum_disk(X0).
-inter_verum_inter_verum_disk(X0) :- object(X0),not inter_verum_inter_verum_disk(X0).
inter_verum_inter_falsum_key(X0) :- verum(X0),inter_falsum_key(X0).
-inter_verum_inter_falsum_key(X0) :- object(X0),not inter_verum_inter_falsum_key(X0).
inter_verum_inter_falsum_peg(X0) :- verum(X0),inter_falsum_peg(X0).
-inter_verum_inter_falsum_peg(X0) :- object(X0),not inter_verum_inter_falsum_peg(X0).
inter_verum_inter_falsum_disk(X0) :- verum(X0),inter_falsum_disk(X0).
-inter_verum_inter_falsum_disk(X0) :- object(X0),not inter_verum_inter_falsum_disk(X0).
inter_verum_inter_key_peg(X0) :- verum(X0),inter_key_peg(X0).
-inter_verum_inter_key_peg(X0) :- object(X0),not inter_verum_inter_key_peg(X0).
inter_verum_inter_key_disk(X0) :- verum(X0),inter_key_disk(X0).
-inter_verum_inter_key_disk(X0) :- object(X0),not inter_verum_inter_key_disk(X0).
inter_verum_inter_peg_disk(X0) :- verum(X0),inter_peg_disk(X0).
-inter_verum_inter_peg_disk(X0) :- object(X0),not inter_verum_inter_peg_disk(X0).
inter_verum_subset_verum_falsum(X0) :- verum(X0),subset_verum_falsum(null).
-inter_verum_subset_verum_falsum(X0) :- object(X0),not inter_verum_subset_verum_falsum(X0).
inter_verum_subset_verum_key(X0) :- verum(X0),subset_verum_key(null).
-inter_verum_subset_verum_key(X0) :- object(X0),not inter_verum_subset_verum_key(X0).
inter_verum_subset_verum_peg(X0) :- verum(X0),subset_verum_peg(null).
-inter_verum_subset_verum_peg(X0) :- object(X0),not inter_verum_subset_verum_peg(X0).
inter_verum_subset_verum_disk(X0) :- verum(X0),subset_verum_disk(null).
-inter_verum_subset_verum_disk(X0) :- object(X0),not inter_verum_subset_verum_disk(X0).
inter_verum_subset_falsum_key(X0) :- verum(X0),subset_falsum_key(null).
-inter_verum_subset_falsum_key(X0) :- object(X0),not inter_verum_subset_falsum_key(X0).
inter_verum_subset_falsum_peg(X0) :- verum(X0),subset_falsum_peg(null).
-inter_verum_subset_falsum_peg(X0) :- object(X0),not inter_verum_subset_falsum_peg(X0).
inter_verum_subset_falsum_disk(X0) :- verum(X0),subset_falsum_disk(null).
-inter_verum_subset_falsum_disk(X0) :- object(X0),not inter_verum_subset_falsum_disk(X0).
inter_verum_subset_key_peg(X0) :- verum(X0),subset_key_peg(null).
-inter_verum_subset_key_peg(X0) :- object(X0),not inter_verum_subset_key_peg(X0).
inter_verum_subset_key_disk(X0) :- verum(X0),subset_key_disk(null).
-inter_verum_subset_key_disk(X0) :- object(X0),not inter_verum_subset_key_disk(X0).
inter_verum_subset_peg_disk(X0) :- verum(X0),subset_peg_disk(null).
-inter_verum_subset_peg_disk(X0) :- object(X0),not inter_verum_subset_peg_disk(X0).
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
inter_falsum_er_smaller_key(X0) :- falsum(X0),er_smaller_key(X0).
-inter_falsum_er_smaller_key(X0) :- object(X0),not inter_falsum_er_smaller_key(X0).
inter_falsum_er_below_key(X0) :- falsum(X0),er_below_key(X0).
-inter_falsum_er_below_key(X0) :- object(X0),not inter_falsum_er_below_key(X0).
inter_falsum_er_left_key(X0) :- falsum(X0),er_left_key(X0).
-inter_falsum_er_left_key(X0) :- object(X0),not inter_falsum_er_left_key(X0).
inter_falsum_er_overlap_key(X0) :- falsum(X0),er_overlap_key(X0).
-inter_falsum_er_overlap_key(X0) :- object(X0),not inter_falsum_er_overlap_key(X0).
inter_falsum_er_shape_key(X0) :- falsum(X0),er_shape_key(X0).
-inter_falsum_er_shape_key(X0) :- object(X0),not inter_falsum_er_shape_key(X0).
inter_falsum_er_smaller_peg(X0) :- falsum(X0),er_smaller_peg(X0).
-inter_falsum_er_smaller_peg(X0) :- object(X0),not inter_falsum_er_smaller_peg(X0).
inter_falsum_er_below_peg(X0) :- falsum(X0),er_below_peg(X0).
-inter_falsum_er_below_peg(X0) :- object(X0),not inter_falsum_er_below_peg(X0).
inter_falsum_er_left_peg(X0) :- falsum(X0),er_left_peg(X0).
-inter_falsum_er_left_peg(X0) :- object(X0),not inter_falsum_er_left_peg(X0).
inter_falsum_er_overlap_peg(X0) :- falsum(X0),er_overlap_peg(X0).
-inter_falsum_er_overlap_peg(X0) :- object(X0),not inter_falsum_er_overlap_peg(X0).
inter_falsum_er_shape_peg(X0) :- falsum(X0),er_shape_peg(X0).
-inter_falsum_er_shape_peg(X0) :- object(X0),not inter_falsum_er_shape_peg(X0).
inter_falsum_er_smaller_disk(X0) :- falsum(X0),er_smaller_disk(X0).
-inter_falsum_er_smaller_disk(X0) :- object(X0),not inter_falsum_er_smaller_disk(X0).
inter_falsum_er_below_disk(X0) :- falsum(X0),er_below_disk(X0).
-inter_falsum_er_below_disk(X0) :- object(X0),not inter_falsum_er_below_disk(X0).
inter_falsum_er_left_disk(X0) :- falsum(X0),er_left_disk(X0).
-inter_falsum_er_left_disk(X0) :- object(X0),not inter_falsum_er_left_disk(X0).
inter_falsum_er_overlap_disk(X0) :- falsum(X0),er_overlap_disk(X0).
-inter_falsum_er_overlap_disk(X0) :- object(X0),not inter_falsum_er_overlap_disk(X0).
inter_falsum_er_shape_disk(X0) :- falsum(X0),er_shape_disk(X0).
-inter_falsum_er_shape_disk(X0) :- object(X0),not inter_falsum_er_shape_disk(X0).
inter_falsum_inter_verum_falsum(X0) :- falsum(X0),inter_verum_falsum(X0).
-inter_falsum_inter_verum_falsum(X0) :- object(X0),not inter_falsum_inter_verum_falsum(X0).
inter_falsum_inter_verum_key(X0) :- falsum(X0),inter_verum_key(X0).
-inter_falsum_inter_verum_key(X0) :- object(X0),not inter_falsum_inter_verum_key(X0).
inter_falsum_inter_verum_peg(X0) :- falsum(X0),inter_verum_peg(X0).
-inter_falsum_inter_verum_peg(X0) :- object(X0),not inter_falsum_inter_verum_peg(X0).
inter_falsum_inter_verum_disk(X0) :- falsum(X0),inter_verum_disk(X0).
-inter_falsum_inter_verum_disk(X0) :- object(X0),not inter_falsum_inter_verum_disk(X0).
inter_falsum_inter_falsum_key(X0) :- falsum(X0),inter_falsum_key(X0).
-inter_falsum_inter_falsum_key(X0) :- object(X0),not inter_falsum_inter_falsum_key(X0).
inter_falsum_inter_falsum_peg(X0) :- falsum(X0),inter_falsum_peg(X0).
-inter_falsum_inter_falsum_peg(X0) :- object(X0),not inter_falsum_inter_falsum_peg(X0).
inter_falsum_inter_falsum_disk(X0) :- falsum(X0),inter_falsum_disk(X0).
-inter_falsum_inter_falsum_disk(X0) :- object(X0),not inter_falsum_inter_falsum_disk(X0).
inter_falsum_inter_key_peg(X0) :- falsum(X0),inter_key_peg(X0).
-inter_falsum_inter_key_peg(X0) :- object(X0),not inter_falsum_inter_key_peg(X0).
inter_falsum_inter_key_disk(X0) :- falsum(X0),inter_key_disk(X0).
-inter_falsum_inter_key_disk(X0) :- object(X0),not inter_falsum_inter_key_disk(X0).
inter_falsum_inter_peg_disk(X0) :- falsum(X0),inter_peg_disk(X0).
-inter_falsum_inter_peg_disk(X0) :- object(X0),not inter_falsum_inter_peg_disk(X0).
inter_falsum_subset_verum_falsum(X0) :- falsum(X0),subset_verum_falsum(null).
-inter_falsum_subset_verum_falsum(X0) :- object(X0),not inter_falsum_subset_verum_falsum(X0).
inter_falsum_subset_verum_key(X0) :- falsum(X0),subset_verum_key(null).
-inter_falsum_subset_verum_key(X0) :- object(X0),not inter_falsum_subset_verum_key(X0).
inter_falsum_subset_verum_peg(X0) :- falsum(X0),subset_verum_peg(null).
-inter_falsum_subset_verum_peg(X0) :- object(X0),not inter_falsum_subset_verum_peg(X0).
inter_falsum_subset_verum_disk(X0) :- falsum(X0),subset_verum_disk(null).
-inter_falsum_subset_verum_disk(X0) :- object(X0),not inter_falsum_subset_verum_disk(X0).
inter_falsum_subset_falsum_key(X0) :- falsum(X0),subset_falsum_key(null).
-inter_falsum_subset_falsum_key(X0) :- object(X0),not inter_falsum_subset_falsum_key(X0).
inter_falsum_subset_falsum_peg(X0) :- falsum(X0),subset_falsum_peg(null).
-inter_falsum_subset_falsum_peg(X0) :- object(X0),not inter_falsum_subset_falsum_peg(X0).
inter_falsum_subset_falsum_disk(X0) :- falsum(X0),subset_falsum_disk(null).
-inter_falsum_subset_falsum_disk(X0) :- object(X0),not inter_falsum_subset_falsum_disk(X0).
inter_falsum_subset_key_peg(X0) :- falsum(X0),subset_key_peg(null).
-inter_falsum_subset_key_peg(X0) :- object(X0),not inter_falsum_subset_key_peg(X0).
inter_falsum_subset_key_disk(X0) :- falsum(X0),subset_key_disk(null).
-inter_falsum_subset_key_disk(X0) :- object(X0),not inter_falsum_subset_key_disk(X0).
inter_falsum_subset_peg_disk(X0) :- falsum(X0),subset_peg_disk(null).
-inter_falsum_subset_peg_disk(X0) :- object(X0),not inter_falsum_subset_peg_disk(X0).
inter_key_er_smaller_verum(X0) :- key(X0),er_smaller_verum(X0).
-inter_key_er_smaller_verum(X0) :- object(X0),not inter_key_er_smaller_verum(X0).
inter_key_er_below_verum(X0) :- key(X0),er_below_verum(X0).
-inter_key_er_below_verum(X0) :- object(X0),not inter_key_er_below_verum(X0).
inter_key_er_left_verum(X0) :- key(X0),er_left_verum(X0).
-inter_key_er_left_verum(X0) :- object(X0),not inter_key_er_left_verum(X0).
inter_key_er_overlap_verum(X0) :- key(X0),er_overlap_verum(X0).
-inter_key_er_overlap_verum(X0) :- object(X0),not inter_key_er_overlap_verum(X0).
inter_key_er_shape_verum(X0) :- key(X0),er_shape_verum(X0).
-inter_key_er_shape_verum(X0) :- object(X0),not inter_key_er_shape_verum(X0).
inter_key_er_smaller_falsum(X0) :- key(X0),er_smaller_falsum(X0).
-inter_key_er_smaller_falsum(X0) :- object(X0),not inter_key_er_smaller_falsum(X0).
inter_key_er_below_falsum(X0) :- key(X0),er_below_falsum(X0).
-inter_key_er_below_falsum(X0) :- object(X0),not inter_key_er_below_falsum(X0).
inter_key_er_left_falsum(X0) :- key(X0),er_left_falsum(X0).
-inter_key_er_left_falsum(X0) :- object(X0),not inter_key_er_left_falsum(X0).
inter_key_er_overlap_falsum(X0) :- key(X0),er_overlap_falsum(X0).
-inter_key_er_overlap_falsum(X0) :- object(X0),not inter_key_er_overlap_falsum(X0).
inter_key_er_shape_falsum(X0) :- key(X0),er_shape_falsum(X0).
-inter_key_er_shape_falsum(X0) :- object(X0),not inter_key_er_shape_falsum(X0).
inter_key_er_smaller_key(X0) :- key(X0),er_smaller_key(X0).
-inter_key_er_smaller_key(X0) :- object(X0),not inter_key_er_smaller_key(X0).
inter_key_er_below_key(X0) :- key(X0),er_below_key(X0).
-inter_key_er_below_key(X0) :- object(X0),not inter_key_er_below_key(X0).
inter_key_er_left_key(X0) :- key(X0),er_left_key(X0).
-inter_key_er_left_key(X0) :- object(X0),not inter_key_er_left_key(X0).
inter_key_er_overlap_key(X0) :- key(X0),er_overlap_key(X0).
-inter_key_er_overlap_key(X0) :- object(X0),not inter_key_er_overlap_key(X0).
inter_key_er_shape_key(X0) :- key(X0),er_shape_key(X0).
-inter_key_er_shape_key(X0) :- object(X0),not inter_key_er_shape_key(X0).
inter_key_er_smaller_peg(X0) :- key(X0),er_smaller_peg(X0).
-inter_key_er_smaller_peg(X0) :- object(X0),not inter_key_er_smaller_peg(X0).
inter_key_er_below_peg(X0) :- key(X0),er_below_peg(X0).
-inter_key_er_below_peg(X0) :- object(X0),not inter_key_er_below_peg(X0).
inter_key_er_left_peg(X0) :- key(X0),er_left_peg(X0).
-inter_key_er_left_peg(X0) :- object(X0),not inter_key_er_left_peg(X0).
inter_key_er_overlap_peg(X0) :- key(X0),er_overlap_peg(X0).
-inter_key_er_overlap_peg(X0) :- object(X0),not inter_key_er_overlap_peg(X0).
inter_key_er_shape_peg(X0) :- key(X0),er_shape_peg(X0).
-inter_key_er_shape_peg(X0) :- object(X0),not inter_key_er_shape_peg(X0).
inter_key_er_smaller_disk(X0) :- key(X0),er_smaller_disk(X0).
-inter_key_er_smaller_disk(X0) :- object(X0),not inter_key_er_smaller_disk(X0).
inter_key_er_below_disk(X0) :- key(X0),er_below_disk(X0).
-inter_key_er_below_disk(X0) :- object(X0),not inter_key_er_below_disk(X0).
inter_key_er_left_disk(X0) :- key(X0),er_left_disk(X0).
-inter_key_er_left_disk(X0) :- object(X0),not inter_key_er_left_disk(X0).
inter_key_er_overlap_disk(X0) :- key(X0),er_overlap_disk(X0).
-inter_key_er_overlap_disk(X0) :- object(X0),not inter_key_er_overlap_disk(X0).
inter_key_er_shape_disk(X0) :- key(X0),er_shape_disk(X0).
-inter_key_er_shape_disk(X0) :- object(X0),not inter_key_er_shape_disk(X0).
inter_key_inter_verum_falsum(X0) :- key(X0),inter_verum_falsum(X0).
-inter_key_inter_verum_falsum(X0) :- object(X0),not inter_key_inter_verum_falsum(X0).
inter_key_inter_verum_key(X0) :- key(X0),inter_verum_key(X0).
-inter_key_inter_verum_key(X0) :- object(X0),not inter_key_inter_verum_key(X0).
inter_key_inter_verum_peg(X0) :- key(X0),inter_verum_peg(X0).
-inter_key_inter_verum_peg(X0) :- object(X0),not inter_key_inter_verum_peg(X0).
inter_key_inter_verum_disk(X0) :- key(X0),inter_verum_disk(X0).
-inter_key_inter_verum_disk(X0) :- object(X0),not inter_key_inter_verum_disk(X0).
inter_key_inter_falsum_key(X0) :- key(X0),inter_falsum_key(X0).
-inter_key_inter_falsum_key(X0) :- object(X0),not inter_key_inter_falsum_key(X0).
inter_key_inter_falsum_peg(X0) :- key(X0),inter_falsum_peg(X0).
-inter_key_inter_falsum_peg(X0) :- object(X0),not inter_key_inter_falsum_peg(X0).
inter_key_inter_falsum_disk(X0) :- key(X0),inter_falsum_disk(X0).
-inter_key_inter_falsum_disk(X0) :- object(X0),not inter_key_inter_falsum_disk(X0).
inter_key_inter_key_peg(X0) :- key(X0),inter_key_peg(X0).
-inter_key_inter_key_peg(X0) :- object(X0),not inter_key_inter_key_peg(X0).
inter_key_inter_key_disk(X0) :- key(X0),inter_key_disk(X0).
-inter_key_inter_key_disk(X0) :- object(X0),not inter_key_inter_key_disk(X0).
inter_key_inter_peg_disk(X0) :- key(X0),inter_peg_disk(X0).
-inter_key_inter_peg_disk(X0) :- object(X0),not inter_key_inter_peg_disk(X0).
inter_key_subset_verum_falsum(X0) :- key(X0),subset_verum_falsum(null).
-inter_key_subset_verum_falsum(X0) :- object(X0),not inter_key_subset_verum_falsum(X0).
inter_key_subset_verum_key(X0) :- key(X0),subset_verum_key(null).
-inter_key_subset_verum_key(X0) :- object(X0),not inter_key_subset_verum_key(X0).
inter_key_subset_verum_peg(X0) :- key(X0),subset_verum_peg(null).
-inter_key_subset_verum_peg(X0) :- object(X0),not inter_key_subset_verum_peg(X0).
inter_key_subset_verum_disk(X0) :- key(X0),subset_verum_disk(null).
-inter_key_subset_verum_disk(X0) :- object(X0),not inter_key_subset_verum_disk(X0).
inter_key_subset_falsum_key(X0) :- key(X0),subset_falsum_key(null).
-inter_key_subset_falsum_key(X0) :- object(X0),not inter_key_subset_falsum_key(X0).
inter_key_subset_falsum_peg(X0) :- key(X0),subset_falsum_peg(null).
-inter_key_subset_falsum_peg(X0) :- object(X0),not inter_key_subset_falsum_peg(X0).
inter_key_subset_falsum_disk(X0) :- key(X0),subset_falsum_disk(null).
-inter_key_subset_falsum_disk(X0) :- object(X0),not inter_key_subset_falsum_disk(X0).
inter_key_subset_key_peg(X0) :- key(X0),subset_key_peg(null).
-inter_key_subset_key_peg(X0) :- object(X0),not inter_key_subset_key_peg(X0).
inter_key_subset_key_disk(X0) :- key(X0),subset_key_disk(null).
-inter_key_subset_key_disk(X0) :- object(X0),not inter_key_subset_key_disk(X0).
inter_key_subset_peg_disk(X0) :- key(X0),subset_peg_disk(null).
-inter_key_subset_peg_disk(X0) :- object(X0),not inter_key_subset_peg_disk(X0).
inter_peg_er_smaller_verum(X0) :- peg(X0),er_smaller_verum(X0).
-inter_peg_er_smaller_verum(X0) :- object(X0),not inter_peg_er_smaller_verum(X0).
inter_peg_er_below_verum(X0) :- peg(X0),er_below_verum(X0).
-inter_peg_er_below_verum(X0) :- object(X0),not inter_peg_er_below_verum(X0).
inter_peg_er_left_verum(X0) :- peg(X0),er_left_verum(X0).
-inter_peg_er_left_verum(X0) :- object(X0),not inter_peg_er_left_verum(X0).
inter_peg_er_overlap_verum(X0) :- peg(X0),er_overlap_verum(X0).
-inter_peg_er_overlap_verum(X0) :- object(X0),not inter_peg_er_overlap_verum(X0).
inter_peg_er_shape_verum(X0) :- peg(X0),er_shape_verum(X0).
-inter_peg_er_shape_verum(X0) :- object(X0),not inter_peg_er_shape_verum(X0).
inter_peg_er_smaller_falsum(X0) :- peg(X0),er_smaller_falsum(X0).
-inter_peg_er_smaller_falsum(X0) :- object(X0),not inter_peg_er_smaller_falsum(X0).
inter_peg_er_below_falsum(X0) :- peg(X0),er_below_falsum(X0).
-inter_peg_er_below_falsum(X0) :- object(X0),not inter_peg_er_below_falsum(X0).
inter_peg_er_left_falsum(X0) :- peg(X0),er_left_falsum(X0).
-inter_peg_er_left_falsum(X0) :- object(X0),not inter_peg_er_left_falsum(X0).
inter_peg_er_overlap_falsum(X0) :- peg(X0),er_overlap_falsum(X0).
-inter_peg_er_overlap_falsum(X0) :- object(X0),not inter_peg_er_overlap_falsum(X0).
inter_peg_er_shape_falsum(X0) :- peg(X0),er_shape_falsum(X0).
-inter_peg_er_shape_falsum(X0) :- object(X0),not inter_peg_er_shape_falsum(X0).
inter_peg_er_smaller_key(X0) :- peg(X0),er_smaller_key(X0).
-inter_peg_er_smaller_key(X0) :- object(X0),not inter_peg_er_smaller_key(X0).
inter_peg_er_below_key(X0) :- peg(X0),er_below_key(X0).
-inter_peg_er_below_key(X0) :- object(X0),not inter_peg_er_below_key(X0).
inter_peg_er_left_key(X0) :- peg(X0),er_left_key(X0).
-inter_peg_er_left_key(X0) :- object(X0),not inter_peg_er_left_key(X0).
inter_peg_er_overlap_key(X0) :- peg(X0),er_overlap_key(X0).
-inter_peg_er_overlap_key(X0) :- object(X0),not inter_peg_er_overlap_key(X0).
inter_peg_er_shape_key(X0) :- peg(X0),er_shape_key(X0).
-inter_peg_er_shape_key(X0) :- object(X0),not inter_peg_er_shape_key(X0).
inter_peg_er_smaller_peg(X0) :- peg(X0),er_smaller_peg(X0).
-inter_peg_er_smaller_peg(X0) :- object(X0),not inter_peg_er_smaller_peg(X0).
inter_peg_er_below_peg(X0) :- peg(X0),er_below_peg(X0).
-inter_peg_er_below_peg(X0) :- object(X0),not inter_peg_er_below_peg(X0).
inter_peg_er_left_peg(X0) :- peg(X0),er_left_peg(X0).
-inter_peg_er_left_peg(X0) :- object(X0),not inter_peg_er_left_peg(X0).
inter_peg_er_overlap_peg(X0) :- peg(X0),er_overlap_peg(X0).
-inter_peg_er_overlap_peg(X0) :- object(X0),not inter_peg_er_overlap_peg(X0).
inter_peg_er_shape_peg(X0) :- peg(X0),er_shape_peg(X0).
-inter_peg_er_shape_peg(X0) :- object(X0),not inter_peg_er_shape_peg(X0).
inter_peg_er_smaller_disk(X0) :- peg(X0),er_smaller_disk(X0).
-inter_peg_er_smaller_disk(X0) :- object(X0),not inter_peg_er_smaller_disk(X0).
inter_peg_er_below_disk(X0) :- peg(X0),er_below_disk(X0).
-inter_peg_er_below_disk(X0) :- object(X0),not inter_peg_er_below_disk(X0).
inter_peg_er_left_disk(X0) :- peg(X0),er_left_disk(X0).
-inter_peg_er_left_disk(X0) :- object(X0),not inter_peg_er_left_disk(X0).
inter_peg_er_overlap_disk(X0) :- peg(X0),er_overlap_disk(X0).
-inter_peg_er_overlap_disk(X0) :- object(X0),not inter_peg_er_overlap_disk(X0).
inter_peg_er_shape_disk(X0) :- peg(X0),er_shape_disk(X0).
-inter_peg_er_shape_disk(X0) :- object(X0),not inter_peg_er_shape_disk(X0).
inter_peg_inter_verum_falsum(X0) :- peg(X0),inter_verum_falsum(X0).
-inter_peg_inter_verum_falsum(X0) :- object(X0),not inter_peg_inter_verum_falsum(X0).
inter_peg_inter_verum_key(X0) :- peg(X0),inter_verum_key(X0).
-inter_peg_inter_verum_key(X0) :- object(X0),not inter_peg_inter_verum_key(X0).
inter_peg_inter_verum_peg(X0) :- peg(X0),inter_verum_peg(X0).
-inter_peg_inter_verum_peg(X0) :- object(X0),not inter_peg_inter_verum_peg(X0).
inter_peg_inter_verum_disk(X0) :- peg(X0),inter_verum_disk(X0).
-inter_peg_inter_verum_disk(X0) :- object(X0),not inter_peg_inter_verum_disk(X0).
inter_peg_inter_falsum_key(X0) :- peg(X0),inter_falsum_key(X0).
-inter_peg_inter_falsum_key(X0) :- object(X0),not inter_peg_inter_falsum_key(X0).
inter_peg_inter_falsum_peg(X0) :- peg(X0),inter_falsum_peg(X0).
-inter_peg_inter_falsum_peg(X0) :- object(X0),not inter_peg_inter_falsum_peg(X0).
inter_peg_inter_falsum_disk(X0) :- peg(X0),inter_falsum_disk(X0).
-inter_peg_inter_falsum_disk(X0) :- object(X0),not inter_peg_inter_falsum_disk(X0).
inter_peg_inter_key_peg(X0) :- peg(X0),inter_key_peg(X0).
-inter_peg_inter_key_peg(X0) :- object(X0),not inter_peg_inter_key_peg(X0).
inter_peg_inter_key_disk(X0) :- peg(X0),inter_key_disk(X0).
-inter_peg_inter_key_disk(X0) :- object(X0),not inter_peg_inter_key_disk(X0).
inter_peg_inter_peg_disk(X0) :- peg(X0),inter_peg_disk(X0).
-inter_peg_inter_peg_disk(X0) :- object(X0),not inter_peg_inter_peg_disk(X0).
inter_peg_subset_verum_falsum(X0) :- peg(X0),subset_verum_falsum(null).
-inter_peg_subset_verum_falsum(X0) :- object(X0),not inter_peg_subset_verum_falsum(X0).
inter_peg_subset_verum_key(X0) :- peg(X0),subset_verum_key(null).
-inter_peg_subset_verum_key(X0) :- object(X0),not inter_peg_subset_verum_key(X0).
inter_peg_subset_verum_peg(X0) :- peg(X0),subset_verum_peg(null).
-inter_peg_subset_verum_peg(X0) :- object(X0),not inter_peg_subset_verum_peg(X0).
inter_peg_subset_verum_disk(X0) :- peg(X0),subset_verum_disk(null).
-inter_peg_subset_verum_disk(X0) :- object(X0),not inter_peg_subset_verum_disk(X0).
inter_peg_subset_falsum_key(X0) :- peg(X0),subset_falsum_key(null).
-inter_peg_subset_falsum_key(X0) :- object(X0),not inter_peg_subset_falsum_key(X0).
inter_peg_subset_falsum_peg(X0) :- peg(X0),subset_falsum_peg(null).
-inter_peg_subset_falsum_peg(X0) :- object(X0),not inter_peg_subset_falsum_peg(X0).
inter_peg_subset_falsum_disk(X0) :- peg(X0),subset_falsum_disk(null).
-inter_peg_subset_falsum_disk(X0) :- object(X0),not inter_peg_subset_falsum_disk(X0).
inter_peg_subset_key_peg(X0) :- peg(X0),subset_key_peg(null).
-inter_peg_subset_key_peg(X0) :- object(X0),not inter_peg_subset_key_peg(X0).
inter_peg_subset_key_disk(X0) :- peg(X0),subset_key_disk(null).
-inter_peg_subset_key_disk(X0) :- object(X0),not inter_peg_subset_key_disk(X0).
inter_peg_subset_peg_disk(X0) :- peg(X0),subset_peg_disk(null).
-inter_peg_subset_peg_disk(X0) :- object(X0),not inter_peg_subset_peg_disk(X0).
inter_disk_er_smaller_verum(X0) :- disk(X0),er_smaller_verum(X0).
-inter_disk_er_smaller_verum(X0) :- object(X0),not inter_disk_er_smaller_verum(X0).
inter_disk_er_below_verum(X0) :- disk(X0),er_below_verum(X0).
-inter_disk_er_below_verum(X0) :- object(X0),not inter_disk_er_below_verum(X0).
inter_disk_er_left_verum(X0) :- disk(X0),er_left_verum(X0).
-inter_disk_er_left_verum(X0) :- object(X0),not inter_disk_er_left_verum(X0).
inter_disk_er_overlap_verum(X0) :- disk(X0),er_overlap_verum(X0).
-inter_disk_er_overlap_verum(X0) :- object(X0),not inter_disk_er_overlap_verum(X0).
inter_disk_er_shape_verum(X0) :- disk(X0),er_shape_verum(X0).
-inter_disk_er_shape_verum(X0) :- object(X0),not inter_disk_er_shape_verum(X0).
inter_disk_er_smaller_falsum(X0) :- disk(X0),er_smaller_falsum(X0).
-inter_disk_er_smaller_falsum(X0) :- object(X0),not inter_disk_er_smaller_falsum(X0).
inter_disk_er_below_falsum(X0) :- disk(X0),er_below_falsum(X0).
-inter_disk_er_below_falsum(X0) :- object(X0),not inter_disk_er_below_falsum(X0).
inter_disk_er_left_falsum(X0) :- disk(X0),er_left_falsum(X0).
-inter_disk_er_left_falsum(X0) :- object(X0),not inter_disk_er_left_falsum(X0).
inter_disk_er_overlap_falsum(X0) :- disk(X0),er_overlap_falsum(X0).
-inter_disk_er_overlap_falsum(X0) :- object(X0),not inter_disk_er_overlap_falsum(X0).
inter_disk_er_shape_falsum(X0) :- disk(X0),er_shape_falsum(X0).
-inter_disk_er_shape_falsum(X0) :- object(X0),not inter_disk_er_shape_falsum(X0).
inter_disk_er_smaller_key(X0) :- disk(X0),er_smaller_key(X0).
-inter_disk_er_smaller_key(X0) :- object(X0),not inter_disk_er_smaller_key(X0).
inter_disk_er_below_key(X0) :- disk(X0),er_below_key(X0).
-inter_disk_er_below_key(X0) :- object(X0),not inter_disk_er_below_key(X0).
inter_disk_er_left_key(X0) :- disk(X0),er_left_key(X0).
-inter_disk_er_left_key(X0) :- object(X0),not inter_disk_er_left_key(X0).
inter_disk_er_overlap_key(X0) :- disk(X0),er_overlap_key(X0).
-inter_disk_er_overlap_key(X0) :- object(X0),not inter_disk_er_overlap_key(X0).
inter_disk_er_shape_key(X0) :- disk(X0),er_shape_key(X0).
-inter_disk_er_shape_key(X0) :- object(X0),not inter_disk_er_shape_key(X0).
inter_disk_er_smaller_peg(X0) :- disk(X0),er_smaller_peg(X0).
-inter_disk_er_smaller_peg(X0) :- object(X0),not inter_disk_er_smaller_peg(X0).
inter_disk_er_below_peg(X0) :- disk(X0),er_below_peg(X0).
-inter_disk_er_below_peg(X0) :- object(X0),not inter_disk_er_below_peg(X0).
inter_disk_er_left_peg(X0) :- disk(X0),er_left_peg(X0).
-inter_disk_er_left_peg(X0) :- object(X0),not inter_disk_er_left_peg(X0).
inter_disk_er_overlap_peg(X0) :- disk(X0),er_overlap_peg(X0).
-inter_disk_er_overlap_peg(X0) :- object(X0),not inter_disk_er_overlap_peg(X0).
inter_disk_er_shape_peg(X0) :- disk(X0),er_shape_peg(X0).
-inter_disk_er_shape_peg(X0) :- object(X0),not inter_disk_er_shape_peg(X0).
inter_disk_er_smaller_disk(X0) :- disk(X0),er_smaller_disk(X0).
-inter_disk_er_smaller_disk(X0) :- object(X0),not inter_disk_er_smaller_disk(X0).
inter_disk_er_below_disk(X0) :- disk(X0),er_below_disk(X0).
-inter_disk_er_below_disk(X0) :- object(X0),not inter_disk_er_below_disk(X0).
inter_disk_er_left_disk(X0) :- disk(X0),er_left_disk(X0).
-inter_disk_er_left_disk(X0) :- object(X0),not inter_disk_er_left_disk(X0).
inter_disk_er_overlap_disk(X0) :- disk(X0),er_overlap_disk(X0).
-inter_disk_er_overlap_disk(X0) :- object(X0),not inter_disk_er_overlap_disk(X0).
inter_disk_er_shape_disk(X0) :- disk(X0),er_shape_disk(X0).
-inter_disk_er_shape_disk(X0) :- object(X0),not inter_disk_er_shape_disk(X0).
inter_disk_inter_verum_falsum(X0) :- disk(X0),inter_verum_falsum(X0).
-inter_disk_inter_verum_falsum(X0) :- object(X0),not inter_disk_inter_verum_falsum(X0).
inter_disk_inter_verum_key(X0) :- disk(X0),inter_verum_key(X0).
-inter_disk_inter_verum_key(X0) :- object(X0),not inter_disk_inter_verum_key(X0).
inter_disk_inter_verum_peg(X0) :- disk(X0),inter_verum_peg(X0).
-inter_disk_inter_verum_peg(X0) :- object(X0),not inter_disk_inter_verum_peg(X0).
inter_disk_inter_verum_disk(X0) :- disk(X0),inter_verum_disk(X0).
-inter_disk_inter_verum_disk(X0) :- object(X0),not inter_disk_inter_verum_disk(X0).
inter_disk_inter_falsum_key(X0) :- disk(X0),inter_falsum_key(X0).
-inter_disk_inter_falsum_key(X0) :- object(X0),not inter_disk_inter_falsum_key(X0).
inter_disk_inter_falsum_peg(X0) :- disk(X0),inter_falsum_peg(X0).
-inter_disk_inter_falsum_peg(X0) :- object(X0),not inter_disk_inter_falsum_peg(X0).
inter_disk_inter_falsum_disk(X0) :- disk(X0),inter_falsum_disk(X0).
-inter_disk_inter_falsum_disk(X0) :- object(X0),not inter_disk_inter_falsum_disk(X0).
inter_disk_inter_key_peg(X0) :- disk(X0),inter_key_peg(X0).
-inter_disk_inter_key_peg(X0) :- object(X0),not inter_disk_inter_key_peg(X0).
inter_disk_inter_key_disk(X0) :- disk(X0),inter_key_disk(X0).
-inter_disk_inter_key_disk(X0) :- object(X0),not inter_disk_inter_key_disk(X0).
inter_disk_inter_peg_disk(X0) :- disk(X0),inter_peg_disk(X0).
-inter_disk_inter_peg_disk(X0) :- object(X0),not inter_disk_inter_peg_disk(X0).
inter_disk_subset_verum_falsum(X0) :- disk(X0),subset_verum_falsum(null).
-inter_disk_subset_verum_falsum(X0) :- object(X0),not inter_disk_subset_verum_falsum(X0).
inter_disk_subset_verum_key(X0) :- disk(X0),subset_verum_key(null).
-inter_disk_subset_verum_key(X0) :- object(X0),not inter_disk_subset_verum_key(X0).
inter_disk_subset_verum_peg(X0) :- disk(X0),subset_verum_peg(null).
-inter_disk_subset_verum_peg(X0) :- object(X0),not inter_disk_subset_verum_peg(X0).
inter_disk_subset_verum_disk(X0) :- disk(X0),subset_verum_disk(null).
-inter_disk_subset_verum_disk(X0) :- object(X0),not inter_disk_subset_verum_disk(X0).
inter_disk_subset_falsum_key(X0) :- disk(X0),subset_falsum_key(null).
-inter_disk_subset_falsum_key(X0) :- object(X0),not inter_disk_subset_falsum_key(X0).
inter_disk_subset_falsum_peg(X0) :- disk(X0),subset_falsum_peg(null).
-inter_disk_subset_falsum_peg(X0) :- object(X0),not inter_disk_subset_falsum_peg(X0).
inter_disk_subset_falsum_disk(X0) :- disk(X0),subset_falsum_disk(null).
-inter_disk_subset_falsum_disk(X0) :- object(X0),not inter_disk_subset_falsum_disk(X0).
inter_disk_subset_key_peg(X0) :- disk(X0),subset_key_peg(null).
-inter_disk_subset_key_peg(X0) :- object(X0),not inter_disk_subset_key_peg(X0).
inter_disk_subset_key_disk(X0) :- disk(X0),subset_key_disk(null).
-inter_disk_subset_key_disk(X0) :- object(X0),not inter_disk_subset_key_disk(X0).
inter_disk_subset_peg_disk(X0) :- disk(X0),subset_peg_disk(null).
-inter_disk_subset_peg_disk(X0) :- object(X0),not inter_disk_subset_peg_disk(X0).
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
inter_er_smaller_verum_er_smaller_key(X0) :- er_smaller_verum(X0),er_smaller_key(X0).
-inter_er_smaller_verum_er_smaller_key(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_key(X0).
inter_er_smaller_verum_er_below_key(X0) :- er_smaller_verum(X0),er_below_key(X0).
-inter_er_smaller_verum_er_below_key(X0) :- object(X0),not inter_er_smaller_verum_er_below_key(X0).
inter_er_smaller_verum_er_left_key(X0) :- er_smaller_verum(X0),er_left_key(X0).
-inter_er_smaller_verum_er_left_key(X0) :- object(X0),not inter_er_smaller_verum_er_left_key(X0).
inter_er_smaller_verum_er_overlap_key(X0) :- er_smaller_verum(X0),er_overlap_key(X0).
-inter_er_smaller_verum_er_overlap_key(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_key(X0).
inter_er_smaller_verum_er_shape_key(X0) :- er_smaller_verum(X0),er_shape_key(X0).
-inter_er_smaller_verum_er_shape_key(X0) :- object(X0),not inter_er_smaller_verum_er_shape_key(X0).
inter_er_smaller_verum_er_smaller_peg(X0) :- er_smaller_verum(X0),er_smaller_peg(X0).
-inter_er_smaller_verum_er_smaller_peg(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_peg(X0).
inter_er_smaller_verum_er_below_peg(X0) :- er_smaller_verum(X0),er_below_peg(X0).
-inter_er_smaller_verum_er_below_peg(X0) :- object(X0),not inter_er_smaller_verum_er_below_peg(X0).
inter_er_smaller_verum_er_left_peg(X0) :- er_smaller_verum(X0),er_left_peg(X0).
-inter_er_smaller_verum_er_left_peg(X0) :- object(X0),not inter_er_smaller_verum_er_left_peg(X0).
inter_er_smaller_verum_er_overlap_peg(X0) :- er_smaller_verum(X0),er_overlap_peg(X0).
-inter_er_smaller_verum_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_peg(X0).
inter_er_smaller_verum_er_shape_peg(X0) :- er_smaller_verum(X0),er_shape_peg(X0).
-inter_er_smaller_verum_er_shape_peg(X0) :- object(X0),not inter_er_smaller_verum_er_shape_peg(X0).
inter_er_smaller_verum_er_smaller_disk(X0) :- er_smaller_verum(X0),er_smaller_disk(X0).
-inter_er_smaller_verum_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_disk(X0).
inter_er_smaller_verum_er_below_disk(X0) :- er_smaller_verum(X0),er_below_disk(X0).
-inter_er_smaller_verum_er_below_disk(X0) :- object(X0),not inter_er_smaller_verum_er_below_disk(X0).
inter_er_smaller_verum_er_left_disk(X0) :- er_smaller_verum(X0),er_left_disk(X0).
-inter_er_smaller_verum_er_left_disk(X0) :- object(X0),not inter_er_smaller_verum_er_left_disk(X0).
inter_er_smaller_verum_er_overlap_disk(X0) :- er_smaller_verum(X0),er_overlap_disk(X0).
-inter_er_smaller_verum_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_disk(X0).
inter_er_smaller_verum_er_shape_disk(X0) :- er_smaller_verum(X0),er_shape_disk(X0).
-inter_er_smaller_verum_er_shape_disk(X0) :- object(X0),not inter_er_smaller_verum_er_shape_disk(X0).
inter_er_smaller_verum_inter_verum_falsum(X0) :- er_smaller_verum(X0),inter_verum_falsum(X0).
-inter_er_smaller_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_falsum(X0).
inter_er_smaller_verum_inter_verum_key(X0) :- er_smaller_verum(X0),inter_verum_key(X0).
-inter_er_smaller_verum_inter_verum_key(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_key(X0).
inter_er_smaller_verum_inter_verum_peg(X0) :- er_smaller_verum(X0),inter_verum_peg(X0).
-inter_er_smaller_verum_inter_verum_peg(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_peg(X0).
inter_er_smaller_verum_inter_verum_disk(X0) :- er_smaller_verum(X0),inter_verum_disk(X0).
-inter_er_smaller_verum_inter_verum_disk(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_disk(X0).
inter_er_smaller_verum_inter_falsum_key(X0) :- er_smaller_verum(X0),inter_falsum_key(X0).
-inter_er_smaller_verum_inter_falsum_key(X0) :- object(X0),not inter_er_smaller_verum_inter_falsum_key(X0).
inter_er_smaller_verum_inter_falsum_peg(X0) :- er_smaller_verum(X0),inter_falsum_peg(X0).
-inter_er_smaller_verum_inter_falsum_peg(X0) :- object(X0),not inter_er_smaller_verum_inter_falsum_peg(X0).
inter_er_smaller_verum_inter_falsum_disk(X0) :- er_smaller_verum(X0),inter_falsum_disk(X0).
-inter_er_smaller_verum_inter_falsum_disk(X0) :- object(X0),not inter_er_smaller_verum_inter_falsum_disk(X0).
inter_er_smaller_verum_inter_key_peg(X0) :- er_smaller_verum(X0),inter_key_peg(X0).
-inter_er_smaller_verum_inter_key_peg(X0) :- object(X0),not inter_er_smaller_verum_inter_key_peg(X0).
inter_er_smaller_verum_inter_key_disk(X0) :- er_smaller_verum(X0),inter_key_disk(X0).
-inter_er_smaller_verum_inter_key_disk(X0) :- object(X0),not inter_er_smaller_verum_inter_key_disk(X0).
inter_er_smaller_verum_inter_peg_disk(X0) :- er_smaller_verum(X0),inter_peg_disk(X0).
-inter_er_smaller_verum_inter_peg_disk(X0) :- object(X0),not inter_er_smaller_verum_inter_peg_disk(X0).
inter_er_smaller_verum_subset_verum_falsum(X0) :- er_smaller_verum(X0),subset_verum_falsum(null).
-inter_er_smaller_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_falsum(X0).
inter_er_smaller_verum_subset_verum_key(X0) :- er_smaller_verum(X0),subset_verum_key(null).
-inter_er_smaller_verum_subset_verum_key(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_key(X0).
inter_er_smaller_verum_subset_verum_peg(X0) :- er_smaller_verum(X0),subset_verum_peg(null).
-inter_er_smaller_verum_subset_verum_peg(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_peg(X0).
inter_er_smaller_verum_subset_verum_disk(X0) :- er_smaller_verum(X0),subset_verum_disk(null).
-inter_er_smaller_verum_subset_verum_disk(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_disk(X0).
inter_er_smaller_verum_subset_falsum_key(X0) :- er_smaller_verum(X0),subset_falsum_key(null).
-inter_er_smaller_verum_subset_falsum_key(X0) :- object(X0),not inter_er_smaller_verum_subset_falsum_key(X0).
inter_er_smaller_verum_subset_falsum_peg(X0) :- er_smaller_verum(X0),subset_falsum_peg(null).
-inter_er_smaller_verum_subset_falsum_peg(X0) :- object(X0),not inter_er_smaller_verum_subset_falsum_peg(X0).
inter_er_smaller_verum_subset_falsum_disk(X0) :- er_smaller_verum(X0),subset_falsum_disk(null).
-inter_er_smaller_verum_subset_falsum_disk(X0) :- object(X0),not inter_er_smaller_verum_subset_falsum_disk(X0).
inter_er_smaller_verum_subset_key_peg(X0) :- er_smaller_verum(X0),subset_key_peg(null).
-inter_er_smaller_verum_subset_key_peg(X0) :- object(X0),not inter_er_smaller_verum_subset_key_peg(X0).
inter_er_smaller_verum_subset_key_disk(X0) :- er_smaller_verum(X0),subset_key_disk(null).
-inter_er_smaller_verum_subset_key_disk(X0) :- object(X0),not inter_er_smaller_verum_subset_key_disk(X0).
inter_er_smaller_verum_subset_peg_disk(X0) :- er_smaller_verum(X0),subset_peg_disk(null).
-inter_er_smaller_verum_subset_peg_disk(X0) :- object(X0),not inter_er_smaller_verum_subset_peg_disk(X0).
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
inter_er_below_verum_er_smaller_key(X0) :- er_below_verum(X0),er_smaller_key(X0).
-inter_er_below_verum_er_smaller_key(X0) :- object(X0),not inter_er_below_verum_er_smaller_key(X0).
inter_er_below_verum_er_below_key(X0) :- er_below_verum(X0),er_below_key(X0).
-inter_er_below_verum_er_below_key(X0) :- object(X0),not inter_er_below_verum_er_below_key(X0).
inter_er_below_verum_er_left_key(X0) :- er_below_verum(X0),er_left_key(X0).
-inter_er_below_verum_er_left_key(X0) :- object(X0),not inter_er_below_verum_er_left_key(X0).
inter_er_below_verum_er_overlap_key(X0) :- er_below_verum(X0),er_overlap_key(X0).
-inter_er_below_verum_er_overlap_key(X0) :- object(X0),not inter_er_below_verum_er_overlap_key(X0).
inter_er_below_verum_er_shape_key(X0) :- er_below_verum(X0),er_shape_key(X0).
-inter_er_below_verum_er_shape_key(X0) :- object(X0),not inter_er_below_verum_er_shape_key(X0).
inter_er_below_verum_er_smaller_peg(X0) :- er_below_verum(X0),er_smaller_peg(X0).
-inter_er_below_verum_er_smaller_peg(X0) :- object(X0),not inter_er_below_verum_er_smaller_peg(X0).
inter_er_below_verum_er_below_peg(X0) :- er_below_verum(X0),er_below_peg(X0).
-inter_er_below_verum_er_below_peg(X0) :- object(X0),not inter_er_below_verum_er_below_peg(X0).
inter_er_below_verum_er_left_peg(X0) :- er_below_verum(X0),er_left_peg(X0).
-inter_er_below_verum_er_left_peg(X0) :- object(X0),not inter_er_below_verum_er_left_peg(X0).
inter_er_below_verum_er_overlap_peg(X0) :- er_below_verum(X0),er_overlap_peg(X0).
-inter_er_below_verum_er_overlap_peg(X0) :- object(X0),not inter_er_below_verum_er_overlap_peg(X0).
inter_er_below_verum_er_shape_peg(X0) :- er_below_verum(X0),er_shape_peg(X0).
-inter_er_below_verum_er_shape_peg(X0) :- object(X0),not inter_er_below_verum_er_shape_peg(X0).
inter_er_below_verum_er_smaller_disk(X0) :- er_below_verum(X0),er_smaller_disk(X0).
-inter_er_below_verum_er_smaller_disk(X0) :- object(X0),not inter_er_below_verum_er_smaller_disk(X0).
inter_er_below_verum_er_below_disk(X0) :- er_below_verum(X0),er_below_disk(X0).
-inter_er_below_verum_er_below_disk(X0) :- object(X0),not inter_er_below_verum_er_below_disk(X0).
inter_er_below_verum_er_left_disk(X0) :- er_below_verum(X0),er_left_disk(X0).
-inter_er_below_verum_er_left_disk(X0) :- object(X0),not inter_er_below_verum_er_left_disk(X0).
inter_er_below_verum_er_overlap_disk(X0) :- er_below_verum(X0),er_overlap_disk(X0).
-inter_er_below_verum_er_overlap_disk(X0) :- object(X0),not inter_er_below_verum_er_overlap_disk(X0).
inter_er_below_verum_er_shape_disk(X0) :- er_below_verum(X0),er_shape_disk(X0).
-inter_er_below_verum_er_shape_disk(X0) :- object(X0),not inter_er_below_verum_er_shape_disk(X0).
inter_er_below_verum_inter_verum_falsum(X0) :- er_below_verum(X0),inter_verum_falsum(X0).
-inter_er_below_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_below_verum_inter_verum_falsum(X0).
inter_er_below_verum_inter_verum_key(X0) :- er_below_verum(X0),inter_verum_key(X0).
-inter_er_below_verum_inter_verum_key(X0) :- object(X0),not inter_er_below_verum_inter_verum_key(X0).
inter_er_below_verum_inter_verum_peg(X0) :- er_below_verum(X0),inter_verum_peg(X0).
-inter_er_below_verum_inter_verum_peg(X0) :- object(X0),not inter_er_below_verum_inter_verum_peg(X0).
inter_er_below_verum_inter_verum_disk(X0) :- er_below_verum(X0),inter_verum_disk(X0).
-inter_er_below_verum_inter_verum_disk(X0) :- object(X0),not inter_er_below_verum_inter_verum_disk(X0).
inter_er_below_verum_inter_falsum_key(X0) :- er_below_verum(X0),inter_falsum_key(X0).
-inter_er_below_verum_inter_falsum_key(X0) :- object(X0),not inter_er_below_verum_inter_falsum_key(X0).
inter_er_below_verum_inter_falsum_peg(X0) :- er_below_verum(X0),inter_falsum_peg(X0).
-inter_er_below_verum_inter_falsum_peg(X0) :- object(X0),not inter_er_below_verum_inter_falsum_peg(X0).
inter_er_below_verum_inter_falsum_disk(X0) :- er_below_verum(X0),inter_falsum_disk(X0).
-inter_er_below_verum_inter_falsum_disk(X0) :- object(X0),not inter_er_below_verum_inter_falsum_disk(X0).
inter_er_below_verum_inter_key_peg(X0) :- er_below_verum(X0),inter_key_peg(X0).
-inter_er_below_verum_inter_key_peg(X0) :- object(X0),not inter_er_below_verum_inter_key_peg(X0).
inter_er_below_verum_inter_key_disk(X0) :- er_below_verum(X0),inter_key_disk(X0).
-inter_er_below_verum_inter_key_disk(X0) :- object(X0),not inter_er_below_verum_inter_key_disk(X0).
inter_er_below_verum_inter_peg_disk(X0) :- er_below_verum(X0),inter_peg_disk(X0).
-inter_er_below_verum_inter_peg_disk(X0) :- object(X0),not inter_er_below_verum_inter_peg_disk(X0).
inter_er_below_verum_subset_verum_falsum(X0) :- er_below_verum(X0),subset_verum_falsum(null).
-inter_er_below_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_below_verum_subset_verum_falsum(X0).
inter_er_below_verum_subset_verum_key(X0) :- er_below_verum(X0),subset_verum_key(null).
-inter_er_below_verum_subset_verum_key(X0) :- object(X0),not inter_er_below_verum_subset_verum_key(X0).
inter_er_below_verum_subset_verum_peg(X0) :- er_below_verum(X0),subset_verum_peg(null).
-inter_er_below_verum_subset_verum_peg(X0) :- object(X0),not inter_er_below_verum_subset_verum_peg(X0).
inter_er_below_verum_subset_verum_disk(X0) :- er_below_verum(X0),subset_verum_disk(null).
-inter_er_below_verum_subset_verum_disk(X0) :- object(X0),not inter_er_below_verum_subset_verum_disk(X0).
inter_er_below_verum_subset_falsum_key(X0) :- er_below_verum(X0),subset_falsum_key(null).
-inter_er_below_verum_subset_falsum_key(X0) :- object(X0),not inter_er_below_verum_subset_falsum_key(X0).
inter_er_below_verum_subset_falsum_peg(X0) :- er_below_verum(X0),subset_falsum_peg(null).
-inter_er_below_verum_subset_falsum_peg(X0) :- object(X0),not inter_er_below_verum_subset_falsum_peg(X0).
inter_er_below_verum_subset_falsum_disk(X0) :- er_below_verum(X0),subset_falsum_disk(null).
-inter_er_below_verum_subset_falsum_disk(X0) :- object(X0),not inter_er_below_verum_subset_falsum_disk(X0).
inter_er_below_verum_subset_key_peg(X0) :- er_below_verum(X0),subset_key_peg(null).
-inter_er_below_verum_subset_key_peg(X0) :- object(X0),not inter_er_below_verum_subset_key_peg(X0).
inter_er_below_verum_subset_key_disk(X0) :- er_below_verum(X0),subset_key_disk(null).
-inter_er_below_verum_subset_key_disk(X0) :- object(X0),not inter_er_below_verum_subset_key_disk(X0).
inter_er_below_verum_subset_peg_disk(X0) :- er_below_verum(X0),subset_peg_disk(null).
-inter_er_below_verum_subset_peg_disk(X0) :- object(X0),not inter_er_below_verum_subset_peg_disk(X0).
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
inter_er_left_verum_er_smaller_key(X0) :- er_left_verum(X0),er_smaller_key(X0).
-inter_er_left_verum_er_smaller_key(X0) :- object(X0),not inter_er_left_verum_er_smaller_key(X0).
inter_er_left_verum_er_below_key(X0) :- er_left_verum(X0),er_below_key(X0).
-inter_er_left_verum_er_below_key(X0) :- object(X0),not inter_er_left_verum_er_below_key(X0).
inter_er_left_verum_er_left_key(X0) :- er_left_verum(X0),er_left_key(X0).
-inter_er_left_verum_er_left_key(X0) :- object(X0),not inter_er_left_verum_er_left_key(X0).
inter_er_left_verum_er_overlap_key(X0) :- er_left_verum(X0),er_overlap_key(X0).
-inter_er_left_verum_er_overlap_key(X0) :- object(X0),not inter_er_left_verum_er_overlap_key(X0).
inter_er_left_verum_er_shape_key(X0) :- er_left_verum(X0),er_shape_key(X0).
-inter_er_left_verum_er_shape_key(X0) :- object(X0),not inter_er_left_verum_er_shape_key(X0).
inter_er_left_verum_er_smaller_peg(X0) :- er_left_verum(X0),er_smaller_peg(X0).
-inter_er_left_verum_er_smaller_peg(X0) :- object(X0),not inter_er_left_verum_er_smaller_peg(X0).
inter_er_left_verum_er_below_peg(X0) :- er_left_verum(X0),er_below_peg(X0).
-inter_er_left_verum_er_below_peg(X0) :- object(X0),not inter_er_left_verum_er_below_peg(X0).
inter_er_left_verum_er_left_peg(X0) :- er_left_verum(X0),er_left_peg(X0).
-inter_er_left_verum_er_left_peg(X0) :- object(X0),not inter_er_left_verum_er_left_peg(X0).
inter_er_left_verum_er_overlap_peg(X0) :- er_left_verum(X0),er_overlap_peg(X0).
-inter_er_left_verum_er_overlap_peg(X0) :- object(X0),not inter_er_left_verum_er_overlap_peg(X0).
inter_er_left_verum_er_shape_peg(X0) :- er_left_verum(X0),er_shape_peg(X0).
-inter_er_left_verum_er_shape_peg(X0) :- object(X0),not inter_er_left_verum_er_shape_peg(X0).
inter_er_left_verum_er_smaller_disk(X0) :- er_left_verum(X0),er_smaller_disk(X0).
-inter_er_left_verum_er_smaller_disk(X0) :- object(X0),not inter_er_left_verum_er_smaller_disk(X0).
inter_er_left_verum_er_below_disk(X0) :- er_left_verum(X0),er_below_disk(X0).
-inter_er_left_verum_er_below_disk(X0) :- object(X0),not inter_er_left_verum_er_below_disk(X0).
inter_er_left_verum_er_left_disk(X0) :- er_left_verum(X0),er_left_disk(X0).
-inter_er_left_verum_er_left_disk(X0) :- object(X0),not inter_er_left_verum_er_left_disk(X0).
inter_er_left_verum_er_overlap_disk(X0) :- er_left_verum(X0),er_overlap_disk(X0).
-inter_er_left_verum_er_overlap_disk(X0) :- object(X0),not inter_er_left_verum_er_overlap_disk(X0).
inter_er_left_verum_er_shape_disk(X0) :- er_left_verum(X0),er_shape_disk(X0).
-inter_er_left_verum_er_shape_disk(X0) :- object(X0),not inter_er_left_verum_er_shape_disk(X0).
inter_er_left_verum_inter_verum_falsum(X0) :- er_left_verum(X0),inter_verum_falsum(X0).
-inter_er_left_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_left_verum_inter_verum_falsum(X0).
inter_er_left_verum_inter_verum_key(X0) :- er_left_verum(X0),inter_verum_key(X0).
-inter_er_left_verum_inter_verum_key(X0) :- object(X0),not inter_er_left_verum_inter_verum_key(X0).
inter_er_left_verum_inter_verum_peg(X0) :- er_left_verum(X0),inter_verum_peg(X0).
-inter_er_left_verum_inter_verum_peg(X0) :- object(X0),not inter_er_left_verum_inter_verum_peg(X0).
inter_er_left_verum_inter_verum_disk(X0) :- er_left_verum(X0),inter_verum_disk(X0).
-inter_er_left_verum_inter_verum_disk(X0) :- object(X0),not inter_er_left_verum_inter_verum_disk(X0).
inter_er_left_verum_inter_falsum_key(X0) :- er_left_verum(X0),inter_falsum_key(X0).
-inter_er_left_verum_inter_falsum_key(X0) :- object(X0),not inter_er_left_verum_inter_falsum_key(X0).
inter_er_left_verum_inter_falsum_peg(X0) :- er_left_verum(X0),inter_falsum_peg(X0).
-inter_er_left_verum_inter_falsum_peg(X0) :- object(X0),not inter_er_left_verum_inter_falsum_peg(X0).
inter_er_left_verum_inter_falsum_disk(X0) :- er_left_verum(X0),inter_falsum_disk(X0).
-inter_er_left_verum_inter_falsum_disk(X0) :- object(X0),not inter_er_left_verum_inter_falsum_disk(X0).
inter_er_left_verum_inter_key_peg(X0) :- er_left_verum(X0),inter_key_peg(X0).
-inter_er_left_verum_inter_key_peg(X0) :- object(X0),not inter_er_left_verum_inter_key_peg(X0).
inter_er_left_verum_inter_key_disk(X0) :- er_left_verum(X0),inter_key_disk(X0).
-inter_er_left_verum_inter_key_disk(X0) :- object(X0),not inter_er_left_verum_inter_key_disk(X0).
inter_er_left_verum_inter_peg_disk(X0) :- er_left_verum(X0),inter_peg_disk(X0).
-inter_er_left_verum_inter_peg_disk(X0) :- object(X0),not inter_er_left_verum_inter_peg_disk(X0).
inter_er_left_verum_subset_verum_falsum(X0) :- er_left_verum(X0),subset_verum_falsum(null).
-inter_er_left_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_left_verum_subset_verum_falsum(X0).
inter_er_left_verum_subset_verum_key(X0) :- er_left_verum(X0),subset_verum_key(null).
-inter_er_left_verum_subset_verum_key(X0) :- object(X0),not inter_er_left_verum_subset_verum_key(X0).
inter_er_left_verum_subset_verum_peg(X0) :- er_left_verum(X0),subset_verum_peg(null).
-inter_er_left_verum_subset_verum_peg(X0) :- object(X0),not inter_er_left_verum_subset_verum_peg(X0).
inter_er_left_verum_subset_verum_disk(X0) :- er_left_verum(X0),subset_verum_disk(null).
-inter_er_left_verum_subset_verum_disk(X0) :- object(X0),not inter_er_left_verum_subset_verum_disk(X0).
inter_er_left_verum_subset_falsum_key(X0) :- er_left_verum(X0),subset_falsum_key(null).
-inter_er_left_verum_subset_falsum_key(X0) :- object(X0),not inter_er_left_verum_subset_falsum_key(X0).
inter_er_left_verum_subset_falsum_peg(X0) :- er_left_verum(X0),subset_falsum_peg(null).
-inter_er_left_verum_subset_falsum_peg(X0) :- object(X0),not inter_er_left_verum_subset_falsum_peg(X0).
inter_er_left_verum_subset_falsum_disk(X0) :- er_left_verum(X0),subset_falsum_disk(null).
-inter_er_left_verum_subset_falsum_disk(X0) :- object(X0),not inter_er_left_verum_subset_falsum_disk(X0).
inter_er_left_verum_subset_key_peg(X0) :- er_left_verum(X0),subset_key_peg(null).
-inter_er_left_verum_subset_key_peg(X0) :- object(X0),not inter_er_left_verum_subset_key_peg(X0).
inter_er_left_verum_subset_key_disk(X0) :- er_left_verum(X0),subset_key_disk(null).
-inter_er_left_verum_subset_key_disk(X0) :- object(X0),not inter_er_left_verum_subset_key_disk(X0).
inter_er_left_verum_subset_peg_disk(X0) :- er_left_verum(X0),subset_peg_disk(null).
-inter_er_left_verum_subset_peg_disk(X0) :- object(X0),not inter_er_left_verum_subset_peg_disk(X0).
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
inter_er_overlap_verum_er_smaller_key(X0) :- er_overlap_verum(X0),er_smaller_key(X0).
-inter_er_overlap_verum_er_smaller_key(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_key(X0).
inter_er_overlap_verum_er_below_key(X0) :- er_overlap_verum(X0),er_below_key(X0).
-inter_er_overlap_verum_er_below_key(X0) :- object(X0),not inter_er_overlap_verum_er_below_key(X0).
inter_er_overlap_verum_er_left_key(X0) :- er_overlap_verum(X0),er_left_key(X0).
-inter_er_overlap_verum_er_left_key(X0) :- object(X0),not inter_er_overlap_verum_er_left_key(X0).
inter_er_overlap_verum_er_overlap_key(X0) :- er_overlap_verum(X0),er_overlap_key(X0).
-inter_er_overlap_verum_er_overlap_key(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_key(X0).
inter_er_overlap_verum_er_shape_key(X0) :- er_overlap_verum(X0),er_shape_key(X0).
-inter_er_overlap_verum_er_shape_key(X0) :- object(X0),not inter_er_overlap_verum_er_shape_key(X0).
inter_er_overlap_verum_er_smaller_peg(X0) :- er_overlap_verum(X0),er_smaller_peg(X0).
-inter_er_overlap_verum_er_smaller_peg(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_peg(X0).
inter_er_overlap_verum_er_below_peg(X0) :- er_overlap_verum(X0),er_below_peg(X0).
-inter_er_overlap_verum_er_below_peg(X0) :- object(X0),not inter_er_overlap_verum_er_below_peg(X0).
inter_er_overlap_verum_er_left_peg(X0) :- er_overlap_verum(X0),er_left_peg(X0).
-inter_er_overlap_verum_er_left_peg(X0) :- object(X0),not inter_er_overlap_verum_er_left_peg(X0).
inter_er_overlap_verum_er_overlap_peg(X0) :- er_overlap_verum(X0),er_overlap_peg(X0).
-inter_er_overlap_verum_er_overlap_peg(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_peg(X0).
inter_er_overlap_verum_er_shape_peg(X0) :- er_overlap_verum(X0),er_shape_peg(X0).
-inter_er_overlap_verum_er_shape_peg(X0) :- object(X0),not inter_er_overlap_verum_er_shape_peg(X0).
inter_er_overlap_verum_er_smaller_disk(X0) :- er_overlap_verum(X0),er_smaller_disk(X0).
-inter_er_overlap_verum_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_disk(X0).
inter_er_overlap_verum_er_below_disk(X0) :- er_overlap_verum(X0),er_below_disk(X0).
-inter_er_overlap_verum_er_below_disk(X0) :- object(X0),not inter_er_overlap_verum_er_below_disk(X0).
inter_er_overlap_verum_er_left_disk(X0) :- er_overlap_verum(X0),er_left_disk(X0).
-inter_er_overlap_verum_er_left_disk(X0) :- object(X0),not inter_er_overlap_verum_er_left_disk(X0).
inter_er_overlap_verum_er_overlap_disk(X0) :- er_overlap_verum(X0),er_overlap_disk(X0).
-inter_er_overlap_verum_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_disk(X0).
inter_er_overlap_verum_er_shape_disk(X0) :- er_overlap_verum(X0),er_shape_disk(X0).
-inter_er_overlap_verum_er_shape_disk(X0) :- object(X0),not inter_er_overlap_verum_er_shape_disk(X0).
inter_er_overlap_verum_inter_verum_falsum(X0) :- er_overlap_verum(X0),inter_verum_falsum(X0).
-inter_er_overlap_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_falsum(X0).
inter_er_overlap_verum_inter_verum_key(X0) :- er_overlap_verum(X0),inter_verum_key(X0).
-inter_er_overlap_verum_inter_verum_key(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_key(X0).
inter_er_overlap_verum_inter_verum_peg(X0) :- er_overlap_verum(X0),inter_verum_peg(X0).
-inter_er_overlap_verum_inter_verum_peg(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_peg(X0).
inter_er_overlap_verum_inter_verum_disk(X0) :- er_overlap_verum(X0),inter_verum_disk(X0).
-inter_er_overlap_verum_inter_verum_disk(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_disk(X0).
inter_er_overlap_verum_inter_falsum_key(X0) :- er_overlap_verum(X0),inter_falsum_key(X0).
-inter_er_overlap_verum_inter_falsum_key(X0) :- object(X0),not inter_er_overlap_verum_inter_falsum_key(X0).
inter_er_overlap_verum_inter_falsum_peg(X0) :- er_overlap_verum(X0),inter_falsum_peg(X0).
-inter_er_overlap_verum_inter_falsum_peg(X0) :- object(X0),not inter_er_overlap_verum_inter_falsum_peg(X0).
inter_er_overlap_verum_inter_falsum_disk(X0) :- er_overlap_verum(X0),inter_falsum_disk(X0).
-inter_er_overlap_verum_inter_falsum_disk(X0) :- object(X0),not inter_er_overlap_verum_inter_falsum_disk(X0).
inter_er_overlap_verum_inter_key_peg(X0) :- er_overlap_verum(X0),inter_key_peg(X0).
-inter_er_overlap_verum_inter_key_peg(X0) :- object(X0),not inter_er_overlap_verum_inter_key_peg(X0).
inter_er_overlap_verum_inter_key_disk(X0) :- er_overlap_verum(X0),inter_key_disk(X0).
-inter_er_overlap_verum_inter_key_disk(X0) :- object(X0),not inter_er_overlap_verum_inter_key_disk(X0).
inter_er_overlap_verum_inter_peg_disk(X0) :- er_overlap_verum(X0),inter_peg_disk(X0).
-inter_er_overlap_verum_inter_peg_disk(X0) :- object(X0),not inter_er_overlap_verum_inter_peg_disk(X0).
inter_er_overlap_verum_subset_verum_falsum(X0) :- er_overlap_verum(X0),subset_verum_falsum(null).
-inter_er_overlap_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_falsum(X0).
inter_er_overlap_verum_subset_verum_key(X0) :- er_overlap_verum(X0),subset_verum_key(null).
-inter_er_overlap_verum_subset_verum_key(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_key(X0).
inter_er_overlap_verum_subset_verum_peg(X0) :- er_overlap_verum(X0),subset_verum_peg(null).
-inter_er_overlap_verum_subset_verum_peg(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_peg(X0).
inter_er_overlap_verum_subset_verum_disk(X0) :- er_overlap_verum(X0),subset_verum_disk(null).
-inter_er_overlap_verum_subset_verum_disk(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_disk(X0).
inter_er_overlap_verum_subset_falsum_key(X0) :- er_overlap_verum(X0),subset_falsum_key(null).
-inter_er_overlap_verum_subset_falsum_key(X0) :- object(X0),not inter_er_overlap_verum_subset_falsum_key(X0).
inter_er_overlap_verum_subset_falsum_peg(X0) :- er_overlap_verum(X0),subset_falsum_peg(null).
-inter_er_overlap_verum_subset_falsum_peg(X0) :- object(X0),not inter_er_overlap_verum_subset_falsum_peg(X0).
inter_er_overlap_verum_subset_falsum_disk(X0) :- er_overlap_verum(X0),subset_falsum_disk(null).
-inter_er_overlap_verum_subset_falsum_disk(X0) :- object(X0),not inter_er_overlap_verum_subset_falsum_disk(X0).
inter_er_overlap_verum_subset_key_peg(X0) :- er_overlap_verum(X0),subset_key_peg(null).
-inter_er_overlap_verum_subset_key_peg(X0) :- object(X0),not inter_er_overlap_verum_subset_key_peg(X0).
inter_er_overlap_verum_subset_key_disk(X0) :- er_overlap_verum(X0),subset_key_disk(null).
-inter_er_overlap_verum_subset_key_disk(X0) :- object(X0),not inter_er_overlap_verum_subset_key_disk(X0).
inter_er_overlap_verum_subset_peg_disk(X0) :- er_overlap_verum(X0),subset_peg_disk(null).
-inter_er_overlap_verum_subset_peg_disk(X0) :- object(X0),not inter_er_overlap_verum_subset_peg_disk(X0).
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
inter_er_shape_verum_er_smaller_key(X0) :- er_shape_verum(X0),er_smaller_key(X0).
-inter_er_shape_verum_er_smaller_key(X0) :- object(X0),not inter_er_shape_verum_er_smaller_key(X0).
inter_er_shape_verum_er_below_key(X0) :- er_shape_verum(X0),er_below_key(X0).
-inter_er_shape_verum_er_below_key(X0) :- object(X0),not inter_er_shape_verum_er_below_key(X0).
inter_er_shape_verum_er_left_key(X0) :- er_shape_verum(X0),er_left_key(X0).
-inter_er_shape_verum_er_left_key(X0) :- object(X0),not inter_er_shape_verum_er_left_key(X0).
inter_er_shape_verum_er_overlap_key(X0) :- er_shape_verum(X0),er_overlap_key(X0).
-inter_er_shape_verum_er_overlap_key(X0) :- object(X0),not inter_er_shape_verum_er_overlap_key(X0).
inter_er_shape_verum_er_shape_key(X0) :- er_shape_verum(X0),er_shape_key(X0).
-inter_er_shape_verum_er_shape_key(X0) :- object(X0),not inter_er_shape_verum_er_shape_key(X0).
inter_er_shape_verum_er_smaller_peg(X0) :- er_shape_verum(X0),er_smaller_peg(X0).
-inter_er_shape_verum_er_smaller_peg(X0) :- object(X0),not inter_er_shape_verum_er_smaller_peg(X0).
inter_er_shape_verum_er_below_peg(X0) :- er_shape_verum(X0),er_below_peg(X0).
-inter_er_shape_verum_er_below_peg(X0) :- object(X0),not inter_er_shape_verum_er_below_peg(X0).
inter_er_shape_verum_er_left_peg(X0) :- er_shape_verum(X0),er_left_peg(X0).
-inter_er_shape_verum_er_left_peg(X0) :- object(X0),not inter_er_shape_verum_er_left_peg(X0).
inter_er_shape_verum_er_overlap_peg(X0) :- er_shape_verum(X0),er_overlap_peg(X0).
-inter_er_shape_verum_er_overlap_peg(X0) :- object(X0),not inter_er_shape_verum_er_overlap_peg(X0).
inter_er_shape_verum_er_shape_peg(X0) :- er_shape_verum(X0),er_shape_peg(X0).
-inter_er_shape_verum_er_shape_peg(X0) :- object(X0),not inter_er_shape_verum_er_shape_peg(X0).
inter_er_shape_verum_er_smaller_disk(X0) :- er_shape_verum(X0),er_smaller_disk(X0).
-inter_er_shape_verum_er_smaller_disk(X0) :- object(X0),not inter_er_shape_verum_er_smaller_disk(X0).
inter_er_shape_verum_er_below_disk(X0) :- er_shape_verum(X0),er_below_disk(X0).
-inter_er_shape_verum_er_below_disk(X0) :- object(X0),not inter_er_shape_verum_er_below_disk(X0).
inter_er_shape_verum_er_left_disk(X0) :- er_shape_verum(X0),er_left_disk(X0).
-inter_er_shape_verum_er_left_disk(X0) :- object(X0),not inter_er_shape_verum_er_left_disk(X0).
inter_er_shape_verum_er_overlap_disk(X0) :- er_shape_verum(X0),er_overlap_disk(X0).
-inter_er_shape_verum_er_overlap_disk(X0) :- object(X0),not inter_er_shape_verum_er_overlap_disk(X0).
inter_er_shape_verum_er_shape_disk(X0) :- er_shape_verum(X0),er_shape_disk(X0).
-inter_er_shape_verum_er_shape_disk(X0) :- object(X0),not inter_er_shape_verum_er_shape_disk(X0).
inter_er_shape_verum_inter_verum_falsum(X0) :- er_shape_verum(X0),inter_verum_falsum(X0).
-inter_er_shape_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_verum_inter_verum_falsum(X0).
inter_er_shape_verum_inter_verum_key(X0) :- er_shape_verum(X0),inter_verum_key(X0).
-inter_er_shape_verum_inter_verum_key(X0) :- object(X0),not inter_er_shape_verum_inter_verum_key(X0).
inter_er_shape_verum_inter_verum_peg(X0) :- er_shape_verum(X0),inter_verum_peg(X0).
-inter_er_shape_verum_inter_verum_peg(X0) :- object(X0),not inter_er_shape_verum_inter_verum_peg(X0).
inter_er_shape_verum_inter_verum_disk(X0) :- er_shape_verum(X0),inter_verum_disk(X0).
-inter_er_shape_verum_inter_verum_disk(X0) :- object(X0),not inter_er_shape_verum_inter_verum_disk(X0).
inter_er_shape_verum_inter_falsum_key(X0) :- er_shape_verum(X0),inter_falsum_key(X0).
-inter_er_shape_verum_inter_falsum_key(X0) :- object(X0),not inter_er_shape_verum_inter_falsum_key(X0).
inter_er_shape_verum_inter_falsum_peg(X0) :- er_shape_verum(X0),inter_falsum_peg(X0).
-inter_er_shape_verum_inter_falsum_peg(X0) :- object(X0),not inter_er_shape_verum_inter_falsum_peg(X0).
inter_er_shape_verum_inter_falsum_disk(X0) :- er_shape_verum(X0),inter_falsum_disk(X0).
-inter_er_shape_verum_inter_falsum_disk(X0) :- object(X0),not inter_er_shape_verum_inter_falsum_disk(X0).
inter_er_shape_verum_inter_key_peg(X0) :- er_shape_verum(X0),inter_key_peg(X0).
-inter_er_shape_verum_inter_key_peg(X0) :- object(X0),not inter_er_shape_verum_inter_key_peg(X0).
inter_er_shape_verum_inter_key_disk(X0) :- er_shape_verum(X0),inter_key_disk(X0).
-inter_er_shape_verum_inter_key_disk(X0) :- object(X0),not inter_er_shape_verum_inter_key_disk(X0).
inter_er_shape_verum_inter_peg_disk(X0) :- er_shape_verum(X0),inter_peg_disk(X0).
-inter_er_shape_verum_inter_peg_disk(X0) :- object(X0),not inter_er_shape_verum_inter_peg_disk(X0).
inter_er_shape_verum_subset_verum_falsum(X0) :- er_shape_verum(X0),subset_verum_falsum(null).
-inter_er_shape_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_verum_subset_verum_falsum(X0).
inter_er_shape_verum_subset_verum_key(X0) :- er_shape_verum(X0),subset_verum_key(null).
-inter_er_shape_verum_subset_verum_key(X0) :- object(X0),not inter_er_shape_verum_subset_verum_key(X0).
inter_er_shape_verum_subset_verum_peg(X0) :- er_shape_verum(X0),subset_verum_peg(null).
-inter_er_shape_verum_subset_verum_peg(X0) :- object(X0),not inter_er_shape_verum_subset_verum_peg(X0).
inter_er_shape_verum_subset_verum_disk(X0) :- er_shape_verum(X0),subset_verum_disk(null).
-inter_er_shape_verum_subset_verum_disk(X0) :- object(X0),not inter_er_shape_verum_subset_verum_disk(X0).
inter_er_shape_verum_subset_falsum_key(X0) :- er_shape_verum(X0),subset_falsum_key(null).
-inter_er_shape_verum_subset_falsum_key(X0) :- object(X0),not inter_er_shape_verum_subset_falsum_key(X0).
inter_er_shape_verum_subset_falsum_peg(X0) :- er_shape_verum(X0),subset_falsum_peg(null).
-inter_er_shape_verum_subset_falsum_peg(X0) :- object(X0),not inter_er_shape_verum_subset_falsum_peg(X0).
inter_er_shape_verum_subset_falsum_disk(X0) :- er_shape_verum(X0),subset_falsum_disk(null).
-inter_er_shape_verum_subset_falsum_disk(X0) :- object(X0),not inter_er_shape_verum_subset_falsum_disk(X0).
inter_er_shape_verum_subset_key_peg(X0) :- er_shape_verum(X0),subset_key_peg(null).
-inter_er_shape_verum_subset_key_peg(X0) :- object(X0),not inter_er_shape_verum_subset_key_peg(X0).
inter_er_shape_verum_subset_key_disk(X0) :- er_shape_verum(X0),subset_key_disk(null).
-inter_er_shape_verum_subset_key_disk(X0) :- object(X0),not inter_er_shape_verum_subset_key_disk(X0).
inter_er_shape_verum_subset_peg_disk(X0) :- er_shape_verum(X0),subset_peg_disk(null).
-inter_er_shape_verum_subset_peg_disk(X0) :- object(X0),not inter_er_shape_verum_subset_peg_disk(X0).
inter_er_smaller_falsum_er_below_falsum(X0) :- er_smaller_falsum(X0),er_below_falsum(X0).
-inter_er_smaller_falsum_er_below_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_below_falsum(X0).
inter_er_smaller_falsum_er_left_falsum(X0) :- er_smaller_falsum(X0),er_left_falsum(X0).
-inter_er_smaller_falsum_er_left_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_left_falsum(X0).
inter_er_smaller_falsum_er_overlap_falsum(X0) :- er_smaller_falsum(X0),er_overlap_falsum(X0).
-inter_er_smaller_falsum_er_overlap_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_falsum(X0).
inter_er_smaller_falsum_er_shape_falsum(X0) :- er_smaller_falsum(X0),er_shape_falsum(X0).
-inter_er_smaller_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_falsum(X0).
inter_er_smaller_falsum_er_smaller_key(X0) :- er_smaller_falsum(X0),er_smaller_key(X0).
-inter_er_smaller_falsum_er_smaller_key(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_key(X0).
inter_er_smaller_falsum_er_below_key(X0) :- er_smaller_falsum(X0),er_below_key(X0).
-inter_er_smaller_falsum_er_below_key(X0) :- object(X0),not inter_er_smaller_falsum_er_below_key(X0).
inter_er_smaller_falsum_er_left_key(X0) :- er_smaller_falsum(X0),er_left_key(X0).
-inter_er_smaller_falsum_er_left_key(X0) :- object(X0),not inter_er_smaller_falsum_er_left_key(X0).
inter_er_smaller_falsum_er_overlap_key(X0) :- er_smaller_falsum(X0),er_overlap_key(X0).
-inter_er_smaller_falsum_er_overlap_key(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_key(X0).
inter_er_smaller_falsum_er_shape_key(X0) :- er_smaller_falsum(X0),er_shape_key(X0).
-inter_er_smaller_falsum_er_shape_key(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_key(X0).
inter_er_smaller_falsum_er_smaller_peg(X0) :- er_smaller_falsum(X0),er_smaller_peg(X0).
-inter_er_smaller_falsum_er_smaller_peg(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_peg(X0).
inter_er_smaller_falsum_er_below_peg(X0) :- er_smaller_falsum(X0),er_below_peg(X0).
-inter_er_smaller_falsum_er_below_peg(X0) :- object(X0),not inter_er_smaller_falsum_er_below_peg(X0).
inter_er_smaller_falsum_er_left_peg(X0) :- er_smaller_falsum(X0),er_left_peg(X0).
-inter_er_smaller_falsum_er_left_peg(X0) :- object(X0),not inter_er_smaller_falsum_er_left_peg(X0).
inter_er_smaller_falsum_er_overlap_peg(X0) :- er_smaller_falsum(X0),er_overlap_peg(X0).
-inter_er_smaller_falsum_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_peg(X0).
inter_er_smaller_falsum_er_shape_peg(X0) :- er_smaller_falsum(X0),er_shape_peg(X0).
-inter_er_smaller_falsum_er_shape_peg(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_peg(X0).
inter_er_smaller_falsum_er_smaller_disk(X0) :- er_smaller_falsum(X0),er_smaller_disk(X0).
-inter_er_smaller_falsum_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_disk(X0).
inter_er_smaller_falsum_er_below_disk(X0) :- er_smaller_falsum(X0),er_below_disk(X0).
-inter_er_smaller_falsum_er_below_disk(X0) :- object(X0),not inter_er_smaller_falsum_er_below_disk(X0).
inter_er_smaller_falsum_er_left_disk(X0) :- er_smaller_falsum(X0),er_left_disk(X0).
-inter_er_smaller_falsum_er_left_disk(X0) :- object(X0),not inter_er_smaller_falsum_er_left_disk(X0).
inter_er_smaller_falsum_er_overlap_disk(X0) :- er_smaller_falsum(X0),er_overlap_disk(X0).
-inter_er_smaller_falsum_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_disk(X0).
inter_er_smaller_falsum_er_shape_disk(X0) :- er_smaller_falsum(X0),er_shape_disk(X0).
-inter_er_smaller_falsum_er_shape_disk(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_disk(X0).
inter_er_smaller_falsum_inter_verum_falsum(X0) :- er_smaller_falsum(X0),inter_verum_falsum(X0).
-inter_er_smaller_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_falsum(X0).
inter_er_smaller_falsum_inter_verum_key(X0) :- er_smaller_falsum(X0),inter_verum_key(X0).
-inter_er_smaller_falsum_inter_verum_key(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_key(X0).
inter_er_smaller_falsum_inter_verum_peg(X0) :- er_smaller_falsum(X0),inter_verum_peg(X0).
-inter_er_smaller_falsum_inter_verum_peg(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_peg(X0).
inter_er_smaller_falsum_inter_verum_disk(X0) :- er_smaller_falsum(X0),inter_verum_disk(X0).
-inter_er_smaller_falsum_inter_verum_disk(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_disk(X0).
inter_er_smaller_falsum_inter_falsum_key(X0) :- er_smaller_falsum(X0),inter_falsum_key(X0).
-inter_er_smaller_falsum_inter_falsum_key(X0) :- object(X0),not inter_er_smaller_falsum_inter_falsum_key(X0).
inter_er_smaller_falsum_inter_falsum_peg(X0) :- er_smaller_falsum(X0),inter_falsum_peg(X0).
-inter_er_smaller_falsum_inter_falsum_peg(X0) :- object(X0),not inter_er_smaller_falsum_inter_falsum_peg(X0).
inter_er_smaller_falsum_inter_falsum_disk(X0) :- er_smaller_falsum(X0),inter_falsum_disk(X0).
-inter_er_smaller_falsum_inter_falsum_disk(X0) :- object(X0),not inter_er_smaller_falsum_inter_falsum_disk(X0).
inter_er_smaller_falsum_inter_key_peg(X0) :- er_smaller_falsum(X0),inter_key_peg(X0).
-inter_er_smaller_falsum_inter_key_peg(X0) :- object(X0),not inter_er_smaller_falsum_inter_key_peg(X0).
inter_er_smaller_falsum_inter_key_disk(X0) :- er_smaller_falsum(X0),inter_key_disk(X0).
-inter_er_smaller_falsum_inter_key_disk(X0) :- object(X0),not inter_er_smaller_falsum_inter_key_disk(X0).
inter_er_smaller_falsum_inter_peg_disk(X0) :- er_smaller_falsum(X0),inter_peg_disk(X0).
-inter_er_smaller_falsum_inter_peg_disk(X0) :- object(X0),not inter_er_smaller_falsum_inter_peg_disk(X0).
inter_er_smaller_falsum_subset_verum_falsum(X0) :- er_smaller_falsum(X0),subset_verum_falsum(null).
-inter_er_smaller_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_falsum(X0).
inter_er_smaller_falsum_subset_verum_key(X0) :- er_smaller_falsum(X0),subset_verum_key(null).
-inter_er_smaller_falsum_subset_verum_key(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_key(X0).
inter_er_smaller_falsum_subset_verum_peg(X0) :- er_smaller_falsum(X0),subset_verum_peg(null).
-inter_er_smaller_falsum_subset_verum_peg(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_peg(X0).
inter_er_smaller_falsum_subset_verum_disk(X0) :- er_smaller_falsum(X0),subset_verum_disk(null).
-inter_er_smaller_falsum_subset_verum_disk(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_disk(X0).
inter_er_smaller_falsum_subset_falsum_key(X0) :- er_smaller_falsum(X0),subset_falsum_key(null).
-inter_er_smaller_falsum_subset_falsum_key(X0) :- object(X0),not inter_er_smaller_falsum_subset_falsum_key(X0).
inter_er_smaller_falsum_subset_falsum_peg(X0) :- er_smaller_falsum(X0),subset_falsum_peg(null).
-inter_er_smaller_falsum_subset_falsum_peg(X0) :- object(X0),not inter_er_smaller_falsum_subset_falsum_peg(X0).
inter_er_smaller_falsum_subset_falsum_disk(X0) :- er_smaller_falsum(X0),subset_falsum_disk(null).
-inter_er_smaller_falsum_subset_falsum_disk(X0) :- object(X0),not inter_er_smaller_falsum_subset_falsum_disk(X0).
inter_er_smaller_falsum_subset_key_peg(X0) :- er_smaller_falsum(X0),subset_key_peg(null).
-inter_er_smaller_falsum_subset_key_peg(X0) :- object(X0),not inter_er_smaller_falsum_subset_key_peg(X0).
inter_er_smaller_falsum_subset_key_disk(X0) :- er_smaller_falsum(X0),subset_key_disk(null).
-inter_er_smaller_falsum_subset_key_disk(X0) :- object(X0),not inter_er_smaller_falsum_subset_key_disk(X0).
inter_er_smaller_falsum_subset_peg_disk(X0) :- er_smaller_falsum(X0),subset_peg_disk(null).
-inter_er_smaller_falsum_subset_peg_disk(X0) :- object(X0),not inter_er_smaller_falsum_subset_peg_disk(X0).
inter_er_below_falsum_er_left_falsum(X0) :- er_below_falsum(X0),er_left_falsum(X0).
-inter_er_below_falsum_er_left_falsum(X0) :- object(X0),not inter_er_below_falsum_er_left_falsum(X0).
inter_er_below_falsum_er_overlap_falsum(X0) :- er_below_falsum(X0),er_overlap_falsum(X0).
-inter_er_below_falsum_er_overlap_falsum(X0) :- object(X0),not inter_er_below_falsum_er_overlap_falsum(X0).
inter_er_below_falsum_er_shape_falsum(X0) :- er_below_falsum(X0),er_shape_falsum(X0).
-inter_er_below_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_below_falsum_er_shape_falsum(X0).
inter_er_below_falsum_er_smaller_key(X0) :- er_below_falsum(X0),er_smaller_key(X0).
-inter_er_below_falsum_er_smaller_key(X0) :- object(X0),not inter_er_below_falsum_er_smaller_key(X0).
inter_er_below_falsum_er_below_key(X0) :- er_below_falsum(X0),er_below_key(X0).
-inter_er_below_falsum_er_below_key(X0) :- object(X0),not inter_er_below_falsum_er_below_key(X0).
inter_er_below_falsum_er_left_key(X0) :- er_below_falsum(X0),er_left_key(X0).
-inter_er_below_falsum_er_left_key(X0) :- object(X0),not inter_er_below_falsum_er_left_key(X0).
inter_er_below_falsum_er_overlap_key(X0) :- er_below_falsum(X0),er_overlap_key(X0).
-inter_er_below_falsum_er_overlap_key(X0) :- object(X0),not inter_er_below_falsum_er_overlap_key(X0).
inter_er_below_falsum_er_shape_key(X0) :- er_below_falsum(X0),er_shape_key(X0).
-inter_er_below_falsum_er_shape_key(X0) :- object(X0),not inter_er_below_falsum_er_shape_key(X0).
inter_er_below_falsum_er_smaller_peg(X0) :- er_below_falsum(X0),er_smaller_peg(X0).
-inter_er_below_falsum_er_smaller_peg(X0) :- object(X0),not inter_er_below_falsum_er_smaller_peg(X0).
inter_er_below_falsum_er_below_peg(X0) :- er_below_falsum(X0),er_below_peg(X0).
-inter_er_below_falsum_er_below_peg(X0) :- object(X0),not inter_er_below_falsum_er_below_peg(X0).
inter_er_below_falsum_er_left_peg(X0) :- er_below_falsum(X0),er_left_peg(X0).
-inter_er_below_falsum_er_left_peg(X0) :- object(X0),not inter_er_below_falsum_er_left_peg(X0).
inter_er_below_falsum_er_overlap_peg(X0) :- er_below_falsum(X0),er_overlap_peg(X0).
-inter_er_below_falsum_er_overlap_peg(X0) :- object(X0),not inter_er_below_falsum_er_overlap_peg(X0).
inter_er_below_falsum_er_shape_peg(X0) :- er_below_falsum(X0),er_shape_peg(X0).
-inter_er_below_falsum_er_shape_peg(X0) :- object(X0),not inter_er_below_falsum_er_shape_peg(X0).
inter_er_below_falsum_er_smaller_disk(X0) :- er_below_falsum(X0),er_smaller_disk(X0).
-inter_er_below_falsum_er_smaller_disk(X0) :- object(X0),not inter_er_below_falsum_er_smaller_disk(X0).
inter_er_below_falsum_er_below_disk(X0) :- er_below_falsum(X0),er_below_disk(X0).
-inter_er_below_falsum_er_below_disk(X0) :- object(X0),not inter_er_below_falsum_er_below_disk(X0).
inter_er_below_falsum_er_left_disk(X0) :- er_below_falsum(X0),er_left_disk(X0).
-inter_er_below_falsum_er_left_disk(X0) :- object(X0),not inter_er_below_falsum_er_left_disk(X0).
inter_er_below_falsum_er_overlap_disk(X0) :- er_below_falsum(X0),er_overlap_disk(X0).
-inter_er_below_falsum_er_overlap_disk(X0) :- object(X0),not inter_er_below_falsum_er_overlap_disk(X0).
inter_er_below_falsum_er_shape_disk(X0) :- er_below_falsum(X0),er_shape_disk(X0).
-inter_er_below_falsum_er_shape_disk(X0) :- object(X0),not inter_er_below_falsum_er_shape_disk(X0).
inter_er_below_falsum_inter_verum_falsum(X0) :- er_below_falsum(X0),inter_verum_falsum(X0).
-inter_er_below_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_below_falsum_inter_verum_falsum(X0).
inter_er_below_falsum_inter_verum_key(X0) :- er_below_falsum(X0),inter_verum_key(X0).
-inter_er_below_falsum_inter_verum_key(X0) :- object(X0),not inter_er_below_falsum_inter_verum_key(X0).
inter_er_below_falsum_inter_verum_peg(X0) :- er_below_falsum(X0),inter_verum_peg(X0).
-inter_er_below_falsum_inter_verum_peg(X0) :- object(X0),not inter_er_below_falsum_inter_verum_peg(X0).
inter_er_below_falsum_inter_verum_disk(X0) :- er_below_falsum(X0),inter_verum_disk(X0).
-inter_er_below_falsum_inter_verum_disk(X0) :- object(X0),not inter_er_below_falsum_inter_verum_disk(X0).
inter_er_below_falsum_inter_falsum_key(X0) :- er_below_falsum(X0),inter_falsum_key(X0).
-inter_er_below_falsum_inter_falsum_key(X0) :- object(X0),not inter_er_below_falsum_inter_falsum_key(X0).
inter_er_below_falsum_inter_falsum_peg(X0) :- er_below_falsum(X0),inter_falsum_peg(X0).
-inter_er_below_falsum_inter_falsum_peg(X0) :- object(X0),not inter_er_below_falsum_inter_falsum_peg(X0).
inter_er_below_falsum_inter_falsum_disk(X0) :- er_below_falsum(X0),inter_falsum_disk(X0).
-inter_er_below_falsum_inter_falsum_disk(X0) :- object(X0),not inter_er_below_falsum_inter_falsum_disk(X0).
inter_er_below_falsum_inter_key_peg(X0) :- er_below_falsum(X0),inter_key_peg(X0).
-inter_er_below_falsum_inter_key_peg(X0) :- object(X0),not inter_er_below_falsum_inter_key_peg(X0).
inter_er_below_falsum_inter_key_disk(X0) :- er_below_falsum(X0),inter_key_disk(X0).
-inter_er_below_falsum_inter_key_disk(X0) :- object(X0),not inter_er_below_falsum_inter_key_disk(X0).
inter_er_below_falsum_inter_peg_disk(X0) :- er_below_falsum(X0),inter_peg_disk(X0).
-inter_er_below_falsum_inter_peg_disk(X0) :- object(X0),not inter_er_below_falsum_inter_peg_disk(X0).
inter_er_below_falsum_subset_verum_falsum(X0) :- er_below_falsum(X0),subset_verum_falsum(null).
-inter_er_below_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_below_falsum_subset_verum_falsum(X0).
inter_er_below_falsum_subset_verum_key(X0) :- er_below_falsum(X0),subset_verum_key(null).
-inter_er_below_falsum_subset_verum_key(X0) :- object(X0),not inter_er_below_falsum_subset_verum_key(X0).
inter_er_below_falsum_subset_verum_peg(X0) :- er_below_falsum(X0),subset_verum_peg(null).
-inter_er_below_falsum_subset_verum_peg(X0) :- object(X0),not inter_er_below_falsum_subset_verum_peg(X0).
inter_er_below_falsum_subset_verum_disk(X0) :- er_below_falsum(X0),subset_verum_disk(null).
-inter_er_below_falsum_subset_verum_disk(X0) :- object(X0),not inter_er_below_falsum_subset_verum_disk(X0).
inter_er_below_falsum_subset_falsum_key(X0) :- er_below_falsum(X0),subset_falsum_key(null).
-inter_er_below_falsum_subset_falsum_key(X0) :- object(X0),not inter_er_below_falsum_subset_falsum_key(X0).
inter_er_below_falsum_subset_falsum_peg(X0) :- er_below_falsum(X0),subset_falsum_peg(null).
-inter_er_below_falsum_subset_falsum_peg(X0) :- object(X0),not inter_er_below_falsum_subset_falsum_peg(X0).
inter_er_below_falsum_subset_falsum_disk(X0) :- er_below_falsum(X0),subset_falsum_disk(null).
-inter_er_below_falsum_subset_falsum_disk(X0) :- object(X0),not inter_er_below_falsum_subset_falsum_disk(X0).
inter_er_below_falsum_subset_key_peg(X0) :- er_below_falsum(X0),subset_key_peg(null).
-inter_er_below_falsum_subset_key_peg(X0) :- object(X0),not inter_er_below_falsum_subset_key_peg(X0).
inter_er_below_falsum_subset_key_disk(X0) :- er_below_falsum(X0),subset_key_disk(null).
-inter_er_below_falsum_subset_key_disk(X0) :- object(X0),not inter_er_below_falsum_subset_key_disk(X0).
inter_er_below_falsum_subset_peg_disk(X0) :- er_below_falsum(X0),subset_peg_disk(null).
-inter_er_below_falsum_subset_peg_disk(X0) :- object(X0),not inter_er_below_falsum_subset_peg_disk(X0).
inter_er_left_falsum_er_overlap_falsum(X0) :- er_left_falsum(X0),er_overlap_falsum(X0).
-inter_er_left_falsum_er_overlap_falsum(X0) :- object(X0),not inter_er_left_falsum_er_overlap_falsum(X0).
inter_er_left_falsum_er_shape_falsum(X0) :- er_left_falsum(X0),er_shape_falsum(X0).
-inter_er_left_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_left_falsum_er_shape_falsum(X0).
inter_er_left_falsum_er_smaller_key(X0) :- er_left_falsum(X0),er_smaller_key(X0).
-inter_er_left_falsum_er_smaller_key(X0) :- object(X0),not inter_er_left_falsum_er_smaller_key(X0).
inter_er_left_falsum_er_below_key(X0) :- er_left_falsum(X0),er_below_key(X0).
-inter_er_left_falsum_er_below_key(X0) :- object(X0),not inter_er_left_falsum_er_below_key(X0).
inter_er_left_falsum_er_left_key(X0) :- er_left_falsum(X0),er_left_key(X0).
-inter_er_left_falsum_er_left_key(X0) :- object(X0),not inter_er_left_falsum_er_left_key(X0).
inter_er_left_falsum_er_overlap_key(X0) :- er_left_falsum(X0),er_overlap_key(X0).
-inter_er_left_falsum_er_overlap_key(X0) :- object(X0),not inter_er_left_falsum_er_overlap_key(X0).
inter_er_left_falsum_er_shape_key(X0) :- er_left_falsum(X0),er_shape_key(X0).
-inter_er_left_falsum_er_shape_key(X0) :- object(X0),not inter_er_left_falsum_er_shape_key(X0).
inter_er_left_falsum_er_smaller_peg(X0) :- er_left_falsum(X0),er_smaller_peg(X0).
-inter_er_left_falsum_er_smaller_peg(X0) :- object(X0),not inter_er_left_falsum_er_smaller_peg(X0).
inter_er_left_falsum_er_below_peg(X0) :- er_left_falsum(X0),er_below_peg(X0).
-inter_er_left_falsum_er_below_peg(X0) :- object(X0),not inter_er_left_falsum_er_below_peg(X0).
inter_er_left_falsum_er_left_peg(X0) :- er_left_falsum(X0),er_left_peg(X0).
-inter_er_left_falsum_er_left_peg(X0) :- object(X0),not inter_er_left_falsum_er_left_peg(X0).
inter_er_left_falsum_er_overlap_peg(X0) :- er_left_falsum(X0),er_overlap_peg(X0).
-inter_er_left_falsum_er_overlap_peg(X0) :- object(X0),not inter_er_left_falsum_er_overlap_peg(X0).
inter_er_left_falsum_er_shape_peg(X0) :- er_left_falsum(X0),er_shape_peg(X0).
-inter_er_left_falsum_er_shape_peg(X0) :- object(X0),not inter_er_left_falsum_er_shape_peg(X0).
inter_er_left_falsum_er_smaller_disk(X0) :- er_left_falsum(X0),er_smaller_disk(X0).
-inter_er_left_falsum_er_smaller_disk(X0) :- object(X0),not inter_er_left_falsum_er_smaller_disk(X0).
inter_er_left_falsum_er_below_disk(X0) :- er_left_falsum(X0),er_below_disk(X0).
-inter_er_left_falsum_er_below_disk(X0) :- object(X0),not inter_er_left_falsum_er_below_disk(X0).
inter_er_left_falsum_er_left_disk(X0) :- er_left_falsum(X0),er_left_disk(X0).
-inter_er_left_falsum_er_left_disk(X0) :- object(X0),not inter_er_left_falsum_er_left_disk(X0).
inter_er_left_falsum_er_overlap_disk(X0) :- er_left_falsum(X0),er_overlap_disk(X0).
-inter_er_left_falsum_er_overlap_disk(X0) :- object(X0),not inter_er_left_falsum_er_overlap_disk(X0).
inter_er_left_falsum_er_shape_disk(X0) :- er_left_falsum(X0),er_shape_disk(X0).
-inter_er_left_falsum_er_shape_disk(X0) :- object(X0),not inter_er_left_falsum_er_shape_disk(X0).
inter_er_left_falsum_inter_verum_falsum(X0) :- er_left_falsum(X0),inter_verum_falsum(X0).
-inter_er_left_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_left_falsum_inter_verum_falsum(X0).
inter_er_left_falsum_inter_verum_key(X0) :- er_left_falsum(X0),inter_verum_key(X0).
-inter_er_left_falsum_inter_verum_key(X0) :- object(X0),not inter_er_left_falsum_inter_verum_key(X0).
inter_er_left_falsum_inter_verum_peg(X0) :- er_left_falsum(X0),inter_verum_peg(X0).
-inter_er_left_falsum_inter_verum_peg(X0) :- object(X0),not inter_er_left_falsum_inter_verum_peg(X0).
inter_er_left_falsum_inter_verum_disk(X0) :- er_left_falsum(X0),inter_verum_disk(X0).
-inter_er_left_falsum_inter_verum_disk(X0) :- object(X0),not inter_er_left_falsum_inter_verum_disk(X0).
inter_er_left_falsum_inter_falsum_key(X0) :- er_left_falsum(X0),inter_falsum_key(X0).
-inter_er_left_falsum_inter_falsum_key(X0) :- object(X0),not inter_er_left_falsum_inter_falsum_key(X0).
inter_er_left_falsum_inter_falsum_peg(X0) :- er_left_falsum(X0),inter_falsum_peg(X0).
-inter_er_left_falsum_inter_falsum_peg(X0) :- object(X0),not inter_er_left_falsum_inter_falsum_peg(X0).
inter_er_left_falsum_inter_falsum_disk(X0) :- er_left_falsum(X0),inter_falsum_disk(X0).
-inter_er_left_falsum_inter_falsum_disk(X0) :- object(X0),not inter_er_left_falsum_inter_falsum_disk(X0).
inter_er_left_falsum_inter_key_peg(X0) :- er_left_falsum(X0),inter_key_peg(X0).
-inter_er_left_falsum_inter_key_peg(X0) :- object(X0),not inter_er_left_falsum_inter_key_peg(X0).
inter_er_left_falsum_inter_key_disk(X0) :- er_left_falsum(X0),inter_key_disk(X0).
-inter_er_left_falsum_inter_key_disk(X0) :- object(X0),not inter_er_left_falsum_inter_key_disk(X0).
inter_er_left_falsum_inter_peg_disk(X0) :- er_left_falsum(X0),inter_peg_disk(X0).
-inter_er_left_falsum_inter_peg_disk(X0) :- object(X0),not inter_er_left_falsum_inter_peg_disk(X0).
inter_er_left_falsum_subset_verum_falsum(X0) :- er_left_falsum(X0),subset_verum_falsum(null).
-inter_er_left_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_left_falsum_subset_verum_falsum(X0).
inter_er_left_falsum_subset_verum_key(X0) :- er_left_falsum(X0),subset_verum_key(null).
-inter_er_left_falsum_subset_verum_key(X0) :- object(X0),not inter_er_left_falsum_subset_verum_key(X0).
inter_er_left_falsum_subset_verum_peg(X0) :- er_left_falsum(X0),subset_verum_peg(null).
-inter_er_left_falsum_subset_verum_peg(X0) :- object(X0),not inter_er_left_falsum_subset_verum_peg(X0).
inter_er_left_falsum_subset_verum_disk(X0) :- er_left_falsum(X0),subset_verum_disk(null).
-inter_er_left_falsum_subset_verum_disk(X0) :- object(X0),not inter_er_left_falsum_subset_verum_disk(X0).
inter_er_left_falsum_subset_falsum_key(X0) :- er_left_falsum(X0),subset_falsum_key(null).
-inter_er_left_falsum_subset_falsum_key(X0) :- object(X0),not inter_er_left_falsum_subset_falsum_key(X0).
inter_er_left_falsum_subset_falsum_peg(X0) :- er_left_falsum(X0),subset_falsum_peg(null).
-inter_er_left_falsum_subset_falsum_peg(X0) :- object(X0),not inter_er_left_falsum_subset_falsum_peg(X0).
inter_er_left_falsum_subset_falsum_disk(X0) :- er_left_falsum(X0),subset_falsum_disk(null).
-inter_er_left_falsum_subset_falsum_disk(X0) :- object(X0),not inter_er_left_falsum_subset_falsum_disk(X0).
inter_er_left_falsum_subset_key_peg(X0) :- er_left_falsum(X0),subset_key_peg(null).
-inter_er_left_falsum_subset_key_peg(X0) :- object(X0),not inter_er_left_falsum_subset_key_peg(X0).
inter_er_left_falsum_subset_key_disk(X0) :- er_left_falsum(X0),subset_key_disk(null).
-inter_er_left_falsum_subset_key_disk(X0) :- object(X0),not inter_er_left_falsum_subset_key_disk(X0).
inter_er_left_falsum_subset_peg_disk(X0) :- er_left_falsum(X0),subset_peg_disk(null).
-inter_er_left_falsum_subset_peg_disk(X0) :- object(X0),not inter_er_left_falsum_subset_peg_disk(X0).
inter_er_overlap_falsum_er_shape_falsum(X0) :- er_overlap_falsum(X0),er_shape_falsum(X0).
-inter_er_overlap_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_falsum(X0).
inter_er_overlap_falsum_er_smaller_key(X0) :- er_overlap_falsum(X0),er_smaller_key(X0).
-inter_er_overlap_falsum_er_smaller_key(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_key(X0).
inter_er_overlap_falsum_er_below_key(X0) :- er_overlap_falsum(X0),er_below_key(X0).
-inter_er_overlap_falsum_er_below_key(X0) :- object(X0),not inter_er_overlap_falsum_er_below_key(X0).
inter_er_overlap_falsum_er_left_key(X0) :- er_overlap_falsum(X0),er_left_key(X0).
-inter_er_overlap_falsum_er_left_key(X0) :- object(X0),not inter_er_overlap_falsum_er_left_key(X0).
inter_er_overlap_falsum_er_overlap_key(X0) :- er_overlap_falsum(X0),er_overlap_key(X0).
-inter_er_overlap_falsum_er_overlap_key(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_key(X0).
inter_er_overlap_falsum_er_shape_key(X0) :- er_overlap_falsum(X0),er_shape_key(X0).
-inter_er_overlap_falsum_er_shape_key(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_key(X0).
inter_er_overlap_falsum_er_smaller_peg(X0) :- er_overlap_falsum(X0),er_smaller_peg(X0).
-inter_er_overlap_falsum_er_smaller_peg(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_peg(X0).
inter_er_overlap_falsum_er_below_peg(X0) :- er_overlap_falsum(X0),er_below_peg(X0).
-inter_er_overlap_falsum_er_below_peg(X0) :- object(X0),not inter_er_overlap_falsum_er_below_peg(X0).
inter_er_overlap_falsum_er_left_peg(X0) :- er_overlap_falsum(X0),er_left_peg(X0).
-inter_er_overlap_falsum_er_left_peg(X0) :- object(X0),not inter_er_overlap_falsum_er_left_peg(X0).
inter_er_overlap_falsum_er_overlap_peg(X0) :- er_overlap_falsum(X0),er_overlap_peg(X0).
-inter_er_overlap_falsum_er_overlap_peg(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_peg(X0).
inter_er_overlap_falsum_er_shape_peg(X0) :- er_overlap_falsum(X0),er_shape_peg(X0).
-inter_er_overlap_falsum_er_shape_peg(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_peg(X0).
inter_er_overlap_falsum_er_smaller_disk(X0) :- er_overlap_falsum(X0),er_smaller_disk(X0).
-inter_er_overlap_falsum_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_disk(X0).
inter_er_overlap_falsum_er_below_disk(X0) :- er_overlap_falsum(X0),er_below_disk(X0).
-inter_er_overlap_falsum_er_below_disk(X0) :- object(X0),not inter_er_overlap_falsum_er_below_disk(X0).
inter_er_overlap_falsum_er_left_disk(X0) :- er_overlap_falsum(X0),er_left_disk(X0).
-inter_er_overlap_falsum_er_left_disk(X0) :- object(X0),not inter_er_overlap_falsum_er_left_disk(X0).
inter_er_overlap_falsum_er_overlap_disk(X0) :- er_overlap_falsum(X0),er_overlap_disk(X0).
-inter_er_overlap_falsum_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_disk(X0).
inter_er_overlap_falsum_er_shape_disk(X0) :- er_overlap_falsum(X0),er_shape_disk(X0).
-inter_er_overlap_falsum_er_shape_disk(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_disk(X0).
inter_er_overlap_falsum_inter_verum_falsum(X0) :- er_overlap_falsum(X0),inter_verum_falsum(X0).
-inter_er_overlap_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_falsum(X0).
inter_er_overlap_falsum_inter_verum_key(X0) :- er_overlap_falsum(X0),inter_verum_key(X0).
-inter_er_overlap_falsum_inter_verum_key(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_key(X0).
inter_er_overlap_falsum_inter_verum_peg(X0) :- er_overlap_falsum(X0),inter_verum_peg(X0).
-inter_er_overlap_falsum_inter_verum_peg(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_peg(X0).
inter_er_overlap_falsum_inter_verum_disk(X0) :- er_overlap_falsum(X0),inter_verum_disk(X0).
-inter_er_overlap_falsum_inter_verum_disk(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_disk(X0).
inter_er_overlap_falsum_inter_falsum_key(X0) :- er_overlap_falsum(X0),inter_falsum_key(X0).
-inter_er_overlap_falsum_inter_falsum_key(X0) :- object(X0),not inter_er_overlap_falsum_inter_falsum_key(X0).
inter_er_overlap_falsum_inter_falsum_peg(X0) :- er_overlap_falsum(X0),inter_falsum_peg(X0).
-inter_er_overlap_falsum_inter_falsum_peg(X0) :- object(X0),not inter_er_overlap_falsum_inter_falsum_peg(X0).
inter_er_overlap_falsum_inter_falsum_disk(X0) :- er_overlap_falsum(X0),inter_falsum_disk(X0).
-inter_er_overlap_falsum_inter_falsum_disk(X0) :- object(X0),not inter_er_overlap_falsum_inter_falsum_disk(X0).
inter_er_overlap_falsum_inter_key_peg(X0) :- er_overlap_falsum(X0),inter_key_peg(X0).
-inter_er_overlap_falsum_inter_key_peg(X0) :- object(X0),not inter_er_overlap_falsum_inter_key_peg(X0).
inter_er_overlap_falsum_inter_key_disk(X0) :- er_overlap_falsum(X0),inter_key_disk(X0).
-inter_er_overlap_falsum_inter_key_disk(X0) :- object(X0),not inter_er_overlap_falsum_inter_key_disk(X0).
inter_er_overlap_falsum_inter_peg_disk(X0) :- er_overlap_falsum(X0),inter_peg_disk(X0).
-inter_er_overlap_falsum_inter_peg_disk(X0) :- object(X0),not inter_er_overlap_falsum_inter_peg_disk(X0).
inter_er_overlap_falsum_subset_verum_falsum(X0) :- er_overlap_falsum(X0),subset_verum_falsum(null).
-inter_er_overlap_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_falsum(X0).
inter_er_overlap_falsum_subset_verum_key(X0) :- er_overlap_falsum(X0),subset_verum_key(null).
-inter_er_overlap_falsum_subset_verum_key(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_key(X0).
inter_er_overlap_falsum_subset_verum_peg(X0) :- er_overlap_falsum(X0),subset_verum_peg(null).
-inter_er_overlap_falsum_subset_verum_peg(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_peg(X0).
inter_er_overlap_falsum_subset_verum_disk(X0) :- er_overlap_falsum(X0),subset_verum_disk(null).
-inter_er_overlap_falsum_subset_verum_disk(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_disk(X0).
inter_er_overlap_falsum_subset_falsum_key(X0) :- er_overlap_falsum(X0),subset_falsum_key(null).
-inter_er_overlap_falsum_subset_falsum_key(X0) :- object(X0),not inter_er_overlap_falsum_subset_falsum_key(X0).
inter_er_overlap_falsum_subset_falsum_peg(X0) :- er_overlap_falsum(X0),subset_falsum_peg(null).
-inter_er_overlap_falsum_subset_falsum_peg(X0) :- object(X0),not inter_er_overlap_falsum_subset_falsum_peg(X0).
inter_er_overlap_falsum_subset_falsum_disk(X0) :- er_overlap_falsum(X0),subset_falsum_disk(null).
-inter_er_overlap_falsum_subset_falsum_disk(X0) :- object(X0),not inter_er_overlap_falsum_subset_falsum_disk(X0).
inter_er_overlap_falsum_subset_key_peg(X0) :- er_overlap_falsum(X0),subset_key_peg(null).
-inter_er_overlap_falsum_subset_key_peg(X0) :- object(X0),not inter_er_overlap_falsum_subset_key_peg(X0).
inter_er_overlap_falsum_subset_key_disk(X0) :- er_overlap_falsum(X0),subset_key_disk(null).
-inter_er_overlap_falsum_subset_key_disk(X0) :- object(X0),not inter_er_overlap_falsum_subset_key_disk(X0).
inter_er_overlap_falsum_subset_peg_disk(X0) :- er_overlap_falsum(X0),subset_peg_disk(null).
-inter_er_overlap_falsum_subset_peg_disk(X0) :- object(X0),not inter_er_overlap_falsum_subset_peg_disk(X0).
inter_er_shape_falsum_er_smaller_key(X0) :- er_shape_falsum(X0),er_smaller_key(X0).
-inter_er_shape_falsum_er_smaller_key(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_key(X0).
inter_er_shape_falsum_er_below_key(X0) :- er_shape_falsum(X0),er_below_key(X0).
-inter_er_shape_falsum_er_below_key(X0) :- object(X0),not inter_er_shape_falsum_er_below_key(X0).
inter_er_shape_falsum_er_left_key(X0) :- er_shape_falsum(X0),er_left_key(X0).
-inter_er_shape_falsum_er_left_key(X0) :- object(X0),not inter_er_shape_falsum_er_left_key(X0).
inter_er_shape_falsum_er_overlap_key(X0) :- er_shape_falsum(X0),er_overlap_key(X0).
-inter_er_shape_falsum_er_overlap_key(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_key(X0).
inter_er_shape_falsum_er_shape_key(X0) :- er_shape_falsum(X0),er_shape_key(X0).
-inter_er_shape_falsum_er_shape_key(X0) :- object(X0),not inter_er_shape_falsum_er_shape_key(X0).
inter_er_shape_falsum_er_smaller_peg(X0) :- er_shape_falsum(X0),er_smaller_peg(X0).
-inter_er_shape_falsum_er_smaller_peg(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_peg(X0).
inter_er_shape_falsum_er_below_peg(X0) :- er_shape_falsum(X0),er_below_peg(X0).
-inter_er_shape_falsum_er_below_peg(X0) :- object(X0),not inter_er_shape_falsum_er_below_peg(X0).
inter_er_shape_falsum_er_left_peg(X0) :- er_shape_falsum(X0),er_left_peg(X0).
-inter_er_shape_falsum_er_left_peg(X0) :- object(X0),not inter_er_shape_falsum_er_left_peg(X0).
inter_er_shape_falsum_er_overlap_peg(X0) :- er_shape_falsum(X0),er_overlap_peg(X0).
-inter_er_shape_falsum_er_overlap_peg(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_peg(X0).
inter_er_shape_falsum_er_shape_peg(X0) :- er_shape_falsum(X0),er_shape_peg(X0).
-inter_er_shape_falsum_er_shape_peg(X0) :- object(X0),not inter_er_shape_falsum_er_shape_peg(X0).
inter_er_shape_falsum_er_smaller_disk(X0) :- er_shape_falsum(X0),er_smaller_disk(X0).
-inter_er_shape_falsum_er_smaller_disk(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_disk(X0).
inter_er_shape_falsum_er_below_disk(X0) :- er_shape_falsum(X0),er_below_disk(X0).
-inter_er_shape_falsum_er_below_disk(X0) :- object(X0),not inter_er_shape_falsum_er_below_disk(X0).
inter_er_shape_falsum_er_left_disk(X0) :- er_shape_falsum(X0),er_left_disk(X0).
-inter_er_shape_falsum_er_left_disk(X0) :- object(X0),not inter_er_shape_falsum_er_left_disk(X0).
inter_er_shape_falsum_er_overlap_disk(X0) :- er_shape_falsum(X0),er_overlap_disk(X0).
-inter_er_shape_falsum_er_overlap_disk(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_disk(X0).
inter_er_shape_falsum_er_shape_disk(X0) :- er_shape_falsum(X0),er_shape_disk(X0).
-inter_er_shape_falsum_er_shape_disk(X0) :- object(X0),not inter_er_shape_falsum_er_shape_disk(X0).
inter_er_shape_falsum_inter_verum_falsum(X0) :- er_shape_falsum(X0),inter_verum_falsum(X0).
-inter_er_shape_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_falsum(X0).
inter_er_shape_falsum_inter_verum_key(X0) :- er_shape_falsum(X0),inter_verum_key(X0).
-inter_er_shape_falsum_inter_verum_key(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_key(X0).
inter_er_shape_falsum_inter_verum_peg(X0) :- er_shape_falsum(X0),inter_verum_peg(X0).
-inter_er_shape_falsum_inter_verum_peg(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_peg(X0).
inter_er_shape_falsum_inter_verum_disk(X0) :- er_shape_falsum(X0),inter_verum_disk(X0).
-inter_er_shape_falsum_inter_verum_disk(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_disk(X0).
inter_er_shape_falsum_inter_falsum_key(X0) :- er_shape_falsum(X0),inter_falsum_key(X0).
-inter_er_shape_falsum_inter_falsum_key(X0) :- object(X0),not inter_er_shape_falsum_inter_falsum_key(X0).
inter_er_shape_falsum_inter_falsum_peg(X0) :- er_shape_falsum(X0),inter_falsum_peg(X0).
-inter_er_shape_falsum_inter_falsum_peg(X0) :- object(X0),not inter_er_shape_falsum_inter_falsum_peg(X0).
inter_er_shape_falsum_inter_falsum_disk(X0) :- er_shape_falsum(X0),inter_falsum_disk(X0).
-inter_er_shape_falsum_inter_falsum_disk(X0) :- object(X0),not inter_er_shape_falsum_inter_falsum_disk(X0).
inter_er_shape_falsum_inter_key_peg(X0) :- er_shape_falsum(X0),inter_key_peg(X0).
-inter_er_shape_falsum_inter_key_peg(X0) :- object(X0),not inter_er_shape_falsum_inter_key_peg(X0).
inter_er_shape_falsum_inter_key_disk(X0) :- er_shape_falsum(X0),inter_key_disk(X0).
-inter_er_shape_falsum_inter_key_disk(X0) :- object(X0),not inter_er_shape_falsum_inter_key_disk(X0).
inter_er_shape_falsum_inter_peg_disk(X0) :- er_shape_falsum(X0),inter_peg_disk(X0).
-inter_er_shape_falsum_inter_peg_disk(X0) :- object(X0),not inter_er_shape_falsum_inter_peg_disk(X0).
inter_er_shape_falsum_subset_verum_falsum(X0) :- er_shape_falsum(X0),subset_verum_falsum(null).
-inter_er_shape_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_falsum(X0).
inter_er_shape_falsum_subset_verum_key(X0) :- er_shape_falsum(X0),subset_verum_key(null).
-inter_er_shape_falsum_subset_verum_key(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_key(X0).
inter_er_shape_falsum_subset_verum_peg(X0) :- er_shape_falsum(X0),subset_verum_peg(null).
-inter_er_shape_falsum_subset_verum_peg(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_peg(X0).
inter_er_shape_falsum_subset_verum_disk(X0) :- er_shape_falsum(X0),subset_verum_disk(null).
-inter_er_shape_falsum_subset_verum_disk(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_disk(X0).
inter_er_shape_falsum_subset_falsum_key(X0) :- er_shape_falsum(X0),subset_falsum_key(null).
-inter_er_shape_falsum_subset_falsum_key(X0) :- object(X0),not inter_er_shape_falsum_subset_falsum_key(X0).
inter_er_shape_falsum_subset_falsum_peg(X0) :- er_shape_falsum(X0),subset_falsum_peg(null).
-inter_er_shape_falsum_subset_falsum_peg(X0) :- object(X0),not inter_er_shape_falsum_subset_falsum_peg(X0).
inter_er_shape_falsum_subset_falsum_disk(X0) :- er_shape_falsum(X0),subset_falsum_disk(null).
-inter_er_shape_falsum_subset_falsum_disk(X0) :- object(X0),not inter_er_shape_falsum_subset_falsum_disk(X0).
inter_er_shape_falsum_subset_key_peg(X0) :- er_shape_falsum(X0),subset_key_peg(null).
-inter_er_shape_falsum_subset_key_peg(X0) :- object(X0),not inter_er_shape_falsum_subset_key_peg(X0).
inter_er_shape_falsum_subset_key_disk(X0) :- er_shape_falsum(X0),subset_key_disk(null).
-inter_er_shape_falsum_subset_key_disk(X0) :- object(X0),not inter_er_shape_falsum_subset_key_disk(X0).
inter_er_shape_falsum_subset_peg_disk(X0) :- er_shape_falsum(X0),subset_peg_disk(null).
-inter_er_shape_falsum_subset_peg_disk(X0) :- object(X0),not inter_er_shape_falsum_subset_peg_disk(X0).
inter_er_smaller_key_er_below_key(X0) :- er_smaller_key(X0),er_below_key(X0).
-inter_er_smaller_key_er_below_key(X0) :- object(X0),not inter_er_smaller_key_er_below_key(X0).
inter_er_smaller_key_er_left_key(X0) :- er_smaller_key(X0),er_left_key(X0).
-inter_er_smaller_key_er_left_key(X0) :- object(X0),not inter_er_smaller_key_er_left_key(X0).
inter_er_smaller_key_er_overlap_key(X0) :- er_smaller_key(X0),er_overlap_key(X0).
-inter_er_smaller_key_er_overlap_key(X0) :- object(X0),not inter_er_smaller_key_er_overlap_key(X0).
inter_er_smaller_key_er_shape_key(X0) :- er_smaller_key(X0),er_shape_key(X0).
-inter_er_smaller_key_er_shape_key(X0) :- object(X0),not inter_er_smaller_key_er_shape_key(X0).
inter_er_smaller_key_er_smaller_peg(X0) :- er_smaller_key(X0),er_smaller_peg(X0).
-inter_er_smaller_key_er_smaller_peg(X0) :- object(X0),not inter_er_smaller_key_er_smaller_peg(X0).
inter_er_smaller_key_er_below_peg(X0) :- er_smaller_key(X0),er_below_peg(X0).
-inter_er_smaller_key_er_below_peg(X0) :- object(X0),not inter_er_smaller_key_er_below_peg(X0).
inter_er_smaller_key_er_left_peg(X0) :- er_smaller_key(X0),er_left_peg(X0).
-inter_er_smaller_key_er_left_peg(X0) :- object(X0),not inter_er_smaller_key_er_left_peg(X0).
inter_er_smaller_key_er_overlap_peg(X0) :- er_smaller_key(X0),er_overlap_peg(X0).
-inter_er_smaller_key_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_key_er_overlap_peg(X0).
inter_er_smaller_key_er_shape_peg(X0) :- er_smaller_key(X0),er_shape_peg(X0).
-inter_er_smaller_key_er_shape_peg(X0) :- object(X0),not inter_er_smaller_key_er_shape_peg(X0).
inter_er_smaller_key_er_smaller_disk(X0) :- er_smaller_key(X0),er_smaller_disk(X0).
-inter_er_smaller_key_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_key_er_smaller_disk(X0).
inter_er_smaller_key_er_below_disk(X0) :- er_smaller_key(X0),er_below_disk(X0).
-inter_er_smaller_key_er_below_disk(X0) :- object(X0),not inter_er_smaller_key_er_below_disk(X0).
inter_er_smaller_key_er_left_disk(X0) :- er_smaller_key(X0),er_left_disk(X0).
-inter_er_smaller_key_er_left_disk(X0) :- object(X0),not inter_er_smaller_key_er_left_disk(X0).
inter_er_smaller_key_er_overlap_disk(X0) :- er_smaller_key(X0),er_overlap_disk(X0).
-inter_er_smaller_key_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_key_er_overlap_disk(X0).
inter_er_smaller_key_er_shape_disk(X0) :- er_smaller_key(X0),er_shape_disk(X0).
-inter_er_smaller_key_er_shape_disk(X0) :- object(X0),not inter_er_smaller_key_er_shape_disk(X0).
inter_er_smaller_key_inter_verum_falsum(X0) :- er_smaller_key(X0),inter_verum_falsum(X0).
-inter_er_smaller_key_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_key_inter_verum_falsum(X0).
inter_er_smaller_key_inter_verum_key(X0) :- er_smaller_key(X0),inter_verum_key(X0).
-inter_er_smaller_key_inter_verum_key(X0) :- object(X0),not inter_er_smaller_key_inter_verum_key(X0).
inter_er_smaller_key_inter_verum_peg(X0) :- er_smaller_key(X0),inter_verum_peg(X0).
-inter_er_smaller_key_inter_verum_peg(X0) :- object(X0),not inter_er_smaller_key_inter_verum_peg(X0).
inter_er_smaller_key_inter_verum_disk(X0) :- er_smaller_key(X0),inter_verum_disk(X0).
-inter_er_smaller_key_inter_verum_disk(X0) :- object(X0),not inter_er_smaller_key_inter_verum_disk(X0).
inter_er_smaller_key_inter_falsum_key(X0) :- er_smaller_key(X0),inter_falsum_key(X0).
-inter_er_smaller_key_inter_falsum_key(X0) :- object(X0),not inter_er_smaller_key_inter_falsum_key(X0).
inter_er_smaller_key_inter_falsum_peg(X0) :- er_smaller_key(X0),inter_falsum_peg(X0).
-inter_er_smaller_key_inter_falsum_peg(X0) :- object(X0),not inter_er_smaller_key_inter_falsum_peg(X0).
inter_er_smaller_key_inter_falsum_disk(X0) :- er_smaller_key(X0),inter_falsum_disk(X0).
-inter_er_smaller_key_inter_falsum_disk(X0) :- object(X0),not inter_er_smaller_key_inter_falsum_disk(X0).
inter_er_smaller_key_inter_key_peg(X0) :- er_smaller_key(X0),inter_key_peg(X0).
-inter_er_smaller_key_inter_key_peg(X0) :- object(X0),not inter_er_smaller_key_inter_key_peg(X0).
inter_er_smaller_key_inter_key_disk(X0) :- er_smaller_key(X0),inter_key_disk(X0).
-inter_er_smaller_key_inter_key_disk(X0) :- object(X0),not inter_er_smaller_key_inter_key_disk(X0).
inter_er_smaller_key_inter_peg_disk(X0) :- er_smaller_key(X0),inter_peg_disk(X0).
-inter_er_smaller_key_inter_peg_disk(X0) :- object(X0),not inter_er_smaller_key_inter_peg_disk(X0).
inter_er_smaller_key_subset_verum_falsum(X0) :- er_smaller_key(X0),subset_verum_falsum(null).
-inter_er_smaller_key_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_key_subset_verum_falsum(X0).
inter_er_smaller_key_subset_verum_key(X0) :- er_smaller_key(X0),subset_verum_key(null).
-inter_er_smaller_key_subset_verum_key(X0) :- object(X0),not inter_er_smaller_key_subset_verum_key(X0).
inter_er_smaller_key_subset_verum_peg(X0) :- er_smaller_key(X0),subset_verum_peg(null).
-inter_er_smaller_key_subset_verum_peg(X0) :- object(X0),not inter_er_smaller_key_subset_verum_peg(X0).
inter_er_smaller_key_subset_verum_disk(X0) :- er_smaller_key(X0),subset_verum_disk(null).
-inter_er_smaller_key_subset_verum_disk(X0) :- object(X0),not inter_er_smaller_key_subset_verum_disk(X0).
inter_er_smaller_key_subset_falsum_key(X0) :- er_smaller_key(X0),subset_falsum_key(null).
-inter_er_smaller_key_subset_falsum_key(X0) :- object(X0),not inter_er_smaller_key_subset_falsum_key(X0).
inter_er_smaller_key_subset_falsum_peg(X0) :- er_smaller_key(X0),subset_falsum_peg(null).
-inter_er_smaller_key_subset_falsum_peg(X0) :- object(X0),not inter_er_smaller_key_subset_falsum_peg(X0).
inter_er_smaller_key_subset_falsum_disk(X0) :- er_smaller_key(X0),subset_falsum_disk(null).
-inter_er_smaller_key_subset_falsum_disk(X0) :- object(X0),not inter_er_smaller_key_subset_falsum_disk(X0).
inter_er_smaller_key_subset_key_peg(X0) :- er_smaller_key(X0),subset_key_peg(null).
-inter_er_smaller_key_subset_key_peg(X0) :- object(X0),not inter_er_smaller_key_subset_key_peg(X0).
inter_er_smaller_key_subset_key_disk(X0) :- er_smaller_key(X0),subset_key_disk(null).
-inter_er_smaller_key_subset_key_disk(X0) :- object(X0),not inter_er_smaller_key_subset_key_disk(X0).
inter_er_smaller_key_subset_peg_disk(X0) :- er_smaller_key(X0),subset_peg_disk(null).
-inter_er_smaller_key_subset_peg_disk(X0) :- object(X0),not inter_er_smaller_key_subset_peg_disk(X0).
inter_er_below_key_er_left_key(X0) :- er_below_key(X0),er_left_key(X0).
-inter_er_below_key_er_left_key(X0) :- object(X0),not inter_er_below_key_er_left_key(X0).
inter_er_below_key_er_overlap_key(X0) :- er_below_key(X0),er_overlap_key(X0).
-inter_er_below_key_er_overlap_key(X0) :- object(X0),not inter_er_below_key_er_overlap_key(X0).
inter_er_below_key_er_shape_key(X0) :- er_below_key(X0),er_shape_key(X0).
-inter_er_below_key_er_shape_key(X0) :- object(X0),not inter_er_below_key_er_shape_key(X0).
inter_er_below_key_er_smaller_peg(X0) :- er_below_key(X0),er_smaller_peg(X0).
-inter_er_below_key_er_smaller_peg(X0) :- object(X0),not inter_er_below_key_er_smaller_peg(X0).
inter_er_below_key_er_below_peg(X0) :- er_below_key(X0),er_below_peg(X0).
-inter_er_below_key_er_below_peg(X0) :- object(X0),not inter_er_below_key_er_below_peg(X0).
inter_er_below_key_er_left_peg(X0) :- er_below_key(X0),er_left_peg(X0).
-inter_er_below_key_er_left_peg(X0) :- object(X0),not inter_er_below_key_er_left_peg(X0).
inter_er_below_key_er_overlap_peg(X0) :- er_below_key(X0),er_overlap_peg(X0).
-inter_er_below_key_er_overlap_peg(X0) :- object(X0),not inter_er_below_key_er_overlap_peg(X0).
inter_er_below_key_er_shape_peg(X0) :- er_below_key(X0),er_shape_peg(X0).
-inter_er_below_key_er_shape_peg(X0) :- object(X0),not inter_er_below_key_er_shape_peg(X0).
inter_er_below_key_er_smaller_disk(X0) :- er_below_key(X0),er_smaller_disk(X0).
-inter_er_below_key_er_smaller_disk(X0) :- object(X0),not inter_er_below_key_er_smaller_disk(X0).
inter_er_below_key_er_below_disk(X0) :- er_below_key(X0),er_below_disk(X0).
-inter_er_below_key_er_below_disk(X0) :- object(X0),not inter_er_below_key_er_below_disk(X0).
inter_er_below_key_er_left_disk(X0) :- er_below_key(X0),er_left_disk(X0).
-inter_er_below_key_er_left_disk(X0) :- object(X0),not inter_er_below_key_er_left_disk(X0).
inter_er_below_key_er_overlap_disk(X0) :- er_below_key(X0),er_overlap_disk(X0).
-inter_er_below_key_er_overlap_disk(X0) :- object(X0),not inter_er_below_key_er_overlap_disk(X0).
inter_er_below_key_er_shape_disk(X0) :- er_below_key(X0),er_shape_disk(X0).
-inter_er_below_key_er_shape_disk(X0) :- object(X0),not inter_er_below_key_er_shape_disk(X0).
inter_er_below_key_inter_verum_falsum(X0) :- er_below_key(X0),inter_verum_falsum(X0).
-inter_er_below_key_inter_verum_falsum(X0) :- object(X0),not inter_er_below_key_inter_verum_falsum(X0).
inter_er_below_key_inter_verum_key(X0) :- er_below_key(X0),inter_verum_key(X0).
-inter_er_below_key_inter_verum_key(X0) :- object(X0),not inter_er_below_key_inter_verum_key(X0).
inter_er_below_key_inter_verum_peg(X0) :- er_below_key(X0),inter_verum_peg(X0).
-inter_er_below_key_inter_verum_peg(X0) :- object(X0),not inter_er_below_key_inter_verum_peg(X0).
inter_er_below_key_inter_verum_disk(X0) :- er_below_key(X0),inter_verum_disk(X0).
-inter_er_below_key_inter_verum_disk(X0) :- object(X0),not inter_er_below_key_inter_verum_disk(X0).
inter_er_below_key_inter_falsum_key(X0) :- er_below_key(X0),inter_falsum_key(X0).
-inter_er_below_key_inter_falsum_key(X0) :- object(X0),not inter_er_below_key_inter_falsum_key(X0).
inter_er_below_key_inter_falsum_peg(X0) :- er_below_key(X0),inter_falsum_peg(X0).
-inter_er_below_key_inter_falsum_peg(X0) :- object(X0),not inter_er_below_key_inter_falsum_peg(X0).
inter_er_below_key_inter_falsum_disk(X0) :- er_below_key(X0),inter_falsum_disk(X0).
-inter_er_below_key_inter_falsum_disk(X0) :- object(X0),not inter_er_below_key_inter_falsum_disk(X0).
inter_er_below_key_inter_key_peg(X0) :- er_below_key(X0),inter_key_peg(X0).
-inter_er_below_key_inter_key_peg(X0) :- object(X0),not inter_er_below_key_inter_key_peg(X0).
inter_er_below_key_inter_key_disk(X0) :- er_below_key(X0),inter_key_disk(X0).
-inter_er_below_key_inter_key_disk(X0) :- object(X0),not inter_er_below_key_inter_key_disk(X0).
inter_er_below_key_inter_peg_disk(X0) :- er_below_key(X0),inter_peg_disk(X0).
-inter_er_below_key_inter_peg_disk(X0) :- object(X0),not inter_er_below_key_inter_peg_disk(X0).
inter_er_below_key_subset_verum_falsum(X0) :- er_below_key(X0),subset_verum_falsum(null).
-inter_er_below_key_subset_verum_falsum(X0) :- object(X0),not inter_er_below_key_subset_verum_falsum(X0).
inter_er_below_key_subset_verum_key(X0) :- er_below_key(X0),subset_verum_key(null).
-inter_er_below_key_subset_verum_key(X0) :- object(X0),not inter_er_below_key_subset_verum_key(X0).
inter_er_below_key_subset_verum_peg(X0) :- er_below_key(X0),subset_verum_peg(null).
-inter_er_below_key_subset_verum_peg(X0) :- object(X0),not inter_er_below_key_subset_verum_peg(X0).
inter_er_below_key_subset_verum_disk(X0) :- er_below_key(X0),subset_verum_disk(null).
-inter_er_below_key_subset_verum_disk(X0) :- object(X0),not inter_er_below_key_subset_verum_disk(X0).
inter_er_below_key_subset_falsum_key(X0) :- er_below_key(X0),subset_falsum_key(null).
-inter_er_below_key_subset_falsum_key(X0) :- object(X0),not inter_er_below_key_subset_falsum_key(X0).
inter_er_below_key_subset_falsum_peg(X0) :- er_below_key(X0),subset_falsum_peg(null).
-inter_er_below_key_subset_falsum_peg(X0) :- object(X0),not inter_er_below_key_subset_falsum_peg(X0).
inter_er_below_key_subset_falsum_disk(X0) :- er_below_key(X0),subset_falsum_disk(null).
-inter_er_below_key_subset_falsum_disk(X0) :- object(X0),not inter_er_below_key_subset_falsum_disk(X0).
inter_er_below_key_subset_key_peg(X0) :- er_below_key(X0),subset_key_peg(null).
-inter_er_below_key_subset_key_peg(X0) :- object(X0),not inter_er_below_key_subset_key_peg(X0).
inter_er_below_key_subset_key_disk(X0) :- er_below_key(X0),subset_key_disk(null).
-inter_er_below_key_subset_key_disk(X0) :- object(X0),not inter_er_below_key_subset_key_disk(X0).
inter_er_below_key_subset_peg_disk(X0) :- er_below_key(X0),subset_peg_disk(null).
-inter_er_below_key_subset_peg_disk(X0) :- object(X0),not inter_er_below_key_subset_peg_disk(X0).
inter_er_left_key_er_overlap_key(X0) :- er_left_key(X0),er_overlap_key(X0).
-inter_er_left_key_er_overlap_key(X0) :- object(X0),not inter_er_left_key_er_overlap_key(X0).
inter_er_left_key_er_shape_key(X0) :- er_left_key(X0),er_shape_key(X0).
-inter_er_left_key_er_shape_key(X0) :- object(X0),not inter_er_left_key_er_shape_key(X0).
inter_er_left_key_er_smaller_peg(X0) :- er_left_key(X0),er_smaller_peg(X0).
-inter_er_left_key_er_smaller_peg(X0) :- object(X0),not inter_er_left_key_er_smaller_peg(X0).
inter_er_left_key_er_below_peg(X0) :- er_left_key(X0),er_below_peg(X0).
-inter_er_left_key_er_below_peg(X0) :- object(X0),not inter_er_left_key_er_below_peg(X0).
inter_er_left_key_er_left_peg(X0) :- er_left_key(X0),er_left_peg(X0).
-inter_er_left_key_er_left_peg(X0) :- object(X0),not inter_er_left_key_er_left_peg(X0).
inter_er_left_key_er_overlap_peg(X0) :- er_left_key(X0),er_overlap_peg(X0).
-inter_er_left_key_er_overlap_peg(X0) :- object(X0),not inter_er_left_key_er_overlap_peg(X0).
inter_er_left_key_er_shape_peg(X0) :- er_left_key(X0),er_shape_peg(X0).
-inter_er_left_key_er_shape_peg(X0) :- object(X0),not inter_er_left_key_er_shape_peg(X0).
inter_er_left_key_er_smaller_disk(X0) :- er_left_key(X0),er_smaller_disk(X0).
-inter_er_left_key_er_smaller_disk(X0) :- object(X0),not inter_er_left_key_er_smaller_disk(X0).
inter_er_left_key_er_below_disk(X0) :- er_left_key(X0),er_below_disk(X0).
-inter_er_left_key_er_below_disk(X0) :- object(X0),not inter_er_left_key_er_below_disk(X0).
inter_er_left_key_er_left_disk(X0) :- er_left_key(X0),er_left_disk(X0).
-inter_er_left_key_er_left_disk(X0) :- object(X0),not inter_er_left_key_er_left_disk(X0).
inter_er_left_key_er_overlap_disk(X0) :- er_left_key(X0),er_overlap_disk(X0).
-inter_er_left_key_er_overlap_disk(X0) :- object(X0),not inter_er_left_key_er_overlap_disk(X0).
inter_er_left_key_er_shape_disk(X0) :- er_left_key(X0),er_shape_disk(X0).
-inter_er_left_key_er_shape_disk(X0) :- object(X0),not inter_er_left_key_er_shape_disk(X0).
inter_er_left_key_inter_verum_falsum(X0) :- er_left_key(X0),inter_verum_falsum(X0).
-inter_er_left_key_inter_verum_falsum(X0) :- object(X0),not inter_er_left_key_inter_verum_falsum(X0).
inter_er_left_key_inter_verum_key(X0) :- er_left_key(X0),inter_verum_key(X0).
-inter_er_left_key_inter_verum_key(X0) :- object(X0),not inter_er_left_key_inter_verum_key(X0).
inter_er_left_key_inter_verum_peg(X0) :- er_left_key(X0),inter_verum_peg(X0).
-inter_er_left_key_inter_verum_peg(X0) :- object(X0),not inter_er_left_key_inter_verum_peg(X0).
inter_er_left_key_inter_verum_disk(X0) :- er_left_key(X0),inter_verum_disk(X0).
-inter_er_left_key_inter_verum_disk(X0) :- object(X0),not inter_er_left_key_inter_verum_disk(X0).
inter_er_left_key_inter_falsum_key(X0) :- er_left_key(X0),inter_falsum_key(X0).
-inter_er_left_key_inter_falsum_key(X0) :- object(X0),not inter_er_left_key_inter_falsum_key(X0).
inter_er_left_key_inter_falsum_peg(X0) :- er_left_key(X0),inter_falsum_peg(X0).
-inter_er_left_key_inter_falsum_peg(X0) :- object(X0),not inter_er_left_key_inter_falsum_peg(X0).
inter_er_left_key_inter_falsum_disk(X0) :- er_left_key(X0),inter_falsum_disk(X0).
-inter_er_left_key_inter_falsum_disk(X0) :- object(X0),not inter_er_left_key_inter_falsum_disk(X0).
inter_er_left_key_inter_key_peg(X0) :- er_left_key(X0),inter_key_peg(X0).
-inter_er_left_key_inter_key_peg(X0) :- object(X0),not inter_er_left_key_inter_key_peg(X0).
inter_er_left_key_inter_key_disk(X0) :- er_left_key(X0),inter_key_disk(X0).
-inter_er_left_key_inter_key_disk(X0) :- object(X0),not inter_er_left_key_inter_key_disk(X0).
inter_er_left_key_inter_peg_disk(X0) :- er_left_key(X0),inter_peg_disk(X0).
-inter_er_left_key_inter_peg_disk(X0) :- object(X0),not inter_er_left_key_inter_peg_disk(X0).
inter_er_left_key_subset_verum_falsum(X0) :- er_left_key(X0),subset_verum_falsum(null).
-inter_er_left_key_subset_verum_falsum(X0) :- object(X0),not inter_er_left_key_subset_verum_falsum(X0).
inter_er_left_key_subset_verum_key(X0) :- er_left_key(X0),subset_verum_key(null).
-inter_er_left_key_subset_verum_key(X0) :- object(X0),not inter_er_left_key_subset_verum_key(X0).
inter_er_left_key_subset_verum_peg(X0) :- er_left_key(X0),subset_verum_peg(null).
-inter_er_left_key_subset_verum_peg(X0) :- object(X0),not inter_er_left_key_subset_verum_peg(X0).
inter_er_left_key_subset_verum_disk(X0) :- er_left_key(X0),subset_verum_disk(null).
-inter_er_left_key_subset_verum_disk(X0) :- object(X0),not inter_er_left_key_subset_verum_disk(X0).
inter_er_left_key_subset_falsum_key(X0) :- er_left_key(X0),subset_falsum_key(null).
-inter_er_left_key_subset_falsum_key(X0) :- object(X0),not inter_er_left_key_subset_falsum_key(X0).
inter_er_left_key_subset_falsum_peg(X0) :- er_left_key(X0),subset_falsum_peg(null).
-inter_er_left_key_subset_falsum_peg(X0) :- object(X0),not inter_er_left_key_subset_falsum_peg(X0).
inter_er_left_key_subset_falsum_disk(X0) :- er_left_key(X0),subset_falsum_disk(null).
-inter_er_left_key_subset_falsum_disk(X0) :- object(X0),not inter_er_left_key_subset_falsum_disk(X0).
inter_er_left_key_subset_key_peg(X0) :- er_left_key(X0),subset_key_peg(null).
-inter_er_left_key_subset_key_peg(X0) :- object(X0),not inter_er_left_key_subset_key_peg(X0).
inter_er_left_key_subset_key_disk(X0) :- er_left_key(X0),subset_key_disk(null).
-inter_er_left_key_subset_key_disk(X0) :- object(X0),not inter_er_left_key_subset_key_disk(X0).
inter_er_left_key_subset_peg_disk(X0) :- er_left_key(X0),subset_peg_disk(null).
-inter_er_left_key_subset_peg_disk(X0) :- object(X0),not inter_er_left_key_subset_peg_disk(X0).
inter_er_overlap_key_er_shape_key(X0) :- er_overlap_key(X0),er_shape_key(X0).
-inter_er_overlap_key_er_shape_key(X0) :- object(X0),not inter_er_overlap_key_er_shape_key(X0).
inter_er_overlap_key_er_smaller_peg(X0) :- er_overlap_key(X0),er_smaller_peg(X0).
-inter_er_overlap_key_er_smaller_peg(X0) :- object(X0),not inter_er_overlap_key_er_smaller_peg(X0).
inter_er_overlap_key_er_below_peg(X0) :- er_overlap_key(X0),er_below_peg(X0).
-inter_er_overlap_key_er_below_peg(X0) :- object(X0),not inter_er_overlap_key_er_below_peg(X0).
inter_er_overlap_key_er_left_peg(X0) :- er_overlap_key(X0),er_left_peg(X0).
-inter_er_overlap_key_er_left_peg(X0) :- object(X0),not inter_er_overlap_key_er_left_peg(X0).
inter_er_overlap_key_er_overlap_peg(X0) :- er_overlap_key(X0),er_overlap_peg(X0).
-inter_er_overlap_key_er_overlap_peg(X0) :- object(X0),not inter_er_overlap_key_er_overlap_peg(X0).
inter_er_overlap_key_er_shape_peg(X0) :- er_overlap_key(X0),er_shape_peg(X0).
-inter_er_overlap_key_er_shape_peg(X0) :- object(X0),not inter_er_overlap_key_er_shape_peg(X0).
inter_er_overlap_key_er_smaller_disk(X0) :- er_overlap_key(X0),er_smaller_disk(X0).
-inter_er_overlap_key_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_key_er_smaller_disk(X0).
inter_er_overlap_key_er_below_disk(X0) :- er_overlap_key(X0),er_below_disk(X0).
-inter_er_overlap_key_er_below_disk(X0) :- object(X0),not inter_er_overlap_key_er_below_disk(X0).
inter_er_overlap_key_er_left_disk(X0) :- er_overlap_key(X0),er_left_disk(X0).
-inter_er_overlap_key_er_left_disk(X0) :- object(X0),not inter_er_overlap_key_er_left_disk(X0).
inter_er_overlap_key_er_overlap_disk(X0) :- er_overlap_key(X0),er_overlap_disk(X0).
-inter_er_overlap_key_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_key_er_overlap_disk(X0).
inter_er_overlap_key_er_shape_disk(X0) :- er_overlap_key(X0),er_shape_disk(X0).
-inter_er_overlap_key_er_shape_disk(X0) :- object(X0),not inter_er_overlap_key_er_shape_disk(X0).
inter_er_overlap_key_inter_verum_falsum(X0) :- er_overlap_key(X0),inter_verum_falsum(X0).
-inter_er_overlap_key_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_key_inter_verum_falsum(X0).
inter_er_overlap_key_inter_verum_key(X0) :- er_overlap_key(X0),inter_verum_key(X0).
-inter_er_overlap_key_inter_verum_key(X0) :- object(X0),not inter_er_overlap_key_inter_verum_key(X0).
inter_er_overlap_key_inter_verum_peg(X0) :- er_overlap_key(X0),inter_verum_peg(X0).
-inter_er_overlap_key_inter_verum_peg(X0) :- object(X0),not inter_er_overlap_key_inter_verum_peg(X0).
inter_er_overlap_key_inter_verum_disk(X0) :- er_overlap_key(X0),inter_verum_disk(X0).
-inter_er_overlap_key_inter_verum_disk(X0) :- object(X0),not inter_er_overlap_key_inter_verum_disk(X0).
inter_er_overlap_key_inter_falsum_key(X0) :- er_overlap_key(X0),inter_falsum_key(X0).
-inter_er_overlap_key_inter_falsum_key(X0) :- object(X0),not inter_er_overlap_key_inter_falsum_key(X0).
inter_er_overlap_key_inter_falsum_peg(X0) :- er_overlap_key(X0),inter_falsum_peg(X0).
-inter_er_overlap_key_inter_falsum_peg(X0) :- object(X0),not inter_er_overlap_key_inter_falsum_peg(X0).
inter_er_overlap_key_inter_falsum_disk(X0) :- er_overlap_key(X0),inter_falsum_disk(X0).
-inter_er_overlap_key_inter_falsum_disk(X0) :- object(X0),not inter_er_overlap_key_inter_falsum_disk(X0).
inter_er_overlap_key_inter_key_peg(X0) :- er_overlap_key(X0),inter_key_peg(X0).
-inter_er_overlap_key_inter_key_peg(X0) :- object(X0),not inter_er_overlap_key_inter_key_peg(X0).
inter_er_overlap_key_inter_key_disk(X0) :- er_overlap_key(X0),inter_key_disk(X0).
-inter_er_overlap_key_inter_key_disk(X0) :- object(X0),not inter_er_overlap_key_inter_key_disk(X0).
inter_er_overlap_key_inter_peg_disk(X0) :- er_overlap_key(X0),inter_peg_disk(X0).
-inter_er_overlap_key_inter_peg_disk(X0) :- object(X0),not inter_er_overlap_key_inter_peg_disk(X0).
inter_er_overlap_key_subset_verum_falsum(X0) :- er_overlap_key(X0),subset_verum_falsum(null).
-inter_er_overlap_key_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_key_subset_verum_falsum(X0).
inter_er_overlap_key_subset_verum_key(X0) :- er_overlap_key(X0),subset_verum_key(null).
-inter_er_overlap_key_subset_verum_key(X0) :- object(X0),not inter_er_overlap_key_subset_verum_key(X0).
inter_er_overlap_key_subset_verum_peg(X0) :- er_overlap_key(X0),subset_verum_peg(null).
-inter_er_overlap_key_subset_verum_peg(X0) :- object(X0),not inter_er_overlap_key_subset_verum_peg(X0).
inter_er_overlap_key_subset_verum_disk(X0) :- er_overlap_key(X0),subset_verum_disk(null).
-inter_er_overlap_key_subset_verum_disk(X0) :- object(X0),not inter_er_overlap_key_subset_verum_disk(X0).
inter_er_overlap_key_subset_falsum_key(X0) :- er_overlap_key(X0),subset_falsum_key(null).
-inter_er_overlap_key_subset_falsum_key(X0) :- object(X0),not inter_er_overlap_key_subset_falsum_key(X0).
inter_er_overlap_key_subset_falsum_peg(X0) :- er_overlap_key(X0),subset_falsum_peg(null).
-inter_er_overlap_key_subset_falsum_peg(X0) :- object(X0),not inter_er_overlap_key_subset_falsum_peg(X0).
inter_er_overlap_key_subset_falsum_disk(X0) :- er_overlap_key(X0),subset_falsum_disk(null).
-inter_er_overlap_key_subset_falsum_disk(X0) :- object(X0),not inter_er_overlap_key_subset_falsum_disk(X0).
inter_er_overlap_key_subset_key_peg(X0) :- er_overlap_key(X0),subset_key_peg(null).
-inter_er_overlap_key_subset_key_peg(X0) :- object(X0),not inter_er_overlap_key_subset_key_peg(X0).
inter_er_overlap_key_subset_key_disk(X0) :- er_overlap_key(X0),subset_key_disk(null).
-inter_er_overlap_key_subset_key_disk(X0) :- object(X0),not inter_er_overlap_key_subset_key_disk(X0).
inter_er_overlap_key_subset_peg_disk(X0) :- er_overlap_key(X0),subset_peg_disk(null).
-inter_er_overlap_key_subset_peg_disk(X0) :- object(X0),not inter_er_overlap_key_subset_peg_disk(X0).
inter_er_shape_key_er_smaller_peg(X0) :- er_shape_key(X0),er_smaller_peg(X0).
-inter_er_shape_key_er_smaller_peg(X0) :- object(X0),not inter_er_shape_key_er_smaller_peg(X0).
inter_er_shape_key_er_below_peg(X0) :- er_shape_key(X0),er_below_peg(X0).
-inter_er_shape_key_er_below_peg(X0) :- object(X0),not inter_er_shape_key_er_below_peg(X0).
inter_er_shape_key_er_left_peg(X0) :- er_shape_key(X0),er_left_peg(X0).
-inter_er_shape_key_er_left_peg(X0) :- object(X0),not inter_er_shape_key_er_left_peg(X0).
inter_er_shape_key_er_overlap_peg(X0) :- er_shape_key(X0),er_overlap_peg(X0).
-inter_er_shape_key_er_overlap_peg(X0) :- object(X0),not inter_er_shape_key_er_overlap_peg(X0).
inter_er_shape_key_er_shape_peg(X0) :- er_shape_key(X0),er_shape_peg(X0).
-inter_er_shape_key_er_shape_peg(X0) :- object(X0),not inter_er_shape_key_er_shape_peg(X0).
inter_er_shape_key_er_smaller_disk(X0) :- er_shape_key(X0),er_smaller_disk(X0).
-inter_er_shape_key_er_smaller_disk(X0) :- object(X0),not inter_er_shape_key_er_smaller_disk(X0).
inter_er_shape_key_er_below_disk(X0) :- er_shape_key(X0),er_below_disk(X0).
-inter_er_shape_key_er_below_disk(X0) :- object(X0),not inter_er_shape_key_er_below_disk(X0).
inter_er_shape_key_er_left_disk(X0) :- er_shape_key(X0),er_left_disk(X0).
-inter_er_shape_key_er_left_disk(X0) :- object(X0),not inter_er_shape_key_er_left_disk(X0).
inter_er_shape_key_er_overlap_disk(X0) :- er_shape_key(X0),er_overlap_disk(X0).
-inter_er_shape_key_er_overlap_disk(X0) :- object(X0),not inter_er_shape_key_er_overlap_disk(X0).
inter_er_shape_key_er_shape_disk(X0) :- er_shape_key(X0),er_shape_disk(X0).
-inter_er_shape_key_er_shape_disk(X0) :- object(X0),not inter_er_shape_key_er_shape_disk(X0).
inter_er_shape_key_inter_verum_falsum(X0) :- er_shape_key(X0),inter_verum_falsum(X0).
-inter_er_shape_key_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_key_inter_verum_falsum(X0).
inter_er_shape_key_inter_verum_key(X0) :- er_shape_key(X0),inter_verum_key(X0).
-inter_er_shape_key_inter_verum_key(X0) :- object(X0),not inter_er_shape_key_inter_verum_key(X0).
inter_er_shape_key_inter_verum_peg(X0) :- er_shape_key(X0),inter_verum_peg(X0).
-inter_er_shape_key_inter_verum_peg(X0) :- object(X0),not inter_er_shape_key_inter_verum_peg(X0).
inter_er_shape_key_inter_verum_disk(X0) :- er_shape_key(X0),inter_verum_disk(X0).
-inter_er_shape_key_inter_verum_disk(X0) :- object(X0),not inter_er_shape_key_inter_verum_disk(X0).
inter_er_shape_key_inter_falsum_key(X0) :- er_shape_key(X0),inter_falsum_key(X0).
-inter_er_shape_key_inter_falsum_key(X0) :- object(X0),not inter_er_shape_key_inter_falsum_key(X0).
inter_er_shape_key_inter_falsum_peg(X0) :- er_shape_key(X0),inter_falsum_peg(X0).
-inter_er_shape_key_inter_falsum_peg(X0) :- object(X0),not inter_er_shape_key_inter_falsum_peg(X0).
inter_er_shape_key_inter_falsum_disk(X0) :- er_shape_key(X0),inter_falsum_disk(X0).
-inter_er_shape_key_inter_falsum_disk(X0) :- object(X0),not inter_er_shape_key_inter_falsum_disk(X0).
inter_er_shape_key_inter_key_peg(X0) :- er_shape_key(X0),inter_key_peg(X0).
-inter_er_shape_key_inter_key_peg(X0) :- object(X0),not inter_er_shape_key_inter_key_peg(X0).
inter_er_shape_key_inter_key_disk(X0) :- er_shape_key(X0),inter_key_disk(X0).
-inter_er_shape_key_inter_key_disk(X0) :- object(X0),not inter_er_shape_key_inter_key_disk(X0).
inter_er_shape_key_inter_peg_disk(X0) :- er_shape_key(X0),inter_peg_disk(X0).
-inter_er_shape_key_inter_peg_disk(X0) :- object(X0),not inter_er_shape_key_inter_peg_disk(X0).
inter_er_shape_key_subset_verum_falsum(X0) :- er_shape_key(X0),subset_verum_falsum(null).
-inter_er_shape_key_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_key_subset_verum_falsum(X0).
inter_er_shape_key_subset_verum_key(X0) :- er_shape_key(X0),subset_verum_key(null).
-inter_er_shape_key_subset_verum_key(X0) :- object(X0),not inter_er_shape_key_subset_verum_key(X0).
inter_er_shape_key_subset_verum_peg(X0) :- er_shape_key(X0),subset_verum_peg(null).
-inter_er_shape_key_subset_verum_peg(X0) :- object(X0),not inter_er_shape_key_subset_verum_peg(X0).
inter_er_shape_key_subset_verum_disk(X0) :- er_shape_key(X0),subset_verum_disk(null).
-inter_er_shape_key_subset_verum_disk(X0) :- object(X0),not inter_er_shape_key_subset_verum_disk(X0).
inter_er_shape_key_subset_falsum_key(X0) :- er_shape_key(X0),subset_falsum_key(null).
-inter_er_shape_key_subset_falsum_key(X0) :- object(X0),not inter_er_shape_key_subset_falsum_key(X0).
inter_er_shape_key_subset_falsum_peg(X0) :- er_shape_key(X0),subset_falsum_peg(null).
-inter_er_shape_key_subset_falsum_peg(X0) :- object(X0),not inter_er_shape_key_subset_falsum_peg(X0).
inter_er_shape_key_subset_falsum_disk(X0) :- er_shape_key(X0),subset_falsum_disk(null).
-inter_er_shape_key_subset_falsum_disk(X0) :- object(X0),not inter_er_shape_key_subset_falsum_disk(X0).
inter_er_shape_key_subset_key_peg(X0) :- er_shape_key(X0),subset_key_peg(null).
-inter_er_shape_key_subset_key_peg(X0) :- object(X0),not inter_er_shape_key_subset_key_peg(X0).
inter_er_shape_key_subset_key_disk(X0) :- er_shape_key(X0),subset_key_disk(null).
-inter_er_shape_key_subset_key_disk(X0) :- object(X0),not inter_er_shape_key_subset_key_disk(X0).
inter_er_shape_key_subset_peg_disk(X0) :- er_shape_key(X0),subset_peg_disk(null).
-inter_er_shape_key_subset_peg_disk(X0) :- object(X0),not inter_er_shape_key_subset_peg_disk(X0).
inter_er_smaller_peg_er_below_peg(X0) :- er_smaller_peg(X0),er_below_peg(X0).
-inter_er_smaller_peg_er_below_peg(X0) :- object(X0),not inter_er_smaller_peg_er_below_peg(X0).
inter_er_smaller_peg_er_left_peg(X0) :- er_smaller_peg(X0),er_left_peg(X0).
-inter_er_smaller_peg_er_left_peg(X0) :- object(X0),not inter_er_smaller_peg_er_left_peg(X0).
inter_er_smaller_peg_er_overlap_peg(X0) :- er_smaller_peg(X0),er_overlap_peg(X0).
-inter_er_smaller_peg_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_peg_er_overlap_peg(X0).
inter_er_smaller_peg_er_shape_peg(X0) :- er_smaller_peg(X0),er_shape_peg(X0).
-inter_er_smaller_peg_er_shape_peg(X0) :- object(X0),not inter_er_smaller_peg_er_shape_peg(X0).
inter_er_smaller_peg_er_smaller_disk(X0) :- er_smaller_peg(X0),er_smaller_disk(X0).
-inter_er_smaller_peg_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_peg_er_smaller_disk(X0).
inter_er_smaller_peg_er_below_disk(X0) :- er_smaller_peg(X0),er_below_disk(X0).
-inter_er_smaller_peg_er_below_disk(X0) :- object(X0),not inter_er_smaller_peg_er_below_disk(X0).
inter_er_smaller_peg_er_left_disk(X0) :- er_smaller_peg(X0),er_left_disk(X0).
-inter_er_smaller_peg_er_left_disk(X0) :- object(X0),not inter_er_smaller_peg_er_left_disk(X0).
inter_er_smaller_peg_er_overlap_disk(X0) :- er_smaller_peg(X0),er_overlap_disk(X0).
-inter_er_smaller_peg_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_peg_er_overlap_disk(X0).
inter_er_smaller_peg_er_shape_disk(X0) :- er_smaller_peg(X0),er_shape_disk(X0).
-inter_er_smaller_peg_er_shape_disk(X0) :- object(X0),not inter_er_smaller_peg_er_shape_disk(X0).
inter_er_smaller_peg_inter_verum_falsum(X0) :- er_smaller_peg(X0),inter_verum_falsum(X0).
-inter_er_smaller_peg_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_peg_inter_verum_falsum(X0).
inter_er_smaller_peg_inter_verum_key(X0) :- er_smaller_peg(X0),inter_verum_key(X0).
-inter_er_smaller_peg_inter_verum_key(X0) :- object(X0),not inter_er_smaller_peg_inter_verum_key(X0).
inter_er_smaller_peg_inter_verum_peg(X0) :- er_smaller_peg(X0),inter_verum_peg(X0).
-inter_er_smaller_peg_inter_verum_peg(X0) :- object(X0),not inter_er_smaller_peg_inter_verum_peg(X0).
inter_er_smaller_peg_inter_verum_disk(X0) :- er_smaller_peg(X0),inter_verum_disk(X0).
-inter_er_smaller_peg_inter_verum_disk(X0) :- object(X0),not inter_er_smaller_peg_inter_verum_disk(X0).
inter_er_smaller_peg_inter_falsum_key(X0) :- er_smaller_peg(X0),inter_falsum_key(X0).
-inter_er_smaller_peg_inter_falsum_key(X0) :- object(X0),not inter_er_smaller_peg_inter_falsum_key(X0).
inter_er_smaller_peg_inter_falsum_peg(X0) :- er_smaller_peg(X0),inter_falsum_peg(X0).
-inter_er_smaller_peg_inter_falsum_peg(X0) :- object(X0),not inter_er_smaller_peg_inter_falsum_peg(X0).
inter_er_smaller_peg_inter_falsum_disk(X0) :- er_smaller_peg(X0),inter_falsum_disk(X0).
-inter_er_smaller_peg_inter_falsum_disk(X0) :- object(X0),not inter_er_smaller_peg_inter_falsum_disk(X0).
inter_er_smaller_peg_inter_key_peg(X0) :- er_smaller_peg(X0),inter_key_peg(X0).
-inter_er_smaller_peg_inter_key_peg(X0) :- object(X0),not inter_er_smaller_peg_inter_key_peg(X0).
inter_er_smaller_peg_inter_key_disk(X0) :- er_smaller_peg(X0),inter_key_disk(X0).
-inter_er_smaller_peg_inter_key_disk(X0) :- object(X0),not inter_er_smaller_peg_inter_key_disk(X0).
inter_er_smaller_peg_inter_peg_disk(X0) :- er_smaller_peg(X0),inter_peg_disk(X0).
-inter_er_smaller_peg_inter_peg_disk(X0) :- object(X0),not inter_er_smaller_peg_inter_peg_disk(X0).
inter_er_smaller_peg_subset_verum_falsum(X0) :- er_smaller_peg(X0),subset_verum_falsum(null).
-inter_er_smaller_peg_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_peg_subset_verum_falsum(X0).
inter_er_smaller_peg_subset_verum_key(X0) :- er_smaller_peg(X0),subset_verum_key(null).
-inter_er_smaller_peg_subset_verum_key(X0) :- object(X0),not inter_er_smaller_peg_subset_verum_key(X0).
inter_er_smaller_peg_subset_verum_peg(X0) :- er_smaller_peg(X0),subset_verum_peg(null).
-inter_er_smaller_peg_subset_verum_peg(X0) :- object(X0),not inter_er_smaller_peg_subset_verum_peg(X0).
inter_er_smaller_peg_subset_verum_disk(X0) :- er_smaller_peg(X0),subset_verum_disk(null).
-inter_er_smaller_peg_subset_verum_disk(X0) :- object(X0),not inter_er_smaller_peg_subset_verum_disk(X0).
inter_er_smaller_peg_subset_falsum_key(X0) :- er_smaller_peg(X0),subset_falsum_key(null).
-inter_er_smaller_peg_subset_falsum_key(X0) :- object(X0),not inter_er_smaller_peg_subset_falsum_key(X0).
inter_er_smaller_peg_subset_falsum_peg(X0) :- er_smaller_peg(X0),subset_falsum_peg(null).
-inter_er_smaller_peg_subset_falsum_peg(X0) :- object(X0),not inter_er_smaller_peg_subset_falsum_peg(X0).
inter_er_smaller_peg_subset_falsum_disk(X0) :- er_smaller_peg(X0),subset_falsum_disk(null).
-inter_er_smaller_peg_subset_falsum_disk(X0) :- object(X0),not inter_er_smaller_peg_subset_falsum_disk(X0).
inter_er_smaller_peg_subset_key_peg(X0) :- er_smaller_peg(X0),subset_key_peg(null).
-inter_er_smaller_peg_subset_key_peg(X0) :- object(X0),not inter_er_smaller_peg_subset_key_peg(X0).
inter_er_smaller_peg_subset_key_disk(X0) :- er_smaller_peg(X0),subset_key_disk(null).
-inter_er_smaller_peg_subset_key_disk(X0) :- object(X0),not inter_er_smaller_peg_subset_key_disk(X0).
inter_er_smaller_peg_subset_peg_disk(X0) :- er_smaller_peg(X0),subset_peg_disk(null).
-inter_er_smaller_peg_subset_peg_disk(X0) :- object(X0),not inter_er_smaller_peg_subset_peg_disk(X0).
inter_er_below_peg_er_left_peg(X0) :- er_below_peg(X0),er_left_peg(X0).
-inter_er_below_peg_er_left_peg(X0) :- object(X0),not inter_er_below_peg_er_left_peg(X0).
inter_er_below_peg_er_overlap_peg(X0) :- er_below_peg(X0),er_overlap_peg(X0).
-inter_er_below_peg_er_overlap_peg(X0) :- object(X0),not inter_er_below_peg_er_overlap_peg(X0).
inter_er_below_peg_er_shape_peg(X0) :- er_below_peg(X0),er_shape_peg(X0).
-inter_er_below_peg_er_shape_peg(X0) :- object(X0),not inter_er_below_peg_er_shape_peg(X0).
inter_er_below_peg_er_smaller_disk(X0) :- er_below_peg(X0),er_smaller_disk(X0).
-inter_er_below_peg_er_smaller_disk(X0) :- object(X0),not inter_er_below_peg_er_smaller_disk(X0).
inter_er_below_peg_er_below_disk(X0) :- er_below_peg(X0),er_below_disk(X0).
-inter_er_below_peg_er_below_disk(X0) :- object(X0),not inter_er_below_peg_er_below_disk(X0).
inter_er_below_peg_er_left_disk(X0) :- er_below_peg(X0),er_left_disk(X0).
-inter_er_below_peg_er_left_disk(X0) :- object(X0),not inter_er_below_peg_er_left_disk(X0).
inter_er_below_peg_er_overlap_disk(X0) :- er_below_peg(X0),er_overlap_disk(X0).
-inter_er_below_peg_er_overlap_disk(X0) :- object(X0),not inter_er_below_peg_er_overlap_disk(X0).
inter_er_below_peg_er_shape_disk(X0) :- er_below_peg(X0),er_shape_disk(X0).
-inter_er_below_peg_er_shape_disk(X0) :- object(X0),not inter_er_below_peg_er_shape_disk(X0).
inter_er_below_peg_inter_verum_falsum(X0) :- er_below_peg(X0),inter_verum_falsum(X0).
-inter_er_below_peg_inter_verum_falsum(X0) :- object(X0),not inter_er_below_peg_inter_verum_falsum(X0).
inter_er_below_peg_inter_verum_key(X0) :- er_below_peg(X0),inter_verum_key(X0).
-inter_er_below_peg_inter_verum_key(X0) :- object(X0),not inter_er_below_peg_inter_verum_key(X0).
inter_er_below_peg_inter_verum_peg(X0) :- er_below_peg(X0),inter_verum_peg(X0).
-inter_er_below_peg_inter_verum_peg(X0) :- object(X0),not inter_er_below_peg_inter_verum_peg(X0).
inter_er_below_peg_inter_verum_disk(X0) :- er_below_peg(X0),inter_verum_disk(X0).
-inter_er_below_peg_inter_verum_disk(X0) :- object(X0),not inter_er_below_peg_inter_verum_disk(X0).
inter_er_below_peg_inter_falsum_key(X0) :- er_below_peg(X0),inter_falsum_key(X0).
-inter_er_below_peg_inter_falsum_key(X0) :- object(X0),not inter_er_below_peg_inter_falsum_key(X0).
inter_er_below_peg_inter_falsum_peg(X0) :- er_below_peg(X0),inter_falsum_peg(X0).
-inter_er_below_peg_inter_falsum_peg(X0) :- object(X0),not inter_er_below_peg_inter_falsum_peg(X0).
inter_er_below_peg_inter_falsum_disk(X0) :- er_below_peg(X0),inter_falsum_disk(X0).
-inter_er_below_peg_inter_falsum_disk(X0) :- object(X0),not inter_er_below_peg_inter_falsum_disk(X0).
inter_er_below_peg_inter_key_peg(X0) :- er_below_peg(X0),inter_key_peg(X0).
-inter_er_below_peg_inter_key_peg(X0) :- object(X0),not inter_er_below_peg_inter_key_peg(X0).
inter_er_below_peg_inter_key_disk(X0) :- er_below_peg(X0),inter_key_disk(X0).
-inter_er_below_peg_inter_key_disk(X0) :- object(X0),not inter_er_below_peg_inter_key_disk(X0).
inter_er_below_peg_inter_peg_disk(X0) :- er_below_peg(X0),inter_peg_disk(X0).
-inter_er_below_peg_inter_peg_disk(X0) :- object(X0),not inter_er_below_peg_inter_peg_disk(X0).
inter_er_below_peg_subset_verum_falsum(X0) :- er_below_peg(X0),subset_verum_falsum(null).
-inter_er_below_peg_subset_verum_falsum(X0) :- object(X0),not inter_er_below_peg_subset_verum_falsum(X0).
inter_er_below_peg_subset_verum_key(X0) :- er_below_peg(X0),subset_verum_key(null).
-inter_er_below_peg_subset_verum_key(X0) :- object(X0),not inter_er_below_peg_subset_verum_key(X0).
inter_er_below_peg_subset_verum_peg(X0) :- er_below_peg(X0),subset_verum_peg(null).
-inter_er_below_peg_subset_verum_peg(X0) :- object(X0),not inter_er_below_peg_subset_verum_peg(X0).
inter_er_below_peg_subset_verum_disk(X0) :- er_below_peg(X0),subset_verum_disk(null).
-inter_er_below_peg_subset_verum_disk(X0) :- object(X0),not inter_er_below_peg_subset_verum_disk(X0).
inter_er_below_peg_subset_falsum_key(X0) :- er_below_peg(X0),subset_falsum_key(null).
-inter_er_below_peg_subset_falsum_key(X0) :- object(X0),not inter_er_below_peg_subset_falsum_key(X0).
inter_er_below_peg_subset_falsum_peg(X0) :- er_below_peg(X0),subset_falsum_peg(null).
-inter_er_below_peg_subset_falsum_peg(X0) :- object(X0),not inter_er_below_peg_subset_falsum_peg(X0).
inter_er_below_peg_subset_falsum_disk(X0) :- er_below_peg(X0),subset_falsum_disk(null).
-inter_er_below_peg_subset_falsum_disk(X0) :- object(X0),not inter_er_below_peg_subset_falsum_disk(X0).
inter_er_below_peg_subset_key_peg(X0) :- er_below_peg(X0),subset_key_peg(null).
-inter_er_below_peg_subset_key_peg(X0) :- object(X0),not inter_er_below_peg_subset_key_peg(X0).
inter_er_below_peg_subset_key_disk(X0) :- er_below_peg(X0),subset_key_disk(null).
-inter_er_below_peg_subset_key_disk(X0) :- object(X0),not inter_er_below_peg_subset_key_disk(X0).
inter_er_below_peg_subset_peg_disk(X0) :- er_below_peg(X0),subset_peg_disk(null).
-inter_er_below_peg_subset_peg_disk(X0) :- object(X0),not inter_er_below_peg_subset_peg_disk(X0).
inter_er_left_peg_er_overlap_peg(X0) :- er_left_peg(X0),er_overlap_peg(X0).
-inter_er_left_peg_er_overlap_peg(X0) :- object(X0),not inter_er_left_peg_er_overlap_peg(X0).
inter_er_left_peg_er_shape_peg(X0) :- er_left_peg(X0),er_shape_peg(X0).
-inter_er_left_peg_er_shape_peg(X0) :- object(X0),not inter_er_left_peg_er_shape_peg(X0).
inter_er_left_peg_er_smaller_disk(X0) :- er_left_peg(X0),er_smaller_disk(X0).
-inter_er_left_peg_er_smaller_disk(X0) :- object(X0),not inter_er_left_peg_er_smaller_disk(X0).
inter_er_left_peg_er_below_disk(X0) :- er_left_peg(X0),er_below_disk(X0).
-inter_er_left_peg_er_below_disk(X0) :- object(X0),not inter_er_left_peg_er_below_disk(X0).
inter_er_left_peg_er_left_disk(X0) :- er_left_peg(X0),er_left_disk(X0).
-inter_er_left_peg_er_left_disk(X0) :- object(X0),not inter_er_left_peg_er_left_disk(X0).
inter_er_left_peg_er_overlap_disk(X0) :- er_left_peg(X0),er_overlap_disk(X0).
-inter_er_left_peg_er_overlap_disk(X0) :- object(X0),not inter_er_left_peg_er_overlap_disk(X0).
inter_er_left_peg_er_shape_disk(X0) :- er_left_peg(X0),er_shape_disk(X0).
-inter_er_left_peg_er_shape_disk(X0) :- object(X0),not inter_er_left_peg_er_shape_disk(X0).
inter_er_left_peg_inter_verum_falsum(X0) :- er_left_peg(X0),inter_verum_falsum(X0).
-inter_er_left_peg_inter_verum_falsum(X0) :- object(X0),not inter_er_left_peg_inter_verum_falsum(X0).
inter_er_left_peg_inter_verum_key(X0) :- er_left_peg(X0),inter_verum_key(X0).
-inter_er_left_peg_inter_verum_key(X0) :- object(X0),not inter_er_left_peg_inter_verum_key(X0).
inter_er_left_peg_inter_verum_peg(X0) :- er_left_peg(X0),inter_verum_peg(X0).
-inter_er_left_peg_inter_verum_peg(X0) :- object(X0),not inter_er_left_peg_inter_verum_peg(X0).
inter_er_left_peg_inter_verum_disk(X0) :- er_left_peg(X0),inter_verum_disk(X0).
-inter_er_left_peg_inter_verum_disk(X0) :- object(X0),not inter_er_left_peg_inter_verum_disk(X0).
inter_er_left_peg_inter_falsum_key(X0) :- er_left_peg(X0),inter_falsum_key(X0).
-inter_er_left_peg_inter_falsum_key(X0) :- object(X0),not inter_er_left_peg_inter_falsum_key(X0).
inter_er_left_peg_inter_falsum_peg(X0) :- er_left_peg(X0),inter_falsum_peg(X0).
-inter_er_left_peg_inter_falsum_peg(X0) :- object(X0),not inter_er_left_peg_inter_falsum_peg(X0).
inter_er_left_peg_inter_falsum_disk(X0) :- er_left_peg(X0),inter_falsum_disk(X0).
-inter_er_left_peg_inter_falsum_disk(X0) :- object(X0),not inter_er_left_peg_inter_falsum_disk(X0).
inter_er_left_peg_inter_key_peg(X0) :- er_left_peg(X0),inter_key_peg(X0).
-inter_er_left_peg_inter_key_peg(X0) :- object(X0),not inter_er_left_peg_inter_key_peg(X0).
inter_er_left_peg_inter_key_disk(X0) :- er_left_peg(X0),inter_key_disk(X0).
-inter_er_left_peg_inter_key_disk(X0) :- object(X0),not inter_er_left_peg_inter_key_disk(X0).
inter_er_left_peg_inter_peg_disk(X0) :- er_left_peg(X0),inter_peg_disk(X0).
-inter_er_left_peg_inter_peg_disk(X0) :- object(X0),not inter_er_left_peg_inter_peg_disk(X0).
inter_er_left_peg_subset_verum_falsum(X0) :- er_left_peg(X0),subset_verum_falsum(null).
-inter_er_left_peg_subset_verum_falsum(X0) :- object(X0),not inter_er_left_peg_subset_verum_falsum(X0).
inter_er_left_peg_subset_verum_key(X0) :- er_left_peg(X0),subset_verum_key(null).
-inter_er_left_peg_subset_verum_key(X0) :- object(X0),not inter_er_left_peg_subset_verum_key(X0).
inter_er_left_peg_subset_verum_peg(X0) :- er_left_peg(X0),subset_verum_peg(null).
-inter_er_left_peg_subset_verum_peg(X0) :- object(X0),not inter_er_left_peg_subset_verum_peg(X0).
inter_er_left_peg_subset_verum_disk(X0) :- er_left_peg(X0),subset_verum_disk(null).
-inter_er_left_peg_subset_verum_disk(X0) :- object(X0),not inter_er_left_peg_subset_verum_disk(X0).
inter_er_left_peg_subset_falsum_key(X0) :- er_left_peg(X0),subset_falsum_key(null).
-inter_er_left_peg_subset_falsum_key(X0) :- object(X0),not inter_er_left_peg_subset_falsum_key(X0).
inter_er_left_peg_subset_falsum_peg(X0) :- er_left_peg(X0),subset_falsum_peg(null).
-inter_er_left_peg_subset_falsum_peg(X0) :- object(X0),not inter_er_left_peg_subset_falsum_peg(X0).
inter_er_left_peg_subset_falsum_disk(X0) :- er_left_peg(X0),subset_falsum_disk(null).
-inter_er_left_peg_subset_falsum_disk(X0) :- object(X0),not inter_er_left_peg_subset_falsum_disk(X0).
inter_er_left_peg_subset_key_peg(X0) :- er_left_peg(X0),subset_key_peg(null).
-inter_er_left_peg_subset_key_peg(X0) :- object(X0),not inter_er_left_peg_subset_key_peg(X0).
inter_er_left_peg_subset_key_disk(X0) :- er_left_peg(X0),subset_key_disk(null).
-inter_er_left_peg_subset_key_disk(X0) :- object(X0),not inter_er_left_peg_subset_key_disk(X0).
inter_er_left_peg_subset_peg_disk(X0) :- er_left_peg(X0),subset_peg_disk(null).
-inter_er_left_peg_subset_peg_disk(X0) :- object(X0),not inter_er_left_peg_subset_peg_disk(X0).
inter_er_overlap_peg_er_shape_peg(X0) :- er_overlap_peg(X0),er_shape_peg(X0).
-inter_er_overlap_peg_er_shape_peg(X0) :- object(X0),not inter_er_overlap_peg_er_shape_peg(X0).
inter_er_overlap_peg_er_smaller_disk(X0) :- er_overlap_peg(X0),er_smaller_disk(X0).
-inter_er_overlap_peg_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_peg_er_smaller_disk(X0).
inter_er_overlap_peg_er_below_disk(X0) :- er_overlap_peg(X0),er_below_disk(X0).
-inter_er_overlap_peg_er_below_disk(X0) :- object(X0),not inter_er_overlap_peg_er_below_disk(X0).
inter_er_overlap_peg_er_left_disk(X0) :- er_overlap_peg(X0),er_left_disk(X0).
-inter_er_overlap_peg_er_left_disk(X0) :- object(X0),not inter_er_overlap_peg_er_left_disk(X0).
inter_er_overlap_peg_er_overlap_disk(X0) :- er_overlap_peg(X0),er_overlap_disk(X0).
-inter_er_overlap_peg_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_peg_er_overlap_disk(X0).
inter_er_overlap_peg_er_shape_disk(X0) :- er_overlap_peg(X0),er_shape_disk(X0).
-inter_er_overlap_peg_er_shape_disk(X0) :- object(X0),not inter_er_overlap_peg_er_shape_disk(X0).
inter_er_overlap_peg_inter_verum_falsum(X0) :- er_overlap_peg(X0),inter_verum_falsum(X0).
-inter_er_overlap_peg_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_peg_inter_verum_falsum(X0).
inter_er_overlap_peg_inter_verum_key(X0) :- er_overlap_peg(X0),inter_verum_key(X0).
-inter_er_overlap_peg_inter_verum_key(X0) :- object(X0),not inter_er_overlap_peg_inter_verum_key(X0).
inter_er_overlap_peg_inter_verum_peg(X0) :- er_overlap_peg(X0),inter_verum_peg(X0).
-inter_er_overlap_peg_inter_verum_peg(X0) :- object(X0),not inter_er_overlap_peg_inter_verum_peg(X0).
inter_er_overlap_peg_inter_verum_disk(X0) :- er_overlap_peg(X0),inter_verum_disk(X0).
-inter_er_overlap_peg_inter_verum_disk(X0) :- object(X0),not inter_er_overlap_peg_inter_verum_disk(X0).
inter_er_overlap_peg_inter_falsum_key(X0) :- er_overlap_peg(X0),inter_falsum_key(X0).
-inter_er_overlap_peg_inter_falsum_key(X0) :- object(X0),not inter_er_overlap_peg_inter_falsum_key(X0).
inter_er_overlap_peg_inter_falsum_peg(X0) :- er_overlap_peg(X0),inter_falsum_peg(X0).
-inter_er_overlap_peg_inter_falsum_peg(X0) :- object(X0),not inter_er_overlap_peg_inter_falsum_peg(X0).
inter_er_overlap_peg_inter_falsum_disk(X0) :- er_overlap_peg(X0),inter_falsum_disk(X0).
-inter_er_overlap_peg_inter_falsum_disk(X0) :- object(X0),not inter_er_overlap_peg_inter_falsum_disk(X0).
inter_er_overlap_peg_inter_key_peg(X0) :- er_overlap_peg(X0),inter_key_peg(X0).
-inter_er_overlap_peg_inter_key_peg(X0) :- object(X0),not inter_er_overlap_peg_inter_key_peg(X0).
inter_er_overlap_peg_inter_key_disk(X0) :- er_overlap_peg(X0),inter_key_disk(X0).
-inter_er_overlap_peg_inter_key_disk(X0) :- object(X0),not inter_er_overlap_peg_inter_key_disk(X0).
inter_er_overlap_peg_inter_peg_disk(X0) :- er_overlap_peg(X0),inter_peg_disk(X0).
-inter_er_overlap_peg_inter_peg_disk(X0) :- object(X0),not inter_er_overlap_peg_inter_peg_disk(X0).
inter_er_overlap_peg_subset_verum_falsum(X0) :- er_overlap_peg(X0),subset_verum_falsum(null).
-inter_er_overlap_peg_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_peg_subset_verum_falsum(X0).
inter_er_overlap_peg_subset_verum_key(X0) :- er_overlap_peg(X0),subset_verum_key(null).
-inter_er_overlap_peg_subset_verum_key(X0) :- object(X0),not inter_er_overlap_peg_subset_verum_key(X0).
inter_er_overlap_peg_subset_verum_peg(X0) :- er_overlap_peg(X0),subset_verum_peg(null).
-inter_er_overlap_peg_subset_verum_peg(X0) :- object(X0),not inter_er_overlap_peg_subset_verum_peg(X0).
inter_er_overlap_peg_subset_verum_disk(X0) :- er_overlap_peg(X0),subset_verum_disk(null).
-inter_er_overlap_peg_subset_verum_disk(X0) :- object(X0),not inter_er_overlap_peg_subset_verum_disk(X0).
inter_er_overlap_peg_subset_falsum_key(X0) :- er_overlap_peg(X0),subset_falsum_key(null).
-inter_er_overlap_peg_subset_falsum_key(X0) :- object(X0),not inter_er_overlap_peg_subset_falsum_key(X0).
inter_er_overlap_peg_subset_falsum_peg(X0) :- er_overlap_peg(X0),subset_falsum_peg(null).
-inter_er_overlap_peg_subset_falsum_peg(X0) :- object(X0),not inter_er_overlap_peg_subset_falsum_peg(X0).
inter_er_overlap_peg_subset_falsum_disk(X0) :- er_overlap_peg(X0),subset_falsum_disk(null).
-inter_er_overlap_peg_subset_falsum_disk(X0) :- object(X0),not inter_er_overlap_peg_subset_falsum_disk(X0).
inter_er_overlap_peg_subset_key_peg(X0) :- er_overlap_peg(X0),subset_key_peg(null).
-inter_er_overlap_peg_subset_key_peg(X0) :- object(X0),not inter_er_overlap_peg_subset_key_peg(X0).
inter_er_overlap_peg_subset_key_disk(X0) :- er_overlap_peg(X0),subset_key_disk(null).
-inter_er_overlap_peg_subset_key_disk(X0) :- object(X0),not inter_er_overlap_peg_subset_key_disk(X0).
inter_er_overlap_peg_subset_peg_disk(X0) :- er_overlap_peg(X0),subset_peg_disk(null).
-inter_er_overlap_peg_subset_peg_disk(X0) :- object(X0),not inter_er_overlap_peg_subset_peg_disk(X0).
inter_er_shape_peg_er_smaller_disk(X0) :- er_shape_peg(X0),er_smaller_disk(X0).
-inter_er_shape_peg_er_smaller_disk(X0) :- object(X0),not inter_er_shape_peg_er_smaller_disk(X0).
inter_er_shape_peg_er_below_disk(X0) :- er_shape_peg(X0),er_below_disk(X0).
-inter_er_shape_peg_er_below_disk(X0) :- object(X0),not inter_er_shape_peg_er_below_disk(X0).
inter_er_shape_peg_er_left_disk(X0) :- er_shape_peg(X0),er_left_disk(X0).
-inter_er_shape_peg_er_left_disk(X0) :- object(X0),not inter_er_shape_peg_er_left_disk(X0).
inter_er_shape_peg_er_overlap_disk(X0) :- er_shape_peg(X0),er_overlap_disk(X0).
-inter_er_shape_peg_er_overlap_disk(X0) :- object(X0),not inter_er_shape_peg_er_overlap_disk(X0).
inter_er_shape_peg_er_shape_disk(X0) :- er_shape_peg(X0),er_shape_disk(X0).
-inter_er_shape_peg_er_shape_disk(X0) :- object(X0),not inter_er_shape_peg_er_shape_disk(X0).
inter_er_shape_peg_inter_verum_falsum(X0) :- er_shape_peg(X0),inter_verum_falsum(X0).
-inter_er_shape_peg_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_peg_inter_verum_falsum(X0).
inter_er_shape_peg_inter_verum_key(X0) :- er_shape_peg(X0),inter_verum_key(X0).
-inter_er_shape_peg_inter_verum_key(X0) :- object(X0),not inter_er_shape_peg_inter_verum_key(X0).
inter_er_shape_peg_inter_verum_peg(X0) :- er_shape_peg(X0),inter_verum_peg(X0).
-inter_er_shape_peg_inter_verum_peg(X0) :- object(X0),not inter_er_shape_peg_inter_verum_peg(X0).
inter_er_shape_peg_inter_verum_disk(X0) :- er_shape_peg(X0),inter_verum_disk(X0).
-inter_er_shape_peg_inter_verum_disk(X0) :- object(X0),not inter_er_shape_peg_inter_verum_disk(X0).
inter_er_shape_peg_inter_falsum_key(X0) :- er_shape_peg(X0),inter_falsum_key(X0).
-inter_er_shape_peg_inter_falsum_key(X0) :- object(X0),not inter_er_shape_peg_inter_falsum_key(X0).
inter_er_shape_peg_inter_falsum_peg(X0) :- er_shape_peg(X0),inter_falsum_peg(X0).
-inter_er_shape_peg_inter_falsum_peg(X0) :- object(X0),not inter_er_shape_peg_inter_falsum_peg(X0).
inter_er_shape_peg_inter_falsum_disk(X0) :- er_shape_peg(X0),inter_falsum_disk(X0).
-inter_er_shape_peg_inter_falsum_disk(X0) :- object(X0),not inter_er_shape_peg_inter_falsum_disk(X0).
inter_er_shape_peg_inter_key_peg(X0) :- er_shape_peg(X0),inter_key_peg(X0).
-inter_er_shape_peg_inter_key_peg(X0) :- object(X0),not inter_er_shape_peg_inter_key_peg(X0).
inter_er_shape_peg_inter_key_disk(X0) :- er_shape_peg(X0),inter_key_disk(X0).
-inter_er_shape_peg_inter_key_disk(X0) :- object(X0),not inter_er_shape_peg_inter_key_disk(X0).
inter_er_shape_peg_inter_peg_disk(X0) :- er_shape_peg(X0),inter_peg_disk(X0).
-inter_er_shape_peg_inter_peg_disk(X0) :- object(X0),not inter_er_shape_peg_inter_peg_disk(X0).
inter_er_shape_peg_subset_verum_falsum(X0) :- er_shape_peg(X0),subset_verum_falsum(null).
-inter_er_shape_peg_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_peg_subset_verum_falsum(X0).
inter_er_shape_peg_subset_verum_key(X0) :- er_shape_peg(X0),subset_verum_key(null).
-inter_er_shape_peg_subset_verum_key(X0) :- object(X0),not inter_er_shape_peg_subset_verum_key(X0).
inter_er_shape_peg_subset_verum_peg(X0) :- er_shape_peg(X0),subset_verum_peg(null).
-inter_er_shape_peg_subset_verum_peg(X0) :- object(X0),not inter_er_shape_peg_subset_verum_peg(X0).
inter_er_shape_peg_subset_verum_disk(X0) :- er_shape_peg(X0),subset_verum_disk(null).
-inter_er_shape_peg_subset_verum_disk(X0) :- object(X0),not inter_er_shape_peg_subset_verum_disk(X0).
inter_er_shape_peg_subset_falsum_key(X0) :- er_shape_peg(X0),subset_falsum_key(null).
-inter_er_shape_peg_subset_falsum_key(X0) :- object(X0),not inter_er_shape_peg_subset_falsum_key(X0).
inter_er_shape_peg_subset_falsum_peg(X0) :- er_shape_peg(X0),subset_falsum_peg(null).
-inter_er_shape_peg_subset_falsum_peg(X0) :- object(X0),not inter_er_shape_peg_subset_falsum_peg(X0).
inter_er_shape_peg_subset_falsum_disk(X0) :- er_shape_peg(X0),subset_falsum_disk(null).
-inter_er_shape_peg_subset_falsum_disk(X0) :- object(X0),not inter_er_shape_peg_subset_falsum_disk(X0).
inter_er_shape_peg_subset_key_peg(X0) :- er_shape_peg(X0),subset_key_peg(null).
-inter_er_shape_peg_subset_key_peg(X0) :- object(X0),not inter_er_shape_peg_subset_key_peg(X0).
inter_er_shape_peg_subset_key_disk(X0) :- er_shape_peg(X0),subset_key_disk(null).
-inter_er_shape_peg_subset_key_disk(X0) :- object(X0),not inter_er_shape_peg_subset_key_disk(X0).
inter_er_shape_peg_subset_peg_disk(X0) :- er_shape_peg(X0),subset_peg_disk(null).
-inter_er_shape_peg_subset_peg_disk(X0) :- object(X0),not inter_er_shape_peg_subset_peg_disk(X0).
inter_er_smaller_disk_er_below_disk(X0) :- er_smaller_disk(X0),er_below_disk(X0).
-inter_er_smaller_disk_er_below_disk(X0) :- object(X0),not inter_er_smaller_disk_er_below_disk(X0).
inter_er_smaller_disk_er_left_disk(X0) :- er_smaller_disk(X0),er_left_disk(X0).
-inter_er_smaller_disk_er_left_disk(X0) :- object(X0),not inter_er_smaller_disk_er_left_disk(X0).
inter_er_smaller_disk_er_overlap_disk(X0) :- er_smaller_disk(X0),er_overlap_disk(X0).
-inter_er_smaller_disk_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_disk_er_overlap_disk(X0).
inter_er_smaller_disk_er_shape_disk(X0) :- er_smaller_disk(X0),er_shape_disk(X0).
-inter_er_smaller_disk_er_shape_disk(X0) :- object(X0),not inter_er_smaller_disk_er_shape_disk(X0).
inter_er_smaller_disk_inter_verum_falsum(X0) :- er_smaller_disk(X0),inter_verum_falsum(X0).
-inter_er_smaller_disk_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_disk_inter_verum_falsum(X0).
inter_er_smaller_disk_inter_verum_key(X0) :- er_smaller_disk(X0),inter_verum_key(X0).
-inter_er_smaller_disk_inter_verum_key(X0) :- object(X0),not inter_er_smaller_disk_inter_verum_key(X0).
inter_er_smaller_disk_inter_verum_peg(X0) :- er_smaller_disk(X0),inter_verum_peg(X0).
-inter_er_smaller_disk_inter_verum_peg(X0) :- object(X0),not inter_er_smaller_disk_inter_verum_peg(X0).
inter_er_smaller_disk_inter_verum_disk(X0) :- er_smaller_disk(X0),inter_verum_disk(X0).
-inter_er_smaller_disk_inter_verum_disk(X0) :- object(X0),not inter_er_smaller_disk_inter_verum_disk(X0).
inter_er_smaller_disk_inter_falsum_key(X0) :- er_smaller_disk(X0),inter_falsum_key(X0).
-inter_er_smaller_disk_inter_falsum_key(X0) :- object(X0),not inter_er_smaller_disk_inter_falsum_key(X0).
inter_er_smaller_disk_inter_falsum_peg(X0) :- er_smaller_disk(X0),inter_falsum_peg(X0).
-inter_er_smaller_disk_inter_falsum_peg(X0) :- object(X0),not inter_er_smaller_disk_inter_falsum_peg(X0).
inter_er_smaller_disk_inter_falsum_disk(X0) :- er_smaller_disk(X0),inter_falsum_disk(X0).
-inter_er_smaller_disk_inter_falsum_disk(X0) :- object(X0),not inter_er_smaller_disk_inter_falsum_disk(X0).
inter_er_smaller_disk_inter_key_peg(X0) :- er_smaller_disk(X0),inter_key_peg(X0).
-inter_er_smaller_disk_inter_key_peg(X0) :- object(X0),not inter_er_smaller_disk_inter_key_peg(X0).
inter_er_smaller_disk_inter_key_disk(X0) :- er_smaller_disk(X0),inter_key_disk(X0).
-inter_er_smaller_disk_inter_key_disk(X0) :- object(X0),not inter_er_smaller_disk_inter_key_disk(X0).
inter_er_smaller_disk_inter_peg_disk(X0) :- er_smaller_disk(X0),inter_peg_disk(X0).
-inter_er_smaller_disk_inter_peg_disk(X0) :- object(X0),not inter_er_smaller_disk_inter_peg_disk(X0).
inter_er_smaller_disk_subset_verum_falsum(X0) :- er_smaller_disk(X0),subset_verum_falsum(null).
-inter_er_smaller_disk_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_disk_subset_verum_falsum(X0).
inter_er_smaller_disk_subset_verum_key(X0) :- er_smaller_disk(X0),subset_verum_key(null).
-inter_er_smaller_disk_subset_verum_key(X0) :- object(X0),not inter_er_smaller_disk_subset_verum_key(X0).
inter_er_smaller_disk_subset_verum_peg(X0) :- er_smaller_disk(X0),subset_verum_peg(null).
-inter_er_smaller_disk_subset_verum_peg(X0) :- object(X0),not inter_er_smaller_disk_subset_verum_peg(X0).
inter_er_smaller_disk_subset_verum_disk(X0) :- er_smaller_disk(X0),subset_verum_disk(null).
-inter_er_smaller_disk_subset_verum_disk(X0) :- object(X0),not inter_er_smaller_disk_subset_verum_disk(X0).
inter_er_smaller_disk_subset_falsum_key(X0) :- er_smaller_disk(X0),subset_falsum_key(null).
-inter_er_smaller_disk_subset_falsum_key(X0) :- object(X0),not inter_er_smaller_disk_subset_falsum_key(X0).
inter_er_smaller_disk_subset_falsum_peg(X0) :- er_smaller_disk(X0),subset_falsum_peg(null).
-inter_er_smaller_disk_subset_falsum_peg(X0) :- object(X0),not inter_er_smaller_disk_subset_falsum_peg(X0).
inter_er_smaller_disk_subset_falsum_disk(X0) :- er_smaller_disk(X0),subset_falsum_disk(null).
-inter_er_smaller_disk_subset_falsum_disk(X0) :- object(X0),not inter_er_smaller_disk_subset_falsum_disk(X0).
inter_er_smaller_disk_subset_key_peg(X0) :- er_smaller_disk(X0),subset_key_peg(null).
-inter_er_smaller_disk_subset_key_peg(X0) :- object(X0),not inter_er_smaller_disk_subset_key_peg(X0).
inter_er_smaller_disk_subset_key_disk(X0) :- er_smaller_disk(X0),subset_key_disk(null).
-inter_er_smaller_disk_subset_key_disk(X0) :- object(X0),not inter_er_smaller_disk_subset_key_disk(X0).
inter_er_smaller_disk_subset_peg_disk(X0) :- er_smaller_disk(X0),subset_peg_disk(null).
-inter_er_smaller_disk_subset_peg_disk(X0) :- object(X0),not inter_er_smaller_disk_subset_peg_disk(X0).
inter_er_below_disk_er_left_disk(X0) :- er_below_disk(X0),er_left_disk(X0).
-inter_er_below_disk_er_left_disk(X0) :- object(X0),not inter_er_below_disk_er_left_disk(X0).
inter_er_below_disk_er_overlap_disk(X0) :- er_below_disk(X0),er_overlap_disk(X0).
-inter_er_below_disk_er_overlap_disk(X0) :- object(X0),not inter_er_below_disk_er_overlap_disk(X0).
inter_er_below_disk_er_shape_disk(X0) :- er_below_disk(X0),er_shape_disk(X0).
-inter_er_below_disk_er_shape_disk(X0) :- object(X0),not inter_er_below_disk_er_shape_disk(X0).
inter_er_below_disk_inter_verum_falsum(X0) :- er_below_disk(X0),inter_verum_falsum(X0).
-inter_er_below_disk_inter_verum_falsum(X0) :- object(X0),not inter_er_below_disk_inter_verum_falsum(X0).
inter_er_below_disk_inter_verum_key(X0) :- er_below_disk(X0),inter_verum_key(X0).
-inter_er_below_disk_inter_verum_key(X0) :- object(X0),not inter_er_below_disk_inter_verum_key(X0).
inter_er_below_disk_inter_verum_peg(X0) :- er_below_disk(X0),inter_verum_peg(X0).
-inter_er_below_disk_inter_verum_peg(X0) :- object(X0),not inter_er_below_disk_inter_verum_peg(X0).
inter_er_below_disk_inter_verum_disk(X0) :- er_below_disk(X0),inter_verum_disk(X0).
-inter_er_below_disk_inter_verum_disk(X0) :- object(X0),not inter_er_below_disk_inter_verum_disk(X0).
inter_er_below_disk_inter_falsum_key(X0) :- er_below_disk(X0),inter_falsum_key(X0).
-inter_er_below_disk_inter_falsum_key(X0) :- object(X0),not inter_er_below_disk_inter_falsum_key(X0).
inter_er_below_disk_inter_falsum_peg(X0) :- er_below_disk(X0),inter_falsum_peg(X0).
-inter_er_below_disk_inter_falsum_peg(X0) :- object(X0),not inter_er_below_disk_inter_falsum_peg(X0).
inter_er_below_disk_inter_falsum_disk(X0) :- er_below_disk(X0),inter_falsum_disk(X0).
-inter_er_below_disk_inter_falsum_disk(X0) :- object(X0),not inter_er_below_disk_inter_falsum_disk(X0).
inter_er_below_disk_inter_key_peg(X0) :- er_below_disk(X0),inter_key_peg(X0).
-inter_er_below_disk_inter_key_peg(X0) :- object(X0),not inter_er_below_disk_inter_key_peg(X0).
inter_er_below_disk_inter_key_disk(X0) :- er_below_disk(X0),inter_key_disk(X0).
-inter_er_below_disk_inter_key_disk(X0) :- object(X0),not inter_er_below_disk_inter_key_disk(X0).
inter_er_below_disk_inter_peg_disk(X0) :- er_below_disk(X0),inter_peg_disk(X0).
-inter_er_below_disk_inter_peg_disk(X0) :- object(X0),not inter_er_below_disk_inter_peg_disk(X0).
inter_er_below_disk_subset_verum_falsum(X0) :- er_below_disk(X0),subset_verum_falsum(null).
-inter_er_below_disk_subset_verum_falsum(X0) :- object(X0),not inter_er_below_disk_subset_verum_falsum(X0).
inter_er_below_disk_subset_verum_key(X0) :- er_below_disk(X0),subset_verum_key(null).
-inter_er_below_disk_subset_verum_key(X0) :- object(X0),not inter_er_below_disk_subset_verum_key(X0).
inter_er_below_disk_subset_verum_peg(X0) :- er_below_disk(X0),subset_verum_peg(null).
-inter_er_below_disk_subset_verum_peg(X0) :- object(X0),not inter_er_below_disk_subset_verum_peg(X0).
inter_er_below_disk_subset_verum_disk(X0) :- er_below_disk(X0),subset_verum_disk(null).
-inter_er_below_disk_subset_verum_disk(X0) :- object(X0),not inter_er_below_disk_subset_verum_disk(X0).
inter_er_below_disk_subset_falsum_key(X0) :- er_below_disk(X0),subset_falsum_key(null).
-inter_er_below_disk_subset_falsum_key(X0) :- object(X0),not inter_er_below_disk_subset_falsum_key(X0).
inter_er_below_disk_subset_falsum_peg(X0) :- er_below_disk(X0),subset_falsum_peg(null).
-inter_er_below_disk_subset_falsum_peg(X0) :- object(X0),not inter_er_below_disk_subset_falsum_peg(X0).
inter_er_below_disk_subset_falsum_disk(X0) :- er_below_disk(X0),subset_falsum_disk(null).
-inter_er_below_disk_subset_falsum_disk(X0) :- object(X0),not inter_er_below_disk_subset_falsum_disk(X0).
inter_er_below_disk_subset_key_peg(X0) :- er_below_disk(X0),subset_key_peg(null).
-inter_er_below_disk_subset_key_peg(X0) :- object(X0),not inter_er_below_disk_subset_key_peg(X0).
inter_er_below_disk_subset_key_disk(X0) :- er_below_disk(X0),subset_key_disk(null).
-inter_er_below_disk_subset_key_disk(X0) :- object(X0),not inter_er_below_disk_subset_key_disk(X0).
inter_er_below_disk_subset_peg_disk(X0) :- er_below_disk(X0),subset_peg_disk(null).
-inter_er_below_disk_subset_peg_disk(X0) :- object(X0),not inter_er_below_disk_subset_peg_disk(X0).
inter_er_left_disk_er_overlap_disk(X0) :- er_left_disk(X0),er_overlap_disk(X0).
-inter_er_left_disk_er_overlap_disk(X0) :- object(X0),not inter_er_left_disk_er_overlap_disk(X0).
inter_er_left_disk_er_shape_disk(X0) :- er_left_disk(X0),er_shape_disk(X0).
-inter_er_left_disk_er_shape_disk(X0) :- object(X0),not inter_er_left_disk_er_shape_disk(X0).
inter_er_left_disk_inter_verum_falsum(X0) :- er_left_disk(X0),inter_verum_falsum(X0).
-inter_er_left_disk_inter_verum_falsum(X0) :- object(X0),not inter_er_left_disk_inter_verum_falsum(X0).
inter_er_left_disk_inter_verum_key(X0) :- er_left_disk(X0),inter_verum_key(X0).
-inter_er_left_disk_inter_verum_key(X0) :- object(X0),not inter_er_left_disk_inter_verum_key(X0).
inter_er_left_disk_inter_verum_peg(X0) :- er_left_disk(X0),inter_verum_peg(X0).
-inter_er_left_disk_inter_verum_peg(X0) :- object(X0),not inter_er_left_disk_inter_verum_peg(X0).
inter_er_left_disk_inter_verum_disk(X0) :- er_left_disk(X0),inter_verum_disk(X0).
-inter_er_left_disk_inter_verum_disk(X0) :- object(X0),not inter_er_left_disk_inter_verum_disk(X0).
inter_er_left_disk_inter_falsum_key(X0) :- er_left_disk(X0),inter_falsum_key(X0).
-inter_er_left_disk_inter_falsum_key(X0) :- object(X0),not inter_er_left_disk_inter_falsum_key(X0).
inter_er_left_disk_inter_falsum_peg(X0) :- er_left_disk(X0),inter_falsum_peg(X0).
-inter_er_left_disk_inter_falsum_peg(X0) :- object(X0),not inter_er_left_disk_inter_falsum_peg(X0).
inter_er_left_disk_inter_falsum_disk(X0) :- er_left_disk(X0),inter_falsum_disk(X0).
-inter_er_left_disk_inter_falsum_disk(X0) :- object(X0),not inter_er_left_disk_inter_falsum_disk(X0).
inter_er_left_disk_inter_key_peg(X0) :- er_left_disk(X0),inter_key_peg(X0).
-inter_er_left_disk_inter_key_peg(X0) :- object(X0),not inter_er_left_disk_inter_key_peg(X0).
inter_er_left_disk_inter_key_disk(X0) :- er_left_disk(X0),inter_key_disk(X0).
-inter_er_left_disk_inter_key_disk(X0) :- object(X0),not inter_er_left_disk_inter_key_disk(X0).
inter_er_left_disk_inter_peg_disk(X0) :- er_left_disk(X0),inter_peg_disk(X0).
-inter_er_left_disk_inter_peg_disk(X0) :- object(X0),not inter_er_left_disk_inter_peg_disk(X0).
inter_er_left_disk_subset_verum_falsum(X0) :- er_left_disk(X0),subset_verum_falsum(null).
-inter_er_left_disk_subset_verum_falsum(X0) :- object(X0),not inter_er_left_disk_subset_verum_falsum(X0).
inter_er_left_disk_subset_verum_key(X0) :- er_left_disk(X0),subset_verum_key(null).
-inter_er_left_disk_subset_verum_key(X0) :- object(X0),not inter_er_left_disk_subset_verum_key(X0).
inter_er_left_disk_subset_verum_peg(X0) :- er_left_disk(X0),subset_verum_peg(null).
-inter_er_left_disk_subset_verum_peg(X0) :- object(X0),not inter_er_left_disk_subset_verum_peg(X0).
inter_er_left_disk_subset_verum_disk(X0) :- er_left_disk(X0),subset_verum_disk(null).
-inter_er_left_disk_subset_verum_disk(X0) :- object(X0),not inter_er_left_disk_subset_verum_disk(X0).
inter_er_left_disk_subset_falsum_key(X0) :- er_left_disk(X0),subset_falsum_key(null).
-inter_er_left_disk_subset_falsum_key(X0) :- object(X0),not inter_er_left_disk_subset_falsum_key(X0).
inter_er_left_disk_subset_falsum_peg(X0) :- er_left_disk(X0),subset_falsum_peg(null).
-inter_er_left_disk_subset_falsum_peg(X0) :- object(X0),not inter_er_left_disk_subset_falsum_peg(X0).
inter_er_left_disk_subset_falsum_disk(X0) :- er_left_disk(X0),subset_falsum_disk(null).
-inter_er_left_disk_subset_falsum_disk(X0) :- object(X0),not inter_er_left_disk_subset_falsum_disk(X0).
inter_er_left_disk_subset_key_peg(X0) :- er_left_disk(X0),subset_key_peg(null).
-inter_er_left_disk_subset_key_peg(X0) :- object(X0),not inter_er_left_disk_subset_key_peg(X0).
inter_er_left_disk_subset_key_disk(X0) :- er_left_disk(X0),subset_key_disk(null).
-inter_er_left_disk_subset_key_disk(X0) :- object(X0),not inter_er_left_disk_subset_key_disk(X0).
inter_er_left_disk_subset_peg_disk(X0) :- er_left_disk(X0),subset_peg_disk(null).
-inter_er_left_disk_subset_peg_disk(X0) :- object(X0),not inter_er_left_disk_subset_peg_disk(X0).
inter_er_overlap_disk_er_shape_disk(X0) :- er_overlap_disk(X0),er_shape_disk(X0).
-inter_er_overlap_disk_er_shape_disk(X0) :- object(X0),not inter_er_overlap_disk_er_shape_disk(X0).
inter_er_overlap_disk_inter_verum_falsum(X0) :- er_overlap_disk(X0),inter_verum_falsum(X0).
-inter_er_overlap_disk_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_disk_inter_verum_falsum(X0).
inter_er_overlap_disk_inter_verum_key(X0) :- er_overlap_disk(X0),inter_verum_key(X0).
-inter_er_overlap_disk_inter_verum_key(X0) :- object(X0),not inter_er_overlap_disk_inter_verum_key(X0).
inter_er_overlap_disk_inter_verum_peg(X0) :- er_overlap_disk(X0),inter_verum_peg(X0).
-inter_er_overlap_disk_inter_verum_peg(X0) :- object(X0),not inter_er_overlap_disk_inter_verum_peg(X0).
inter_er_overlap_disk_inter_verum_disk(X0) :- er_overlap_disk(X0),inter_verum_disk(X0).
-inter_er_overlap_disk_inter_verum_disk(X0) :- object(X0),not inter_er_overlap_disk_inter_verum_disk(X0).
inter_er_overlap_disk_inter_falsum_key(X0) :- er_overlap_disk(X0),inter_falsum_key(X0).
-inter_er_overlap_disk_inter_falsum_key(X0) :- object(X0),not inter_er_overlap_disk_inter_falsum_key(X0).
inter_er_overlap_disk_inter_falsum_peg(X0) :- er_overlap_disk(X0),inter_falsum_peg(X0).
-inter_er_overlap_disk_inter_falsum_peg(X0) :- object(X0),not inter_er_overlap_disk_inter_falsum_peg(X0).
inter_er_overlap_disk_inter_falsum_disk(X0) :- er_overlap_disk(X0),inter_falsum_disk(X0).
-inter_er_overlap_disk_inter_falsum_disk(X0) :- object(X0),not inter_er_overlap_disk_inter_falsum_disk(X0).
inter_er_overlap_disk_inter_key_peg(X0) :- er_overlap_disk(X0),inter_key_peg(X0).
-inter_er_overlap_disk_inter_key_peg(X0) :- object(X0),not inter_er_overlap_disk_inter_key_peg(X0).
inter_er_overlap_disk_inter_key_disk(X0) :- er_overlap_disk(X0),inter_key_disk(X0).
-inter_er_overlap_disk_inter_key_disk(X0) :- object(X0),not inter_er_overlap_disk_inter_key_disk(X0).
inter_er_overlap_disk_inter_peg_disk(X0) :- er_overlap_disk(X0),inter_peg_disk(X0).
-inter_er_overlap_disk_inter_peg_disk(X0) :- object(X0),not inter_er_overlap_disk_inter_peg_disk(X0).
inter_er_overlap_disk_subset_verum_falsum(X0) :- er_overlap_disk(X0),subset_verum_falsum(null).
-inter_er_overlap_disk_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_disk_subset_verum_falsum(X0).
inter_er_overlap_disk_subset_verum_key(X0) :- er_overlap_disk(X0),subset_verum_key(null).
-inter_er_overlap_disk_subset_verum_key(X0) :- object(X0),not inter_er_overlap_disk_subset_verum_key(X0).
inter_er_overlap_disk_subset_verum_peg(X0) :- er_overlap_disk(X0),subset_verum_peg(null).
-inter_er_overlap_disk_subset_verum_peg(X0) :- object(X0),not inter_er_overlap_disk_subset_verum_peg(X0).
inter_er_overlap_disk_subset_verum_disk(X0) :- er_overlap_disk(X0),subset_verum_disk(null).
-inter_er_overlap_disk_subset_verum_disk(X0) :- object(X0),not inter_er_overlap_disk_subset_verum_disk(X0).
inter_er_overlap_disk_subset_falsum_key(X0) :- er_overlap_disk(X0),subset_falsum_key(null).
-inter_er_overlap_disk_subset_falsum_key(X0) :- object(X0),not inter_er_overlap_disk_subset_falsum_key(X0).
inter_er_overlap_disk_subset_falsum_peg(X0) :- er_overlap_disk(X0),subset_falsum_peg(null).
-inter_er_overlap_disk_subset_falsum_peg(X0) :- object(X0),not inter_er_overlap_disk_subset_falsum_peg(X0).
inter_er_overlap_disk_subset_falsum_disk(X0) :- er_overlap_disk(X0),subset_falsum_disk(null).
-inter_er_overlap_disk_subset_falsum_disk(X0) :- object(X0),not inter_er_overlap_disk_subset_falsum_disk(X0).
inter_er_overlap_disk_subset_key_peg(X0) :- er_overlap_disk(X0),subset_key_peg(null).
-inter_er_overlap_disk_subset_key_peg(X0) :- object(X0),not inter_er_overlap_disk_subset_key_peg(X0).
inter_er_overlap_disk_subset_key_disk(X0) :- er_overlap_disk(X0),subset_key_disk(null).
-inter_er_overlap_disk_subset_key_disk(X0) :- object(X0),not inter_er_overlap_disk_subset_key_disk(X0).
inter_er_overlap_disk_subset_peg_disk(X0) :- er_overlap_disk(X0),subset_peg_disk(null).
-inter_er_overlap_disk_subset_peg_disk(X0) :- object(X0),not inter_er_overlap_disk_subset_peg_disk(X0).
inter_er_shape_disk_inter_verum_falsum(X0) :- er_shape_disk(X0),inter_verum_falsum(X0).
-inter_er_shape_disk_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_disk_inter_verum_falsum(X0).
inter_er_shape_disk_inter_verum_key(X0) :- er_shape_disk(X0),inter_verum_key(X0).
-inter_er_shape_disk_inter_verum_key(X0) :- object(X0),not inter_er_shape_disk_inter_verum_key(X0).
inter_er_shape_disk_inter_verum_peg(X0) :- er_shape_disk(X0),inter_verum_peg(X0).
-inter_er_shape_disk_inter_verum_peg(X0) :- object(X0),not inter_er_shape_disk_inter_verum_peg(X0).
inter_er_shape_disk_inter_verum_disk(X0) :- er_shape_disk(X0),inter_verum_disk(X0).
-inter_er_shape_disk_inter_verum_disk(X0) :- object(X0),not inter_er_shape_disk_inter_verum_disk(X0).
inter_er_shape_disk_inter_falsum_key(X0) :- er_shape_disk(X0),inter_falsum_key(X0).
-inter_er_shape_disk_inter_falsum_key(X0) :- object(X0),not inter_er_shape_disk_inter_falsum_key(X0).
inter_er_shape_disk_inter_falsum_peg(X0) :- er_shape_disk(X0),inter_falsum_peg(X0).
-inter_er_shape_disk_inter_falsum_peg(X0) :- object(X0),not inter_er_shape_disk_inter_falsum_peg(X0).
inter_er_shape_disk_inter_falsum_disk(X0) :- er_shape_disk(X0),inter_falsum_disk(X0).
-inter_er_shape_disk_inter_falsum_disk(X0) :- object(X0),not inter_er_shape_disk_inter_falsum_disk(X0).
inter_er_shape_disk_inter_key_peg(X0) :- er_shape_disk(X0),inter_key_peg(X0).
-inter_er_shape_disk_inter_key_peg(X0) :- object(X0),not inter_er_shape_disk_inter_key_peg(X0).
inter_er_shape_disk_inter_key_disk(X0) :- er_shape_disk(X0),inter_key_disk(X0).
-inter_er_shape_disk_inter_key_disk(X0) :- object(X0),not inter_er_shape_disk_inter_key_disk(X0).
inter_er_shape_disk_inter_peg_disk(X0) :- er_shape_disk(X0),inter_peg_disk(X0).
-inter_er_shape_disk_inter_peg_disk(X0) :- object(X0),not inter_er_shape_disk_inter_peg_disk(X0).
inter_er_shape_disk_subset_verum_falsum(X0) :- er_shape_disk(X0),subset_verum_falsum(null).
-inter_er_shape_disk_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_disk_subset_verum_falsum(X0).
inter_er_shape_disk_subset_verum_key(X0) :- er_shape_disk(X0),subset_verum_key(null).
-inter_er_shape_disk_subset_verum_key(X0) :- object(X0),not inter_er_shape_disk_subset_verum_key(X0).
inter_er_shape_disk_subset_verum_peg(X0) :- er_shape_disk(X0),subset_verum_peg(null).
-inter_er_shape_disk_subset_verum_peg(X0) :- object(X0),not inter_er_shape_disk_subset_verum_peg(X0).
inter_er_shape_disk_subset_verum_disk(X0) :- er_shape_disk(X0),subset_verum_disk(null).
-inter_er_shape_disk_subset_verum_disk(X0) :- object(X0),not inter_er_shape_disk_subset_verum_disk(X0).
inter_er_shape_disk_subset_falsum_key(X0) :- er_shape_disk(X0),subset_falsum_key(null).
-inter_er_shape_disk_subset_falsum_key(X0) :- object(X0),not inter_er_shape_disk_subset_falsum_key(X0).
inter_er_shape_disk_subset_falsum_peg(X0) :- er_shape_disk(X0),subset_falsum_peg(null).
-inter_er_shape_disk_subset_falsum_peg(X0) :- object(X0),not inter_er_shape_disk_subset_falsum_peg(X0).
inter_er_shape_disk_subset_falsum_disk(X0) :- er_shape_disk(X0),subset_falsum_disk(null).
-inter_er_shape_disk_subset_falsum_disk(X0) :- object(X0),not inter_er_shape_disk_subset_falsum_disk(X0).
inter_er_shape_disk_subset_key_peg(X0) :- er_shape_disk(X0),subset_key_peg(null).
-inter_er_shape_disk_subset_key_peg(X0) :- object(X0),not inter_er_shape_disk_subset_key_peg(X0).
inter_er_shape_disk_subset_key_disk(X0) :- er_shape_disk(X0),subset_key_disk(null).
-inter_er_shape_disk_subset_key_disk(X0) :- object(X0),not inter_er_shape_disk_subset_key_disk(X0).
inter_er_shape_disk_subset_peg_disk(X0) :- er_shape_disk(X0),subset_peg_disk(null).
-inter_er_shape_disk_subset_peg_disk(X0) :- object(X0),not inter_er_shape_disk_subset_peg_disk(X0).
inter_inter_verum_falsum_inter_verum_key(X0) :- inter_verum_falsum(X0),inter_verum_key(X0).
-inter_inter_verum_falsum_inter_verum_key(X0) :- object(X0),not inter_inter_verum_falsum_inter_verum_key(X0).
inter_inter_verum_falsum_inter_verum_peg(X0) :- inter_verum_falsum(X0),inter_verum_peg(X0).
-inter_inter_verum_falsum_inter_verum_peg(X0) :- object(X0),not inter_inter_verum_falsum_inter_verum_peg(X0).
inter_inter_verum_falsum_inter_verum_disk(X0) :- inter_verum_falsum(X0),inter_verum_disk(X0).
-inter_inter_verum_falsum_inter_verum_disk(X0) :- object(X0),not inter_inter_verum_falsum_inter_verum_disk(X0).
inter_inter_verum_falsum_inter_falsum_key(X0) :- inter_verum_falsum(X0),inter_falsum_key(X0).
-inter_inter_verum_falsum_inter_falsum_key(X0) :- object(X0),not inter_inter_verum_falsum_inter_falsum_key(X0).
inter_inter_verum_falsum_inter_falsum_peg(X0) :- inter_verum_falsum(X0),inter_falsum_peg(X0).
-inter_inter_verum_falsum_inter_falsum_peg(X0) :- object(X0),not inter_inter_verum_falsum_inter_falsum_peg(X0).
inter_inter_verum_falsum_inter_falsum_disk(X0) :- inter_verum_falsum(X0),inter_falsum_disk(X0).
-inter_inter_verum_falsum_inter_falsum_disk(X0) :- object(X0),not inter_inter_verum_falsum_inter_falsum_disk(X0).
inter_inter_verum_falsum_inter_key_peg(X0) :- inter_verum_falsum(X0),inter_key_peg(X0).
-inter_inter_verum_falsum_inter_key_peg(X0) :- object(X0),not inter_inter_verum_falsum_inter_key_peg(X0).
inter_inter_verum_falsum_inter_key_disk(X0) :- inter_verum_falsum(X0),inter_key_disk(X0).
-inter_inter_verum_falsum_inter_key_disk(X0) :- object(X0),not inter_inter_verum_falsum_inter_key_disk(X0).
inter_inter_verum_falsum_inter_peg_disk(X0) :- inter_verum_falsum(X0),inter_peg_disk(X0).
-inter_inter_verum_falsum_inter_peg_disk(X0) :- object(X0),not inter_inter_verum_falsum_inter_peg_disk(X0).
inter_inter_verum_falsum_subset_verum_falsum(X0) :- inter_verum_falsum(X0),subset_verum_falsum(null).
-inter_inter_verum_falsum_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_falsum(X0).
inter_inter_verum_falsum_subset_verum_key(X0) :- inter_verum_falsum(X0),subset_verum_key(null).
-inter_inter_verum_falsum_subset_verum_key(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_key(X0).
inter_inter_verum_falsum_subset_verum_peg(X0) :- inter_verum_falsum(X0),subset_verum_peg(null).
-inter_inter_verum_falsum_subset_verum_peg(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_peg(X0).
inter_inter_verum_falsum_subset_verum_disk(X0) :- inter_verum_falsum(X0),subset_verum_disk(null).
-inter_inter_verum_falsum_subset_verum_disk(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_disk(X0).
inter_inter_verum_falsum_subset_falsum_key(X0) :- inter_verum_falsum(X0),subset_falsum_key(null).
-inter_inter_verum_falsum_subset_falsum_key(X0) :- object(X0),not inter_inter_verum_falsum_subset_falsum_key(X0).
inter_inter_verum_falsum_subset_falsum_peg(X0) :- inter_verum_falsum(X0),subset_falsum_peg(null).
-inter_inter_verum_falsum_subset_falsum_peg(X0) :- object(X0),not inter_inter_verum_falsum_subset_falsum_peg(X0).
inter_inter_verum_falsum_subset_falsum_disk(X0) :- inter_verum_falsum(X0),subset_falsum_disk(null).
-inter_inter_verum_falsum_subset_falsum_disk(X0) :- object(X0),not inter_inter_verum_falsum_subset_falsum_disk(X0).
inter_inter_verum_falsum_subset_key_peg(X0) :- inter_verum_falsum(X0),subset_key_peg(null).
-inter_inter_verum_falsum_subset_key_peg(X0) :- object(X0),not inter_inter_verum_falsum_subset_key_peg(X0).
inter_inter_verum_falsum_subset_key_disk(X0) :- inter_verum_falsum(X0),subset_key_disk(null).
-inter_inter_verum_falsum_subset_key_disk(X0) :- object(X0),not inter_inter_verum_falsum_subset_key_disk(X0).
inter_inter_verum_falsum_subset_peg_disk(X0) :- inter_verum_falsum(X0),subset_peg_disk(null).
-inter_inter_verum_falsum_subset_peg_disk(X0) :- object(X0),not inter_inter_verum_falsum_subset_peg_disk(X0).
inter_inter_verum_key_inter_verum_peg(X0) :- inter_verum_key(X0),inter_verum_peg(X0).
-inter_inter_verum_key_inter_verum_peg(X0) :- object(X0),not inter_inter_verum_key_inter_verum_peg(X0).
inter_inter_verum_key_inter_verum_disk(X0) :- inter_verum_key(X0),inter_verum_disk(X0).
-inter_inter_verum_key_inter_verum_disk(X0) :- object(X0),not inter_inter_verum_key_inter_verum_disk(X0).
inter_inter_verum_key_inter_falsum_key(X0) :- inter_verum_key(X0),inter_falsum_key(X0).
-inter_inter_verum_key_inter_falsum_key(X0) :- object(X0),not inter_inter_verum_key_inter_falsum_key(X0).
inter_inter_verum_key_inter_falsum_peg(X0) :- inter_verum_key(X0),inter_falsum_peg(X0).
-inter_inter_verum_key_inter_falsum_peg(X0) :- object(X0),not inter_inter_verum_key_inter_falsum_peg(X0).
inter_inter_verum_key_inter_falsum_disk(X0) :- inter_verum_key(X0),inter_falsum_disk(X0).
-inter_inter_verum_key_inter_falsum_disk(X0) :- object(X0),not inter_inter_verum_key_inter_falsum_disk(X0).
inter_inter_verum_key_inter_key_peg(X0) :- inter_verum_key(X0),inter_key_peg(X0).
-inter_inter_verum_key_inter_key_peg(X0) :- object(X0),not inter_inter_verum_key_inter_key_peg(X0).
inter_inter_verum_key_inter_key_disk(X0) :- inter_verum_key(X0),inter_key_disk(X0).
-inter_inter_verum_key_inter_key_disk(X0) :- object(X0),not inter_inter_verum_key_inter_key_disk(X0).
inter_inter_verum_key_inter_peg_disk(X0) :- inter_verum_key(X0),inter_peg_disk(X0).
-inter_inter_verum_key_inter_peg_disk(X0) :- object(X0),not inter_inter_verum_key_inter_peg_disk(X0).
inter_inter_verum_key_subset_verum_falsum(X0) :- inter_verum_key(X0),subset_verum_falsum(null).
-inter_inter_verum_key_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_key_subset_verum_falsum(X0).
inter_inter_verum_key_subset_verum_key(X0) :- inter_verum_key(X0),subset_verum_key(null).
-inter_inter_verum_key_subset_verum_key(X0) :- object(X0),not inter_inter_verum_key_subset_verum_key(X0).
inter_inter_verum_key_subset_verum_peg(X0) :- inter_verum_key(X0),subset_verum_peg(null).
-inter_inter_verum_key_subset_verum_peg(X0) :- object(X0),not inter_inter_verum_key_subset_verum_peg(X0).
inter_inter_verum_key_subset_verum_disk(X0) :- inter_verum_key(X0),subset_verum_disk(null).
-inter_inter_verum_key_subset_verum_disk(X0) :- object(X0),not inter_inter_verum_key_subset_verum_disk(X0).
inter_inter_verum_key_subset_falsum_key(X0) :- inter_verum_key(X0),subset_falsum_key(null).
-inter_inter_verum_key_subset_falsum_key(X0) :- object(X0),not inter_inter_verum_key_subset_falsum_key(X0).
inter_inter_verum_key_subset_falsum_peg(X0) :- inter_verum_key(X0),subset_falsum_peg(null).
-inter_inter_verum_key_subset_falsum_peg(X0) :- object(X0),not inter_inter_verum_key_subset_falsum_peg(X0).
inter_inter_verum_key_subset_falsum_disk(X0) :- inter_verum_key(X0),subset_falsum_disk(null).
-inter_inter_verum_key_subset_falsum_disk(X0) :- object(X0),not inter_inter_verum_key_subset_falsum_disk(X0).
inter_inter_verum_key_subset_key_peg(X0) :- inter_verum_key(X0),subset_key_peg(null).
-inter_inter_verum_key_subset_key_peg(X0) :- object(X0),not inter_inter_verum_key_subset_key_peg(X0).
inter_inter_verum_key_subset_key_disk(X0) :- inter_verum_key(X0),subset_key_disk(null).
-inter_inter_verum_key_subset_key_disk(X0) :- object(X0),not inter_inter_verum_key_subset_key_disk(X0).
inter_inter_verum_key_subset_peg_disk(X0) :- inter_verum_key(X0),subset_peg_disk(null).
-inter_inter_verum_key_subset_peg_disk(X0) :- object(X0),not inter_inter_verum_key_subset_peg_disk(X0).
inter_inter_verum_peg_inter_verum_disk(X0) :- inter_verum_peg(X0),inter_verum_disk(X0).
-inter_inter_verum_peg_inter_verum_disk(X0) :- object(X0),not inter_inter_verum_peg_inter_verum_disk(X0).
inter_inter_verum_peg_inter_falsum_key(X0) :- inter_verum_peg(X0),inter_falsum_key(X0).
-inter_inter_verum_peg_inter_falsum_key(X0) :- object(X0),not inter_inter_verum_peg_inter_falsum_key(X0).
inter_inter_verum_peg_inter_falsum_peg(X0) :- inter_verum_peg(X0),inter_falsum_peg(X0).
-inter_inter_verum_peg_inter_falsum_peg(X0) :- object(X0),not inter_inter_verum_peg_inter_falsum_peg(X0).
inter_inter_verum_peg_inter_falsum_disk(X0) :- inter_verum_peg(X0),inter_falsum_disk(X0).
-inter_inter_verum_peg_inter_falsum_disk(X0) :- object(X0),not inter_inter_verum_peg_inter_falsum_disk(X0).
inter_inter_verum_peg_inter_key_peg(X0) :- inter_verum_peg(X0),inter_key_peg(X0).
-inter_inter_verum_peg_inter_key_peg(X0) :- object(X0),not inter_inter_verum_peg_inter_key_peg(X0).
inter_inter_verum_peg_inter_key_disk(X0) :- inter_verum_peg(X0),inter_key_disk(X0).
-inter_inter_verum_peg_inter_key_disk(X0) :- object(X0),not inter_inter_verum_peg_inter_key_disk(X0).
inter_inter_verum_peg_inter_peg_disk(X0) :- inter_verum_peg(X0),inter_peg_disk(X0).
-inter_inter_verum_peg_inter_peg_disk(X0) :- object(X0),not inter_inter_verum_peg_inter_peg_disk(X0).
inter_inter_verum_peg_subset_verum_falsum(X0) :- inter_verum_peg(X0),subset_verum_falsum(null).
-inter_inter_verum_peg_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_peg_subset_verum_falsum(X0).
inter_inter_verum_peg_subset_verum_key(X0) :- inter_verum_peg(X0),subset_verum_key(null).
-inter_inter_verum_peg_subset_verum_key(X0) :- object(X0),not inter_inter_verum_peg_subset_verum_key(X0).
inter_inter_verum_peg_subset_verum_peg(X0) :- inter_verum_peg(X0),subset_verum_peg(null).
-inter_inter_verum_peg_subset_verum_peg(X0) :- object(X0),not inter_inter_verum_peg_subset_verum_peg(X0).
inter_inter_verum_peg_subset_verum_disk(X0) :- inter_verum_peg(X0),subset_verum_disk(null).
-inter_inter_verum_peg_subset_verum_disk(X0) :- object(X0),not inter_inter_verum_peg_subset_verum_disk(X0).
inter_inter_verum_peg_subset_falsum_key(X0) :- inter_verum_peg(X0),subset_falsum_key(null).
-inter_inter_verum_peg_subset_falsum_key(X0) :- object(X0),not inter_inter_verum_peg_subset_falsum_key(X0).
inter_inter_verum_peg_subset_falsum_peg(X0) :- inter_verum_peg(X0),subset_falsum_peg(null).
-inter_inter_verum_peg_subset_falsum_peg(X0) :- object(X0),not inter_inter_verum_peg_subset_falsum_peg(X0).
inter_inter_verum_peg_subset_falsum_disk(X0) :- inter_verum_peg(X0),subset_falsum_disk(null).
-inter_inter_verum_peg_subset_falsum_disk(X0) :- object(X0),not inter_inter_verum_peg_subset_falsum_disk(X0).
inter_inter_verum_peg_subset_key_peg(X0) :- inter_verum_peg(X0),subset_key_peg(null).
-inter_inter_verum_peg_subset_key_peg(X0) :- object(X0),not inter_inter_verum_peg_subset_key_peg(X0).
inter_inter_verum_peg_subset_key_disk(X0) :- inter_verum_peg(X0),subset_key_disk(null).
-inter_inter_verum_peg_subset_key_disk(X0) :- object(X0),not inter_inter_verum_peg_subset_key_disk(X0).
inter_inter_verum_peg_subset_peg_disk(X0) :- inter_verum_peg(X0),subset_peg_disk(null).
-inter_inter_verum_peg_subset_peg_disk(X0) :- object(X0),not inter_inter_verum_peg_subset_peg_disk(X0).
inter_inter_verum_disk_inter_falsum_key(X0) :- inter_verum_disk(X0),inter_falsum_key(X0).
-inter_inter_verum_disk_inter_falsum_key(X0) :- object(X0),not inter_inter_verum_disk_inter_falsum_key(X0).
inter_inter_verum_disk_inter_falsum_peg(X0) :- inter_verum_disk(X0),inter_falsum_peg(X0).
-inter_inter_verum_disk_inter_falsum_peg(X0) :- object(X0),not inter_inter_verum_disk_inter_falsum_peg(X0).
inter_inter_verum_disk_inter_falsum_disk(X0) :- inter_verum_disk(X0),inter_falsum_disk(X0).
-inter_inter_verum_disk_inter_falsum_disk(X0) :- object(X0),not inter_inter_verum_disk_inter_falsum_disk(X0).
inter_inter_verum_disk_inter_key_peg(X0) :- inter_verum_disk(X0),inter_key_peg(X0).
-inter_inter_verum_disk_inter_key_peg(X0) :- object(X0),not inter_inter_verum_disk_inter_key_peg(X0).
inter_inter_verum_disk_inter_key_disk(X0) :- inter_verum_disk(X0),inter_key_disk(X0).
-inter_inter_verum_disk_inter_key_disk(X0) :- object(X0),not inter_inter_verum_disk_inter_key_disk(X0).
inter_inter_verum_disk_inter_peg_disk(X0) :- inter_verum_disk(X0),inter_peg_disk(X0).
-inter_inter_verum_disk_inter_peg_disk(X0) :- object(X0),not inter_inter_verum_disk_inter_peg_disk(X0).
inter_inter_verum_disk_subset_verum_falsum(X0) :- inter_verum_disk(X0),subset_verum_falsum(null).
-inter_inter_verum_disk_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_disk_subset_verum_falsum(X0).
inter_inter_verum_disk_subset_verum_key(X0) :- inter_verum_disk(X0),subset_verum_key(null).
-inter_inter_verum_disk_subset_verum_key(X0) :- object(X0),not inter_inter_verum_disk_subset_verum_key(X0).
inter_inter_verum_disk_subset_verum_peg(X0) :- inter_verum_disk(X0),subset_verum_peg(null).
-inter_inter_verum_disk_subset_verum_peg(X0) :- object(X0),not inter_inter_verum_disk_subset_verum_peg(X0).
inter_inter_verum_disk_subset_verum_disk(X0) :- inter_verum_disk(X0),subset_verum_disk(null).
-inter_inter_verum_disk_subset_verum_disk(X0) :- object(X0),not inter_inter_verum_disk_subset_verum_disk(X0).
inter_inter_verum_disk_subset_falsum_key(X0) :- inter_verum_disk(X0),subset_falsum_key(null).
-inter_inter_verum_disk_subset_falsum_key(X0) :- object(X0),not inter_inter_verum_disk_subset_falsum_key(X0).
inter_inter_verum_disk_subset_falsum_peg(X0) :- inter_verum_disk(X0),subset_falsum_peg(null).
-inter_inter_verum_disk_subset_falsum_peg(X0) :- object(X0),not inter_inter_verum_disk_subset_falsum_peg(X0).
inter_inter_verum_disk_subset_falsum_disk(X0) :- inter_verum_disk(X0),subset_falsum_disk(null).
-inter_inter_verum_disk_subset_falsum_disk(X0) :- object(X0),not inter_inter_verum_disk_subset_falsum_disk(X0).
inter_inter_verum_disk_subset_key_peg(X0) :- inter_verum_disk(X0),subset_key_peg(null).
-inter_inter_verum_disk_subset_key_peg(X0) :- object(X0),not inter_inter_verum_disk_subset_key_peg(X0).
inter_inter_verum_disk_subset_key_disk(X0) :- inter_verum_disk(X0),subset_key_disk(null).
-inter_inter_verum_disk_subset_key_disk(X0) :- object(X0),not inter_inter_verum_disk_subset_key_disk(X0).
inter_inter_verum_disk_subset_peg_disk(X0) :- inter_verum_disk(X0),subset_peg_disk(null).
-inter_inter_verum_disk_subset_peg_disk(X0) :- object(X0),not inter_inter_verum_disk_subset_peg_disk(X0).
inter_inter_falsum_key_inter_falsum_peg(X0) :- inter_falsum_key(X0),inter_falsum_peg(X0).
-inter_inter_falsum_key_inter_falsum_peg(X0) :- object(X0),not inter_inter_falsum_key_inter_falsum_peg(X0).
inter_inter_falsum_key_inter_falsum_disk(X0) :- inter_falsum_key(X0),inter_falsum_disk(X0).
-inter_inter_falsum_key_inter_falsum_disk(X0) :- object(X0),not inter_inter_falsum_key_inter_falsum_disk(X0).
inter_inter_falsum_key_inter_key_peg(X0) :- inter_falsum_key(X0),inter_key_peg(X0).
-inter_inter_falsum_key_inter_key_peg(X0) :- object(X0),not inter_inter_falsum_key_inter_key_peg(X0).
inter_inter_falsum_key_inter_key_disk(X0) :- inter_falsum_key(X0),inter_key_disk(X0).
-inter_inter_falsum_key_inter_key_disk(X0) :- object(X0),not inter_inter_falsum_key_inter_key_disk(X0).
inter_inter_falsum_key_inter_peg_disk(X0) :- inter_falsum_key(X0),inter_peg_disk(X0).
-inter_inter_falsum_key_inter_peg_disk(X0) :- object(X0),not inter_inter_falsum_key_inter_peg_disk(X0).
inter_inter_falsum_key_subset_verum_falsum(X0) :- inter_falsum_key(X0),subset_verum_falsum(null).
-inter_inter_falsum_key_subset_verum_falsum(X0) :- object(X0),not inter_inter_falsum_key_subset_verum_falsum(X0).
inter_inter_falsum_key_subset_verum_key(X0) :- inter_falsum_key(X0),subset_verum_key(null).
-inter_inter_falsum_key_subset_verum_key(X0) :- object(X0),not inter_inter_falsum_key_subset_verum_key(X0).
inter_inter_falsum_key_subset_verum_peg(X0) :- inter_falsum_key(X0),subset_verum_peg(null).
-inter_inter_falsum_key_subset_verum_peg(X0) :- object(X0),not inter_inter_falsum_key_subset_verum_peg(X0).
inter_inter_falsum_key_subset_verum_disk(X0) :- inter_falsum_key(X0),subset_verum_disk(null).
-inter_inter_falsum_key_subset_verum_disk(X0) :- object(X0),not inter_inter_falsum_key_subset_verum_disk(X0).
inter_inter_falsum_key_subset_falsum_key(X0) :- inter_falsum_key(X0),subset_falsum_key(null).
-inter_inter_falsum_key_subset_falsum_key(X0) :- object(X0),not inter_inter_falsum_key_subset_falsum_key(X0).
inter_inter_falsum_key_subset_falsum_peg(X0) :- inter_falsum_key(X0),subset_falsum_peg(null).
-inter_inter_falsum_key_subset_falsum_peg(X0) :- object(X0),not inter_inter_falsum_key_subset_falsum_peg(X0).
inter_inter_falsum_key_subset_falsum_disk(X0) :- inter_falsum_key(X0),subset_falsum_disk(null).
-inter_inter_falsum_key_subset_falsum_disk(X0) :- object(X0),not inter_inter_falsum_key_subset_falsum_disk(X0).
inter_inter_falsum_key_subset_key_peg(X0) :- inter_falsum_key(X0),subset_key_peg(null).
-inter_inter_falsum_key_subset_key_peg(X0) :- object(X0),not inter_inter_falsum_key_subset_key_peg(X0).
inter_inter_falsum_key_subset_key_disk(X0) :- inter_falsum_key(X0),subset_key_disk(null).
-inter_inter_falsum_key_subset_key_disk(X0) :- object(X0),not inter_inter_falsum_key_subset_key_disk(X0).
inter_inter_falsum_key_subset_peg_disk(X0) :- inter_falsum_key(X0),subset_peg_disk(null).
-inter_inter_falsum_key_subset_peg_disk(X0) :- object(X0),not inter_inter_falsum_key_subset_peg_disk(X0).
inter_inter_falsum_peg_inter_falsum_disk(X0) :- inter_falsum_peg(X0),inter_falsum_disk(X0).
-inter_inter_falsum_peg_inter_falsum_disk(X0) :- object(X0),not inter_inter_falsum_peg_inter_falsum_disk(X0).
inter_inter_falsum_peg_inter_key_peg(X0) :- inter_falsum_peg(X0),inter_key_peg(X0).
-inter_inter_falsum_peg_inter_key_peg(X0) :- object(X0),not inter_inter_falsum_peg_inter_key_peg(X0).
inter_inter_falsum_peg_inter_key_disk(X0) :- inter_falsum_peg(X0),inter_key_disk(X0).
-inter_inter_falsum_peg_inter_key_disk(X0) :- object(X0),not inter_inter_falsum_peg_inter_key_disk(X0).
inter_inter_falsum_peg_inter_peg_disk(X0) :- inter_falsum_peg(X0),inter_peg_disk(X0).
-inter_inter_falsum_peg_inter_peg_disk(X0) :- object(X0),not inter_inter_falsum_peg_inter_peg_disk(X0).
inter_inter_falsum_peg_subset_verum_falsum(X0) :- inter_falsum_peg(X0),subset_verum_falsum(null).
-inter_inter_falsum_peg_subset_verum_falsum(X0) :- object(X0),not inter_inter_falsum_peg_subset_verum_falsum(X0).
inter_inter_falsum_peg_subset_verum_key(X0) :- inter_falsum_peg(X0),subset_verum_key(null).
-inter_inter_falsum_peg_subset_verum_key(X0) :- object(X0),not inter_inter_falsum_peg_subset_verum_key(X0).
inter_inter_falsum_peg_subset_verum_peg(X0) :- inter_falsum_peg(X0),subset_verum_peg(null).
-inter_inter_falsum_peg_subset_verum_peg(X0) :- object(X0),not inter_inter_falsum_peg_subset_verum_peg(X0).
inter_inter_falsum_peg_subset_verum_disk(X0) :- inter_falsum_peg(X0),subset_verum_disk(null).
-inter_inter_falsum_peg_subset_verum_disk(X0) :- object(X0),not inter_inter_falsum_peg_subset_verum_disk(X0).
inter_inter_falsum_peg_subset_falsum_key(X0) :- inter_falsum_peg(X0),subset_falsum_key(null).
-inter_inter_falsum_peg_subset_falsum_key(X0) :- object(X0),not inter_inter_falsum_peg_subset_falsum_key(X0).
inter_inter_falsum_peg_subset_falsum_peg(X0) :- inter_falsum_peg(X0),subset_falsum_peg(null).
-inter_inter_falsum_peg_subset_falsum_peg(X0) :- object(X0),not inter_inter_falsum_peg_subset_falsum_peg(X0).
inter_inter_falsum_peg_subset_falsum_disk(X0) :- inter_falsum_peg(X0),subset_falsum_disk(null).
-inter_inter_falsum_peg_subset_falsum_disk(X0) :- object(X0),not inter_inter_falsum_peg_subset_falsum_disk(X0).
inter_inter_falsum_peg_subset_key_peg(X0) :- inter_falsum_peg(X0),subset_key_peg(null).
-inter_inter_falsum_peg_subset_key_peg(X0) :- object(X0),not inter_inter_falsum_peg_subset_key_peg(X0).
inter_inter_falsum_peg_subset_key_disk(X0) :- inter_falsum_peg(X0),subset_key_disk(null).
-inter_inter_falsum_peg_subset_key_disk(X0) :- object(X0),not inter_inter_falsum_peg_subset_key_disk(X0).
inter_inter_falsum_peg_subset_peg_disk(X0) :- inter_falsum_peg(X0),subset_peg_disk(null).
-inter_inter_falsum_peg_subset_peg_disk(X0) :- object(X0),not inter_inter_falsum_peg_subset_peg_disk(X0).
inter_inter_falsum_disk_inter_key_peg(X0) :- inter_falsum_disk(X0),inter_key_peg(X0).
-inter_inter_falsum_disk_inter_key_peg(X0) :- object(X0),not inter_inter_falsum_disk_inter_key_peg(X0).
inter_inter_falsum_disk_inter_key_disk(X0) :- inter_falsum_disk(X0),inter_key_disk(X0).
-inter_inter_falsum_disk_inter_key_disk(X0) :- object(X0),not inter_inter_falsum_disk_inter_key_disk(X0).
inter_inter_falsum_disk_inter_peg_disk(X0) :- inter_falsum_disk(X0),inter_peg_disk(X0).
-inter_inter_falsum_disk_inter_peg_disk(X0) :- object(X0),not inter_inter_falsum_disk_inter_peg_disk(X0).
inter_inter_falsum_disk_subset_verum_falsum(X0) :- inter_falsum_disk(X0),subset_verum_falsum(null).
-inter_inter_falsum_disk_subset_verum_falsum(X0) :- object(X0),not inter_inter_falsum_disk_subset_verum_falsum(X0).
inter_inter_falsum_disk_subset_verum_key(X0) :- inter_falsum_disk(X0),subset_verum_key(null).
-inter_inter_falsum_disk_subset_verum_key(X0) :- object(X0),not inter_inter_falsum_disk_subset_verum_key(X0).
inter_inter_falsum_disk_subset_verum_peg(X0) :- inter_falsum_disk(X0),subset_verum_peg(null).
-inter_inter_falsum_disk_subset_verum_peg(X0) :- object(X0),not inter_inter_falsum_disk_subset_verum_peg(X0).
inter_inter_falsum_disk_subset_verum_disk(X0) :- inter_falsum_disk(X0),subset_verum_disk(null).
-inter_inter_falsum_disk_subset_verum_disk(X0) :- object(X0),not inter_inter_falsum_disk_subset_verum_disk(X0).
inter_inter_falsum_disk_subset_falsum_key(X0) :- inter_falsum_disk(X0),subset_falsum_key(null).
-inter_inter_falsum_disk_subset_falsum_key(X0) :- object(X0),not inter_inter_falsum_disk_subset_falsum_key(X0).
inter_inter_falsum_disk_subset_falsum_peg(X0) :- inter_falsum_disk(X0),subset_falsum_peg(null).
-inter_inter_falsum_disk_subset_falsum_peg(X0) :- object(X0),not inter_inter_falsum_disk_subset_falsum_peg(X0).
inter_inter_falsum_disk_subset_falsum_disk(X0) :- inter_falsum_disk(X0),subset_falsum_disk(null).
-inter_inter_falsum_disk_subset_falsum_disk(X0) :- object(X0),not inter_inter_falsum_disk_subset_falsum_disk(X0).
inter_inter_falsum_disk_subset_key_peg(X0) :- inter_falsum_disk(X0),subset_key_peg(null).
-inter_inter_falsum_disk_subset_key_peg(X0) :- object(X0),not inter_inter_falsum_disk_subset_key_peg(X0).
inter_inter_falsum_disk_subset_key_disk(X0) :- inter_falsum_disk(X0),subset_key_disk(null).
-inter_inter_falsum_disk_subset_key_disk(X0) :- object(X0),not inter_inter_falsum_disk_subset_key_disk(X0).
inter_inter_falsum_disk_subset_peg_disk(X0) :- inter_falsum_disk(X0),subset_peg_disk(null).
-inter_inter_falsum_disk_subset_peg_disk(X0) :- object(X0),not inter_inter_falsum_disk_subset_peg_disk(X0).
inter_inter_key_peg_inter_key_disk(X0) :- inter_key_peg(X0),inter_key_disk(X0).
-inter_inter_key_peg_inter_key_disk(X0) :- object(X0),not inter_inter_key_peg_inter_key_disk(X0).
inter_inter_key_peg_inter_peg_disk(X0) :- inter_key_peg(X0),inter_peg_disk(X0).
-inter_inter_key_peg_inter_peg_disk(X0) :- object(X0),not inter_inter_key_peg_inter_peg_disk(X0).
inter_inter_key_peg_subset_verum_falsum(X0) :- inter_key_peg(X0),subset_verum_falsum(null).
-inter_inter_key_peg_subset_verum_falsum(X0) :- object(X0),not inter_inter_key_peg_subset_verum_falsum(X0).
inter_inter_key_peg_subset_verum_key(X0) :- inter_key_peg(X0),subset_verum_key(null).
-inter_inter_key_peg_subset_verum_key(X0) :- object(X0),not inter_inter_key_peg_subset_verum_key(X0).
inter_inter_key_peg_subset_verum_peg(X0) :- inter_key_peg(X0),subset_verum_peg(null).
-inter_inter_key_peg_subset_verum_peg(X0) :- object(X0),not inter_inter_key_peg_subset_verum_peg(X0).
inter_inter_key_peg_subset_verum_disk(X0) :- inter_key_peg(X0),subset_verum_disk(null).
-inter_inter_key_peg_subset_verum_disk(X0) :- object(X0),not inter_inter_key_peg_subset_verum_disk(X0).
inter_inter_key_peg_subset_falsum_key(X0) :- inter_key_peg(X0),subset_falsum_key(null).
-inter_inter_key_peg_subset_falsum_key(X0) :- object(X0),not inter_inter_key_peg_subset_falsum_key(X0).
inter_inter_key_peg_subset_falsum_peg(X0) :- inter_key_peg(X0),subset_falsum_peg(null).
-inter_inter_key_peg_subset_falsum_peg(X0) :- object(X0),not inter_inter_key_peg_subset_falsum_peg(X0).
inter_inter_key_peg_subset_falsum_disk(X0) :- inter_key_peg(X0),subset_falsum_disk(null).
-inter_inter_key_peg_subset_falsum_disk(X0) :- object(X0),not inter_inter_key_peg_subset_falsum_disk(X0).
inter_inter_key_peg_subset_key_peg(X0) :- inter_key_peg(X0),subset_key_peg(null).
-inter_inter_key_peg_subset_key_peg(X0) :- object(X0),not inter_inter_key_peg_subset_key_peg(X0).
inter_inter_key_peg_subset_key_disk(X0) :- inter_key_peg(X0),subset_key_disk(null).
-inter_inter_key_peg_subset_key_disk(X0) :- object(X0),not inter_inter_key_peg_subset_key_disk(X0).
inter_inter_key_peg_subset_peg_disk(X0) :- inter_key_peg(X0),subset_peg_disk(null).
-inter_inter_key_peg_subset_peg_disk(X0) :- object(X0),not inter_inter_key_peg_subset_peg_disk(X0).
inter_inter_key_disk_inter_peg_disk(X0) :- inter_key_disk(X0),inter_peg_disk(X0).
-inter_inter_key_disk_inter_peg_disk(X0) :- object(X0),not inter_inter_key_disk_inter_peg_disk(X0).
inter_inter_key_disk_subset_verum_falsum(X0) :- inter_key_disk(X0),subset_verum_falsum(null).
-inter_inter_key_disk_subset_verum_falsum(X0) :- object(X0),not inter_inter_key_disk_subset_verum_falsum(X0).
inter_inter_key_disk_subset_verum_key(X0) :- inter_key_disk(X0),subset_verum_key(null).
-inter_inter_key_disk_subset_verum_key(X0) :- object(X0),not inter_inter_key_disk_subset_verum_key(X0).
inter_inter_key_disk_subset_verum_peg(X0) :- inter_key_disk(X0),subset_verum_peg(null).
-inter_inter_key_disk_subset_verum_peg(X0) :- object(X0),not inter_inter_key_disk_subset_verum_peg(X0).
inter_inter_key_disk_subset_verum_disk(X0) :- inter_key_disk(X0),subset_verum_disk(null).
-inter_inter_key_disk_subset_verum_disk(X0) :- object(X0),not inter_inter_key_disk_subset_verum_disk(X0).
inter_inter_key_disk_subset_falsum_key(X0) :- inter_key_disk(X0),subset_falsum_key(null).
-inter_inter_key_disk_subset_falsum_key(X0) :- object(X0),not inter_inter_key_disk_subset_falsum_key(X0).
inter_inter_key_disk_subset_falsum_peg(X0) :- inter_key_disk(X0),subset_falsum_peg(null).
-inter_inter_key_disk_subset_falsum_peg(X0) :- object(X0),not inter_inter_key_disk_subset_falsum_peg(X0).
inter_inter_key_disk_subset_falsum_disk(X0) :- inter_key_disk(X0),subset_falsum_disk(null).
-inter_inter_key_disk_subset_falsum_disk(X0) :- object(X0),not inter_inter_key_disk_subset_falsum_disk(X0).
inter_inter_key_disk_subset_key_peg(X0) :- inter_key_disk(X0),subset_key_peg(null).
-inter_inter_key_disk_subset_key_peg(X0) :- object(X0),not inter_inter_key_disk_subset_key_peg(X0).
inter_inter_key_disk_subset_key_disk(X0) :- inter_key_disk(X0),subset_key_disk(null).
-inter_inter_key_disk_subset_key_disk(X0) :- object(X0),not inter_inter_key_disk_subset_key_disk(X0).
inter_inter_key_disk_subset_peg_disk(X0) :- inter_key_disk(X0),subset_peg_disk(null).
-inter_inter_key_disk_subset_peg_disk(X0) :- object(X0),not inter_inter_key_disk_subset_peg_disk(X0).
inter_inter_peg_disk_subset_verum_falsum(X0) :- inter_peg_disk(X0),subset_verum_falsum(null).
-inter_inter_peg_disk_subset_verum_falsum(X0) :- object(X0),not inter_inter_peg_disk_subset_verum_falsum(X0).
inter_inter_peg_disk_subset_verum_key(X0) :- inter_peg_disk(X0),subset_verum_key(null).
-inter_inter_peg_disk_subset_verum_key(X0) :- object(X0),not inter_inter_peg_disk_subset_verum_key(X0).
inter_inter_peg_disk_subset_verum_peg(X0) :- inter_peg_disk(X0),subset_verum_peg(null).
-inter_inter_peg_disk_subset_verum_peg(X0) :- object(X0),not inter_inter_peg_disk_subset_verum_peg(X0).
inter_inter_peg_disk_subset_verum_disk(X0) :- inter_peg_disk(X0),subset_verum_disk(null).
-inter_inter_peg_disk_subset_verum_disk(X0) :- object(X0),not inter_inter_peg_disk_subset_verum_disk(X0).
inter_inter_peg_disk_subset_falsum_key(X0) :- inter_peg_disk(X0),subset_falsum_key(null).
-inter_inter_peg_disk_subset_falsum_key(X0) :- object(X0),not inter_inter_peg_disk_subset_falsum_key(X0).
inter_inter_peg_disk_subset_falsum_peg(X0) :- inter_peg_disk(X0),subset_falsum_peg(null).
-inter_inter_peg_disk_subset_falsum_peg(X0) :- object(X0),not inter_inter_peg_disk_subset_falsum_peg(X0).
inter_inter_peg_disk_subset_falsum_disk(X0) :- inter_peg_disk(X0),subset_falsum_disk(null).
-inter_inter_peg_disk_subset_falsum_disk(X0) :- object(X0),not inter_inter_peg_disk_subset_falsum_disk(X0).
inter_inter_peg_disk_subset_key_peg(X0) :- inter_peg_disk(X0),subset_key_peg(null).
-inter_inter_peg_disk_subset_key_peg(X0) :- object(X0),not inter_inter_peg_disk_subset_key_peg(X0).
inter_inter_peg_disk_subset_key_disk(X0) :- inter_peg_disk(X0),subset_key_disk(null).
-inter_inter_peg_disk_subset_key_disk(X0) :- object(X0),not inter_inter_peg_disk_subset_key_disk(X0).
inter_inter_peg_disk_subset_peg_disk(X0) :- inter_peg_disk(X0),subset_peg_disk(null).
-inter_inter_peg_disk_subset_peg_disk(X0) :- object(X0),not inter_inter_peg_disk_subset_peg_disk(X0).
inter_subset_verum_falsum_subset_verum_key(null) :- subset_verum_falsum(null),subset_verum_key(null).
-inter_subset_verum_falsum_subset_verum_key(null) :- object(null),not inter_subset_verum_falsum_subset_verum_key(null).
inter_subset_verum_falsum_subset_verum_peg(null) :- subset_verum_falsum(null),subset_verum_peg(null).
-inter_subset_verum_falsum_subset_verum_peg(null) :- object(null),not inter_subset_verum_falsum_subset_verum_peg(null).
inter_subset_verum_falsum_subset_verum_disk(null) :- subset_verum_falsum(null),subset_verum_disk(null).
-inter_subset_verum_falsum_subset_verum_disk(null) :- object(null),not inter_subset_verum_falsum_subset_verum_disk(null).
inter_subset_verum_falsum_subset_falsum_key(null) :- subset_verum_falsum(null),subset_falsum_key(null).
-inter_subset_verum_falsum_subset_falsum_key(null) :- object(null),not inter_subset_verum_falsum_subset_falsum_key(null).
inter_subset_verum_falsum_subset_falsum_peg(null) :- subset_verum_falsum(null),subset_falsum_peg(null).
-inter_subset_verum_falsum_subset_falsum_peg(null) :- object(null),not inter_subset_verum_falsum_subset_falsum_peg(null).
inter_subset_verum_falsum_subset_falsum_disk(null) :- subset_verum_falsum(null),subset_falsum_disk(null).
-inter_subset_verum_falsum_subset_falsum_disk(null) :- object(null),not inter_subset_verum_falsum_subset_falsum_disk(null).
inter_subset_verum_falsum_subset_key_peg(null) :- subset_verum_falsum(null),subset_key_peg(null).
-inter_subset_verum_falsum_subset_key_peg(null) :- object(null),not inter_subset_verum_falsum_subset_key_peg(null).
inter_subset_verum_falsum_subset_key_disk(null) :- subset_verum_falsum(null),subset_key_disk(null).
-inter_subset_verum_falsum_subset_key_disk(null) :- object(null),not inter_subset_verum_falsum_subset_key_disk(null).
inter_subset_verum_falsum_subset_peg_disk(null) :- subset_verum_falsum(null),subset_peg_disk(null).
-inter_subset_verum_falsum_subset_peg_disk(null) :- object(null),not inter_subset_verum_falsum_subset_peg_disk(null).
inter_subset_verum_key_subset_verum_peg(null) :- subset_verum_key(null),subset_verum_peg(null).
-inter_subset_verum_key_subset_verum_peg(null) :- object(null),not inter_subset_verum_key_subset_verum_peg(null).
inter_subset_verum_key_subset_verum_disk(null) :- subset_verum_key(null),subset_verum_disk(null).
-inter_subset_verum_key_subset_verum_disk(null) :- object(null),not inter_subset_verum_key_subset_verum_disk(null).
inter_subset_verum_key_subset_falsum_key(null) :- subset_verum_key(null),subset_falsum_key(null).
-inter_subset_verum_key_subset_falsum_key(null) :- object(null),not inter_subset_verum_key_subset_falsum_key(null).
inter_subset_verum_key_subset_falsum_peg(null) :- subset_verum_key(null),subset_falsum_peg(null).
-inter_subset_verum_key_subset_falsum_peg(null) :- object(null),not inter_subset_verum_key_subset_falsum_peg(null).
inter_subset_verum_key_subset_falsum_disk(null) :- subset_verum_key(null),subset_falsum_disk(null).
-inter_subset_verum_key_subset_falsum_disk(null) :- object(null),not inter_subset_verum_key_subset_falsum_disk(null).
inter_subset_verum_key_subset_key_peg(null) :- subset_verum_key(null),subset_key_peg(null).
-inter_subset_verum_key_subset_key_peg(null) :- object(null),not inter_subset_verum_key_subset_key_peg(null).
inter_subset_verum_key_subset_key_disk(null) :- subset_verum_key(null),subset_key_disk(null).
-inter_subset_verum_key_subset_key_disk(null) :- object(null),not inter_subset_verum_key_subset_key_disk(null).
inter_subset_verum_key_subset_peg_disk(null) :- subset_verum_key(null),subset_peg_disk(null).
-inter_subset_verum_key_subset_peg_disk(null) :- object(null),not inter_subset_verum_key_subset_peg_disk(null).
inter_subset_verum_peg_subset_verum_disk(null) :- subset_verum_peg(null),subset_verum_disk(null).
-inter_subset_verum_peg_subset_verum_disk(null) :- object(null),not inter_subset_verum_peg_subset_verum_disk(null).
inter_subset_verum_peg_subset_falsum_key(null) :- subset_verum_peg(null),subset_falsum_key(null).
-inter_subset_verum_peg_subset_falsum_key(null) :- object(null),not inter_subset_verum_peg_subset_falsum_key(null).
inter_subset_verum_peg_subset_falsum_peg(null) :- subset_verum_peg(null),subset_falsum_peg(null).
-inter_subset_verum_peg_subset_falsum_peg(null) :- object(null),not inter_subset_verum_peg_subset_falsum_peg(null).
inter_subset_verum_peg_subset_falsum_disk(null) :- subset_verum_peg(null),subset_falsum_disk(null).
-inter_subset_verum_peg_subset_falsum_disk(null) :- object(null),not inter_subset_verum_peg_subset_falsum_disk(null).
inter_subset_verum_peg_subset_key_peg(null) :- subset_verum_peg(null),subset_key_peg(null).
-inter_subset_verum_peg_subset_key_peg(null) :- object(null),not inter_subset_verum_peg_subset_key_peg(null).
inter_subset_verum_peg_subset_key_disk(null) :- subset_verum_peg(null),subset_key_disk(null).
-inter_subset_verum_peg_subset_key_disk(null) :- object(null),not inter_subset_verum_peg_subset_key_disk(null).
inter_subset_verum_peg_subset_peg_disk(null) :- subset_verum_peg(null),subset_peg_disk(null).
-inter_subset_verum_peg_subset_peg_disk(null) :- object(null),not inter_subset_verum_peg_subset_peg_disk(null).
inter_subset_verum_disk_subset_falsum_key(null) :- subset_verum_disk(null),subset_falsum_key(null).
-inter_subset_verum_disk_subset_falsum_key(null) :- object(null),not inter_subset_verum_disk_subset_falsum_key(null).
inter_subset_verum_disk_subset_falsum_peg(null) :- subset_verum_disk(null),subset_falsum_peg(null).
-inter_subset_verum_disk_subset_falsum_peg(null) :- object(null),not inter_subset_verum_disk_subset_falsum_peg(null).
inter_subset_verum_disk_subset_falsum_disk(null) :- subset_verum_disk(null),subset_falsum_disk(null).
-inter_subset_verum_disk_subset_falsum_disk(null) :- object(null),not inter_subset_verum_disk_subset_falsum_disk(null).
inter_subset_verum_disk_subset_key_peg(null) :- subset_verum_disk(null),subset_key_peg(null).
-inter_subset_verum_disk_subset_key_peg(null) :- object(null),not inter_subset_verum_disk_subset_key_peg(null).
inter_subset_verum_disk_subset_key_disk(null) :- subset_verum_disk(null),subset_key_disk(null).
-inter_subset_verum_disk_subset_key_disk(null) :- object(null),not inter_subset_verum_disk_subset_key_disk(null).
inter_subset_verum_disk_subset_peg_disk(null) :- subset_verum_disk(null),subset_peg_disk(null).
-inter_subset_verum_disk_subset_peg_disk(null) :- object(null),not inter_subset_verum_disk_subset_peg_disk(null).
inter_subset_falsum_key_subset_falsum_peg(null) :- subset_falsum_key(null),subset_falsum_peg(null).
-inter_subset_falsum_key_subset_falsum_peg(null) :- object(null),not inter_subset_falsum_key_subset_falsum_peg(null).
inter_subset_falsum_key_subset_falsum_disk(null) :- subset_falsum_key(null),subset_falsum_disk(null).
-inter_subset_falsum_key_subset_falsum_disk(null) :- object(null),not inter_subset_falsum_key_subset_falsum_disk(null).
inter_subset_falsum_key_subset_key_peg(null) :- subset_falsum_key(null),subset_key_peg(null).
-inter_subset_falsum_key_subset_key_peg(null) :- object(null),not inter_subset_falsum_key_subset_key_peg(null).
inter_subset_falsum_key_subset_key_disk(null) :- subset_falsum_key(null),subset_key_disk(null).
-inter_subset_falsum_key_subset_key_disk(null) :- object(null),not inter_subset_falsum_key_subset_key_disk(null).
inter_subset_falsum_key_subset_peg_disk(null) :- subset_falsum_key(null),subset_peg_disk(null).
-inter_subset_falsum_key_subset_peg_disk(null) :- object(null),not inter_subset_falsum_key_subset_peg_disk(null).
inter_subset_falsum_peg_subset_falsum_disk(null) :- subset_falsum_peg(null),subset_falsum_disk(null).
-inter_subset_falsum_peg_subset_falsum_disk(null) :- object(null),not inter_subset_falsum_peg_subset_falsum_disk(null).
inter_subset_falsum_peg_subset_key_peg(null) :- subset_falsum_peg(null),subset_key_peg(null).
-inter_subset_falsum_peg_subset_key_peg(null) :- object(null),not inter_subset_falsum_peg_subset_key_peg(null).
inter_subset_falsum_peg_subset_key_disk(null) :- subset_falsum_peg(null),subset_key_disk(null).
-inter_subset_falsum_peg_subset_key_disk(null) :- object(null),not inter_subset_falsum_peg_subset_key_disk(null).
inter_subset_falsum_peg_subset_peg_disk(null) :- subset_falsum_peg(null),subset_peg_disk(null).
-inter_subset_falsum_peg_subset_peg_disk(null) :- object(null),not inter_subset_falsum_peg_subset_peg_disk(null).
inter_subset_falsum_disk_subset_key_peg(null) :- subset_falsum_disk(null),subset_key_peg(null).
-inter_subset_falsum_disk_subset_key_peg(null) :- object(null),not inter_subset_falsum_disk_subset_key_peg(null).
inter_subset_falsum_disk_subset_key_disk(null) :- subset_falsum_disk(null),subset_key_disk(null).
-inter_subset_falsum_disk_subset_key_disk(null) :- object(null),not inter_subset_falsum_disk_subset_key_disk(null).
inter_subset_falsum_disk_subset_peg_disk(null) :- subset_falsum_disk(null),subset_peg_disk(null).
-inter_subset_falsum_disk_subset_peg_disk(null) :- object(null),not inter_subset_falsum_disk_subset_peg_disk(null).
inter_subset_key_peg_subset_key_disk(null) :- subset_key_peg(null),subset_key_disk(null).
-inter_subset_key_peg_subset_key_disk(null) :- object(null),not inter_subset_key_peg_subset_key_disk(null).
inter_subset_key_peg_subset_peg_disk(null) :- subset_key_peg(null),subset_peg_disk(null).
-inter_subset_key_peg_subset_peg_disk(null) :- object(null),not inter_subset_key_peg_subset_peg_disk(null).
inter_subset_key_disk_subset_peg_disk(null) :- subset_key_disk(null),subset_peg_disk(null).
-inter_subset_key_disk_subset_peg_disk(null) :- object(null),not inter_subset_key_disk_subset_peg_disk(null).
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
subset_verum_er_smaller_key(null) :- er_smaller_key(X0) : verum(X0).
-subset_verum_er_smaller_key(null) :- not subset_verum_er_smaller_key(null).
subset_verum_er_below_key(null) :- er_below_key(X0) : verum(X0).
-subset_verum_er_below_key(null) :- not subset_verum_er_below_key(null).
subset_verum_er_left_key(null) :- er_left_key(X0) : verum(X0).
-subset_verum_er_left_key(null) :- not subset_verum_er_left_key(null).
subset_verum_er_overlap_key(null) :- er_overlap_key(X0) : verum(X0).
-subset_verum_er_overlap_key(null) :- not subset_verum_er_overlap_key(null).
subset_verum_er_shape_key(null) :- er_shape_key(X0) : verum(X0).
-subset_verum_er_shape_key(null) :- not subset_verum_er_shape_key(null).
subset_verum_er_smaller_peg(null) :- er_smaller_peg(X0) : verum(X0).
-subset_verum_er_smaller_peg(null) :- not subset_verum_er_smaller_peg(null).
subset_verum_er_below_peg(null) :- er_below_peg(X0) : verum(X0).
-subset_verum_er_below_peg(null) :- not subset_verum_er_below_peg(null).
subset_verum_er_left_peg(null) :- er_left_peg(X0) : verum(X0).
-subset_verum_er_left_peg(null) :- not subset_verum_er_left_peg(null).
subset_verum_er_overlap_peg(null) :- er_overlap_peg(X0) : verum(X0).
-subset_verum_er_overlap_peg(null) :- not subset_verum_er_overlap_peg(null).
subset_verum_er_shape_peg(null) :- er_shape_peg(X0) : verum(X0).
-subset_verum_er_shape_peg(null) :- not subset_verum_er_shape_peg(null).
subset_verum_er_smaller_disk(null) :- er_smaller_disk(X0) : verum(X0).
-subset_verum_er_smaller_disk(null) :- not subset_verum_er_smaller_disk(null).
subset_verum_er_below_disk(null) :- er_below_disk(X0) : verum(X0).
-subset_verum_er_below_disk(null) :- not subset_verum_er_below_disk(null).
subset_verum_er_left_disk(null) :- er_left_disk(X0) : verum(X0).
-subset_verum_er_left_disk(null) :- not subset_verum_er_left_disk(null).
subset_verum_er_overlap_disk(null) :- er_overlap_disk(X0) : verum(X0).
-subset_verum_er_overlap_disk(null) :- not subset_verum_er_overlap_disk(null).
subset_verum_er_shape_disk(null) :- er_shape_disk(X0) : verum(X0).
-subset_verum_er_shape_disk(null) :- not subset_verum_er_shape_disk(null).
subset_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : verum(X0).
-subset_verum_inter_verum_falsum(null) :- not subset_verum_inter_verum_falsum(null).
subset_verum_inter_verum_key(null) :- inter_verum_key(X0) : verum(X0).
-subset_verum_inter_verum_key(null) :- not subset_verum_inter_verum_key(null).
subset_verum_inter_verum_peg(null) :- inter_verum_peg(X0) : verum(X0).
-subset_verum_inter_verum_peg(null) :- not subset_verum_inter_verum_peg(null).
subset_verum_inter_verum_disk(null) :- inter_verum_disk(X0) : verum(X0).
-subset_verum_inter_verum_disk(null) :- not subset_verum_inter_verum_disk(null).
subset_verum_inter_falsum_key(null) :- inter_falsum_key(X0) : verum(X0).
-subset_verum_inter_falsum_key(null) :- not subset_verum_inter_falsum_key(null).
subset_verum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : verum(X0).
-subset_verum_inter_falsum_peg(null) :- not subset_verum_inter_falsum_peg(null).
subset_verum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : verum(X0).
-subset_verum_inter_falsum_disk(null) :- not subset_verum_inter_falsum_disk(null).
subset_verum_inter_key_peg(null) :- inter_key_peg(X0) : verum(X0).
-subset_verum_inter_key_peg(null) :- not subset_verum_inter_key_peg(null).
subset_verum_inter_key_disk(null) :- inter_key_disk(X0) : verum(X0).
-subset_verum_inter_key_disk(null) :- not subset_verum_inter_key_disk(null).
subset_verum_inter_peg_disk(null) :- inter_peg_disk(X0) : verum(X0).
-subset_verum_inter_peg_disk(null) :- not subset_verum_inter_peg_disk(null).
subset_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : verum(X0).
-subset_verum_subset_verum_falsum(null) :- not subset_verum_subset_verum_falsum(null).
subset_verum_subset_verum_key(null) :- subset_verum_key(null) : verum(X0).
-subset_verum_subset_verum_key(null) :- not subset_verum_subset_verum_key(null).
subset_verum_subset_verum_peg(null) :- subset_verum_peg(null) : verum(X0).
-subset_verum_subset_verum_peg(null) :- not subset_verum_subset_verum_peg(null).
subset_verum_subset_verum_disk(null) :- subset_verum_disk(null) : verum(X0).
-subset_verum_subset_verum_disk(null) :- not subset_verum_subset_verum_disk(null).
subset_verum_subset_falsum_key(null) :- subset_falsum_key(null) : verum(X0).
-subset_verum_subset_falsum_key(null) :- not subset_verum_subset_falsum_key(null).
subset_verum_subset_falsum_peg(null) :- subset_falsum_peg(null) : verum(X0).
-subset_verum_subset_falsum_peg(null) :- not subset_verum_subset_falsum_peg(null).
subset_verum_subset_falsum_disk(null) :- subset_falsum_disk(null) : verum(X0).
-subset_verum_subset_falsum_disk(null) :- not subset_verum_subset_falsum_disk(null).
subset_verum_subset_key_peg(null) :- subset_key_peg(null) : verum(X0).
-subset_verum_subset_key_peg(null) :- not subset_verum_subset_key_peg(null).
subset_verum_subset_key_disk(null) :- subset_key_disk(null) : verum(X0).
-subset_verum_subset_key_disk(null) :- not subset_verum_subset_key_disk(null).
subset_verum_subset_peg_disk(null) :- subset_peg_disk(null) : verum(X0).
-subset_verum_subset_peg_disk(null) :- not subset_verum_subset_peg_disk(null).
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
subset_falsum_er_smaller_key(null) :- er_smaller_key(X0) : falsum(X0).
-subset_falsum_er_smaller_key(null) :- not subset_falsum_er_smaller_key(null).
subset_falsum_er_below_key(null) :- er_below_key(X0) : falsum(X0).
-subset_falsum_er_below_key(null) :- not subset_falsum_er_below_key(null).
subset_falsum_er_left_key(null) :- er_left_key(X0) : falsum(X0).
-subset_falsum_er_left_key(null) :- not subset_falsum_er_left_key(null).
subset_falsum_er_overlap_key(null) :- er_overlap_key(X0) : falsum(X0).
-subset_falsum_er_overlap_key(null) :- not subset_falsum_er_overlap_key(null).
subset_falsum_er_shape_key(null) :- er_shape_key(X0) : falsum(X0).
-subset_falsum_er_shape_key(null) :- not subset_falsum_er_shape_key(null).
subset_falsum_er_smaller_peg(null) :- er_smaller_peg(X0) : falsum(X0).
-subset_falsum_er_smaller_peg(null) :- not subset_falsum_er_smaller_peg(null).
subset_falsum_er_below_peg(null) :- er_below_peg(X0) : falsum(X0).
-subset_falsum_er_below_peg(null) :- not subset_falsum_er_below_peg(null).
subset_falsum_er_left_peg(null) :- er_left_peg(X0) : falsum(X0).
-subset_falsum_er_left_peg(null) :- not subset_falsum_er_left_peg(null).
subset_falsum_er_overlap_peg(null) :- er_overlap_peg(X0) : falsum(X0).
-subset_falsum_er_overlap_peg(null) :- not subset_falsum_er_overlap_peg(null).
subset_falsum_er_shape_peg(null) :- er_shape_peg(X0) : falsum(X0).
-subset_falsum_er_shape_peg(null) :- not subset_falsum_er_shape_peg(null).
subset_falsum_er_smaller_disk(null) :- er_smaller_disk(X0) : falsum(X0).
-subset_falsum_er_smaller_disk(null) :- not subset_falsum_er_smaller_disk(null).
subset_falsum_er_below_disk(null) :- er_below_disk(X0) : falsum(X0).
-subset_falsum_er_below_disk(null) :- not subset_falsum_er_below_disk(null).
subset_falsum_er_left_disk(null) :- er_left_disk(X0) : falsum(X0).
-subset_falsum_er_left_disk(null) :- not subset_falsum_er_left_disk(null).
subset_falsum_er_overlap_disk(null) :- er_overlap_disk(X0) : falsum(X0).
-subset_falsum_er_overlap_disk(null) :- not subset_falsum_er_overlap_disk(null).
subset_falsum_er_shape_disk(null) :- er_shape_disk(X0) : falsum(X0).
-subset_falsum_er_shape_disk(null) :- not subset_falsum_er_shape_disk(null).
subset_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : falsum(X0).
-subset_falsum_inter_verum_falsum(null) :- not subset_falsum_inter_verum_falsum(null).
subset_falsum_inter_verum_key(null) :- inter_verum_key(X0) : falsum(X0).
-subset_falsum_inter_verum_key(null) :- not subset_falsum_inter_verum_key(null).
subset_falsum_inter_verum_peg(null) :- inter_verum_peg(X0) : falsum(X0).
-subset_falsum_inter_verum_peg(null) :- not subset_falsum_inter_verum_peg(null).
subset_falsum_inter_verum_disk(null) :- inter_verum_disk(X0) : falsum(X0).
-subset_falsum_inter_verum_disk(null) :- not subset_falsum_inter_verum_disk(null).
subset_falsum_inter_falsum_key(null) :- inter_falsum_key(X0) : falsum(X0).
-subset_falsum_inter_falsum_key(null) :- not subset_falsum_inter_falsum_key(null).
subset_falsum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : falsum(X0).
-subset_falsum_inter_falsum_peg(null) :- not subset_falsum_inter_falsum_peg(null).
subset_falsum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : falsum(X0).
-subset_falsum_inter_falsum_disk(null) :- not subset_falsum_inter_falsum_disk(null).
subset_falsum_inter_key_peg(null) :- inter_key_peg(X0) : falsum(X0).
-subset_falsum_inter_key_peg(null) :- not subset_falsum_inter_key_peg(null).
subset_falsum_inter_key_disk(null) :- inter_key_disk(X0) : falsum(X0).
-subset_falsum_inter_key_disk(null) :- not subset_falsum_inter_key_disk(null).
subset_falsum_inter_peg_disk(null) :- inter_peg_disk(X0) : falsum(X0).
-subset_falsum_inter_peg_disk(null) :- not subset_falsum_inter_peg_disk(null).
subset_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : falsum(X0).
-subset_falsum_subset_verum_falsum(null) :- not subset_falsum_subset_verum_falsum(null).
subset_falsum_subset_verum_key(null) :- subset_verum_key(null) : falsum(X0).
-subset_falsum_subset_verum_key(null) :- not subset_falsum_subset_verum_key(null).
subset_falsum_subset_verum_peg(null) :- subset_verum_peg(null) : falsum(X0).
-subset_falsum_subset_verum_peg(null) :- not subset_falsum_subset_verum_peg(null).
subset_falsum_subset_verum_disk(null) :- subset_verum_disk(null) : falsum(X0).
-subset_falsum_subset_verum_disk(null) :- not subset_falsum_subset_verum_disk(null).
subset_falsum_subset_falsum_key(null) :- subset_falsum_key(null) : falsum(X0).
-subset_falsum_subset_falsum_key(null) :- not subset_falsum_subset_falsum_key(null).
subset_falsum_subset_falsum_peg(null) :- subset_falsum_peg(null) : falsum(X0).
-subset_falsum_subset_falsum_peg(null) :- not subset_falsum_subset_falsum_peg(null).
subset_falsum_subset_falsum_disk(null) :- subset_falsum_disk(null) : falsum(X0).
-subset_falsum_subset_falsum_disk(null) :- not subset_falsum_subset_falsum_disk(null).
subset_falsum_subset_key_peg(null) :- subset_key_peg(null) : falsum(X0).
-subset_falsum_subset_key_peg(null) :- not subset_falsum_subset_key_peg(null).
subset_falsum_subset_key_disk(null) :- subset_key_disk(null) : falsum(X0).
-subset_falsum_subset_key_disk(null) :- not subset_falsum_subset_key_disk(null).
subset_falsum_subset_peg_disk(null) :- subset_peg_disk(null) : falsum(X0).
-subset_falsum_subset_peg_disk(null) :- not subset_falsum_subset_peg_disk(null).
subset_key_er_smaller_verum(null) :- er_smaller_verum(X0) : key(X0).
-subset_key_er_smaller_verum(null) :- not subset_key_er_smaller_verum(null).
subset_key_er_below_verum(null) :- er_below_verum(X0) : key(X0).
-subset_key_er_below_verum(null) :- not subset_key_er_below_verum(null).
subset_key_er_left_verum(null) :- er_left_verum(X0) : key(X0).
-subset_key_er_left_verum(null) :- not subset_key_er_left_verum(null).
subset_key_er_overlap_verum(null) :- er_overlap_verum(X0) : key(X0).
-subset_key_er_overlap_verum(null) :- not subset_key_er_overlap_verum(null).
subset_key_er_shape_verum(null) :- er_shape_verum(X0) : key(X0).
-subset_key_er_shape_verum(null) :- not subset_key_er_shape_verum(null).
subset_key_er_smaller_falsum(null) :- er_smaller_falsum(X0) : key(X0).
-subset_key_er_smaller_falsum(null) :- not subset_key_er_smaller_falsum(null).
subset_key_er_below_falsum(null) :- er_below_falsum(X0) : key(X0).
-subset_key_er_below_falsum(null) :- not subset_key_er_below_falsum(null).
subset_key_er_left_falsum(null) :- er_left_falsum(X0) : key(X0).
-subset_key_er_left_falsum(null) :- not subset_key_er_left_falsum(null).
subset_key_er_overlap_falsum(null) :- er_overlap_falsum(X0) : key(X0).
-subset_key_er_overlap_falsum(null) :- not subset_key_er_overlap_falsum(null).
subset_key_er_shape_falsum(null) :- er_shape_falsum(X0) : key(X0).
-subset_key_er_shape_falsum(null) :- not subset_key_er_shape_falsum(null).
subset_key_er_smaller_key(null) :- er_smaller_key(X0) : key(X0).
-subset_key_er_smaller_key(null) :- not subset_key_er_smaller_key(null).
subset_key_er_below_key(null) :- er_below_key(X0) : key(X0).
-subset_key_er_below_key(null) :- not subset_key_er_below_key(null).
subset_key_er_left_key(null) :- er_left_key(X0) : key(X0).
-subset_key_er_left_key(null) :- not subset_key_er_left_key(null).
subset_key_er_overlap_key(null) :- er_overlap_key(X0) : key(X0).
-subset_key_er_overlap_key(null) :- not subset_key_er_overlap_key(null).
subset_key_er_shape_key(null) :- er_shape_key(X0) : key(X0).
-subset_key_er_shape_key(null) :- not subset_key_er_shape_key(null).
subset_key_er_smaller_peg(null) :- er_smaller_peg(X0) : key(X0).
-subset_key_er_smaller_peg(null) :- not subset_key_er_smaller_peg(null).
subset_key_er_below_peg(null) :- er_below_peg(X0) : key(X0).
-subset_key_er_below_peg(null) :- not subset_key_er_below_peg(null).
subset_key_er_left_peg(null) :- er_left_peg(X0) : key(X0).
-subset_key_er_left_peg(null) :- not subset_key_er_left_peg(null).
subset_key_er_overlap_peg(null) :- er_overlap_peg(X0) : key(X0).
-subset_key_er_overlap_peg(null) :- not subset_key_er_overlap_peg(null).
subset_key_er_shape_peg(null) :- er_shape_peg(X0) : key(X0).
-subset_key_er_shape_peg(null) :- not subset_key_er_shape_peg(null).
subset_key_er_smaller_disk(null) :- er_smaller_disk(X0) : key(X0).
-subset_key_er_smaller_disk(null) :- not subset_key_er_smaller_disk(null).
subset_key_er_below_disk(null) :- er_below_disk(X0) : key(X0).
-subset_key_er_below_disk(null) :- not subset_key_er_below_disk(null).
subset_key_er_left_disk(null) :- er_left_disk(X0) : key(X0).
-subset_key_er_left_disk(null) :- not subset_key_er_left_disk(null).
subset_key_er_overlap_disk(null) :- er_overlap_disk(X0) : key(X0).
-subset_key_er_overlap_disk(null) :- not subset_key_er_overlap_disk(null).
subset_key_er_shape_disk(null) :- er_shape_disk(X0) : key(X0).
-subset_key_er_shape_disk(null) :- not subset_key_er_shape_disk(null).
subset_key_inter_verum_falsum(null) :- inter_verum_falsum(X0) : key(X0).
-subset_key_inter_verum_falsum(null) :- not subset_key_inter_verum_falsum(null).
subset_key_inter_verum_key(null) :- inter_verum_key(X0) : key(X0).
-subset_key_inter_verum_key(null) :- not subset_key_inter_verum_key(null).
subset_key_inter_verum_peg(null) :- inter_verum_peg(X0) : key(X0).
-subset_key_inter_verum_peg(null) :- not subset_key_inter_verum_peg(null).
subset_key_inter_verum_disk(null) :- inter_verum_disk(X0) : key(X0).
-subset_key_inter_verum_disk(null) :- not subset_key_inter_verum_disk(null).
subset_key_inter_falsum_key(null) :- inter_falsum_key(X0) : key(X0).
-subset_key_inter_falsum_key(null) :- not subset_key_inter_falsum_key(null).
subset_key_inter_falsum_peg(null) :- inter_falsum_peg(X0) : key(X0).
-subset_key_inter_falsum_peg(null) :- not subset_key_inter_falsum_peg(null).
subset_key_inter_falsum_disk(null) :- inter_falsum_disk(X0) : key(X0).
-subset_key_inter_falsum_disk(null) :- not subset_key_inter_falsum_disk(null).
subset_key_inter_key_peg(null) :- inter_key_peg(X0) : key(X0).
-subset_key_inter_key_peg(null) :- not subset_key_inter_key_peg(null).
subset_key_inter_key_disk(null) :- inter_key_disk(X0) : key(X0).
-subset_key_inter_key_disk(null) :- not subset_key_inter_key_disk(null).
subset_key_inter_peg_disk(null) :- inter_peg_disk(X0) : key(X0).
-subset_key_inter_peg_disk(null) :- not subset_key_inter_peg_disk(null).
subset_key_subset_verum_falsum(null) :- subset_verum_falsum(null) : key(X0).
-subset_key_subset_verum_falsum(null) :- not subset_key_subset_verum_falsum(null).
subset_key_subset_verum_key(null) :- subset_verum_key(null) : key(X0).
-subset_key_subset_verum_key(null) :- not subset_key_subset_verum_key(null).
subset_key_subset_verum_peg(null) :- subset_verum_peg(null) : key(X0).
-subset_key_subset_verum_peg(null) :- not subset_key_subset_verum_peg(null).
subset_key_subset_verum_disk(null) :- subset_verum_disk(null) : key(X0).
-subset_key_subset_verum_disk(null) :- not subset_key_subset_verum_disk(null).
subset_key_subset_falsum_key(null) :- subset_falsum_key(null) : key(X0).
-subset_key_subset_falsum_key(null) :- not subset_key_subset_falsum_key(null).
subset_key_subset_falsum_peg(null) :- subset_falsum_peg(null) : key(X0).
-subset_key_subset_falsum_peg(null) :- not subset_key_subset_falsum_peg(null).
subset_key_subset_falsum_disk(null) :- subset_falsum_disk(null) : key(X0).
-subset_key_subset_falsum_disk(null) :- not subset_key_subset_falsum_disk(null).
subset_key_subset_key_peg(null) :- subset_key_peg(null) : key(X0).
-subset_key_subset_key_peg(null) :- not subset_key_subset_key_peg(null).
subset_key_subset_key_disk(null) :- subset_key_disk(null) : key(X0).
-subset_key_subset_key_disk(null) :- not subset_key_subset_key_disk(null).
subset_key_subset_peg_disk(null) :- subset_peg_disk(null) : key(X0).
-subset_key_subset_peg_disk(null) :- not subset_key_subset_peg_disk(null).
subset_peg_er_smaller_verum(null) :- er_smaller_verum(X0) : peg(X0).
-subset_peg_er_smaller_verum(null) :- not subset_peg_er_smaller_verum(null).
subset_peg_er_below_verum(null) :- er_below_verum(X0) : peg(X0).
-subset_peg_er_below_verum(null) :- not subset_peg_er_below_verum(null).
subset_peg_er_left_verum(null) :- er_left_verum(X0) : peg(X0).
-subset_peg_er_left_verum(null) :- not subset_peg_er_left_verum(null).
subset_peg_er_overlap_verum(null) :- er_overlap_verum(X0) : peg(X0).
-subset_peg_er_overlap_verum(null) :- not subset_peg_er_overlap_verum(null).
subset_peg_er_shape_verum(null) :- er_shape_verum(X0) : peg(X0).
-subset_peg_er_shape_verum(null) :- not subset_peg_er_shape_verum(null).
subset_peg_er_smaller_falsum(null) :- er_smaller_falsum(X0) : peg(X0).
-subset_peg_er_smaller_falsum(null) :- not subset_peg_er_smaller_falsum(null).
subset_peg_er_below_falsum(null) :- er_below_falsum(X0) : peg(X0).
-subset_peg_er_below_falsum(null) :- not subset_peg_er_below_falsum(null).
subset_peg_er_left_falsum(null) :- er_left_falsum(X0) : peg(X0).
-subset_peg_er_left_falsum(null) :- not subset_peg_er_left_falsum(null).
subset_peg_er_overlap_falsum(null) :- er_overlap_falsum(X0) : peg(X0).
-subset_peg_er_overlap_falsum(null) :- not subset_peg_er_overlap_falsum(null).
subset_peg_er_shape_falsum(null) :- er_shape_falsum(X0) : peg(X0).
-subset_peg_er_shape_falsum(null) :- not subset_peg_er_shape_falsum(null).
subset_peg_er_smaller_key(null) :- er_smaller_key(X0) : peg(X0).
-subset_peg_er_smaller_key(null) :- not subset_peg_er_smaller_key(null).
subset_peg_er_below_key(null) :- er_below_key(X0) : peg(X0).
-subset_peg_er_below_key(null) :- not subset_peg_er_below_key(null).
subset_peg_er_left_key(null) :- er_left_key(X0) : peg(X0).
-subset_peg_er_left_key(null) :- not subset_peg_er_left_key(null).
subset_peg_er_overlap_key(null) :- er_overlap_key(X0) : peg(X0).
-subset_peg_er_overlap_key(null) :- not subset_peg_er_overlap_key(null).
subset_peg_er_shape_key(null) :- er_shape_key(X0) : peg(X0).
-subset_peg_er_shape_key(null) :- not subset_peg_er_shape_key(null).
subset_peg_er_smaller_peg(null) :- er_smaller_peg(X0) : peg(X0).
-subset_peg_er_smaller_peg(null) :- not subset_peg_er_smaller_peg(null).
subset_peg_er_below_peg(null) :- er_below_peg(X0) : peg(X0).
-subset_peg_er_below_peg(null) :- not subset_peg_er_below_peg(null).
subset_peg_er_left_peg(null) :- er_left_peg(X0) : peg(X0).
-subset_peg_er_left_peg(null) :- not subset_peg_er_left_peg(null).
subset_peg_er_overlap_peg(null) :- er_overlap_peg(X0) : peg(X0).
-subset_peg_er_overlap_peg(null) :- not subset_peg_er_overlap_peg(null).
subset_peg_er_shape_peg(null) :- er_shape_peg(X0) : peg(X0).
-subset_peg_er_shape_peg(null) :- not subset_peg_er_shape_peg(null).
subset_peg_er_smaller_disk(null) :- er_smaller_disk(X0) : peg(X0).
-subset_peg_er_smaller_disk(null) :- not subset_peg_er_smaller_disk(null).
subset_peg_er_below_disk(null) :- er_below_disk(X0) : peg(X0).
-subset_peg_er_below_disk(null) :- not subset_peg_er_below_disk(null).
subset_peg_er_left_disk(null) :- er_left_disk(X0) : peg(X0).
-subset_peg_er_left_disk(null) :- not subset_peg_er_left_disk(null).
subset_peg_er_overlap_disk(null) :- er_overlap_disk(X0) : peg(X0).
-subset_peg_er_overlap_disk(null) :- not subset_peg_er_overlap_disk(null).
subset_peg_er_shape_disk(null) :- er_shape_disk(X0) : peg(X0).
-subset_peg_er_shape_disk(null) :- not subset_peg_er_shape_disk(null).
subset_peg_inter_verum_falsum(null) :- inter_verum_falsum(X0) : peg(X0).
-subset_peg_inter_verum_falsum(null) :- not subset_peg_inter_verum_falsum(null).
subset_peg_inter_verum_key(null) :- inter_verum_key(X0) : peg(X0).
-subset_peg_inter_verum_key(null) :- not subset_peg_inter_verum_key(null).
subset_peg_inter_verum_peg(null) :- inter_verum_peg(X0) : peg(X0).
-subset_peg_inter_verum_peg(null) :- not subset_peg_inter_verum_peg(null).
subset_peg_inter_verum_disk(null) :- inter_verum_disk(X0) : peg(X0).
-subset_peg_inter_verum_disk(null) :- not subset_peg_inter_verum_disk(null).
subset_peg_inter_falsum_key(null) :- inter_falsum_key(X0) : peg(X0).
-subset_peg_inter_falsum_key(null) :- not subset_peg_inter_falsum_key(null).
subset_peg_inter_falsum_peg(null) :- inter_falsum_peg(X0) : peg(X0).
-subset_peg_inter_falsum_peg(null) :- not subset_peg_inter_falsum_peg(null).
subset_peg_inter_falsum_disk(null) :- inter_falsum_disk(X0) : peg(X0).
-subset_peg_inter_falsum_disk(null) :- not subset_peg_inter_falsum_disk(null).
subset_peg_inter_key_peg(null) :- inter_key_peg(X0) : peg(X0).
-subset_peg_inter_key_peg(null) :- not subset_peg_inter_key_peg(null).
subset_peg_inter_key_disk(null) :- inter_key_disk(X0) : peg(X0).
-subset_peg_inter_key_disk(null) :- not subset_peg_inter_key_disk(null).
subset_peg_inter_peg_disk(null) :- inter_peg_disk(X0) : peg(X0).
-subset_peg_inter_peg_disk(null) :- not subset_peg_inter_peg_disk(null).
subset_peg_subset_verum_falsum(null) :- subset_verum_falsum(null) : peg(X0).
-subset_peg_subset_verum_falsum(null) :- not subset_peg_subset_verum_falsum(null).
subset_peg_subset_verum_key(null) :- subset_verum_key(null) : peg(X0).
-subset_peg_subset_verum_key(null) :- not subset_peg_subset_verum_key(null).
subset_peg_subset_verum_peg(null) :- subset_verum_peg(null) : peg(X0).
-subset_peg_subset_verum_peg(null) :- not subset_peg_subset_verum_peg(null).
subset_peg_subset_verum_disk(null) :- subset_verum_disk(null) : peg(X0).
-subset_peg_subset_verum_disk(null) :- not subset_peg_subset_verum_disk(null).
subset_peg_subset_falsum_key(null) :- subset_falsum_key(null) : peg(X0).
-subset_peg_subset_falsum_key(null) :- not subset_peg_subset_falsum_key(null).
subset_peg_subset_falsum_peg(null) :- subset_falsum_peg(null) : peg(X0).
-subset_peg_subset_falsum_peg(null) :- not subset_peg_subset_falsum_peg(null).
subset_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : peg(X0).
-subset_peg_subset_falsum_disk(null) :- not subset_peg_subset_falsum_disk(null).
subset_peg_subset_key_peg(null) :- subset_key_peg(null) : peg(X0).
-subset_peg_subset_key_peg(null) :- not subset_peg_subset_key_peg(null).
subset_peg_subset_key_disk(null) :- subset_key_disk(null) : peg(X0).
-subset_peg_subset_key_disk(null) :- not subset_peg_subset_key_disk(null).
subset_peg_subset_peg_disk(null) :- subset_peg_disk(null) : peg(X0).
-subset_peg_subset_peg_disk(null) :- not subset_peg_subset_peg_disk(null).
subset_disk_er_smaller_verum(null) :- er_smaller_verum(X0) : disk(X0).
-subset_disk_er_smaller_verum(null) :- not subset_disk_er_smaller_verum(null).
subset_disk_er_below_verum(null) :- er_below_verum(X0) : disk(X0).
-subset_disk_er_below_verum(null) :- not subset_disk_er_below_verum(null).
subset_disk_er_left_verum(null) :- er_left_verum(X0) : disk(X0).
-subset_disk_er_left_verum(null) :- not subset_disk_er_left_verum(null).
subset_disk_er_overlap_verum(null) :- er_overlap_verum(X0) : disk(X0).
-subset_disk_er_overlap_verum(null) :- not subset_disk_er_overlap_verum(null).
subset_disk_er_shape_verum(null) :- er_shape_verum(X0) : disk(X0).
-subset_disk_er_shape_verum(null) :- not subset_disk_er_shape_verum(null).
subset_disk_er_smaller_falsum(null) :- er_smaller_falsum(X0) : disk(X0).
-subset_disk_er_smaller_falsum(null) :- not subset_disk_er_smaller_falsum(null).
subset_disk_er_below_falsum(null) :- er_below_falsum(X0) : disk(X0).
-subset_disk_er_below_falsum(null) :- not subset_disk_er_below_falsum(null).
subset_disk_er_left_falsum(null) :- er_left_falsum(X0) : disk(X0).
-subset_disk_er_left_falsum(null) :- not subset_disk_er_left_falsum(null).
subset_disk_er_overlap_falsum(null) :- er_overlap_falsum(X0) : disk(X0).
-subset_disk_er_overlap_falsum(null) :- not subset_disk_er_overlap_falsum(null).
subset_disk_er_shape_falsum(null) :- er_shape_falsum(X0) : disk(X0).
-subset_disk_er_shape_falsum(null) :- not subset_disk_er_shape_falsum(null).
subset_disk_er_smaller_key(null) :- er_smaller_key(X0) : disk(X0).
-subset_disk_er_smaller_key(null) :- not subset_disk_er_smaller_key(null).
subset_disk_er_below_key(null) :- er_below_key(X0) : disk(X0).
-subset_disk_er_below_key(null) :- not subset_disk_er_below_key(null).
subset_disk_er_left_key(null) :- er_left_key(X0) : disk(X0).
-subset_disk_er_left_key(null) :- not subset_disk_er_left_key(null).
subset_disk_er_overlap_key(null) :- er_overlap_key(X0) : disk(X0).
-subset_disk_er_overlap_key(null) :- not subset_disk_er_overlap_key(null).
subset_disk_er_shape_key(null) :- er_shape_key(X0) : disk(X0).
-subset_disk_er_shape_key(null) :- not subset_disk_er_shape_key(null).
subset_disk_er_smaller_peg(null) :- er_smaller_peg(X0) : disk(X0).
-subset_disk_er_smaller_peg(null) :- not subset_disk_er_smaller_peg(null).
subset_disk_er_below_peg(null) :- er_below_peg(X0) : disk(X0).
-subset_disk_er_below_peg(null) :- not subset_disk_er_below_peg(null).
subset_disk_er_left_peg(null) :- er_left_peg(X0) : disk(X0).
-subset_disk_er_left_peg(null) :- not subset_disk_er_left_peg(null).
subset_disk_er_overlap_peg(null) :- er_overlap_peg(X0) : disk(X0).
-subset_disk_er_overlap_peg(null) :- not subset_disk_er_overlap_peg(null).
subset_disk_er_shape_peg(null) :- er_shape_peg(X0) : disk(X0).
-subset_disk_er_shape_peg(null) :- not subset_disk_er_shape_peg(null).
subset_disk_er_smaller_disk(null) :- er_smaller_disk(X0) : disk(X0).
-subset_disk_er_smaller_disk(null) :- not subset_disk_er_smaller_disk(null).
subset_disk_er_below_disk(null) :- er_below_disk(X0) : disk(X0).
-subset_disk_er_below_disk(null) :- not subset_disk_er_below_disk(null).
subset_disk_er_left_disk(null) :- er_left_disk(X0) : disk(X0).
-subset_disk_er_left_disk(null) :- not subset_disk_er_left_disk(null).
subset_disk_er_overlap_disk(null) :- er_overlap_disk(X0) : disk(X0).
-subset_disk_er_overlap_disk(null) :- not subset_disk_er_overlap_disk(null).
subset_disk_er_shape_disk(null) :- er_shape_disk(X0) : disk(X0).
-subset_disk_er_shape_disk(null) :- not subset_disk_er_shape_disk(null).
subset_disk_inter_verum_falsum(null) :- inter_verum_falsum(X0) : disk(X0).
-subset_disk_inter_verum_falsum(null) :- not subset_disk_inter_verum_falsum(null).
subset_disk_inter_verum_key(null) :- inter_verum_key(X0) : disk(X0).
-subset_disk_inter_verum_key(null) :- not subset_disk_inter_verum_key(null).
subset_disk_inter_verum_peg(null) :- inter_verum_peg(X0) : disk(X0).
-subset_disk_inter_verum_peg(null) :- not subset_disk_inter_verum_peg(null).
subset_disk_inter_verum_disk(null) :- inter_verum_disk(X0) : disk(X0).
-subset_disk_inter_verum_disk(null) :- not subset_disk_inter_verum_disk(null).
subset_disk_inter_falsum_key(null) :- inter_falsum_key(X0) : disk(X0).
-subset_disk_inter_falsum_key(null) :- not subset_disk_inter_falsum_key(null).
subset_disk_inter_falsum_peg(null) :- inter_falsum_peg(X0) : disk(X0).
-subset_disk_inter_falsum_peg(null) :- not subset_disk_inter_falsum_peg(null).
subset_disk_inter_falsum_disk(null) :- inter_falsum_disk(X0) : disk(X0).
-subset_disk_inter_falsum_disk(null) :- not subset_disk_inter_falsum_disk(null).
subset_disk_inter_key_peg(null) :- inter_key_peg(X0) : disk(X0).
-subset_disk_inter_key_peg(null) :- not subset_disk_inter_key_peg(null).
subset_disk_inter_key_disk(null) :- inter_key_disk(X0) : disk(X0).
-subset_disk_inter_key_disk(null) :- not subset_disk_inter_key_disk(null).
subset_disk_inter_peg_disk(null) :- inter_peg_disk(X0) : disk(X0).
-subset_disk_inter_peg_disk(null) :- not subset_disk_inter_peg_disk(null).
subset_disk_subset_verum_falsum(null) :- subset_verum_falsum(null) : disk(X0).
-subset_disk_subset_verum_falsum(null) :- not subset_disk_subset_verum_falsum(null).
subset_disk_subset_verum_key(null) :- subset_verum_key(null) : disk(X0).
-subset_disk_subset_verum_key(null) :- not subset_disk_subset_verum_key(null).
subset_disk_subset_verum_peg(null) :- subset_verum_peg(null) : disk(X0).
-subset_disk_subset_verum_peg(null) :- not subset_disk_subset_verum_peg(null).
subset_disk_subset_verum_disk(null) :- subset_verum_disk(null) : disk(X0).
-subset_disk_subset_verum_disk(null) :- not subset_disk_subset_verum_disk(null).
subset_disk_subset_falsum_key(null) :- subset_falsum_key(null) : disk(X0).
-subset_disk_subset_falsum_key(null) :- not subset_disk_subset_falsum_key(null).
subset_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : disk(X0).
-subset_disk_subset_falsum_peg(null) :- not subset_disk_subset_falsum_peg(null).
subset_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : disk(X0).
-subset_disk_subset_falsum_disk(null) :- not subset_disk_subset_falsum_disk(null).
subset_disk_subset_key_peg(null) :- subset_key_peg(null) : disk(X0).
-subset_disk_subset_key_peg(null) :- not subset_disk_subset_key_peg(null).
subset_disk_subset_key_disk(null) :- subset_key_disk(null) : disk(X0).
-subset_disk_subset_key_disk(null) :- not subset_disk_subset_key_disk(null).
subset_disk_subset_peg_disk(null) :- subset_peg_disk(null) : disk(X0).
-subset_disk_subset_peg_disk(null) :- not subset_disk_subset_peg_disk(null).
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
subset_er_smaller_verum_er_smaller_key(null) :- er_smaller_key(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_smaller_key(null) :- not subset_er_smaller_verum_er_smaller_key(null).
subset_er_smaller_verum_er_below_key(null) :- er_below_key(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_below_key(null) :- not subset_er_smaller_verum_er_below_key(null).
subset_er_smaller_verum_er_left_key(null) :- er_left_key(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_left_key(null) :- not subset_er_smaller_verum_er_left_key(null).
subset_er_smaller_verum_er_overlap_key(null) :- er_overlap_key(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_overlap_key(null) :- not subset_er_smaller_verum_er_overlap_key(null).
subset_er_smaller_verum_er_shape_key(null) :- er_shape_key(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_shape_key(null) :- not subset_er_smaller_verum_er_shape_key(null).
subset_er_smaller_verum_er_smaller_peg(null) :- er_smaller_peg(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_smaller_peg(null) :- not subset_er_smaller_verum_er_smaller_peg(null).
subset_er_smaller_verum_er_below_peg(null) :- er_below_peg(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_below_peg(null) :- not subset_er_smaller_verum_er_below_peg(null).
subset_er_smaller_verum_er_left_peg(null) :- er_left_peg(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_left_peg(null) :- not subset_er_smaller_verum_er_left_peg(null).
subset_er_smaller_verum_er_overlap_peg(null) :- er_overlap_peg(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_overlap_peg(null) :- not subset_er_smaller_verum_er_overlap_peg(null).
subset_er_smaller_verum_er_shape_peg(null) :- er_shape_peg(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_shape_peg(null) :- not subset_er_smaller_verum_er_shape_peg(null).
subset_er_smaller_verum_er_smaller_disk(null) :- er_smaller_disk(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_smaller_disk(null) :- not subset_er_smaller_verum_er_smaller_disk(null).
subset_er_smaller_verum_er_below_disk(null) :- er_below_disk(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_below_disk(null) :- not subset_er_smaller_verum_er_below_disk(null).
subset_er_smaller_verum_er_left_disk(null) :- er_left_disk(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_left_disk(null) :- not subset_er_smaller_verum_er_left_disk(null).
subset_er_smaller_verum_er_overlap_disk(null) :- er_overlap_disk(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_overlap_disk(null) :- not subset_er_smaller_verum_er_overlap_disk(null).
subset_er_smaller_verum_er_shape_disk(null) :- er_shape_disk(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_shape_disk(null) :- not subset_er_smaller_verum_er_shape_disk(null).
subset_er_smaller_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_falsum(null) :- not subset_er_smaller_verum_inter_verum_falsum(null).
subset_er_smaller_verum_inter_verum_key(null) :- inter_verum_key(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_key(null) :- not subset_er_smaller_verum_inter_verum_key(null).
subset_er_smaller_verum_inter_verum_peg(null) :- inter_verum_peg(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_peg(null) :- not subset_er_smaller_verum_inter_verum_peg(null).
subset_er_smaller_verum_inter_verum_disk(null) :- inter_verum_disk(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_disk(null) :- not subset_er_smaller_verum_inter_verum_disk(null).
subset_er_smaller_verum_inter_falsum_key(null) :- inter_falsum_key(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_falsum_key(null) :- not subset_er_smaller_verum_inter_falsum_key(null).
subset_er_smaller_verum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_falsum_peg(null) :- not subset_er_smaller_verum_inter_falsum_peg(null).
subset_er_smaller_verum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_falsum_disk(null) :- not subset_er_smaller_verum_inter_falsum_disk(null).
subset_er_smaller_verum_inter_key_peg(null) :- inter_key_peg(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_key_peg(null) :- not subset_er_smaller_verum_inter_key_peg(null).
subset_er_smaller_verum_inter_key_disk(null) :- inter_key_disk(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_key_disk(null) :- not subset_er_smaller_verum_inter_key_disk(null).
subset_er_smaller_verum_inter_peg_disk(null) :- inter_peg_disk(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_peg_disk(null) :- not subset_er_smaller_verum_inter_peg_disk(null).
subset_er_smaller_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_falsum(null) :- not subset_er_smaller_verum_subset_verum_falsum(null).
subset_er_smaller_verum_subset_verum_key(null) :- subset_verum_key(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_key(null) :- not subset_er_smaller_verum_subset_verum_key(null).
subset_er_smaller_verum_subset_verum_peg(null) :- subset_verum_peg(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_peg(null) :- not subset_er_smaller_verum_subset_verum_peg(null).
subset_er_smaller_verum_subset_verum_disk(null) :- subset_verum_disk(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_disk(null) :- not subset_er_smaller_verum_subset_verum_disk(null).
subset_er_smaller_verum_subset_falsum_key(null) :- subset_falsum_key(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_falsum_key(null) :- not subset_er_smaller_verum_subset_falsum_key(null).
subset_er_smaller_verum_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_falsum_peg(null) :- not subset_er_smaller_verum_subset_falsum_peg(null).
subset_er_smaller_verum_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_falsum_disk(null) :- not subset_er_smaller_verum_subset_falsum_disk(null).
subset_er_smaller_verum_subset_key_peg(null) :- subset_key_peg(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_key_peg(null) :- not subset_er_smaller_verum_subset_key_peg(null).
subset_er_smaller_verum_subset_key_disk(null) :- subset_key_disk(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_key_disk(null) :- not subset_er_smaller_verum_subset_key_disk(null).
subset_er_smaller_verum_subset_peg_disk(null) :- subset_peg_disk(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_peg_disk(null) :- not subset_er_smaller_verum_subset_peg_disk(null).
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
subset_er_below_verum_er_smaller_key(null) :- er_smaller_key(X0) : er_below_verum(X0).
-subset_er_below_verum_er_smaller_key(null) :- not subset_er_below_verum_er_smaller_key(null).
subset_er_below_verum_er_below_key(null) :- er_below_key(X0) : er_below_verum(X0).
-subset_er_below_verum_er_below_key(null) :- not subset_er_below_verum_er_below_key(null).
subset_er_below_verum_er_left_key(null) :- er_left_key(X0) : er_below_verum(X0).
-subset_er_below_verum_er_left_key(null) :- not subset_er_below_verum_er_left_key(null).
subset_er_below_verum_er_overlap_key(null) :- er_overlap_key(X0) : er_below_verum(X0).
-subset_er_below_verum_er_overlap_key(null) :- not subset_er_below_verum_er_overlap_key(null).
subset_er_below_verum_er_shape_key(null) :- er_shape_key(X0) : er_below_verum(X0).
-subset_er_below_verum_er_shape_key(null) :- not subset_er_below_verum_er_shape_key(null).
subset_er_below_verum_er_smaller_peg(null) :- er_smaller_peg(X0) : er_below_verum(X0).
-subset_er_below_verum_er_smaller_peg(null) :- not subset_er_below_verum_er_smaller_peg(null).
subset_er_below_verum_er_below_peg(null) :- er_below_peg(X0) : er_below_verum(X0).
-subset_er_below_verum_er_below_peg(null) :- not subset_er_below_verum_er_below_peg(null).
subset_er_below_verum_er_left_peg(null) :- er_left_peg(X0) : er_below_verum(X0).
-subset_er_below_verum_er_left_peg(null) :- not subset_er_below_verum_er_left_peg(null).
subset_er_below_verum_er_overlap_peg(null) :- er_overlap_peg(X0) : er_below_verum(X0).
-subset_er_below_verum_er_overlap_peg(null) :- not subset_er_below_verum_er_overlap_peg(null).
subset_er_below_verum_er_shape_peg(null) :- er_shape_peg(X0) : er_below_verum(X0).
-subset_er_below_verum_er_shape_peg(null) :- not subset_er_below_verum_er_shape_peg(null).
subset_er_below_verum_er_smaller_disk(null) :- er_smaller_disk(X0) : er_below_verum(X0).
-subset_er_below_verum_er_smaller_disk(null) :- not subset_er_below_verum_er_smaller_disk(null).
subset_er_below_verum_er_below_disk(null) :- er_below_disk(X0) : er_below_verum(X0).
-subset_er_below_verum_er_below_disk(null) :- not subset_er_below_verum_er_below_disk(null).
subset_er_below_verum_er_left_disk(null) :- er_left_disk(X0) : er_below_verum(X0).
-subset_er_below_verum_er_left_disk(null) :- not subset_er_below_verum_er_left_disk(null).
subset_er_below_verum_er_overlap_disk(null) :- er_overlap_disk(X0) : er_below_verum(X0).
-subset_er_below_verum_er_overlap_disk(null) :- not subset_er_below_verum_er_overlap_disk(null).
subset_er_below_verum_er_shape_disk(null) :- er_shape_disk(X0) : er_below_verum(X0).
-subset_er_below_verum_er_shape_disk(null) :- not subset_er_below_verum_er_shape_disk(null).
subset_er_below_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_falsum(null) :- not subset_er_below_verum_inter_verum_falsum(null).
subset_er_below_verum_inter_verum_key(null) :- inter_verum_key(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_key(null) :- not subset_er_below_verum_inter_verum_key(null).
subset_er_below_verum_inter_verum_peg(null) :- inter_verum_peg(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_peg(null) :- not subset_er_below_verum_inter_verum_peg(null).
subset_er_below_verum_inter_verum_disk(null) :- inter_verum_disk(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_disk(null) :- not subset_er_below_verum_inter_verum_disk(null).
subset_er_below_verum_inter_falsum_key(null) :- inter_falsum_key(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_falsum_key(null) :- not subset_er_below_verum_inter_falsum_key(null).
subset_er_below_verum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_falsum_peg(null) :- not subset_er_below_verum_inter_falsum_peg(null).
subset_er_below_verum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_falsum_disk(null) :- not subset_er_below_verum_inter_falsum_disk(null).
subset_er_below_verum_inter_key_peg(null) :- inter_key_peg(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_key_peg(null) :- not subset_er_below_verum_inter_key_peg(null).
subset_er_below_verum_inter_key_disk(null) :- inter_key_disk(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_key_disk(null) :- not subset_er_below_verum_inter_key_disk(null).
subset_er_below_verum_inter_peg_disk(null) :- inter_peg_disk(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_peg_disk(null) :- not subset_er_below_verum_inter_peg_disk(null).
subset_er_below_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_falsum(null) :- not subset_er_below_verum_subset_verum_falsum(null).
subset_er_below_verum_subset_verum_key(null) :- subset_verum_key(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_key(null) :- not subset_er_below_verum_subset_verum_key(null).
subset_er_below_verum_subset_verum_peg(null) :- subset_verum_peg(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_peg(null) :- not subset_er_below_verum_subset_verum_peg(null).
subset_er_below_verum_subset_verum_disk(null) :- subset_verum_disk(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_disk(null) :- not subset_er_below_verum_subset_verum_disk(null).
subset_er_below_verum_subset_falsum_key(null) :- subset_falsum_key(null) : er_below_verum(X0).
-subset_er_below_verum_subset_falsum_key(null) :- not subset_er_below_verum_subset_falsum_key(null).
subset_er_below_verum_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_below_verum(X0).
-subset_er_below_verum_subset_falsum_peg(null) :- not subset_er_below_verum_subset_falsum_peg(null).
subset_er_below_verum_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_below_verum(X0).
-subset_er_below_verum_subset_falsum_disk(null) :- not subset_er_below_verum_subset_falsum_disk(null).
subset_er_below_verum_subset_key_peg(null) :- subset_key_peg(null) : er_below_verum(X0).
-subset_er_below_verum_subset_key_peg(null) :- not subset_er_below_verum_subset_key_peg(null).
subset_er_below_verum_subset_key_disk(null) :- subset_key_disk(null) : er_below_verum(X0).
-subset_er_below_verum_subset_key_disk(null) :- not subset_er_below_verum_subset_key_disk(null).
subset_er_below_verum_subset_peg_disk(null) :- subset_peg_disk(null) : er_below_verum(X0).
-subset_er_below_verum_subset_peg_disk(null) :- not subset_er_below_verum_subset_peg_disk(null).
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
subset_er_left_verum_er_smaller_key(null) :- er_smaller_key(X0) : er_left_verum(X0).
-subset_er_left_verum_er_smaller_key(null) :- not subset_er_left_verum_er_smaller_key(null).
subset_er_left_verum_er_below_key(null) :- er_below_key(X0) : er_left_verum(X0).
-subset_er_left_verum_er_below_key(null) :- not subset_er_left_verum_er_below_key(null).
subset_er_left_verum_er_left_key(null) :- er_left_key(X0) : er_left_verum(X0).
-subset_er_left_verum_er_left_key(null) :- not subset_er_left_verum_er_left_key(null).
subset_er_left_verum_er_overlap_key(null) :- er_overlap_key(X0) : er_left_verum(X0).
-subset_er_left_verum_er_overlap_key(null) :- not subset_er_left_verum_er_overlap_key(null).
subset_er_left_verum_er_shape_key(null) :- er_shape_key(X0) : er_left_verum(X0).
-subset_er_left_verum_er_shape_key(null) :- not subset_er_left_verum_er_shape_key(null).
subset_er_left_verum_er_smaller_peg(null) :- er_smaller_peg(X0) : er_left_verum(X0).
-subset_er_left_verum_er_smaller_peg(null) :- not subset_er_left_verum_er_smaller_peg(null).
subset_er_left_verum_er_below_peg(null) :- er_below_peg(X0) : er_left_verum(X0).
-subset_er_left_verum_er_below_peg(null) :- not subset_er_left_verum_er_below_peg(null).
subset_er_left_verum_er_left_peg(null) :- er_left_peg(X0) : er_left_verum(X0).
-subset_er_left_verum_er_left_peg(null) :- not subset_er_left_verum_er_left_peg(null).
subset_er_left_verum_er_overlap_peg(null) :- er_overlap_peg(X0) : er_left_verum(X0).
-subset_er_left_verum_er_overlap_peg(null) :- not subset_er_left_verum_er_overlap_peg(null).
subset_er_left_verum_er_shape_peg(null) :- er_shape_peg(X0) : er_left_verum(X0).
-subset_er_left_verum_er_shape_peg(null) :- not subset_er_left_verum_er_shape_peg(null).
subset_er_left_verum_er_smaller_disk(null) :- er_smaller_disk(X0) : er_left_verum(X0).
-subset_er_left_verum_er_smaller_disk(null) :- not subset_er_left_verum_er_smaller_disk(null).
subset_er_left_verum_er_below_disk(null) :- er_below_disk(X0) : er_left_verum(X0).
-subset_er_left_verum_er_below_disk(null) :- not subset_er_left_verum_er_below_disk(null).
subset_er_left_verum_er_left_disk(null) :- er_left_disk(X0) : er_left_verum(X0).
-subset_er_left_verum_er_left_disk(null) :- not subset_er_left_verum_er_left_disk(null).
subset_er_left_verum_er_overlap_disk(null) :- er_overlap_disk(X0) : er_left_verum(X0).
-subset_er_left_verum_er_overlap_disk(null) :- not subset_er_left_verum_er_overlap_disk(null).
subset_er_left_verum_er_shape_disk(null) :- er_shape_disk(X0) : er_left_verum(X0).
-subset_er_left_verum_er_shape_disk(null) :- not subset_er_left_verum_er_shape_disk(null).
subset_er_left_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_falsum(null) :- not subset_er_left_verum_inter_verum_falsum(null).
subset_er_left_verum_inter_verum_key(null) :- inter_verum_key(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_key(null) :- not subset_er_left_verum_inter_verum_key(null).
subset_er_left_verum_inter_verum_peg(null) :- inter_verum_peg(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_peg(null) :- not subset_er_left_verum_inter_verum_peg(null).
subset_er_left_verum_inter_verum_disk(null) :- inter_verum_disk(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_disk(null) :- not subset_er_left_verum_inter_verum_disk(null).
subset_er_left_verum_inter_falsum_key(null) :- inter_falsum_key(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_falsum_key(null) :- not subset_er_left_verum_inter_falsum_key(null).
subset_er_left_verum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_falsum_peg(null) :- not subset_er_left_verum_inter_falsum_peg(null).
subset_er_left_verum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_falsum_disk(null) :- not subset_er_left_verum_inter_falsum_disk(null).
subset_er_left_verum_inter_key_peg(null) :- inter_key_peg(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_key_peg(null) :- not subset_er_left_verum_inter_key_peg(null).
subset_er_left_verum_inter_key_disk(null) :- inter_key_disk(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_key_disk(null) :- not subset_er_left_verum_inter_key_disk(null).
subset_er_left_verum_inter_peg_disk(null) :- inter_peg_disk(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_peg_disk(null) :- not subset_er_left_verum_inter_peg_disk(null).
subset_er_left_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_falsum(null) :- not subset_er_left_verum_subset_verum_falsum(null).
subset_er_left_verum_subset_verum_key(null) :- subset_verum_key(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_key(null) :- not subset_er_left_verum_subset_verum_key(null).
subset_er_left_verum_subset_verum_peg(null) :- subset_verum_peg(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_peg(null) :- not subset_er_left_verum_subset_verum_peg(null).
subset_er_left_verum_subset_verum_disk(null) :- subset_verum_disk(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_disk(null) :- not subset_er_left_verum_subset_verum_disk(null).
subset_er_left_verum_subset_falsum_key(null) :- subset_falsum_key(null) : er_left_verum(X0).
-subset_er_left_verum_subset_falsum_key(null) :- not subset_er_left_verum_subset_falsum_key(null).
subset_er_left_verum_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_left_verum(X0).
-subset_er_left_verum_subset_falsum_peg(null) :- not subset_er_left_verum_subset_falsum_peg(null).
subset_er_left_verum_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_left_verum(X0).
-subset_er_left_verum_subset_falsum_disk(null) :- not subset_er_left_verum_subset_falsum_disk(null).
subset_er_left_verum_subset_key_peg(null) :- subset_key_peg(null) : er_left_verum(X0).
-subset_er_left_verum_subset_key_peg(null) :- not subset_er_left_verum_subset_key_peg(null).
subset_er_left_verum_subset_key_disk(null) :- subset_key_disk(null) : er_left_verum(X0).
-subset_er_left_verum_subset_key_disk(null) :- not subset_er_left_verum_subset_key_disk(null).
subset_er_left_verum_subset_peg_disk(null) :- subset_peg_disk(null) : er_left_verum(X0).
-subset_er_left_verum_subset_peg_disk(null) :- not subset_er_left_verum_subset_peg_disk(null).
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
subset_er_overlap_verum_er_smaller_key(null) :- er_smaller_key(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_smaller_key(null) :- not subset_er_overlap_verum_er_smaller_key(null).
subset_er_overlap_verum_er_below_key(null) :- er_below_key(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_below_key(null) :- not subset_er_overlap_verum_er_below_key(null).
subset_er_overlap_verum_er_left_key(null) :- er_left_key(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_left_key(null) :- not subset_er_overlap_verum_er_left_key(null).
subset_er_overlap_verum_er_overlap_key(null) :- er_overlap_key(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_overlap_key(null) :- not subset_er_overlap_verum_er_overlap_key(null).
subset_er_overlap_verum_er_shape_key(null) :- er_shape_key(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_shape_key(null) :- not subset_er_overlap_verum_er_shape_key(null).
subset_er_overlap_verum_er_smaller_peg(null) :- er_smaller_peg(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_smaller_peg(null) :- not subset_er_overlap_verum_er_smaller_peg(null).
subset_er_overlap_verum_er_below_peg(null) :- er_below_peg(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_below_peg(null) :- not subset_er_overlap_verum_er_below_peg(null).
subset_er_overlap_verum_er_left_peg(null) :- er_left_peg(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_left_peg(null) :- not subset_er_overlap_verum_er_left_peg(null).
subset_er_overlap_verum_er_overlap_peg(null) :- er_overlap_peg(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_overlap_peg(null) :- not subset_er_overlap_verum_er_overlap_peg(null).
subset_er_overlap_verum_er_shape_peg(null) :- er_shape_peg(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_shape_peg(null) :- not subset_er_overlap_verum_er_shape_peg(null).
subset_er_overlap_verum_er_smaller_disk(null) :- er_smaller_disk(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_smaller_disk(null) :- not subset_er_overlap_verum_er_smaller_disk(null).
subset_er_overlap_verum_er_below_disk(null) :- er_below_disk(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_below_disk(null) :- not subset_er_overlap_verum_er_below_disk(null).
subset_er_overlap_verum_er_left_disk(null) :- er_left_disk(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_left_disk(null) :- not subset_er_overlap_verum_er_left_disk(null).
subset_er_overlap_verum_er_overlap_disk(null) :- er_overlap_disk(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_overlap_disk(null) :- not subset_er_overlap_verum_er_overlap_disk(null).
subset_er_overlap_verum_er_shape_disk(null) :- er_shape_disk(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_shape_disk(null) :- not subset_er_overlap_verum_er_shape_disk(null).
subset_er_overlap_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_falsum(null) :- not subset_er_overlap_verum_inter_verum_falsum(null).
subset_er_overlap_verum_inter_verum_key(null) :- inter_verum_key(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_key(null) :- not subset_er_overlap_verum_inter_verum_key(null).
subset_er_overlap_verum_inter_verum_peg(null) :- inter_verum_peg(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_peg(null) :- not subset_er_overlap_verum_inter_verum_peg(null).
subset_er_overlap_verum_inter_verum_disk(null) :- inter_verum_disk(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_disk(null) :- not subset_er_overlap_verum_inter_verum_disk(null).
subset_er_overlap_verum_inter_falsum_key(null) :- inter_falsum_key(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_falsum_key(null) :- not subset_er_overlap_verum_inter_falsum_key(null).
subset_er_overlap_verum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_falsum_peg(null) :- not subset_er_overlap_verum_inter_falsum_peg(null).
subset_er_overlap_verum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_falsum_disk(null) :- not subset_er_overlap_verum_inter_falsum_disk(null).
subset_er_overlap_verum_inter_key_peg(null) :- inter_key_peg(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_key_peg(null) :- not subset_er_overlap_verum_inter_key_peg(null).
subset_er_overlap_verum_inter_key_disk(null) :- inter_key_disk(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_key_disk(null) :- not subset_er_overlap_verum_inter_key_disk(null).
subset_er_overlap_verum_inter_peg_disk(null) :- inter_peg_disk(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_peg_disk(null) :- not subset_er_overlap_verum_inter_peg_disk(null).
subset_er_overlap_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_falsum(null) :- not subset_er_overlap_verum_subset_verum_falsum(null).
subset_er_overlap_verum_subset_verum_key(null) :- subset_verum_key(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_key(null) :- not subset_er_overlap_verum_subset_verum_key(null).
subset_er_overlap_verum_subset_verum_peg(null) :- subset_verum_peg(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_peg(null) :- not subset_er_overlap_verum_subset_verum_peg(null).
subset_er_overlap_verum_subset_verum_disk(null) :- subset_verum_disk(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_disk(null) :- not subset_er_overlap_verum_subset_verum_disk(null).
subset_er_overlap_verum_subset_falsum_key(null) :- subset_falsum_key(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_falsum_key(null) :- not subset_er_overlap_verum_subset_falsum_key(null).
subset_er_overlap_verum_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_falsum_peg(null) :- not subset_er_overlap_verum_subset_falsum_peg(null).
subset_er_overlap_verum_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_falsum_disk(null) :- not subset_er_overlap_verum_subset_falsum_disk(null).
subset_er_overlap_verum_subset_key_peg(null) :- subset_key_peg(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_key_peg(null) :- not subset_er_overlap_verum_subset_key_peg(null).
subset_er_overlap_verum_subset_key_disk(null) :- subset_key_disk(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_key_disk(null) :- not subset_er_overlap_verum_subset_key_disk(null).
subset_er_overlap_verum_subset_peg_disk(null) :- subset_peg_disk(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_peg_disk(null) :- not subset_er_overlap_verum_subset_peg_disk(null).
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
subset_er_shape_verum_er_smaller_key(null) :- er_smaller_key(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_smaller_key(null) :- not subset_er_shape_verum_er_smaller_key(null).
subset_er_shape_verum_er_below_key(null) :- er_below_key(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_below_key(null) :- not subset_er_shape_verum_er_below_key(null).
subset_er_shape_verum_er_left_key(null) :- er_left_key(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_left_key(null) :- not subset_er_shape_verum_er_left_key(null).
subset_er_shape_verum_er_overlap_key(null) :- er_overlap_key(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_overlap_key(null) :- not subset_er_shape_verum_er_overlap_key(null).
subset_er_shape_verum_er_shape_key(null) :- er_shape_key(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_shape_key(null) :- not subset_er_shape_verum_er_shape_key(null).
subset_er_shape_verum_er_smaller_peg(null) :- er_smaller_peg(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_smaller_peg(null) :- not subset_er_shape_verum_er_smaller_peg(null).
subset_er_shape_verum_er_below_peg(null) :- er_below_peg(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_below_peg(null) :- not subset_er_shape_verum_er_below_peg(null).
subset_er_shape_verum_er_left_peg(null) :- er_left_peg(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_left_peg(null) :- not subset_er_shape_verum_er_left_peg(null).
subset_er_shape_verum_er_overlap_peg(null) :- er_overlap_peg(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_overlap_peg(null) :- not subset_er_shape_verum_er_overlap_peg(null).
subset_er_shape_verum_er_shape_peg(null) :- er_shape_peg(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_shape_peg(null) :- not subset_er_shape_verum_er_shape_peg(null).
subset_er_shape_verum_er_smaller_disk(null) :- er_smaller_disk(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_smaller_disk(null) :- not subset_er_shape_verum_er_smaller_disk(null).
subset_er_shape_verum_er_below_disk(null) :- er_below_disk(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_below_disk(null) :- not subset_er_shape_verum_er_below_disk(null).
subset_er_shape_verum_er_left_disk(null) :- er_left_disk(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_left_disk(null) :- not subset_er_shape_verum_er_left_disk(null).
subset_er_shape_verum_er_overlap_disk(null) :- er_overlap_disk(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_overlap_disk(null) :- not subset_er_shape_verum_er_overlap_disk(null).
subset_er_shape_verum_er_shape_disk(null) :- er_shape_disk(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_shape_disk(null) :- not subset_er_shape_verum_er_shape_disk(null).
subset_er_shape_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_falsum(null) :- not subset_er_shape_verum_inter_verum_falsum(null).
subset_er_shape_verum_inter_verum_key(null) :- inter_verum_key(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_key(null) :- not subset_er_shape_verum_inter_verum_key(null).
subset_er_shape_verum_inter_verum_peg(null) :- inter_verum_peg(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_peg(null) :- not subset_er_shape_verum_inter_verum_peg(null).
subset_er_shape_verum_inter_verum_disk(null) :- inter_verum_disk(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_disk(null) :- not subset_er_shape_verum_inter_verum_disk(null).
subset_er_shape_verum_inter_falsum_key(null) :- inter_falsum_key(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_falsum_key(null) :- not subset_er_shape_verum_inter_falsum_key(null).
subset_er_shape_verum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_falsum_peg(null) :- not subset_er_shape_verum_inter_falsum_peg(null).
subset_er_shape_verum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_falsum_disk(null) :- not subset_er_shape_verum_inter_falsum_disk(null).
subset_er_shape_verum_inter_key_peg(null) :- inter_key_peg(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_key_peg(null) :- not subset_er_shape_verum_inter_key_peg(null).
subset_er_shape_verum_inter_key_disk(null) :- inter_key_disk(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_key_disk(null) :- not subset_er_shape_verum_inter_key_disk(null).
subset_er_shape_verum_inter_peg_disk(null) :- inter_peg_disk(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_peg_disk(null) :- not subset_er_shape_verum_inter_peg_disk(null).
subset_er_shape_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_falsum(null) :- not subset_er_shape_verum_subset_verum_falsum(null).
subset_er_shape_verum_subset_verum_key(null) :- subset_verum_key(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_key(null) :- not subset_er_shape_verum_subset_verum_key(null).
subset_er_shape_verum_subset_verum_peg(null) :- subset_verum_peg(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_peg(null) :- not subset_er_shape_verum_subset_verum_peg(null).
subset_er_shape_verum_subset_verum_disk(null) :- subset_verum_disk(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_disk(null) :- not subset_er_shape_verum_subset_verum_disk(null).
subset_er_shape_verum_subset_falsum_key(null) :- subset_falsum_key(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_falsum_key(null) :- not subset_er_shape_verum_subset_falsum_key(null).
subset_er_shape_verum_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_falsum_peg(null) :- not subset_er_shape_verum_subset_falsum_peg(null).
subset_er_shape_verum_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_falsum_disk(null) :- not subset_er_shape_verum_subset_falsum_disk(null).
subset_er_shape_verum_subset_key_peg(null) :- subset_key_peg(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_key_peg(null) :- not subset_er_shape_verum_subset_key_peg(null).
subset_er_shape_verum_subset_key_disk(null) :- subset_key_disk(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_key_disk(null) :- not subset_er_shape_verum_subset_key_disk(null).
subset_er_shape_verum_subset_peg_disk(null) :- subset_peg_disk(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_peg_disk(null) :- not subset_er_shape_verum_subset_peg_disk(null).
subset_er_smaller_falsum_er_below_falsum(null) :- er_below_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_falsum(null) :- not subset_er_smaller_falsum_er_below_falsum(null).
subset_er_smaller_falsum_er_left_falsum(null) :- er_left_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_falsum(null) :- not subset_er_smaller_falsum_er_left_falsum(null).
subset_er_smaller_falsum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_falsum(null) :- not subset_er_smaller_falsum_er_overlap_falsum(null).
subset_er_smaller_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_falsum(null) :- not subset_er_smaller_falsum_er_shape_falsum(null).
subset_er_smaller_falsum_er_smaller_key(null) :- er_smaller_key(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_smaller_key(null) :- not subset_er_smaller_falsum_er_smaller_key(null).
subset_er_smaller_falsum_er_below_key(null) :- er_below_key(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_key(null) :- not subset_er_smaller_falsum_er_below_key(null).
subset_er_smaller_falsum_er_left_key(null) :- er_left_key(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_key(null) :- not subset_er_smaller_falsum_er_left_key(null).
subset_er_smaller_falsum_er_overlap_key(null) :- er_overlap_key(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_key(null) :- not subset_er_smaller_falsum_er_overlap_key(null).
subset_er_smaller_falsum_er_shape_key(null) :- er_shape_key(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_key(null) :- not subset_er_smaller_falsum_er_shape_key(null).
subset_er_smaller_falsum_er_smaller_peg(null) :- er_smaller_peg(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_smaller_peg(null) :- not subset_er_smaller_falsum_er_smaller_peg(null).
subset_er_smaller_falsum_er_below_peg(null) :- er_below_peg(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_peg(null) :- not subset_er_smaller_falsum_er_below_peg(null).
subset_er_smaller_falsum_er_left_peg(null) :- er_left_peg(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_peg(null) :- not subset_er_smaller_falsum_er_left_peg(null).
subset_er_smaller_falsum_er_overlap_peg(null) :- er_overlap_peg(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_peg(null) :- not subset_er_smaller_falsum_er_overlap_peg(null).
subset_er_smaller_falsum_er_shape_peg(null) :- er_shape_peg(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_peg(null) :- not subset_er_smaller_falsum_er_shape_peg(null).
subset_er_smaller_falsum_er_smaller_disk(null) :- er_smaller_disk(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_smaller_disk(null) :- not subset_er_smaller_falsum_er_smaller_disk(null).
subset_er_smaller_falsum_er_below_disk(null) :- er_below_disk(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_disk(null) :- not subset_er_smaller_falsum_er_below_disk(null).
subset_er_smaller_falsum_er_left_disk(null) :- er_left_disk(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_disk(null) :- not subset_er_smaller_falsum_er_left_disk(null).
subset_er_smaller_falsum_er_overlap_disk(null) :- er_overlap_disk(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_disk(null) :- not subset_er_smaller_falsum_er_overlap_disk(null).
subset_er_smaller_falsum_er_shape_disk(null) :- er_shape_disk(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_disk(null) :- not subset_er_smaller_falsum_er_shape_disk(null).
subset_er_smaller_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_falsum(null) :- not subset_er_smaller_falsum_inter_verum_falsum(null).
subset_er_smaller_falsum_inter_verum_key(null) :- inter_verum_key(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_key(null) :- not subset_er_smaller_falsum_inter_verum_key(null).
subset_er_smaller_falsum_inter_verum_peg(null) :- inter_verum_peg(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_peg(null) :- not subset_er_smaller_falsum_inter_verum_peg(null).
subset_er_smaller_falsum_inter_verum_disk(null) :- inter_verum_disk(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_disk(null) :- not subset_er_smaller_falsum_inter_verum_disk(null).
subset_er_smaller_falsum_inter_falsum_key(null) :- inter_falsum_key(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_falsum_key(null) :- not subset_er_smaller_falsum_inter_falsum_key(null).
subset_er_smaller_falsum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_falsum_peg(null) :- not subset_er_smaller_falsum_inter_falsum_peg(null).
subset_er_smaller_falsum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_falsum_disk(null) :- not subset_er_smaller_falsum_inter_falsum_disk(null).
subset_er_smaller_falsum_inter_key_peg(null) :- inter_key_peg(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_key_peg(null) :- not subset_er_smaller_falsum_inter_key_peg(null).
subset_er_smaller_falsum_inter_key_disk(null) :- inter_key_disk(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_key_disk(null) :- not subset_er_smaller_falsum_inter_key_disk(null).
subset_er_smaller_falsum_inter_peg_disk(null) :- inter_peg_disk(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_peg_disk(null) :- not subset_er_smaller_falsum_inter_peg_disk(null).
subset_er_smaller_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_falsum(null) :- not subset_er_smaller_falsum_subset_verum_falsum(null).
subset_er_smaller_falsum_subset_verum_key(null) :- subset_verum_key(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_key(null) :- not subset_er_smaller_falsum_subset_verum_key(null).
subset_er_smaller_falsum_subset_verum_peg(null) :- subset_verum_peg(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_peg(null) :- not subset_er_smaller_falsum_subset_verum_peg(null).
subset_er_smaller_falsum_subset_verum_disk(null) :- subset_verum_disk(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_disk(null) :- not subset_er_smaller_falsum_subset_verum_disk(null).
subset_er_smaller_falsum_subset_falsum_key(null) :- subset_falsum_key(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_falsum_key(null) :- not subset_er_smaller_falsum_subset_falsum_key(null).
subset_er_smaller_falsum_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_falsum_peg(null) :- not subset_er_smaller_falsum_subset_falsum_peg(null).
subset_er_smaller_falsum_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_falsum_disk(null) :- not subset_er_smaller_falsum_subset_falsum_disk(null).
subset_er_smaller_falsum_subset_key_peg(null) :- subset_key_peg(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_key_peg(null) :- not subset_er_smaller_falsum_subset_key_peg(null).
subset_er_smaller_falsum_subset_key_disk(null) :- subset_key_disk(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_key_disk(null) :- not subset_er_smaller_falsum_subset_key_disk(null).
subset_er_smaller_falsum_subset_peg_disk(null) :- subset_peg_disk(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_peg_disk(null) :- not subset_er_smaller_falsum_subset_peg_disk(null).
subset_er_below_falsum_er_left_falsum(null) :- er_left_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_falsum(null) :- not subset_er_below_falsum_er_left_falsum(null).
subset_er_below_falsum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_falsum(null) :- not subset_er_below_falsum_er_overlap_falsum(null).
subset_er_below_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_falsum(null) :- not subset_er_below_falsum_er_shape_falsum(null).
subset_er_below_falsum_er_smaller_key(null) :- er_smaller_key(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_smaller_key(null) :- not subset_er_below_falsum_er_smaller_key(null).
subset_er_below_falsum_er_below_key(null) :- er_below_key(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_below_key(null) :- not subset_er_below_falsum_er_below_key(null).
subset_er_below_falsum_er_left_key(null) :- er_left_key(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_key(null) :- not subset_er_below_falsum_er_left_key(null).
subset_er_below_falsum_er_overlap_key(null) :- er_overlap_key(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_key(null) :- not subset_er_below_falsum_er_overlap_key(null).
subset_er_below_falsum_er_shape_key(null) :- er_shape_key(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_key(null) :- not subset_er_below_falsum_er_shape_key(null).
subset_er_below_falsum_er_smaller_peg(null) :- er_smaller_peg(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_smaller_peg(null) :- not subset_er_below_falsum_er_smaller_peg(null).
subset_er_below_falsum_er_below_peg(null) :- er_below_peg(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_below_peg(null) :- not subset_er_below_falsum_er_below_peg(null).
subset_er_below_falsum_er_left_peg(null) :- er_left_peg(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_peg(null) :- not subset_er_below_falsum_er_left_peg(null).
subset_er_below_falsum_er_overlap_peg(null) :- er_overlap_peg(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_peg(null) :- not subset_er_below_falsum_er_overlap_peg(null).
subset_er_below_falsum_er_shape_peg(null) :- er_shape_peg(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_peg(null) :- not subset_er_below_falsum_er_shape_peg(null).
subset_er_below_falsum_er_smaller_disk(null) :- er_smaller_disk(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_smaller_disk(null) :- not subset_er_below_falsum_er_smaller_disk(null).
subset_er_below_falsum_er_below_disk(null) :- er_below_disk(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_below_disk(null) :- not subset_er_below_falsum_er_below_disk(null).
subset_er_below_falsum_er_left_disk(null) :- er_left_disk(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_disk(null) :- not subset_er_below_falsum_er_left_disk(null).
subset_er_below_falsum_er_overlap_disk(null) :- er_overlap_disk(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_disk(null) :- not subset_er_below_falsum_er_overlap_disk(null).
subset_er_below_falsum_er_shape_disk(null) :- er_shape_disk(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_disk(null) :- not subset_er_below_falsum_er_shape_disk(null).
subset_er_below_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_falsum(null) :- not subset_er_below_falsum_inter_verum_falsum(null).
subset_er_below_falsum_inter_verum_key(null) :- inter_verum_key(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_key(null) :- not subset_er_below_falsum_inter_verum_key(null).
subset_er_below_falsum_inter_verum_peg(null) :- inter_verum_peg(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_peg(null) :- not subset_er_below_falsum_inter_verum_peg(null).
subset_er_below_falsum_inter_verum_disk(null) :- inter_verum_disk(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_disk(null) :- not subset_er_below_falsum_inter_verum_disk(null).
subset_er_below_falsum_inter_falsum_key(null) :- inter_falsum_key(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_falsum_key(null) :- not subset_er_below_falsum_inter_falsum_key(null).
subset_er_below_falsum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_falsum_peg(null) :- not subset_er_below_falsum_inter_falsum_peg(null).
subset_er_below_falsum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_falsum_disk(null) :- not subset_er_below_falsum_inter_falsum_disk(null).
subset_er_below_falsum_inter_key_peg(null) :- inter_key_peg(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_key_peg(null) :- not subset_er_below_falsum_inter_key_peg(null).
subset_er_below_falsum_inter_key_disk(null) :- inter_key_disk(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_key_disk(null) :- not subset_er_below_falsum_inter_key_disk(null).
subset_er_below_falsum_inter_peg_disk(null) :- inter_peg_disk(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_peg_disk(null) :- not subset_er_below_falsum_inter_peg_disk(null).
subset_er_below_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_falsum(null) :- not subset_er_below_falsum_subset_verum_falsum(null).
subset_er_below_falsum_subset_verum_key(null) :- subset_verum_key(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_key(null) :- not subset_er_below_falsum_subset_verum_key(null).
subset_er_below_falsum_subset_verum_peg(null) :- subset_verum_peg(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_peg(null) :- not subset_er_below_falsum_subset_verum_peg(null).
subset_er_below_falsum_subset_verum_disk(null) :- subset_verum_disk(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_disk(null) :- not subset_er_below_falsum_subset_verum_disk(null).
subset_er_below_falsum_subset_falsum_key(null) :- subset_falsum_key(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_falsum_key(null) :- not subset_er_below_falsum_subset_falsum_key(null).
subset_er_below_falsum_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_falsum_peg(null) :- not subset_er_below_falsum_subset_falsum_peg(null).
subset_er_below_falsum_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_falsum_disk(null) :- not subset_er_below_falsum_subset_falsum_disk(null).
subset_er_below_falsum_subset_key_peg(null) :- subset_key_peg(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_key_peg(null) :- not subset_er_below_falsum_subset_key_peg(null).
subset_er_below_falsum_subset_key_disk(null) :- subset_key_disk(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_key_disk(null) :- not subset_er_below_falsum_subset_key_disk(null).
subset_er_below_falsum_subset_peg_disk(null) :- subset_peg_disk(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_peg_disk(null) :- not subset_er_below_falsum_subset_peg_disk(null).
subset_er_left_falsum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_falsum(null) :- not subset_er_left_falsum_er_overlap_falsum(null).
subset_er_left_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_falsum(null) :- not subset_er_left_falsum_er_shape_falsum(null).
subset_er_left_falsum_er_smaller_key(null) :- er_smaller_key(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_smaller_key(null) :- not subset_er_left_falsum_er_smaller_key(null).
subset_er_left_falsum_er_below_key(null) :- er_below_key(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_below_key(null) :- not subset_er_left_falsum_er_below_key(null).
subset_er_left_falsum_er_left_key(null) :- er_left_key(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_left_key(null) :- not subset_er_left_falsum_er_left_key(null).
subset_er_left_falsum_er_overlap_key(null) :- er_overlap_key(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_key(null) :- not subset_er_left_falsum_er_overlap_key(null).
subset_er_left_falsum_er_shape_key(null) :- er_shape_key(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_key(null) :- not subset_er_left_falsum_er_shape_key(null).
subset_er_left_falsum_er_smaller_peg(null) :- er_smaller_peg(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_smaller_peg(null) :- not subset_er_left_falsum_er_smaller_peg(null).
subset_er_left_falsum_er_below_peg(null) :- er_below_peg(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_below_peg(null) :- not subset_er_left_falsum_er_below_peg(null).
subset_er_left_falsum_er_left_peg(null) :- er_left_peg(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_left_peg(null) :- not subset_er_left_falsum_er_left_peg(null).
subset_er_left_falsum_er_overlap_peg(null) :- er_overlap_peg(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_peg(null) :- not subset_er_left_falsum_er_overlap_peg(null).
subset_er_left_falsum_er_shape_peg(null) :- er_shape_peg(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_peg(null) :- not subset_er_left_falsum_er_shape_peg(null).
subset_er_left_falsum_er_smaller_disk(null) :- er_smaller_disk(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_smaller_disk(null) :- not subset_er_left_falsum_er_smaller_disk(null).
subset_er_left_falsum_er_below_disk(null) :- er_below_disk(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_below_disk(null) :- not subset_er_left_falsum_er_below_disk(null).
subset_er_left_falsum_er_left_disk(null) :- er_left_disk(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_left_disk(null) :- not subset_er_left_falsum_er_left_disk(null).
subset_er_left_falsum_er_overlap_disk(null) :- er_overlap_disk(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_disk(null) :- not subset_er_left_falsum_er_overlap_disk(null).
subset_er_left_falsum_er_shape_disk(null) :- er_shape_disk(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_disk(null) :- not subset_er_left_falsum_er_shape_disk(null).
subset_er_left_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_falsum(null) :- not subset_er_left_falsum_inter_verum_falsum(null).
subset_er_left_falsum_inter_verum_key(null) :- inter_verum_key(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_key(null) :- not subset_er_left_falsum_inter_verum_key(null).
subset_er_left_falsum_inter_verum_peg(null) :- inter_verum_peg(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_peg(null) :- not subset_er_left_falsum_inter_verum_peg(null).
subset_er_left_falsum_inter_verum_disk(null) :- inter_verum_disk(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_disk(null) :- not subset_er_left_falsum_inter_verum_disk(null).
subset_er_left_falsum_inter_falsum_key(null) :- inter_falsum_key(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_falsum_key(null) :- not subset_er_left_falsum_inter_falsum_key(null).
subset_er_left_falsum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_falsum_peg(null) :- not subset_er_left_falsum_inter_falsum_peg(null).
subset_er_left_falsum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_falsum_disk(null) :- not subset_er_left_falsum_inter_falsum_disk(null).
subset_er_left_falsum_inter_key_peg(null) :- inter_key_peg(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_key_peg(null) :- not subset_er_left_falsum_inter_key_peg(null).
subset_er_left_falsum_inter_key_disk(null) :- inter_key_disk(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_key_disk(null) :- not subset_er_left_falsum_inter_key_disk(null).
subset_er_left_falsum_inter_peg_disk(null) :- inter_peg_disk(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_peg_disk(null) :- not subset_er_left_falsum_inter_peg_disk(null).
subset_er_left_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_falsum(null) :- not subset_er_left_falsum_subset_verum_falsum(null).
subset_er_left_falsum_subset_verum_key(null) :- subset_verum_key(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_key(null) :- not subset_er_left_falsum_subset_verum_key(null).
subset_er_left_falsum_subset_verum_peg(null) :- subset_verum_peg(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_peg(null) :- not subset_er_left_falsum_subset_verum_peg(null).
subset_er_left_falsum_subset_verum_disk(null) :- subset_verum_disk(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_disk(null) :- not subset_er_left_falsum_subset_verum_disk(null).
subset_er_left_falsum_subset_falsum_key(null) :- subset_falsum_key(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_falsum_key(null) :- not subset_er_left_falsum_subset_falsum_key(null).
subset_er_left_falsum_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_falsum_peg(null) :- not subset_er_left_falsum_subset_falsum_peg(null).
subset_er_left_falsum_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_falsum_disk(null) :- not subset_er_left_falsum_subset_falsum_disk(null).
subset_er_left_falsum_subset_key_peg(null) :- subset_key_peg(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_key_peg(null) :- not subset_er_left_falsum_subset_key_peg(null).
subset_er_left_falsum_subset_key_disk(null) :- subset_key_disk(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_key_disk(null) :- not subset_er_left_falsum_subset_key_disk(null).
subset_er_left_falsum_subset_peg_disk(null) :- subset_peg_disk(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_peg_disk(null) :- not subset_er_left_falsum_subset_peg_disk(null).
subset_er_overlap_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_falsum(null) :- not subset_er_overlap_falsum_er_shape_falsum(null).
subset_er_overlap_falsum_er_smaller_key(null) :- er_smaller_key(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_smaller_key(null) :- not subset_er_overlap_falsum_er_smaller_key(null).
subset_er_overlap_falsum_er_below_key(null) :- er_below_key(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_below_key(null) :- not subset_er_overlap_falsum_er_below_key(null).
subset_er_overlap_falsum_er_left_key(null) :- er_left_key(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_left_key(null) :- not subset_er_overlap_falsum_er_left_key(null).
subset_er_overlap_falsum_er_overlap_key(null) :- er_overlap_key(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_overlap_key(null) :- not subset_er_overlap_falsum_er_overlap_key(null).
subset_er_overlap_falsum_er_shape_key(null) :- er_shape_key(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_key(null) :- not subset_er_overlap_falsum_er_shape_key(null).
subset_er_overlap_falsum_er_smaller_peg(null) :- er_smaller_peg(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_smaller_peg(null) :- not subset_er_overlap_falsum_er_smaller_peg(null).
subset_er_overlap_falsum_er_below_peg(null) :- er_below_peg(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_below_peg(null) :- not subset_er_overlap_falsum_er_below_peg(null).
subset_er_overlap_falsum_er_left_peg(null) :- er_left_peg(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_left_peg(null) :- not subset_er_overlap_falsum_er_left_peg(null).
subset_er_overlap_falsum_er_overlap_peg(null) :- er_overlap_peg(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_overlap_peg(null) :- not subset_er_overlap_falsum_er_overlap_peg(null).
subset_er_overlap_falsum_er_shape_peg(null) :- er_shape_peg(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_peg(null) :- not subset_er_overlap_falsum_er_shape_peg(null).
subset_er_overlap_falsum_er_smaller_disk(null) :- er_smaller_disk(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_smaller_disk(null) :- not subset_er_overlap_falsum_er_smaller_disk(null).
subset_er_overlap_falsum_er_below_disk(null) :- er_below_disk(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_below_disk(null) :- not subset_er_overlap_falsum_er_below_disk(null).
subset_er_overlap_falsum_er_left_disk(null) :- er_left_disk(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_left_disk(null) :- not subset_er_overlap_falsum_er_left_disk(null).
subset_er_overlap_falsum_er_overlap_disk(null) :- er_overlap_disk(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_overlap_disk(null) :- not subset_er_overlap_falsum_er_overlap_disk(null).
subset_er_overlap_falsum_er_shape_disk(null) :- er_shape_disk(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_disk(null) :- not subset_er_overlap_falsum_er_shape_disk(null).
subset_er_overlap_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_falsum(null) :- not subset_er_overlap_falsum_inter_verum_falsum(null).
subset_er_overlap_falsum_inter_verum_key(null) :- inter_verum_key(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_key(null) :- not subset_er_overlap_falsum_inter_verum_key(null).
subset_er_overlap_falsum_inter_verum_peg(null) :- inter_verum_peg(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_peg(null) :- not subset_er_overlap_falsum_inter_verum_peg(null).
subset_er_overlap_falsum_inter_verum_disk(null) :- inter_verum_disk(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_disk(null) :- not subset_er_overlap_falsum_inter_verum_disk(null).
subset_er_overlap_falsum_inter_falsum_key(null) :- inter_falsum_key(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_falsum_key(null) :- not subset_er_overlap_falsum_inter_falsum_key(null).
subset_er_overlap_falsum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_falsum_peg(null) :- not subset_er_overlap_falsum_inter_falsum_peg(null).
subset_er_overlap_falsum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_falsum_disk(null) :- not subset_er_overlap_falsum_inter_falsum_disk(null).
subset_er_overlap_falsum_inter_key_peg(null) :- inter_key_peg(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_key_peg(null) :- not subset_er_overlap_falsum_inter_key_peg(null).
subset_er_overlap_falsum_inter_key_disk(null) :- inter_key_disk(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_key_disk(null) :- not subset_er_overlap_falsum_inter_key_disk(null).
subset_er_overlap_falsum_inter_peg_disk(null) :- inter_peg_disk(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_peg_disk(null) :- not subset_er_overlap_falsum_inter_peg_disk(null).
subset_er_overlap_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_falsum(null) :- not subset_er_overlap_falsum_subset_verum_falsum(null).
subset_er_overlap_falsum_subset_verum_key(null) :- subset_verum_key(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_key(null) :- not subset_er_overlap_falsum_subset_verum_key(null).
subset_er_overlap_falsum_subset_verum_peg(null) :- subset_verum_peg(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_peg(null) :- not subset_er_overlap_falsum_subset_verum_peg(null).
subset_er_overlap_falsum_subset_verum_disk(null) :- subset_verum_disk(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_disk(null) :- not subset_er_overlap_falsum_subset_verum_disk(null).
subset_er_overlap_falsum_subset_falsum_key(null) :- subset_falsum_key(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_falsum_key(null) :- not subset_er_overlap_falsum_subset_falsum_key(null).
subset_er_overlap_falsum_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_falsum_peg(null) :- not subset_er_overlap_falsum_subset_falsum_peg(null).
subset_er_overlap_falsum_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_falsum_disk(null) :- not subset_er_overlap_falsum_subset_falsum_disk(null).
subset_er_overlap_falsum_subset_key_peg(null) :- subset_key_peg(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_key_peg(null) :- not subset_er_overlap_falsum_subset_key_peg(null).
subset_er_overlap_falsum_subset_key_disk(null) :- subset_key_disk(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_key_disk(null) :- not subset_er_overlap_falsum_subset_key_disk(null).
subset_er_overlap_falsum_subset_peg_disk(null) :- subset_peg_disk(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_peg_disk(null) :- not subset_er_overlap_falsum_subset_peg_disk(null).
subset_er_shape_falsum_er_smaller_key(null) :- er_smaller_key(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_smaller_key(null) :- not subset_er_shape_falsum_er_smaller_key(null).
subset_er_shape_falsum_er_below_key(null) :- er_below_key(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_below_key(null) :- not subset_er_shape_falsum_er_below_key(null).
subset_er_shape_falsum_er_left_key(null) :- er_left_key(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_left_key(null) :- not subset_er_shape_falsum_er_left_key(null).
subset_er_shape_falsum_er_overlap_key(null) :- er_overlap_key(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_overlap_key(null) :- not subset_er_shape_falsum_er_overlap_key(null).
subset_er_shape_falsum_er_shape_key(null) :- er_shape_key(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_shape_key(null) :- not subset_er_shape_falsum_er_shape_key(null).
subset_er_shape_falsum_er_smaller_peg(null) :- er_smaller_peg(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_smaller_peg(null) :- not subset_er_shape_falsum_er_smaller_peg(null).
subset_er_shape_falsum_er_below_peg(null) :- er_below_peg(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_below_peg(null) :- not subset_er_shape_falsum_er_below_peg(null).
subset_er_shape_falsum_er_left_peg(null) :- er_left_peg(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_left_peg(null) :- not subset_er_shape_falsum_er_left_peg(null).
subset_er_shape_falsum_er_overlap_peg(null) :- er_overlap_peg(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_overlap_peg(null) :- not subset_er_shape_falsum_er_overlap_peg(null).
subset_er_shape_falsum_er_shape_peg(null) :- er_shape_peg(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_shape_peg(null) :- not subset_er_shape_falsum_er_shape_peg(null).
subset_er_shape_falsum_er_smaller_disk(null) :- er_smaller_disk(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_smaller_disk(null) :- not subset_er_shape_falsum_er_smaller_disk(null).
subset_er_shape_falsum_er_below_disk(null) :- er_below_disk(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_below_disk(null) :- not subset_er_shape_falsum_er_below_disk(null).
subset_er_shape_falsum_er_left_disk(null) :- er_left_disk(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_left_disk(null) :- not subset_er_shape_falsum_er_left_disk(null).
subset_er_shape_falsum_er_overlap_disk(null) :- er_overlap_disk(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_overlap_disk(null) :- not subset_er_shape_falsum_er_overlap_disk(null).
subset_er_shape_falsum_er_shape_disk(null) :- er_shape_disk(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_shape_disk(null) :- not subset_er_shape_falsum_er_shape_disk(null).
subset_er_shape_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_falsum(null) :- not subset_er_shape_falsum_inter_verum_falsum(null).
subset_er_shape_falsum_inter_verum_key(null) :- inter_verum_key(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_key(null) :- not subset_er_shape_falsum_inter_verum_key(null).
subset_er_shape_falsum_inter_verum_peg(null) :- inter_verum_peg(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_peg(null) :- not subset_er_shape_falsum_inter_verum_peg(null).
subset_er_shape_falsum_inter_verum_disk(null) :- inter_verum_disk(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_disk(null) :- not subset_er_shape_falsum_inter_verum_disk(null).
subset_er_shape_falsum_inter_falsum_key(null) :- inter_falsum_key(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_falsum_key(null) :- not subset_er_shape_falsum_inter_falsum_key(null).
subset_er_shape_falsum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_falsum_peg(null) :- not subset_er_shape_falsum_inter_falsum_peg(null).
subset_er_shape_falsum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_falsum_disk(null) :- not subset_er_shape_falsum_inter_falsum_disk(null).
subset_er_shape_falsum_inter_key_peg(null) :- inter_key_peg(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_key_peg(null) :- not subset_er_shape_falsum_inter_key_peg(null).
subset_er_shape_falsum_inter_key_disk(null) :- inter_key_disk(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_key_disk(null) :- not subset_er_shape_falsum_inter_key_disk(null).
subset_er_shape_falsum_inter_peg_disk(null) :- inter_peg_disk(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_peg_disk(null) :- not subset_er_shape_falsum_inter_peg_disk(null).
subset_er_shape_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_falsum(null) :- not subset_er_shape_falsum_subset_verum_falsum(null).
subset_er_shape_falsum_subset_verum_key(null) :- subset_verum_key(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_key(null) :- not subset_er_shape_falsum_subset_verum_key(null).
subset_er_shape_falsum_subset_verum_peg(null) :- subset_verum_peg(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_peg(null) :- not subset_er_shape_falsum_subset_verum_peg(null).
subset_er_shape_falsum_subset_verum_disk(null) :- subset_verum_disk(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_disk(null) :- not subset_er_shape_falsum_subset_verum_disk(null).
subset_er_shape_falsum_subset_falsum_key(null) :- subset_falsum_key(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_falsum_key(null) :- not subset_er_shape_falsum_subset_falsum_key(null).
subset_er_shape_falsum_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_falsum_peg(null) :- not subset_er_shape_falsum_subset_falsum_peg(null).
subset_er_shape_falsum_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_falsum_disk(null) :- not subset_er_shape_falsum_subset_falsum_disk(null).
subset_er_shape_falsum_subset_key_peg(null) :- subset_key_peg(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_key_peg(null) :- not subset_er_shape_falsum_subset_key_peg(null).
subset_er_shape_falsum_subset_key_disk(null) :- subset_key_disk(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_key_disk(null) :- not subset_er_shape_falsum_subset_key_disk(null).
subset_er_shape_falsum_subset_peg_disk(null) :- subset_peg_disk(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_peg_disk(null) :- not subset_er_shape_falsum_subset_peg_disk(null).
subset_er_smaller_key_er_below_key(null) :- er_below_key(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_below_key(null) :- not subset_er_smaller_key_er_below_key(null).
subset_er_smaller_key_er_left_key(null) :- er_left_key(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_left_key(null) :- not subset_er_smaller_key_er_left_key(null).
subset_er_smaller_key_er_overlap_key(null) :- er_overlap_key(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_overlap_key(null) :- not subset_er_smaller_key_er_overlap_key(null).
subset_er_smaller_key_er_shape_key(null) :- er_shape_key(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_shape_key(null) :- not subset_er_smaller_key_er_shape_key(null).
subset_er_smaller_key_er_smaller_peg(null) :- er_smaller_peg(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_smaller_peg(null) :- not subset_er_smaller_key_er_smaller_peg(null).
subset_er_smaller_key_er_below_peg(null) :- er_below_peg(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_below_peg(null) :- not subset_er_smaller_key_er_below_peg(null).
subset_er_smaller_key_er_left_peg(null) :- er_left_peg(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_left_peg(null) :- not subset_er_smaller_key_er_left_peg(null).
subset_er_smaller_key_er_overlap_peg(null) :- er_overlap_peg(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_overlap_peg(null) :- not subset_er_smaller_key_er_overlap_peg(null).
subset_er_smaller_key_er_shape_peg(null) :- er_shape_peg(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_shape_peg(null) :- not subset_er_smaller_key_er_shape_peg(null).
subset_er_smaller_key_er_smaller_disk(null) :- er_smaller_disk(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_smaller_disk(null) :- not subset_er_smaller_key_er_smaller_disk(null).
subset_er_smaller_key_er_below_disk(null) :- er_below_disk(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_below_disk(null) :- not subset_er_smaller_key_er_below_disk(null).
subset_er_smaller_key_er_left_disk(null) :- er_left_disk(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_left_disk(null) :- not subset_er_smaller_key_er_left_disk(null).
subset_er_smaller_key_er_overlap_disk(null) :- er_overlap_disk(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_overlap_disk(null) :- not subset_er_smaller_key_er_overlap_disk(null).
subset_er_smaller_key_er_shape_disk(null) :- er_shape_disk(X0) : er_smaller_key(X0).
-subset_er_smaller_key_er_shape_disk(null) :- not subset_er_smaller_key_er_shape_disk(null).
subset_er_smaller_key_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_key(X0).
-subset_er_smaller_key_inter_verum_falsum(null) :- not subset_er_smaller_key_inter_verum_falsum(null).
subset_er_smaller_key_inter_verum_key(null) :- inter_verum_key(X0) : er_smaller_key(X0).
-subset_er_smaller_key_inter_verum_key(null) :- not subset_er_smaller_key_inter_verum_key(null).
subset_er_smaller_key_inter_verum_peg(null) :- inter_verum_peg(X0) : er_smaller_key(X0).
-subset_er_smaller_key_inter_verum_peg(null) :- not subset_er_smaller_key_inter_verum_peg(null).
subset_er_smaller_key_inter_verum_disk(null) :- inter_verum_disk(X0) : er_smaller_key(X0).
-subset_er_smaller_key_inter_verum_disk(null) :- not subset_er_smaller_key_inter_verum_disk(null).
subset_er_smaller_key_inter_falsum_key(null) :- inter_falsum_key(X0) : er_smaller_key(X0).
-subset_er_smaller_key_inter_falsum_key(null) :- not subset_er_smaller_key_inter_falsum_key(null).
subset_er_smaller_key_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_smaller_key(X0).
-subset_er_smaller_key_inter_falsum_peg(null) :- not subset_er_smaller_key_inter_falsum_peg(null).
subset_er_smaller_key_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_smaller_key(X0).
-subset_er_smaller_key_inter_falsum_disk(null) :- not subset_er_smaller_key_inter_falsum_disk(null).
subset_er_smaller_key_inter_key_peg(null) :- inter_key_peg(X0) : er_smaller_key(X0).
-subset_er_smaller_key_inter_key_peg(null) :- not subset_er_smaller_key_inter_key_peg(null).
subset_er_smaller_key_inter_key_disk(null) :- inter_key_disk(X0) : er_smaller_key(X0).
-subset_er_smaller_key_inter_key_disk(null) :- not subset_er_smaller_key_inter_key_disk(null).
subset_er_smaller_key_inter_peg_disk(null) :- inter_peg_disk(X0) : er_smaller_key(X0).
-subset_er_smaller_key_inter_peg_disk(null) :- not subset_er_smaller_key_inter_peg_disk(null).
subset_er_smaller_key_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_key(X0).
-subset_er_smaller_key_subset_verum_falsum(null) :- not subset_er_smaller_key_subset_verum_falsum(null).
subset_er_smaller_key_subset_verum_key(null) :- subset_verum_key(null) : er_smaller_key(X0).
-subset_er_smaller_key_subset_verum_key(null) :- not subset_er_smaller_key_subset_verum_key(null).
subset_er_smaller_key_subset_verum_peg(null) :- subset_verum_peg(null) : er_smaller_key(X0).
-subset_er_smaller_key_subset_verum_peg(null) :- not subset_er_smaller_key_subset_verum_peg(null).
subset_er_smaller_key_subset_verum_disk(null) :- subset_verum_disk(null) : er_smaller_key(X0).
-subset_er_smaller_key_subset_verum_disk(null) :- not subset_er_smaller_key_subset_verum_disk(null).
subset_er_smaller_key_subset_falsum_key(null) :- subset_falsum_key(null) : er_smaller_key(X0).
-subset_er_smaller_key_subset_falsum_key(null) :- not subset_er_smaller_key_subset_falsum_key(null).
subset_er_smaller_key_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_smaller_key(X0).
-subset_er_smaller_key_subset_falsum_peg(null) :- not subset_er_smaller_key_subset_falsum_peg(null).
subset_er_smaller_key_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_smaller_key(X0).
-subset_er_smaller_key_subset_falsum_disk(null) :- not subset_er_smaller_key_subset_falsum_disk(null).
subset_er_smaller_key_subset_key_peg(null) :- subset_key_peg(null) : er_smaller_key(X0).
-subset_er_smaller_key_subset_key_peg(null) :- not subset_er_smaller_key_subset_key_peg(null).
subset_er_smaller_key_subset_key_disk(null) :- subset_key_disk(null) : er_smaller_key(X0).
-subset_er_smaller_key_subset_key_disk(null) :- not subset_er_smaller_key_subset_key_disk(null).
subset_er_smaller_key_subset_peg_disk(null) :- subset_peg_disk(null) : er_smaller_key(X0).
-subset_er_smaller_key_subset_peg_disk(null) :- not subset_er_smaller_key_subset_peg_disk(null).
subset_er_below_key_er_left_key(null) :- er_left_key(X0) : er_below_key(X0).
-subset_er_below_key_er_left_key(null) :- not subset_er_below_key_er_left_key(null).
subset_er_below_key_er_overlap_key(null) :- er_overlap_key(X0) : er_below_key(X0).
-subset_er_below_key_er_overlap_key(null) :- not subset_er_below_key_er_overlap_key(null).
subset_er_below_key_er_shape_key(null) :- er_shape_key(X0) : er_below_key(X0).
-subset_er_below_key_er_shape_key(null) :- not subset_er_below_key_er_shape_key(null).
subset_er_below_key_er_smaller_peg(null) :- er_smaller_peg(X0) : er_below_key(X0).
-subset_er_below_key_er_smaller_peg(null) :- not subset_er_below_key_er_smaller_peg(null).
subset_er_below_key_er_below_peg(null) :- er_below_peg(X0) : er_below_key(X0).
-subset_er_below_key_er_below_peg(null) :- not subset_er_below_key_er_below_peg(null).
subset_er_below_key_er_left_peg(null) :- er_left_peg(X0) : er_below_key(X0).
-subset_er_below_key_er_left_peg(null) :- not subset_er_below_key_er_left_peg(null).
subset_er_below_key_er_overlap_peg(null) :- er_overlap_peg(X0) : er_below_key(X0).
-subset_er_below_key_er_overlap_peg(null) :- not subset_er_below_key_er_overlap_peg(null).
subset_er_below_key_er_shape_peg(null) :- er_shape_peg(X0) : er_below_key(X0).
-subset_er_below_key_er_shape_peg(null) :- not subset_er_below_key_er_shape_peg(null).
subset_er_below_key_er_smaller_disk(null) :- er_smaller_disk(X0) : er_below_key(X0).
-subset_er_below_key_er_smaller_disk(null) :- not subset_er_below_key_er_smaller_disk(null).
subset_er_below_key_er_below_disk(null) :- er_below_disk(X0) : er_below_key(X0).
-subset_er_below_key_er_below_disk(null) :- not subset_er_below_key_er_below_disk(null).
subset_er_below_key_er_left_disk(null) :- er_left_disk(X0) : er_below_key(X0).
-subset_er_below_key_er_left_disk(null) :- not subset_er_below_key_er_left_disk(null).
subset_er_below_key_er_overlap_disk(null) :- er_overlap_disk(X0) : er_below_key(X0).
-subset_er_below_key_er_overlap_disk(null) :- not subset_er_below_key_er_overlap_disk(null).
subset_er_below_key_er_shape_disk(null) :- er_shape_disk(X0) : er_below_key(X0).
-subset_er_below_key_er_shape_disk(null) :- not subset_er_below_key_er_shape_disk(null).
subset_er_below_key_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_key(X0).
-subset_er_below_key_inter_verum_falsum(null) :- not subset_er_below_key_inter_verum_falsum(null).
subset_er_below_key_inter_verum_key(null) :- inter_verum_key(X0) : er_below_key(X0).
-subset_er_below_key_inter_verum_key(null) :- not subset_er_below_key_inter_verum_key(null).
subset_er_below_key_inter_verum_peg(null) :- inter_verum_peg(X0) : er_below_key(X0).
-subset_er_below_key_inter_verum_peg(null) :- not subset_er_below_key_inter_verum_peg(null).
subset_er_below_key_inter_verum_disk(null) :- inter_verum_disk(X0) : er_below_key(X0).
-subset_er_below_key_inter_verum_disk(null) :- not subset_er_below_key_inter_verum_disk(null).
subset_er_below_key_inter_falsum_key(null) :- inter_falsum_key(X0) : er_below_key(X0).
-subset_er_below_key_inter_falsum_key(null) :- not subset_er_below_key_inter_falsum_key(null).
subset_er_below_key_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_below_key(X0).
-subset_er_below_key_inter_falsum_peg(null) :- not subset_er_below_key_inter_falsum_peg(null).
subset_er_below_key_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_below_key(X0).
-subset_er_below_key_inter_falsum_disk(null) :- not subset_er_below_key_inter_falsum_disk(null).
subset_er_below_key_inter_key_peg(null) :- inter_key_peg(X0) : er_below_key(X0).
-subset_er_below_key_inter_key_peg(null) :- not subset_er_below_key_inter_key_peg(null).
subset_er_below_key_inter_key_disk(null) :- inter_key_disk(X0) : er_below_key(X0).
-subset_er_below_key_inter_key_disk(null) :- not subset_er_below_key_inter_key_disk(null).
subset_er_below_key_inter_peg_disk(null) :- inter_peg_disk(X0) : er_below_key(X0).
-subset_er_below_key_inter_peg_disk(null) :- not subset_er_below_key_inter_peg_disk(null).
subset_er_below_key_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_key(X0).
-subset_er_below_key_subset_verum_falsum(null) :- not subset_er_below_key_subset_verum_falsum(null).
subset_er_below_key_subset_verum_key(null) :- subset_verum_key(null) : er_below_key(X0).
-subset_er_below_key_subset_verum_key(null) :- not subset_er_below_key_subset_verum_key(null).
subset_er_below_key_subset_verum_peg(null) :- subset_verum_peg(null) : er_below_key(X0).
-subset_er_below_key_subset_verum_peg(null) :- not subset_er_below_key_subset_verum_peg(null).
subset_er_below_key_subset_verum_disk(null) :- subset_verum_disk(null) : er_below_key(X0).
-subset_er_below_key_subset_verum_disk(null) :- not subset_er_below_key_subset_verum_disk(null).
subset_er_below_key_subset_falsum_key(null) :- subset_falsum_key(null) : er_below_key(X0).
-subset_er_below_key_subset_falsum_key(null) :- not subset_er_below_key_subset_falsum_key(null).
subset_er_below_key_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_below_key(X0).
-subset_er_below_key_subset_falsum_peg(null) :- not subset_er_below_key_subset_falsum_peg(null).
subset_er_below_key_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_below_key(X0).
-subset_er_below_key_subset_falsum_disk(null) :- not subset_er_below_key_subset_falsum_disk(null).
subset_er_below_key_subset_key_peg(null) :- subset_key_peg(null) : er_below_key(X0).
-subset_er_below_key_subset_key_peg(null) :- not subset_er_below_key_subset_key_peg(null).
subset_er_below_key_subset_key_disk(null) :- subset_key_disk(null) : er_below_key(X0).
-subset_er_below_key_subset_key_disk(null) :- not subset_er_below_key_subset_key_disk(null).
subset_er_below_key_subset_peg_disk(null) :- subset_peg_disk(null) : er_below_key(X0).
-subset_er_below_key_subset_peg_disk(null) :- not subset_er_below_key_subset_peg_disk(null).
subset_er_left_key_er_overlap_key(null) :- er_overlap_key(X0) : er_left_key(X0).
-subset_er_left_key_er_overlap_key(null) :- not subset_er_left_key_er_overlap_key(null).
subset_er_left_key_er_shape_key(null) :- er_shape_key(X0) : er_left_key(X0).
-subset_er_left_key_er_shape_key(null) :- not subset_er_left_key_er_shape_key(null).
subset_er_left_key_er_smaller_peg(null) :- er_smaller_peg(X0) : er_left_key(X0).
-subset_er_left_key_er_smaller_peg(null) :- not subset_er_left_key_er_smaller_peg(null).
subset_er_left_key_er_below_peg(null) :- er_below_peg(X0) : er_left_key(X0).
-subset_er_left_key_er_below_peg(null) :- not subset_er_left_key_er_below_peg(null).
subset_er_left_key_er_left_peg(null) :- er_left_peg(X0) : er_left_key(X0).
-subset_er_left_key_er_left_peg(null) :- not subset_er_left_key_er_left_peg(null).
subset_er_left_key_er_overlap_peg(null) :- er_overlap_peg(X0) : er_left_key(X0).
-subset_er_left_key_er_overlap_peg(null) :- not subset_er_left_key_er_overlap_peg(null).
subset_er_left_key_er_shape_peg(null) :- er_shape_peg(X0) : er_left_key(X0).
-subset_er_left_key_er_shape_peg(null) :- not subset_er_left_key_er_shape_peg(null).
subset_er_left_key_er_smaller_disk(null) :- er_smaller_disk(X0) : er_left_key(X0).
-subset_er_left_key_er_smaller_disk(null) :- not subset_er_left_key_er_smaller_disk(null).
subset_er_left_key_er_below_disk(null) :- er_below_disk(X0) : er_left_key(X0).
-subset_er_left_key_er_below_disk(null) :- not subset_er_left_key_er_below_disk(null).
subset_er_left_key_er_left_disk(null) :- er_left_disk(X0) : er_left_key(X0).
-subset_er_left_key_er_left_disk(null) :- not subset_er_left_key_er_left_disk(null).
subset_er_left_key_er_overlap_disk(null) :- er_overlap_disk(X0) : er_left_key(X0).
-subset_er_left_key_er_overlap_disk(null) :- not subset_er_left_key_er_overlap_disk(null).
subset_er_left_key_er_shape_disk(null) :- er_shape_disk(X0) : er_left_key(X0).
-subset_er_left_key_er_shape_disk(null) :- not subset_er_left_key_er_shape_disk(null).
subset_er_left_key_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_key(X0).
-subset_er_left_key_inter_verum_falsum(null) :- not subset_er_left_key_inter_verum_falsum(null).
subset_er_left_key_inter_verum_key(null) :- inter_verum_key(X0) : er_left_key(X0).
-subset_er_left_key_inter_verum_key(null) :- not subset_er_left_key_inter_verum_key(null).
subset_er_left_key_inter_verum_peg(null) :- inter_verum_peg(X0) : er_left_key(X0).
-subset_er_left_key_inter_verum_peg(null) :- not subset_er_left_key_inter_verum_peg(null).
subset_er_left_key_inter_verum_disk(null) :- inter_verum_disk(X0) : er_left_key(X0).
-subset_er_left_key_inter_verum_disk(null) :- not subset_er_left_key_inter_verum_disk(null).
subset_er_left_key_inter_falsum_key(null) :- inter_falsum_key(X0) : er_left_key(X0).
-subset_er_left_key_inter_falsum_key(null) :- not subset_er_left_key_inter_falsum_key(null).
subset_er_left_key_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_left_key(X0).
-subset_er_left_key_inter_falsum_peg(null) :- not subset_er_left_key_inter_falsum_peg(null).
subset_er_left_key_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_left_key(X0).
-subset_er_left_key_inter_falsum_disk(null) :- not subset_er_left_key_inter_falsum_disk(null).
subset_er_left_key_inter_key_peg(null) :- inter_key_peg(X0) : er_left_key(X0).
-subset_er_left_key_inter_key_peg(null) :- not subset_er_left_key_inter_key_peg(null).
subset_er_left_key_inter_key_disk(null) :- inter_key_disk(X0) : er_left_key(X0).
-subset_er_left_key_inter_key_disk(null) :- not subset_er_left_key_inter_key_disk(null).
subset_er_left_key_inter_peg_disk(null) :- inter_peg_disk(X0) : er_left_key(X0).
-subset_er_left_key_inter_peg_disk(null) :- not subset_er_left_key_inter_peg_disk(null).
subset_er_left_key_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_key(X0).
-subset_er_left_key_subset_verum_falsum(null) :- not subset_er_left_key_subset_verum_falsum(null).
subset_er_left_key_subset_verum_key(null) :- subset_verum_key(null) : er_left_key(X0).
-subset_er_left_key_subset_verum_key(null) :- not subset_er_left_key_subset_verum_key(null).
subset_er_left_key_subset_verum_peg(null) :- subset_verum_peg(null) : er_left_key(X0).
-subset_er_left_key_subset_verum_peg(null) :- not subset_er_left_key_subset_verum_peg(null).
subset_er_left_key_subset_verum_disk(null) :- subset_verum_disk(null) : er_left_key(X0).
-subset_er_left_key_subset_verum_disk(null) :- not subset_er_left_key_subset_verum_disk(null).
subset_er_left_key_subset_falsum_key(null) :- subset_falsum_key(null) : er_left_key(X0).
-subset_er_left_key_subset_falsum_key(null) :- not subset_er_left_key_subset_falsum_key(null).
subset_er_left_key_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_left_key(X0).
-subset_er_left_key_subset_falsum_peg(null) :- not subset_er_left_key_subset_falsum_peg(null).
subset_er_left_key_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_left_key(X0).
-subset_er_left_key_subset_falsum_disk(null) :- not subset_er_left_key_subset_falsum_disk(null).
subset_er_left_key_subset_key_peg(null) :- subset_key_peg(null) : er_left_key(X0).
-subset_er_left_key_subset_key_peg(null) :- not subset_er_left_key_subset_key_peg(null).
subset_er_left_key_subset_key_disk(null) :- subset_key_disk(null) : er_left_key(X0).
-subset_er_left_key_subset_key_disk(null) :- not subset_er_left_key_subset_key_disk(null).
subset_er_left_key_subset_peg_disk(null) :- subset_peg_disk(null) : er_left_key(X0).
-subset_er_left_key_subset_peg_disk(null) :- not subset_er_left_key_subset_peg_disk(null).
subset_er_overlap_key_er_shape_key(null) :- er_shape_key(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_shape_key(null) :- not subset_er_overlap_key_er_shape_key(null).
subset_er_overlap_key_er_smaller_peg(null) :- er_smaller_peg(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_smaller_peg(null) :- not subset_er_overlap_key_er_smaller_peg(null).
subset_er_overlap_key_er_below_peg(null) :- er_below_peg(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_below_peg(null) :- not subset_er_overlap_key_er_below_peg(null).
subset_er_overlap_key_er_left_peg(null) :- er_left_peg(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_left_peg(null) :- not subset_er_overlap_key_er_left_peg(null).
subset_er_overlap_key_er_overlap_peg(null) :- er_overlap_peg(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_overlap_peg(null) :- not subset_er_overlap_key_er_overlap_peg(null).
subset_er_overlap_key_er_shape_peg(null) :- er_shape_peg(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_shape_peg(null) :- not subset_er_overlap_key_er_shape_peg(null).
subset_er_overlap_key_er_smaller_disk(null) :- er_smaller_disk(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_smaller_disk(null) :- not subset_er_overlap_key_er_smaller_disk(null).
subset_er_overlap_key_er_below_disk(null) :- er_below_disk(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_below_disk(null) :- not subset_er_overlap_key_er_below_disk(null).
subset_er_overlap_key_er_left_disk(null) :- er_left_disk(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_left_disk(null) :- not subset_er_overlap_key_er_left_disk(null).
subset_er_overlap_key_er_overlap_disk(null) :- er_overlap_disk(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_overlap_disk(null) :- not subset_er_overlap_key_er_overlap_disk(null).
subset_er_overlap_key_er_shape_disk(null) :- er_shape_disk(X0) : er_overlap_key(X0).
-subset_er_overlap_key_er_shape_disk(null) :- not subset_er_overlap_key_er_shape_disk(null).
subset_er_overlap_key_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_key(X0).
-subset_er_overlap_key_inter_verum_falsum(null) :- not subset_er_overlap_key_inter_verum_falsum(null).
subset_er_overlap_key_inter_verum_key(null) :- inter_verum_key(X0) : er_overlap_key(X0).
-subset_er_overlap_key_inter_verum_key(null) :- not subset_er_overlap_key_inter_verum_key(null).
subset_er_overlap_key_inter_verum_peg(null) :- inter_verum_peg(X0) : er_overlap_key(X0).
-subset_er_overlap_key_inter_verum_peg(null) :- not subset_er_overlap_key_inter_verum_peg(null).
subset_er_overlap_key_inter_verum_disk(null) :- inter_verum_disk(X0) : er_overlap_key(X0).
-subset_er_overlap_key_inter_verum_disk(null) :- not subset_er_overlap_key_inter_verum_disk(null).
subset_er_overlap_key_inter_falsum_key(null) :- inter_falsum_key(X0) : er_overlap_key(X0).
-subset_er_overlap_key_inter_falsum_key(null) :- not subset_er_overlap_key_inter_falsum_key(null).
subset_er_overlap_key_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_overlap_key(X0).
-subset_er_overlap_key_inter_falsum_peg(null) :- not subset_er_overlap_key_inter_falsum_peg(null).
subset_er_overlap_key_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_overlap_key(X0).
-subset_er_overlap_key_inter_falsum_disk(null) :- not subset_er_overlap_key_inter_falsum_disk(null).
subset_er_overlap_key_inter_key_peg(null) :- inter_key_peg(X0) : er_overlap_key(X0).
-subset_er_overlap_key_inter_key_peg(null) :- not subset_er_overlap_key_inter_key_peg(null).
subset_er_overlap_key_inter_key_disk(null) :- inter_key_disk(X0) : er_overlap_key(X0).
-subset_er_overlap_key_inter_key_disk(null) :- not subset_er_overlap_key_inter_key_disk(null).
subset_er_overlap_key_inter_peg_disk(null) :- inter_peg_disk(X0) : er_overlap_key(X0).
-subset_er_overlap_key_inter_peg_disk(null) :- not subset_er_overlap_key_inter_peg_disk(null).
subset_er_overlap_key_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_key(X0).
-subset_er_overlap_key_subset_verum_falsum(null) :- not subset_er_overlap_key_subset_verum_falsum(null).
subset_er_overlap_key_subset_verum_key(null) :- subset_verum_key(null) : er_overlap_key(X0).
-subset_er_overlap_key_subset_verum_key(null) :- not subset_er_overlap_key_subset_verum_key(null).
subset_er_overlap_key_subset_verum_peg(null) :- subset_verum_peg(null) : er_overlap_key(X0).
-subset_er_overlap_key_subset_verum_peg(null) :- not subset_er_overlap_key_subset_verum_peg(null).
subset_er_overlap_key_subset_verum_disk(null) :- subset_verum_disk(null) : er_overlap_key(X0).
-subset_er_overlap_key_subset_verum_disk(null) :- not subset_er_overlap_key_subset_verum_disk(null).
subset_er_overlap_key_subset_falsum_key(null) :- subset_falsum_key(null) : er_overlap_key(X0).
-subset_er_overlap_key_subset_falsum_key(null) :- not subset_er_overlap_key_subset_falsum_key(null).
subset_er_overlap_key_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_overlap_key(X0).
-subset_er_overlap_key_subset_falsum_peg(null) :- not subset_er_overlap_key_subset_falsum_peg(null).
subset_er_overlap_key_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_overlap_key(X0).
-subset_er_overlap_key_subset_falsum_disk(null) :- not subset_er_overlap_key_subset_falsum_disk(null).
subset_er_overlap_key_subset_key_peg(null) :- subset_key_peg(null) : er_overlap_key(X0).
-subset_er_overlap_key_subset_key_peg(null) :- not subset_er_overlap_key_subset_key_peg(null).
subset_er_overlap_key_subset_key_disk(null) :- subset_key_disk(null) : er_overlap_key(X0).
-subset_er_overlap_key_subset_key_disk(null) :- not subset_er_overlap_key_subset_key_disk(null).
subset_er_overlap_key_subset_peg_disk(null) :- subset_peg_disk(null) : er_overlap_key(X0).
-subset_er_overlap_key_subset_peg_disk(null) :- not subset_er_overlap_key_subset_peg_disk(null).
subset_er_shape_key_er_smaller_peg(null) :- er_smaller_peg(X0) : er_shape_key(X0).
-subset_er_shape_key_er_smaller_peg(null) :- not subset_er_shape_key_er_smaller_peg(null).
subset_er_shape_key_er_below_peg(null) :- er_below_peg(X0) : er_shape_key(X0).
-subset_er_shape_key_er_below_peg(null) :- not subset_er_shape_key_er_below_peg(null).
subset_er_shape_key_er_left_peg(null) :- er_left_peg(X0) : er_shape_key(X0).
-subset_er_shape_key_er_left_peg(null) :- not subset_er_shape_key_er_left_peg(null).
subset_er_shape_key_er_overlap_peg(null) :- er_overlap_peg(X0) : er_shape_key(X0).
-subset_er_shape_key_er_overlap_peg(null) :- not subset_er_shape_key_er_overlap_peg(null).
subset_er_shape_key_er_shape_peg(null) :- er_shape_peg(X0) : er_shape_key(X0).
-subset_er_shape_key_er_shape_peg(null) :- not subset_er_shape_key_er_shape_peg(null).
subset_er_shape_key_er_smaller_disk(null) :- er_smaller_disk(X0) : er_shape_key(X0).
-subset_er_shape_key_er_smaller_disk(null) :- not subset_er_shape_key_er_smaller_disk(null).
subset_er_shape_key_er_below_disk(null) :- er_below_disk(X0) : er_shape_key(X0).
-subset_er_shape_key_er_below_disk(null) :- not subset_er_shape_key_er_below_disk(null).
subset_er_shape_key_er_left_disk(null) :- er_left_disk(X0) : er_shape_key(X0).
-subset_er_shape_key_er_left_disk(null) :- not subset_er_shape_key_er_left_disk(null).
subset_er_shape_key_er_overlap_disk(null) :- er_overlap_disk(X0) : er_shape_key(X0).
-subset_er_shape_key_er_overlap_disk(null) :- not subset_er_shape_key_er_overlap_disk(null).
subset_er_shape_key_er_shape_disk(null) :- er_shape_disk(X0) : er_shape_key(X0).
-subset_er_shape_key_er_shape_disk(null) :- not subset_er_shape_key_er_shape_disk(null).
subset_er_shape_key_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_key(X0).
-subset_er_shape_key_inter_verum_falsum(null) :- not subset_er_shape_key_inter_verum_falsum(null).
subset_er_shape_key_inter_verum_key(null) :- inter_verum_key(X0) : er_shape_key(X0).
-subset_er_shape_key_inter_verum_key(null) :- not subset_er_shape_key_inter_verum_key(null).
subset_er_shape_key_inter_verum_peg(null) :- inter_verum_peg(X0) : er_shape_key(X0).
-subset_er_shape_key_inter_verum_peg(null) :- not subset_er_shape_key_inter_verum_peg(null).
subset_er_shape_key_inter_verum_disk(null) :- inter_verum_disk(X0) : er_shape_key(X0).
-subset_er_shape_key_inter_verum_disk(null) :- not subset_er_shape_key_inter_verum_disk(null).
subset_er_shape_key_inter_falsum_key(null) :- inter_falsum_key(X0) : er_shape_key(X0).
-subset_er_shape_key_inter_falsum_key(null) :- not subset_er_shape_key_inter_falsum_key(null).
subset_er_shape_key_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_shape_key(X0).
-subset_er_shape_key_inter_falsum_peg(null) :- not subset_er_shape_key_inter_falsum_peg(null).
subset_er_shape_key_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_shape_key(X0).
-subset_er_shape_key_inter_falsum_disk(null) :- not subset_er_shape_key_inter_falsum_disk(null).
subset_er_shape_key_inter_key_peg(null) :- inter_key_peg(X0) : er_shape_key(X0).
-subset_er_shape_key_inter_key_peg(null) :- not subset_er_shape_key_inter_key_peg(null).
subset_er_shape_key_inter_key_disk(null) :- inter_key_disk(X0) : er_shape_key(X0).
-subset_er_shape_key_inter_key_disk(null) :- not subset_er_shape_key_inter_key_disk(null).
subset_er_shape_key_inter_peg_disk(null) :- inter_peg_disk(X0) : er_shape_key(X0).
-subset_er_shape_key_inter_peg_disk(null) :- not subset_er_shape_key_inter_peg_disk(null).
subset_er_shape_key_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_key(X0).
-subset_er_shape_key_subset_verum_falsum(null) :- not subset_er_shape_key_subset_verum_falsum(null).
subset_er_shape_key_subset_verum_key(null) :- subset_verum_key(null) : er_shape_key(X0).
-subset_er_shape_key_subset_verum_key(null) :- not subset_er_shape_key_subset_verum_key(null).
subset_er_shape_key_subset_verum_peg(null) :- subset_verum_peg(null) : er_shape_key(X0).
-subset_er_shape_key_subset_verum_peg(null) :- not subset_er_shape_key_subset_verum_peg(null).
subset_er_shape_key_subset_verum_disk(null) :- subset_verum_disk(null) : er_shape_key(X0).
-subset_er_shape_key_subset_verum_disk(null) :- not subset_er_shape_key_subset_verum_disk(null).
subset_er_shape_key_subset_falsum_key(null) :- subset_falsum_key(null) : er_shape_key(X0).
-subset_er_shape_key_subset_falsum_key(null) :- not subset_er_shape_key_subset_falsum_key(null).
subset_er_shape_key_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_shape_key(X0).
-subset_er_shape_key_subset_falsum_peg(null) :- not subset_er_shape_key_subset_falsum_peg(null).
subset_er_shape_key_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_shape_key(X0).
-subset_er_shape_key_subset_falsum_disk(null) :- not subset_er_shape_key_subset_falsum_disk(null).
subset_er_shape_key_subset_key_peg(null) :- subset_key_peg(null) : er_shape_key(X0).
-subset_er_shape_key_subset_key_peg(null) :- not subset_er_shape_key_subset_key_peg(null).
subset_er_shape_key_subset_key_disk(null) :- subset_key_disk(null) : er_shape_key(X0).
-subset_er_shape_key_subset_key_disk(null) :- not subset_er_shape_key_subset_key_disk(null).
subset_er_shape_key_subset_peg_disk(null) :- subset_peg_disk(null) : er_shape_key(X0).
-subset_er_shape_key_subset_peg_disk(null) :- not subset_er_shape_key_subset_peg_disk(null).
subset_er_smaller_peg_er_below_peg(null) :- er_below_peg(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_er_below_peg(null) :- not subset_er_smaller_peg_er_below_peg(null).
subset_er_smaller_peg_er_left_peg(null) :- er_left_peg(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_er_left_peg(null) :- not subset_er_smaller_peg_er_left_peg(null).
subset_er_smaller_peg_er_overlap_peg(null) :- er_overlap_peg(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_er_overlap_peg(null) :- not subset_er_smaller_peg_er_overlap_peg(null).
subset_er_smaller_peg_er_shape_peg(null) :- er_shape_peg(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_er_shape_peg(null) :- not subset_er_smaller_peg_er_shape_peg(null).
subset_er_smaller_peg_er_smaller_disk(null) :- er_smaller_disk(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_er_smaller_disk(null) :- not subset_er_smaller_peg_er_smaller_disk(null).
subset_er_smaller_peg_er_below_disk(null) :- er_below_disk(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_er_below_disk(null) :- not subset_er_smaller_peg_er_below_disk(null).
subset_er_smaller_peg_er_left_disk(null) :- er_left_disk(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_er_left_disk(null) :- not subset_er_smaller_peg_er_left_disk(null).
subset_er_smaller_peg_er_overlap_disk(null) :- er_overlap_disk(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_er_overlap_disk(null) :- not subset_er_smaller_peg_er_overlap_disk(null).
subset_er_smaller_peg_er_shape_disk(null) :- er_shape_disk(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_er_shape_disk(null) :- not subset_er_smaller_peg_er_shape_disk(null).
subset_er_smaller_peg_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_inter_verum_falsum(null) :- not subset_er_smaller_peg_inter_verum_falsum(null).
subset_er_smaller_peg_inter_verum_key(null) :- inter_verum_key(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_inter_verum_key(null) :- not subset_er_smaller_peg_inter_verum_key(null).
subset_er_smaller_peg_inter_verum_peg(null) :- inter_verum_peg(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_inter_verum_peg(null) :- not subset_er_smaller_peg_inter_verum_peg(null).
subset_er_smaller_peg_inter_verum_disk(null) :- inter_verum_disk(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_inter_verum_disk(null) :- not subset_er_smaller_peg_inter_verum_disk(null).
subset_er_smaller_peg_inter_falsum_key(null) :- inter_falsum_key(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_inter_falsum_key(null) :- not subset_er_smaller_peg_inter_falsum_key(null).
subset_er_smaller_peg_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_inter_falsum_peg(null) :- not subset_er_smaller_peg_inter_falsum_peg(null).
subset_er_smaller_peg_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_inter_falsum_disk(null) :- not subset_er_smaller_peg_inter_falsum_disk(null).
subset_er_smaller_peg_inter_key_peg(null) :- inter_key_peg(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_inter_key_peg(null) :- not subset_er_smaller_peg_inter_key_peg(null).
subset_er_smaller_peg_inter_key_disk(null) :- inter_key_disk(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_inter_key_disk(null) :- not subset_er_smaller_peg_inter_key_disk(null).
subset_er_smaller_peg_inter_peg_disk(null) :- inter_peg_disk(X0) : er_smaller_peg(X0).
-subset_er_smaller_peg_inter_peg_disk(null) :- not subset_er_smaller_peg_inter_peg_disk(null).
subset_er_smaller_peg_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_peg(X0).
-subset_er_smaller_peg_subset_verum_falsum(null) :- not subset_er_smaller_peg_subset_verum_falsum(null).
subset_er_smaller_peg_subset_verum_key(null) :- subset_verum_key(null) : er_smaller_peg(X0).
-subset_er_smaller_peg_subset_verum_key(null) :- not subset_er_smaller_peg_subset_verum_key(null).
subset_er_smaller_peg_subset_verum_peg(null) :- subset_verum_peg(null) : er_smaller_peg(X0).
-subset_er_smaller_peg_subset_verum_peg(null) :- not subset_er_smaller_peg_subset_verum_peg(null).
subset_er_smaller_peg_subset_verum_disk(null) :- subset_verum_disk(null) : er_smaller_peg(X0).
-subset_er_smaller_peg_subset_verum_disk(null) :- not subset_er_smaller_peg_subset_verum_disk(null).
subset_er_smaller_peg_subset_falsum_key(null) :- subset_falsum_key(null) : er_smaller_peg(X0).
-subset_er_smaller_peg_subset_falsum_key(null) :- not subset_er_smaller_peg_subset_falsum_key(null).
subset_er_smaller_peg_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_smaller_peg(X0).
-subset_er_smaller_peg_subset_falsum_peg(null) :- not subset_er_smaller_peg_subset_falsum_peg(null).
subset_er_smaller_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_smaller_peg(X0).
-subset_er_smaller_peg_subset_falsum_disk(null) :- not subset_er_smaller_peg_subset_falsum_disk(null).
subset_er_smaller_peg_subset_key_peg(null) :- subset_key_peg(null) : er_smaller_peg(X0).
-subset_er_smaller_peg_subset_key_peg(null) :- not subset_er_smaller_peg_subset_key_peg(null).
subset_er_smaller_peg_subset_key_disk(null) :- subset_key_disk(null) : er_smaller_peg(X0).
-subset_er_smaller_peg_subset_key_disk(null) :- not subset_er_smaller_peg_subset_key_disk(null).
subset_er_smaller_peg_subset_peg_disk(null) :- subset_peg_disk(null) : er_smaller_peg(X0).
-subset_er_smaller_peg_subset_peg_disk(null) :- not subset_er_smaller_peg_subset_peg_disk(null).
subset_er_below_peg_er_left_peg(null) :- er_left_peg(X0) : er_below_peg(X0).
-subset_er_below_peg_er_left_peg(null) :- not subset_er_below_peg_er_left_peg(null).
subset_er_below_peg_er_overlap_peg(null) :- er_overlap_peg(X0) : er_below_peg(X0).
-subset_er_below_peg_er_overlap_peg(null) :- not subset_er_below_peg_er_overlap_peg(null).
subset_er_below_peg_er_shape_peg(null) :- er_shape_peg(X0) : er_below_peg(X0).
-subset_er_below_peg_er_shape_peg(null) :- not subset_er_below_peg_er_shape_peg(null).
subset_er_below_peg_er_smaller_disk(null) :- er_smaller_disk(X0) : er_below_peg(X0).
-subset_er_below_peg_er_smaller_disk(null) :- not subset_er_below_peg_er_smaller_disk(null).
subset_er_below_peg_er_below_disk(null) :- er_below_disk(X0) : er_below_peg(X0).
-subset_er_below_peg_er_below_disk(null) :- not subset_er_below_peg_er_below_disk(null).
subset_er_below_peg_er_left_disk(null) :- er_left_disk(X0) : er_below_peg(X0).
-subset_er_below_peg_er_left_disk(null) :- not subset_er_below_peg_er_left_disk(null).
subset_er_below_peg_er_overlap_disk(null) :- er_overlap_disk(X0) : er_below_peg(X0).
-subset_er_below_peg_er_overlap_disk(null) :- not subset_er_below_peg_er_overlap_disk(null).
subset_er_below_peg_er_shape_disk(null) :- er_shape_disk(X0) : er_below_peg(X0).
-subset_er_below_peg_er_shape_disk(null) :- not subset_er_below_peg_er_shape_disk(null).
subset_er_below_peg_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_peg(X0).
-subset_er_below_peg_inter_verum_falsum(null) :- not subset_er_below_peg_inter_verum_falsum(null).
subset_er_below_peg_inter_verum_key(null) :- inter_verum_key(X0) : er_below_peg(X0).
-subset_er_below_peg_inter_verum_key(null) :- not subset_er_below_peg_inter_verum_key(null).
subset_er_below_peg_inter_verum_peg(null) :- inter_verum_peg(X0) : er_below_peg(X0).
-subset_er_below_peg_inter_verum_peg(null) :- not subset_er_below_peg_inter_verum_peg(null).
subset_er_below_peg_inter_verum_disk(null) :- inter_verum_disk(X0) : er_below_peg(X0).
-subset_er_below_peg_inter_verum_disk(null) :- not subset_er_below_peg_inter_verum_disk(null).
subset_er_below_peg_inter_falsum_key(null) :- inter_falsum_key(X0) : er_below_peg(X0).
-subset_er_below_peg_inter_falsum_key(null) :- not subset_er_below_peg_inter_falsum_key(null).
subset_er_below_peg_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_below_peg(X0).
-subset_er_below_peg_inter_falsum_peg(null) :- not subset_er_below_peg_inter_falsum_peg(null).
subset_er_below_peg_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_below_peg(X0).
-subset_er_below_peg_inter_falsum_disk(null) :- not subset_er_below_peg_inter_falsum_disk(null).
subset_er_below_peg_inter_key_peg(null) :- inter_key_peg(X0) : er_below_peg(X0).
-subset_er_below_peg_inter_key_peg(null) :- not subset_er_below_peg_inter_key_peg(null).
subset_er_below_peg_inter_key_disk(null) :- inter_key_disk(X0) : er_below_peg(X0).
-subset_er_below_peg_inter_key_disk(null) :- not subset_er_below_peg_inter_key_disk(null).
subset_er_below_peg_inter_peg_disk(null) :- inter_peg_disk(X0) : er_below_peg(X0).
-subset_er_below_peg_inter_peg_disk(null) :- not subset_er_below_peg_inter_peg_disk(null).
subset_er_below_peg_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_peg(X0).
-subset_er_below_peg_subset_verum_falsum(null) :- not subset_er_below_peg_subset_verum_falsum(null).
subset_er_below_peg_subset_verum_key(null) :- subset_verum_key(null) : er_below_peg(X0).
-subset_er_below_peg_subset_verum_key(null) :- not subset_er_below_peg_subset_verum_key(null).
subset_er_below_peg_subset_verum_peg(null) :- subset_verum_peg(null) : er_below_peg(X0).
-subset_er_below_peg_subset_verum_peg(null) :- not subset_er_below_peg_subset_verum_peg(null).
subset_er_below_peg_subset_verum_disk(null) :- subset_verum_disk(null) : er_below_peg(X0).
-subset_er_below_peg_subset_verum_disk(null) :- not subset_er_below_peg_subset_verum_disk(null).
subset_er_below_peg_subset_falsum_key(null) :- subset_falsum_key(null) : er_below_peg(X0).
-subset_er_below_peg_subset_falsum_key(null) :- not subset_er_below_peg_subset_falsum_key(null).
subset_er_below_peg_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_below_peg(X0).
-subset_er_below_peg_subset_falsum_peg(null) :- not subset_er_below_peg_subset_falsum_peg(null).
subset_er_below_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_below_peg(X0).
-subset_er_below_peg_subset_falsum_disk(null) :- not subset_er_below_peg_subset_falsum_disk(null).
subset_er_below_peg_subset_key_peg(null) :- subset_key_peg(null) : er_below_peg(X0).
-subset_er_below_peg_subset_key_peg(null) :- not subset_er_below_peg_subset_key_peg(null).
subset_er_below_peg_subset_key_disk(null) :- subset_key_disk(null) : er_below_peg(X0).
-subset_er_below_peg_subset_key_disk(null) :- not subset_er_below_peg_subset_key_disk(null).
subset_er_below_peg_subset_peg_disk(null) :- subset_peg_disk(null) : er_below_peg(X0).
-subset_er_below_peg_subset_peg_disk(null) :- not subset_er_below_peg_subset_peg_disk(null).
subset_er_left_peg_er_overlap_peg(null) :- er_overlap_peg(X0) : er_left_peg(X0).
-subset_er_left_peg_er_overlap_peg(null) :- not subset_er_left_peg_er_overlap_peg(null).
subset_er_left_peg_er_shape_peg(null) :- er_shape_peg(X0) : er_left_peg(X0).
-subset_er_left_peg_er_shape_peg(null) :- not subset_er_left_peg_er_shape_peg(null).
subset_er_left_peg_er_smaller_disk(null) :- er_smaller_disk(X0) : er_left_peg(X0).
-subset_er_left_peg_er_smaller_disk(null) :- not subset_er_left_peg_er_smaller_disk(null).
subset_er_left_peg_er_below_disk(null) :- er_below_disk(X0) : er_left_peg(X0).
-subset_er_left_peg_er_below_disk(null) :- not subset_er_left_peg_er_below_disk(null).
subset_er_left_peg_er_left_disk(null) :- er_left_disk(X0) : er_left_peg(X0).
-subset_er_left_peg_er_left_disk(null) :- not subset_er_left_peg_er_left_disk(null).
subset_er_left_peg_er_overlap_disk(null) :- er_overlap_disk(X0) : er_left_peg(X0).
-subset_er_left_peg_er_overlap_disk(null) :- not subset_er_left_peg_er_overlap_disk(null).
subset_er_left_peg_er_shape_disk(null) :- er_shape_disk(X0) : er_left_peg(X0).
-subset_er_left_peg_er_shape_disk(null) :- not subset_er_left_peg_er_shape_disk(null).
subset_er_left_peg_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_peg(X0).
-subset_er_left_peg_inter_verum_falsum(null) :- not subset_er_left_peg_inter_verum_falsum(null).
subset_er_left_peg_inter_verum_key(null) :- inter_verum_key(X0) : er_left_peg(X0).
-subset_er_left_peg_inter_verum_key(null) :- not subset_er_left_peg_inter_verum_key(null).
subset_er_left_peg_inter_verum_peg(null) :- inter_verum_peg(X0) : er_left_peg(X0).
-subset_er_left_peg_inter_verum_peg(null) :- not subset_er_left_peg_inter_verum_peg(null).
subset_er_left_peg_inter_verum_disk(null) :- inter_verum_disk(X0) : er_left_peg(X0).
-subset_er_left_peg_inter_verum_disk(null) :- not subset_er_left_peg_inter_verum_disk(null).
subset_er_left_peg_inter_falsum_key(null) :- inter_falsum_key(X0) : er_left_peg(X0).
-subset_er_left_peg_inter_falsum_key(null) :- not subset_er_left_peg_inter_falsum_key(null).
subset_er_left_peg_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_left_peg(X0).
-subset_er_left_peg_inter_falsum_peg(null) :- not subset_er_left_peg_inter_falsum_peg(null).
subset_er_left_peg_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_left_peg(X0).
-subset_er_left_peg_inter_falsum_disk(null) :- not subset_er_left_peg_inter_falsum_disk(null).
subset_er_left_peg_inter_key_peg(null) :- inter_key_peg(X0) : er_left_peg(X0).
-subset_er_left_peg_inter_key_peg(null) :- not subset_er_left_peg_inter_key_peg(null).
subset_er_left_peg_inter_key_disk(null) :- inter_key_disk(X0) : er_left_peg(X0).
-subset_er_left_peg_inter_key_disk(null) :- not subset_er_left_peg_inter_key_disk(null).
subset_er_left_peg_inter_peg_disk(null) :- inter_peg_disk(X0) : er_left_peg(X0).
-subset_er_left_peg_inter_peg_disk(null) :- not subset_er_left_peg_inter_peg_disk(null).
subset_er_left_peg_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_peg(X0).
-subset_er_left_peg_subset_verum_falsum(null) :- not subset_er_left_peg_subset_verum_falsum(null).
subset_er_left_peg_subset_verum_key(null) :- subset_verum_key(null) : er_left_peg(X0).
-subset_er_left_peg_subset_verum_key(null) :- not subset_er_left_peg_subset_verum_key(null).
subset_er_left_peg_subset_verum_peg(null) :- subset_verum_peg(null) : er_left_peg(X0).
-subset_er_left_peg_subset_verum_peg(null) :- not subset_er_left_peg_subset_verum_peg(null).
subset_er_left_peg_subset_verum_disk(null) :- subset_verum_disk(null) : er_left_peg(X0).
-subset_er_left_peg_subset_verum_disk(null) :- not subset_er_left_peg_subset_verum_disk(null).
subset_er_left_peg_subset_falsum_key(null) :- subset_falsum_key(null) : er_left_peg(X0).
-subset_er_left_peg_subset_falsum_key(null) :- not subset_er_left_peg_subset_falsum_key(null).
subset_er_left_peg_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_left_peg(X0).
-subset_er_left_peg_subset_falsum_peg(null) :- not subset_er_left_peg_subset_falsum_peg(null).
subset_er_left_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_left_peg(X0).
-subset_er_left_peg_subset_falsum_disk(null) :- not subset_er_left_peg_subset_falsum_disk(null).
subset_er_left_peg_subset_key_peg(null) :- subset_key_peg(null) : er_left_peg(X0).
-subset_er_left_peg_subset_key_peg(null) :- not subset_er_left_peg_subset_key_peg(null).
subset_er_left_peg_subset_key_disk(null) :- subset_key_disk(null) : er_left_peg(X0).
-subset_er_left_peg_subset_key_disk(null) :- not subset_er_left_peg_subset_key_disk(null).
subset_er_left_peg_subset_peg_disk(null) :- subset_peg_disk(null) : er_left_peg(X0).
-subset_er_left_peg_subset_peg_disk(null) :- not subset_er_left_peg_subset_peg_disk(null).
subset_er_overlap_peg_er_shape_peg(null) :- er_shape_peg(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_er_shape_peg(null) :- not subset_er_overlap_peg_er_shape_peg(null).
subset_er_overlap_peg_er_smaller_disk(null) :- er_smaller_disk(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_er_smaller_disk(null) :- not subset_er_overlap_peg_er_smaller_disk(null).
subset_er_overlap_peg_er_below_disk(null) :- er_below_disk(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_er_below_disk(null) :- not subset_er_overlap_peg_er_below_disk(null).
subset_er_overlap_peg_er_left_disk(null) :- er_left_disk(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_er_left_disk(null) :- not subset_er_overlap_peg_er_left_disk(null).
subset_er_overlap_peg_er_overlap_disk(null) :- er_overlap_disk(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_er_overlap_disk(null) :- not subset_er_overlap_peg_er_overlap_disk(null).
subset_er_overlap_peg_er_shape_disk(null) :- er_shape_disk(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_er_shape_disk(null) :- not subset_er_overlap_peg_er_shape_disk(null).
subset_er_overlap_peg_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_inter_verum_falsum(null) :- not subset_er_overlap_peg_inter_verum_falsum(null).
subset_er_overlap_peg_inter_verum_key(null) :- inter_verum_key(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_inter_verum_key(null) :- not subset_er_overlap_peg_inter_verum_key(null).
subset_er_overlap_peg_inter_verum_peg(null) :- inter_verum_peg(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_inter_verum_peg(null) :- not subset_er_overlap_peg_inter_verum_peg(null).
subset_er_overlap_peg_inter_verum_disk(null) :- inter_verum_disk(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_inter_verum_disk(null) :- not subset_er_overlap_peg_inter_verum_disk(null).
subset_er_overlap_peg_inter_falsum_key(null) :- inter_falsum_key(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_inter_falsum_key(null) :- not subset_er_overlap_peg_inter_falsum_key(null).
subset_er_overlap_peg_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_inter_falsum_peg(null) :- not subset_er_overlap_peg_inter_falsum_peg(null).
subset_er_overlap_peg_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_inter_falsum_disk(null) :- not subset_er_overlap_peg_inter_falsum_disk(null).
subset_er_overlap_peg_inter_key_peg(null) :- inter_key_peg(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_inter_key_peg(null) :- not subset_er_overlap_peg_inter_key_peg(null).
subset_er_overlap_peg_inter_key_disk(null) :- inter_key_disk(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_inter_key_disk(null) :- not subset_er_overlap_peg_inter_key_disk(null).
subset_er_overlap_peg_inter_peg_disk(null) :- inter_peg_disk(X0) : er_overlap_peg(X0).
-subset_er_overlap_peg_inter_peg_disk(null) :- not subset_er_overlap_peg_inter_peg_disk(null).
subset_er_overlap_peg_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_peg(X0).
-subset_er_overlap_peg_subset_verum_falsum(null) :- not subset_er_overlap_peg_subset_verum_falsum(null).
subset_er_overlap_peg_subset_verum_key(null) :- subset_verum_key(null) : er_overlap_peg(X0).
-subset_er_overlap_peg_subset_verum_key(null) :- not subset_er_overlap_peg_subset_verum_key(null).
subset_er_overlap_peg_subset_verum_peg(null) :- subset_verum_peg(null) : er_overlap_peg(X0).
-subset_er_overlap_peg_subset_verum_peg(null) :- not subset_er_overlap_peg_subset_verum_peg(null).
subset_er_overlap_peg_subset_verum_disk(null) :- subset_verum_disk(null) : er_overlap_peg(X0).
-subset_er_overlap_peg_subset_verum_disk(null) :- not subset_er_overlap_peg_subset_verum_disk(null).
subset_er_overlap_peg_subset_falsum_key(null) :- subset_falsum_key(null) : er_overlap_peg(X0).
-subset_er_overlap_peg_subset_falsum_key(null) :- not subset_er_overlap_peg_subset_falsum_key(null).
subset_er_overlap_peg_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_overlap_peg(X0).
-subset_er_overlap_peg_subset_falsum_peg(null) :- not subset_er_overlap_peg_subset_falsum_peg(null).
subset_er_overlap_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_overlap_peg(X0).
-subset_er_overlap_peg_subset_falsum_disk(null) :- not subset_er_overlap_peg_subset_falsum_disk(null).
subset_er_overlap_peg_subset_key_peg(null) :- subset_key_peg(null) : er_overlap_peg(X0).
-subset_er_overlap_peg_subset_key_peg(null) :- not subset_er_overlap_peg_subset_key_peg(null).
subset_er_overlap_peg_subset_key_disk(null) :- subset_key_disk(null) : er_overlap_peg(X0).
-subset_er_overlap_peg_subset_key_disk(null) :- not subset_er_overlap_peg_subset_key_disk(null).
subset_er_overlap_peg_subset_peg_disk(null) :- subset_peg_disk(null) : er_overlap_peg(X0).
-subset_er_overlap_peg_subset_peg_disk(null) :- not subset_er_overlap_peg_subset_peg_disk(null).
subset_er_shape_peg_er_smaller_disk(null) :- er_smaller_disk(X0) : er_shape_peg(X0).
-subset_er_shape_peg_er_smaller_disk(null) :- not subset_er_shape_peg_er_smaller_disk(null).
subset_er_shape_peg_er_below_disk(null) :- er_below_disk(X0) : er_shape_peg(X0).
-subset_er_shape_peg_er_below_disk(null) :- not subset_er_shape_peg_er_below_disk(null).
subset_er_shape_peg_er_left_disk(null) :- er_left_disk(X0) : er_shape_peg(X0).
-subset_er_shape_peg_er_left_disk(null) :- not subset_er_shape_peg_er_left_disk(null).
subset_er_shape_peg_er_overlap_disk(null) :- er_overlap_disk(X0) : er_shape_peg(X0).
-subset_er_shape_peg_er_overlap_disk(null) :- not subset_er_shape_peg_er_overlap_disk(null).
subset_er_shape_peg_er_shape_disk(null) :- er_shape_disk(X0) : er_shape_peg(X0).
-subset_er_shape_peg_er_shape_disk(null) :- not subset_er_shape_peg_er_shape_disk(null).
subset_er_shape_peg_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_peg(X0).
-subset_er_shape_peg_inter_verum_falsum(null) :- not subset_er_shape_peg_inter_verum_falsum(null).
subset_er_shape_peg_inter_verum_key(null) :- inter_verum_key(X0) : er_shape_peg(X0).
-subset_er_shape_peg_inter_verum_key(null) :- not subset_er_shape_peg_inter_verum_key(null).
subset_er_shape_peg_inter_verum_peg(null) :- inter_verum_peg(X0) : er_shape_peg(X0).
-subset_er_shape_peg_inter_verum_peg(null) :- not subset_er_shape_peg_inter_verum_peg(null).
subset_er_shape_peg_inter_verum_disk(null) :- inter_verum_disk(X0) : er_shape_peg(X0).
-subset_er_shape_peg_inter_verum_disk(null) :- not subset_er_shape_peg_inter_verum_disk(null).
subset_er_shape_peg_inter_falsum_key(null) :- inter_falsum_key(X0) : er_shape_peg(X0).
-subset_er_shape_peg_inter_falsum_key(null) :- not subset_er_shape_peg_inter_falsum_key(null).
subset_er_shape_peg_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_shape_peg(X0).
-subset_er_shape_peg_inter_falsum_peg(null) :- not subset_er_shape_peg_inter_falsum_peg(null).
subset_er_shape_peg_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_shape_peg(X0).
-subset_er_shape_peg_inter_falsum_disk(null) :- not subset_er_shape_peg_inter_falsum_disk(null).
subset_er_shape_peg_inter_key_peg(null) :- inter_key_peg(X0) : er_shape_peg(X0).
-subset_er_shape_peg_inter_key_peg(null) :- not subset_er_shape_peg_inter_key_peg(null).
subset_er_shape_peg_inter_key_disk(null) :- inter_key_disk(X0) : er_shape_peg(X0).
-subset_er_shape_peg_inter_key_disk(null) :- not subset_er_shape_peg_inter_key_disk(null).
subset_er_shape_peg_inter_peg_disk(null) :- inter_peg_disk(X0) : er_shape_peg(X0).
-subset_er_shape_peg_inter_peg_disk(null) :- not subset_er_shape_peg_inter_peg_disk(null).
subset_er_shape_peg_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_peg(X0).
-subset_er_shape_peg_subset_verum_falsum(null) :- not subset_er_shape_peg_subset_verum_falsum(null).
subset_er_shape_peg_subset_verum_key(null) :- subset_verum_key(null) : er_shape_peg(X0).
-subset_er_shape_peg_subset_verum_key(null) :- not subset_er_shape_peg_subset_verum_key(null).
subset_er_shape_peg_subset_verum_peg(null) :- subset_verum_peg(null) : er_shape_peg(X0).
-subset_er_shape_peg_subset_verum_peg(null) :- not subset_er_shape_peg_subset_verum_peg(null).
subset_er_shape_peg_subset_verum_disk(null) :- subset_verum_disk(null) : er_shape_peg(X0).
-subset_er_shape_peg_subset_verum_disk(null) :- not subset_er_shape_peg_subset_verum_disk(null).
subset_er_shape_peg_subset_falsum_key(null) :- subset_falsum_key(null) : er_shape_peg(X0).
-subset_er_shape_peg_subset_falsum_key(null) :- not subset_er_shape_peg_subset_falsum_key(null).
subset_er_shape_peg_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_shape_peg(X0).
-subset_er_shape_peg_subset_falsum_peg(null) :- not subset_er_shape_peg_subset_falsum_peg(null).
subset_er_shape_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_shape_peg(X0).
-subset_er_shape_peg_subset_falsum_disk(null) :- not subset_er_shape_peg_subset_falsum_disk(null).
subset_er_shape_peg_subset_key_peg(null) :- subset_key_peg(null) : er_shape_peg(X0).
-subset_er_shape_peg_subset_key_peg(null) :- not subset_er_shape_peg_subset_key_peg(null).
subset_er_shape_peg_subset_key_disk(null) :- subset_key_disk(null) : er_shape_peg(X0).
-subset_er_shape_peg_subset_key_disk(null) :- not subset_er_shape_peg_subset_key_disk(null).
subset_er_shape_peg_subset_peg_disk(null) :- subset_peg_disk(null) : er_shape_peg(X0).
-subset_er_shape_peg_subset_peg_disk(null) :- not subset_er_shape_peg_subset_peg_disk(null).
subset_er_smaller_disk_er_below_disk(null) :- er_below_disk(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_er_below_disk(null) :- not subset_er_smaller_disk_er_below_disk(null).
subset_er_smaller_disk_er_left_disk(null) :- er_left_disk(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_er_left_disk(null) :- not subset_er_smaller_disk_er_left_disk(null).
subset_er_smaller_disk_er_overlap_disk(null) :- er_overlap_disk(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_er_overlap_disk(null) :- not subset_er_smaller_disk_er_overlap_disk(null).
subset_er_smaller_disk_er_shape_disk(null) :- er_shape_disk(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_er_shape_disk(null) :- not subset_er_smaller_disk_er_shape_disk(null).
subset_er_smaller_disk_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_inter_verum_falsum(null) :- not subset_er_smaller_disk_inter_verum_falsum(null).
subset_er_smaller_disk_inter_verum_key(null) :- inter_verum_key(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_inter_verum_key(null) :- not subset_er_smaller_disk_inter_verum_key(null).
subset_er_smaller_disk_inter_verum_peg(null) :- inter_verum_peg(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_inter_verum_peg(null) :- not subset_er_smaller_disk_inter_verum_peg(null).
subset_er_smaller_disk_inter_verum_disk(null) :- inter_verum_disk(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_inter_verum_disk(null) :- not subset_er_smaller_disk_inter_verum_disk(null).
subset_er_smaller_disk_inter_falsum_key(null) :- inter_falsum_key(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_inter_falsum_key(null) :- not subset_er_smaller_disk_inter_falsum_key(null).
subset_er_smaller_disk_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_inter_falsum_peg(null) :- not subset_er_smaller_disk_inter_falsum_peg(null).
subset_er_smaller_disk_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_inter_falsum_disk(null) :- not subset_er_smaller_disk_inter_falsum_disk(null).
subset_er_smaller_disk_inter_key_peg(null) :- inter_key_peg(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_inter_key_peg(null) :- not subset_er_smaller_disk_inter_key_peg(null).
subset_er_smaller_disk_inter_key_disk(null) :- inter_key_disk(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_inter_key_disk(null) :- not subset_er_smaller_disk_inter_key_disk(null).
subset_er_smaller_disk_inter_peg_disk(null) :- inter_peg_disk(X0) : er_smaller_disk(X0).
-subset_er_smaller_disk_inter_peg_disk(null) :- not subset_er_smaller_disk_inter_peg_disk(null).
subset_er_smaller_disk_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_disk(X0).
-subset_er_smaller_disk_subset_verum_falsum(null) :- not subset_er_smaller_disk_subset_verum_falsum(null).
subset_er_smaller_disk_subset_verum_key(null) :- subset_verum_key(null) : er_smaller_disk(X0).
-subset_er_smaller_disk_subset_verum_key(null) :- not subset_er_smaller_disk_subset_verum_key(null).
subset_er_smaller_disk_subset_verum_peg(null) :- subset_verum_peg(null) : er_smaller_disk(X0).
-subset_er_smaller_disk_subset_verum_peg(null) :- not subset_er_smaller_disk_subset_verum_peg(null).
subset_er_smaller_disk_subset_verum_disk(null) :- subset_verum_disk(null) : er_smaller_disk(X0).
-subset_er_smaller_disk_subset_verum_disk(null) :- not subset_er_smaller_disk_subset_verum_disk(null).
subset_er_smaller_disk_subset_falsum_key(null) :- subset_falsum_key(null) : er_smaller_disk(X0).
-subset_er_smaller_disk_subset_falsum_key(null) :- not subset_er_smaller_disk_subset_falsum_key(null).
subset_er_smaller_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_smaller_disk(X0).
-subset_er_smaller_disk_subset_falsum_peg(null) :- not subset_er_smaller_disk_subset_falsum_peg(null).
subset_er_smaller_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_smaller_disk(X0).
-subset_er_smaller_disk_subset_falsum_disk(null) :- not subset_er_smaller_disk_subset_falsum_disk(null).
subset_er_smaller_disk_subset_key_peg(null) :- subset_key_peg(null) : er_smaller_disk(X0).
-subset_er_smaller_disk_subset_key_peg(null) :- not subset_er_smaller_disk_subset_key_peg(null).
subset_er_smaller_disk_subset_key_disk(null) :- subset_key_disk(null) : er_smaller_disk(X0).
-subset_er_smaller_disk_subset_key_disk(null) :- not subset_er_smaller_disk_subset_key_disk(null).
subset_er_smaller_disk_subset_peg_disk(null) :- subset_peg_disk(null) : er_smaller_disk(X0).
-subset_er_smaller_disk_subset_peg_disk(null) :- not subset_er_smaller_disk_subset_peg_disk(null).
subset_er_below_disk_er_left_disk(null) :- er_left_disk(X0) : er_below_disk(X0).
-subset_er_below_disk_er_left_disk(null) :- not subset_er_below_disk_er_left_disk(null).
subset_er_below_disk_er_overlap_disk(null) :- er_overlap_disk(X0) : er_below_disk(X0).
-subset_er_below_disk_er_overlap_disk(null) :- not subset_er_below_disk_er_overlap_disk(null).
subset_er_below_disk_er_shape_disk(null) :- er_shape_disk(X0) : er_below_disk(X0).
-subset_er_below_disk_er_shape_disk(null) :- not subset_er_below_disk_er_shape_disk(null).
subset_er_below_disk_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_disk(X0).
-subset_er_below_disk_inter_verum_falsum(null) :- not subset_er_below_disk_inter_verum_falsum(null).
subset_er_below_disk_inter_verum_key(null) :- inter_verum_key(X0) : er_below_disk(X0).
-subset_er_below_disk_inter_verum_key(null) :- not subset_er_below_disk_inter_verum_key(null).
subset_er_below_disk_inter_verum_peg(null) :- inter_verum_peg(X0) : er_below_disk(X0).
-subset_er_below_disk_inter_verum_peg(null) :- not subset_er_below_disk_inter_verum_peg(null).
subset_er_below_disk_inter_verum_disk(null) :- inter_verum_disk(X0) : er_below_disk(X0).
-subset_er_below_disk_inter_verum_disk(null) :- not subset_er_below_disk_inter_verum_disk(null).
subset_er_below_disk_inter_falsum_key(null) :- inter_falsum_key(X0) : er_below_disk(X0).
-subset_er_below_disk_inter_falsum_key(null) :- not subset_er_below_disk_inter_falsum_key(null).
subset_er_below_disk_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_below_disk(X0).
-subset_er_below_disk_inter_falsum_peg(null) :- not subset_er_below_disk_inter_falsum_peg(null).
subset_er_below_disk_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_below_disk(X0).
-subset_er_below_disk_inter_falsum_disk(null) :- not subset_er_below_disk_inter_falsum_disk(null).
subset_er_below_disk_inter_key_peg(null) :- inter_key_peg(X0) : er_below_disk(X0).
-subset_er_below_disk_inter_key_peg(null) :- not subset_er_below_disk_inter_key_peg(null).
subset_er_below_disk_inter_key_disk(null) :- inter_key_disk(X0) : er_below_disk(X0).
-subset_er_below_disk_inter_key_disk(null) :- not subset_er_below_disk_inter_key_disk(null).
subset_er_below_disk_inter_peg_disk(null) :- inter_peg_disk(X0) : er_below_disk(X0).
-subset_er_below_disk_inter_peg_disk(null) :- not subset_er_below_disk_inter_peg_disk(null).
subset_er_below_disk_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_disk(X0).
-subset_er_below_disk_subset_verum_falsum(null) :- not subset_er_below_disk_subset_verum_falsum(null).
subset_er_below_disk_subset_verum_key(null) :- subset_verum_key(null) : er_below_disk(X0).
-subset_er_below_disk_subset_verum_key(null) :- not subset_er_below_disk_subset_verum_key(null).
subset_er_below_disk_subset_verum_peg(null) :- subset_verum_peg(null) : er_below_disk(X0).
-subset_er_below_disk_subset_verum_peg(null) :- not subset_er_below_disk_subset_verum_peg(null).
subset_er_below_disk_subset_verum_disk(null) :- subset_verum_disk(null) : er_below_disk(X0).
-subset_er_below_disk_subset_verum_disk(null) :- not subset_er_below_disk_subset_verum_disk(null).
subset_er_below_disk_subset_falsum_key(null) :- subset_falsum_key(null) : er_below_disk(X0).
-subset_er_below_disk_subset_falsum_key(null) :- not subset_er_below_disk_subset_falsum_key(null).
subset_er_below_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_below_disk(X0).
-subset_er_below_disk_subset_falsum_peg(null) :- not subset_er_below_disk_subset_falsum_peg(null).
subset_er_below_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_below_disk(X0).
-subset_er_below_disk_subset_falsum_disk(null) :- not subset_er_below_disk_subset_falsum_disk(null).
subset_er_below_disk_subset_key_peg(null) :- subset_key_peg(null) : er_below_disk(X0).
-subset_er_below_disk_subset_key_peg(null) :- not subset_er_below_disk_subset_key_peg(null).
subset_er_below_disk_subset_key_disk(null) :- subset_key_disk(null) : er_below_disk(X0).
-subset_er_below_disk_subset_key_disk(null) :- not subset_er_below_disk_subset_key_disk(null).
subset_er_below_disk_subset_peg_disk(null) :- subset_peg_disk(null) : er_below_disk(X0).
-subset_er_below_disk_subset_peg_disk(null) :- not subset_er_below_disk_subset_peg_disk(null).
subset_er_left_disk_er_overlap_disk(null) :- er_overlap_disk(X0) : er_left_disk(X0).
-subset_er_left_disk_er_overlap_disk(null) :- not subset_er_left_disk_er_overlap_disk(null).
subset_er_left_disk_er_shape_disk(null) :- er_shape_disk(X0) : er_left_disk(X0).
-subset_er_left_disk_er_shape_disk(null) :- not subset_er_left_disk_er_shape_disk(null).
subset_er_left_disk_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_disk(X0).
-subset_er_left_disk_inter_verum_falsum(null) :- not subset_er_left_disk_inter_verum_falsum(null).
subset_er_left_disk_inter_verum_key(null) :- inter_verum_key(X0) : er_left_disk(X0).
-subset_er_left_disk_inter_verum_key(null) :- not subset_er_left_disk_inter_verum_key(null).
subset_er_left_disk_inter_verum_peg(null) :- inter_verum_peg(X0) : er_left_disk(X0).
-subset_er_left_disk_inter_verum_peg(null) :- not subset_er_left_disk_inter_verum_peg(null).
subset_er_left_disk_inter_verum_disk(null) :- inter_verum_disk(X0) : er_left_disk(X0).
-subset_er_left_disk_inter_verum_disk(null) :- not subset_er_left_disk_inter_verum_disk(null).
subset_er_left_disk_inter_falsum_key(null) :- inter_falsum_key(X0) : er_left_disk(X0).
-subset_er_left_disk_inter_falsum_key(null) :- not subset_er_left_disk_inter_falsum_key(null).
subset_er_left_disk_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_left_disk(X0).
-subset_er_left_disk_inter_falsum_peg(null) :- not subset_er_left_disk_inter_falsum_peg(null).
subset_er_left_disk_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_left_disk(X0).
-subset_er_left_disk_inter_falsum_disk(null) :- not subset_er_left_disk_inter_falsum_disk(null).
subset_er_left_disk_inter_key_peg(null) :- inter_key_peg(X0) : er_left_disk(X0).
-subset_er_left_disk_inter_key_peg(null) :- not subset_er_left_disk_inter_key_peg(null).
subset_er_left_disk_inter_key_disk(null) :- inter_key_disk(X0) : er_left_disk(X0).
-subset_er_left_disk_inter_key_disk(null) :- not subset_er_left_disk_inter_key_disk(null).
subset_er_left_disk_inter_peg_disk(null) :- inter_peg_disk(X0) : er_left_disk(X0).
-subset_er_left_disk_inter_peg_disk(null) :- not subset_er_left_disk_inter_peg_disk(null).
subset_er_left_disk_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_disk(X0).
-subset_er_left_disk_subset_verum_falsum(null) :- not subset_er_left_disk_subset_verum_falsum(null).
subset_er_left_disk_subset_verum_key(null) :- subset_verum_key(null) : er_left_disk(X0).
-subset_er_left_disk_subset_verum_key(null) :- not subset_er_left_disk_subset_verum_key(null).
subset_er_left_disk_subset_verum_peg(null) :- subset_verum_peg(null) : er_left_disk(X0).
-subset_er_left_disk_subset_verum_peg(null) :- not subset_er_left_disk_subset_verum_peg(null).
subset_er_left_disk_subset_verum_disk(null) :- subset_verum_disk(null) : er_left_disk(X0).
-subset_er_left_disk_subset_verum_disk(null) :- not subset_er_left_disk_subset_verum_disk(null).
subset_er_left_disk_subset_falsum_key(null) :- subset_falsum_key(null) : er_left_disk(X0).
-subset_er_left_disk_subset_falsum_key(null) :- not subset_er_left_disk_subset_falsum_key(null).
subset_er_left_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_left_disk(X0).
-subset_er_left_disk_subset_falsum_peg(null) :- not subset_er_left_disk_subset_falsum_peg(null).
subset_er_left_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_left_disk(X0).
-subset_er_left_disk_subset_falsum_disk(null) :- not subset_er_left_disk_subset_falsum_disk(null).
subset_er_left_disk_subset_key_peg(null) :- subset_key_peg(null) : er_left_disk(X0).
-subset_er_left_disk_subset_key_peg(null) :- not subset_er_left_disk_subset_key_peg(null).
subset_er_left_disk_subset_key_disk(null) :- subset_key_disk(null) : er_left_disk(X0).
-subset_er_left_disk_subset_key_disk(null) :- not subset_er_left_disk_subset_key_disk(null).
subset_er_left_disk_subset_peg_disk(null) :- subset_peg_disk(null) : er_left_disk(X0).
-subset_er_left_disk_subset_peg_disk(null) :- not subset_er_left_disk_subset_peg_disk(null).
subset_er_overlap_disk_er_shape_disk(null) :- er_shape_disk(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_er_shape_disk(null) :- not subset_er_overlap_disk_er_shape_disk(null).
subset_er_overlap_disk_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_inter_verum_falsum(null) :- not subset_er_overlap_disk_inter_verum_falsum(null).
subset_er_overlap_disk_inter_verum_key(null) :- inter_verum_key(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_inter_verum_key(null) :- not subset_er_overlap_disk_inter_verum_key(null).
subset_er_overlap_disk_inter_verum_peg(null) :- inter_verum_peg(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_inter_verum_peg(null) :- not subset_er_overlap_disk_inter_verum_peg(null).
subset_er_overlap_disk_inter_verum_disk(null) :- inter_verum_disk(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_inter_verum_disk(null) :- not subset_er_overlap_disk_inter_verum_disk(null).
subset_er_overlap_disk_inter_falsum_key(null) :- inter_falsum_key(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_inter_falsum_key(null) :- not subset_er_overlap_disk_inter_falsum_key(null).
subset_er_overlap_disk_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_inter_falsum_peg(null) :- not subset_er_overlap_disk_inter_falsum_peg(null).
subset_er_overlap_disk_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_inter_falsum_disk(null) :- not subset_er_overlap_disk_inter_falsum_disk(null).
subset_er_overlap_disk_inter_key_peg(null) :- inter_key_peg(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_inter_key_peg(null) :- not subset_er_overlap_disk_inter_key_peg(null).
subset_er_overlap_disk_inter_key_disk(null) :- inter_key_disk(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_inter_key_disk(null) :- not subset_er_overlap_disk_inter_key_disk(null).
subset_er_overlap_disk_inter_peg_disk(null) :- inter_peg_disk(X0) : er_overlap_disk(X0).
-subset_er_overlap_disk_inter_peg_disk(null) :- not subset_er_overlap_disk_inter_peg_disk(null).
subset_er_overlap_disk_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_disk(X0).
-subset_er_overlap_disk_subset_verum_falsum(null) :- not subset_er_overlap_disk_subset_verum_falsum(null).
subset_er_overlap_disk_subset_verum_key(null) :- subset_verum_key(null) : er_overlap_disk(X0).
-subset_er_overlap_disk_subset_verum_key(null) :- not subset_er_overlap_disk_subset_verum_key(null).
subset_er_overlap_disk_subset_verum_peg(null) :- subset_verum_peg(null) : er_overlap_disk(X0).
-subset_er_overlap_disk_subset_verum_peg(null) :- not subset_er_overlap_disk_subset_verum_peg(null).
subset_er_overlap_disk_subset_verum_disk(null) :- subset_verum_disk(null) : er_overlap_disk(X0).
-subset_er_overlap_disk_subset_verum_disk(null) :- not subset_er_overlap_disk_subset_verum_disk(null).
subset_er_overlap_disk_subset_falsum_key(null) :- subset_falsum_key(null) : er_overlap_disk(X0).
-subset_er_overlap_disk_subset_falsum_key(null) :- not subset_er_overlap_disk_subset_falsum_key(null).
subset_er_overlap_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_overlap_disk(X0).
-subset_er_overlap_disk_subset_falsum_peg(null) :- not subset_er_overlap_disk_subset_falsum_peg(null).
subset_er_overlap_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_overlap_disk(X0).
-subset_er_overlap_disk_subset_falsum_disk(null) :- not subset_er_overlap_disk_subset_falsum_disk(null).
subset_er_overlap_disk_subset_key_peg(null) :- subset_key_peg(null) : er_overlap_disk(X0).
-subset_er_overlap_disk_subset_key_peg(null) :- not subset_er_overlap_disk_subset_key_peg(null).
subset_er_overlap_disk_subset_key_disk(null) :- subset_key_disk(null) : er_overlap_disk(X0).
-subset_er_overlap_disk_subset_key_disk(null) :- not subset_er_overlap_disk_subset_key_disk(null).
subset_er_overlap_disk_subset_peg_disk(null) :- subset_peg_disk(null) : er_overlap_disk(X0).
-subset_er_overlap_disk_subset_peg_disk(null) :- not subset_er_overlap_disk_subset_peg_disk(null).
subset_er_shape_disk_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_disk(X0).
-subset_er_shape_disk_inter_verum_falsum(null) :- not subset_er_shape_disk_inter_verum_falsum(null).
subset_er_shape_disk_inter_verum_key(null) :- inter_verum_key(X0) : er_shape_disk(X0).
-subset_er_shape_disk_inter_verum_key(null) :- not subset_er_shape_disk_inter_verum_key(null).
subset_er_shape_disk_inter_verum_peg(null) :- inter_verum_peg(X0) : er_shape_disk(X0).
-subset_er_shape_disk_inter_verum_peg(null) :- not subset_er_shape_disk_inter_verum_peg(null).
subset_er_shape_disk_inter_verum_disk(null) :- inter_verum_disk(X0) : er_shape_disk(X0).
-subset_er_shape_disk_inter_verum_disk(null) :- not subset_er_shape_disk_inter_verum_disk(null).
subset_er_shape_disk_inter_falsum_key(null) :- inter_falsum_key(X0) : er_shape_disk(X0).
-subset_er_shape_disk_inter_falsum_key(null) :- not subset_er_shape_disk_inter_falsum_key(null).
subset_er_shape_disk_inter_falsum_peg(null) :- inter_falsum_peg(X0) : er_shape_disk(X0).
-subset_er_shape_disk_inter_falsum_peg(null) :- not subset_er_shape_disk_inter_falsum_peg(null).
subset_er_shape_disk_inter_falsum_disk(null) :- inter_falsum_disk(X0) : er_shape_disk(X0).
-subset_er_shape_disk_inter_falsum_disk(null) :- not subset_er_shape_disk_inter_falsum_disk(null).
subset_er_shape_disk_inter_key_peg(null) :- inter_key_peg(X0) : er_shape_disk(X0).
-subset_er_shape_disk_inter_key_peg(null) :- not subset_er_shape_disk_inter_key_peg(null).
subset_er_shape_disk_inter_key_disk(null) :- inter_key_disk(X0) : er_shape_disk(X0).
-subset_er_shape_disk_inter_key_disk(null) :- not subset_er_shape_disk_inter_key_disk(null).
subset_er_shape_disk_inter_peg_disk(null) :- inter_peg_disk(X0) : er_shape_disk(X0).
-subset_er_shape_disk_inter_peg_disk(null) :- not subset_er_shape_disk_inter_peg_disk(null).
subset_er_shape_disk_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_disk(X0).
-subset_er_shape_disk_subset_verum_falsum(null) :- not subset_er_shape_disk_subset_verum_falsum(null).
subset_er_shape_disk_subset_verum_key(null) :- subset_verum_key(null) : er_shape_disk(X0).
-subset_er_shape_disk_subset_verum_key(null) :- not subset_er_shape_disk_subset_verum_key(null).
subset_er_shape_disk_subset_verum_peg(null) :- subset_verum_peg(null) : er_shape_disk(X0).
-subset_er_shape_disk_subset_verum_peg(null) :- not subset_er_shape_disk_subset_verum_peg(null).
subset_er_shape_disk_subset_verum_disk(null) :- subset_verum_disk(null) : er_shape_disk(X0).
-subset_er_shape_disk_subset_verum_disk(null) :- not subset_er_shape_disk_subset_verum_disk(null).
subset_er_shape_disk_subset_falsum_key(null) :- subset_falsum_key(null) : er_shape_disk(X0).
-subset_er_shape_disk_subset_falsum_key(null) :- not subset_er_shape_disk_subset_falsum_key(null).
subset_er_shape_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : er_shape_disk(X0).
-subset_er_shape_disk_subset_falsum_peg(null) :- not subset_er_shape_disk_subset_falsum_peg(null).
subset_er_shape_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : er_shape_disk(X0).
-subset_er_shape_disk_subset_falsum_disk(null) :- not subset_er_shape_disk_subset_falsum_disk(null).
subset_er_shape_disk_subset_key_peg(null) :- subset_key_peg(null) : er_shape_disk(X0).
-subset_er_shape_disk_subset_key_peg(null) :- not subset_er_shape_disk_subset_key_peg(null).
subset_er_shape_disk_subset_key_disk(null) :- subset_key_disk(null) : er_shape_disk(X0).
-subset_er_shape_disk_subset_key_disk(null) :- not subset_er_shape_disk_subset_key_disk(null).
subset_er_shape_disk_subset_peg_disk(null) :- subset_peg_disk(null) : er_shape_disk(X0).
-subset_er_shape_disk_subset_peg_disk(null) :- not subset_er_shape_disk_subset_peg_disk(null).
subset_inter_verum_falsum_inter_verum_key(null) :- inter_verum_key(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_verum_key(null) :- not subset_inter_verum_falsum_inter_verum_key(null).
subset_inter_verum_falsum_inter_verum_peg(null) :- inter_verum_peg(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_verum_peg(null) :- not subset_inter_verum_falsum_inter_verum_peg(null).
subset_inter_verum_falsum_inter_verum_disk(null) :- inter_verum_disk(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_verum_disk(null) :- not subset_inter_verum_falsum_inter_verum_disk(null).
subset_inter_verum_falsum_inter_falsum_key(null) :- inter_falsum_key(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_falsum_key(null) :- not subset_inter_verum_falsum_inter_falsum_key(null).
subset_inter_verum_falsum_inter_falsum_peg(null) :- inter_falsum_peg(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_falsum_peg(null) :- not subset_inter_verum_falsum_inter_falsum_peg(null).
subset_inter_verum_falsum_inter_falsum_disk(null) :- inter_falsum_disk(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_falsum_disk(null) :- not subset_inter_verum_falsum_inter_falsum_disk(null).
subset_inter_verum_falsum_inter_key_peg(null) :- inter_key_peg(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_key_peg(null) :- not subset_inter_verum_falsum_inter_key_peg(null).
subset_inter_verum_falsum_inter_key_disk(null) :- inter_key_disk(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_key_disk(null) :- not subset_inter_verum_falsum_inter_key_disk(null).
subset_inter_verum_falsum_inter_peg_disk(null) :- inter_peg_disk(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_peg_disk(null) :- not subset_inter_verum_falsum_inter_peg_disk(null).
subset_inter_verum_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_falsum(null) :- not subset_inter_verum_falsum_subset_verum_falsum(null).
subset_inter_verum_falsum_subset_verum_key(null) :- subset_verum_key(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_key(null) :- not subset_inter_verum_falsum_subset_verum_key(null).
subset_inter_verum_falsum_subset_verum_peg(null) :- subset_verum_peg(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_peg(null) :- not subset_inter_verum_falsum_subset_verum_peg(null).
subset_inter_verum_falsum_subset_verum_disk(null) :- subset_verum_disk(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_disk(null) :- not subset_inter_verum_falsum_subset_verum_disk(null).
subset_inter_verum_falsum_subset_falsum_key(null) :- subset_falsum_key(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_falsum_key(null) :- not subset_inter_verum_falsum_subset_falsum_key(null).
subset_inter_verum_falsum_subset_falsum_peg(null) :- subset_falsum_peg(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_falsum_peg(null) :- not subset_inter_verum_falsum_subset_falsum_peg(null).
subset_inter_verum_falsum_subset_falsum_disk(null) :- subset_falsum_disk(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_falsum_disk(null) :- not subset_inter_verum_falsum_subset_falsum_disk(null).
subset_inter_verum_falsum_subset_key_peg(null) :- subset_key_peg(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_key_peg(null) :- not subset_inter_verum_falsum_subset_key_peg(null).
subset_inter_verum_falsum_subset_key_disk(null) :- subset_key_disk(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_key_disk(null) :- not subset_inter_verum_falsum_subset_key_disk(null).
subset_inter_verum_falsum_subset_peg_disk(null) :- subset_peg_disk(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_peg_disk(null) :- not subset_inter_verum_falsum_subset_peg_disk(null).
subset_inter_verum_key_inter_verum_peg(null) :- inter_verum_peg(X0) : inter_verum_key(X0).
-subset_inter_verum_key_inter_verum_peg(null) :- not subset_inter_verum_key_inter_verum_peg(null).
subset_inter_verum_key_inter_verum_disk(null) :- inter_verum_disk(X0) : inter_verum_key(X0).
-subset_inter_verum_key_inter_verum_disk(null) :- not subset_inter_verum_key_inter_verum_disk(null).
subset_inter_verum_key_inter_falsum_key(null) :- inter_falsum_key(X0) : inter_verum_key(X0).
-subset_inter_verum_key_inter_falsum_key(null) :- not subset_inter_verum_key_inter_falsum_key(null).
subset_inter_verum_key_inter_falsum_peg(null) :- inter_falsum_peg(X0) : inter_verum_key(X0).
-subset_inter_verum_key_inter_falsum_peg(null) :- not subset_inter_verum_key_inter_falsum_peg(null).
subset_inter_verum_key_inter_falsum_disk(null) :- inter_falsum_disk(X0) : inter_verum_key(X0).
-subset_inter_verum_key_inter_falsum_disk(null) :- not subset_inter_verum_key_inter_falsum_disk(null).
subset_inter_verum_key_inter_key_peg(null) :- inter_key_peg(X0) : inter_verum_key(X0).
-subset_inter_verum_key_inter_key_peg(null) :- not subset_inter_verum_key_inter_key_peg(null).
subset_inter_verum_key_inter_key_disk(null) :- inter_key_disk(X0) : inter_verum_key(X0).
-subset_inter_verum_key_inter_key_disk(null) :- not subset_inter_verum_key_inter_key_disk(null).
subset_inter_verum_key_inter_peg_disk(null) :- inter_peg_disk(X0) : inter_verum_key(X0).
-subset_inter_verum_key_inter_peg_disk(null) :- not subset_inter_verum_key_inter_peg_disk(null).
subset_inter_verum_key_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_key(X0).
-subset_inter_verum_key_subset_verum_falsum(null) :- not subset_inter_verum_key_subset_verum_falsum(null).
subset_inter_verum_key_subset_verum_key(null) :- subset_verum_key(null) : inter_verum_key(X0).
-subset_inter_verum_key_subset_verum_key(null) :- not subset_inter_verum_key_subset_verum_key(null).
subset_inter_verum_key_subset_verum_peg(null) :- subset_verum_peg(null) : inter_verum_key(X0).
-subset_inter_verum_key_subset_verum_peg(null) :- not subset_inter_verum_key_subset_verum_peg(null).
subset_inter_verum_key_subset_verum_disk(null) :- subset_verum_disk(null) : inter_verum_key(X0).
-subset_inter_verum_key_subset_verum_disk(null) :- not subset_inter_verum_key_subset_verum_disk(null).
subset_inter_verum_key_subset_falsum_key(null) :- subset_falsum_key(null) : inter_verum_key(X0).
-subset_inter_verum_key_subset_falsum_key(null) :- not subset_inter_verum_key_subset_falsum_key(null).
subset_inter_verum_key_subset_falsum_peg(null) :- subset_falsum_peg(null) : inter_verum_key(X0).
-subset_inter_verum_key_subset_falsum_peg(null) :- not subset_inter_verum_key_subset_falsum_peg(null).
subset_inter_verum_key_subset_falsum_disk(null) :- subset_falsum_disk(null) : inter_verum_key(X0).
-subset_inter_verum_key_subset_falsum_disk(null) :- not subset_inter_verum_key_subset_falsum_disk(null).
subset_inter_verum_key_subset_key_peg(null) :- subset_key_peg(null) : inter_verum_key(X0).
-subset_inter_verum_key_subset_key_peg(null) :- not subset_inter_verum_key_subset_key_peg(null).
subset_inter_verum_key_subset_key_disk(null) :- subset_key_disk(null) : inter_verum_key(X0).
-subset_inter_verum_key_subset_key_disk(null) :- not subset_inter_verum_key_subset_key_disk(null).
subset_inter_verum_key_subset_peg_disk(null) :- subset_peg_disk(null) : inter_verum_key(X0).
-subset_inter_verum_key_subset_peg_disk(null) :- not subset_inter_verum_key_subset_peg_disk(null).
subset_inter_verum_peg_inter_verum_disk(null) :- inter_verum_disk(X0) : inter_verum_peg(X0).
-subset_inter_verum_peg_inter_verum_disk(null) :- not subset_inter_verum_peg_inter_verum_disk(null).
subset_inter_verum_peg_inter_falsum_key(null) :- inter_falsum_key(X0) : inter_verum_peg(X0).
-subset_inter_verum_peg_inter_falsum_key(null) :- not subset_inter_verum_peg_inter_falsum_key(null).
subset_inter_verum_peg_inter_falsum_peg(null) :- inter_falsum_peg(X0) : inter_verum_peg(X0).
-subset_inter_verum_peg_inter_falsum_peg(null) :- not subset_inter_verum_peg_inter_falsum_peg(null).
subset_inter_verum_peg_inter_falsum_disk(null) :- inter_falsum_disk(X0) : inter_verum_peg(X0).
-subset_inter_verum_peg_inter_falsum_disk(null) :- not subset_inter_verum_peg_inter_falsum_disk(null).
subset_inter_verum_peg_inter_key_peg(null) :- inter_key_peg(X0) : inter_verum_peg(X0).
-subset_inter_verum_peg_inter_key_peg(null) :- not subset_inter_verum_peg_inter_key_peg(null).
subset_inter_verum_peg_inter_key_disk(null) :- inter_key_disk(X0) : inter_verum_peg(X0).
-subset_inter_verum_peg_inter_key_disk(null) :- not subset_inter_verum_peg_inter_key_disk(null).
subset_inter_verum_peg_inter_peg_disk(null) :- inter_peg_disk(X0) : inter_verum_peg(X0).
-subset_inter_verum_peg_inter_peg_disk(null) :- not subset_inter_verum_peg_inter_peg_disk(null).
subset_inter_verum_peg_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_peg(X0).
-subset_inter_verum_peg_subset_verum_falsum(null) :- not subset_inter_verum_peg_subset_verum_falsum(null).
subset_inter_verum_peg_subset_verum_key(null) :- subset_verum_key(null) : inter_verum_peg(X0).
-subset_inter_verum_peg_subset_verum_key(null) :- not subset_inter_verum_peg_subset_verum_key(null).
subset_inter_verum_peg_subset_verum_peg(null) :- subset_verum_peg(null) : inter_verum_peg(X0).
-subset_inter_verum_peg_subset_verum_peg(null) :- not subset_inter_verum_peg_subset_verum_peg(null).
subset_inter_verum_peg_subset_verum_disk(null) :- subset_verum_disk(null) : inter_verum_peg(X0).
-subset_inter_verum_peg_subset_verum_disk(null) :- not subset_inter_verum_peg_subset_verum_disk(null).
subset_inter_verum_peg_subset_falsum_key(null) :- subset_falsum_key(null) : inter_verum_peg(X0).
-subset_inter_verum_peg_subset_falsum_key(null) :- not subset_inter_verum_peg_subset_falsum_key(null).
subset_inter_verum_peg_subset_falsum_peg(null) :- subset_falsum_peg(null) : inter_verum_peg(X0).
-subset_inter_verum_peg_subset_falsum_peg(null) :- not subset_inter_verum_peg_subset_falsum_peg(null).
subset_inter_verum_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : inter_verum_peg(X0).
-subset_inter_verum_peg_subset_falsum_disk(null) :- not subset_inter_verum_peg_subset_falsum_disk(null).
subset_inter_verum_peg_subset_key_peg(null) :- subset_key_peg(null) : inter_verum_peg(X0).
-subset_inter_verum_peg_subset_key_peg(null) :- not subset_inter_verum_peg_subset_key_peg(null).
subset_inter_verum_peg_subset_key_disk(null) :- subset_key_disk(null) : inter_verum_peg(X0).
-subset_inter_verum_peg_subset_key_disk(null) :- not subset_inter_verum_peg_subset_key_disk(null).
subset_inter_verum_peg_subset_peg_disk(null) :- subset_peg_disk(null) : inter_verum_peg(X0).
-subset_inter_verum_peg_subset_peg_disk(null) :- not subset_inter_verum_peg_subset_peg_disk(null).
subset_inter_verum_disk_inter_falsum_key(null) :- inter_falsum_key(X0) : inter_verum_disk(X0).
-subset_inter_verum_disk_inter_falsum_key(null) :- not subset_inter_verum_disk_inter_falsum_key(null).
subset_inter_verum_disk_inter_falsum_peg(null) :- inter_falsum_peg(X0) : inter_verum_disk(X0).
-subset_inter_verum_disk_inter_falsum_peg(null) :- not subset_inter_verum_disk_inter_falsum_peg(null).
subset_inter_verum_disk_inter_falsum_disk(null) :- inter_falsum_disk(X0) : inter_verum_disk(X0).
-subset_inter_verum_disk_inter_falsum_disk(null) :- not subset_inter_verum_disk_inter_falsum_disk(null).
subset_inter_verum_disk_inter_key_peg(null) :- inter_key_peg(X0) : inter_verum_disk(X0).
-subset_inter_verum_disk_inter_key_peg(null) :- not subset_inter_verum_disk_inter_key_peg(null).
subset_inter_verum_disk_inter_key_disk(null) :- inter_key_disk(X0) : inter_verum_disk(X0).
-subset_inter_verum_disk_inter_key_disk(null) :- not subset_inter_verum_disk_inter_key_disk(null).
subset_inter_verum_disk_inter_peg_disk(null) :- inter_peg_disk(X0) : inter_verum_disk(X0).
-subset_inter_verum_disk_inter_peg_disk(null) :- not subset_inter_verum_disk_inter_peg_disk(null).
subset_inter_verum_disk_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_disk(X0).
-subset_inter_verum_disk_subset_verum_falsum(null) :- not subset_inter_verum_disk_subset_verum_falsum(null).
subset_inter_verum_disk_subset_verum_key(null) :- subset_verum_key(null) : inter_verum_disk(X0).
-subset_inter_verum_disk_subset_verum_key(null) :- not subset_inter_verum_disk_subset_verum_key(null).
subset_inter_verum_disk_subset_verum_peg(null) :- subset_verum_peg(null) : inter_verum_disk(X0).
-subset_inter_verum_disk_subset_verum_peg(null) :- not subset_inter_verum_disk_subset_verum_peg(null).
subset_inter_verum_disk_subset_verum_disk(null) :- subset_verum_disk(null) : inter_verum_disk(X0).
-subset_inter_verum_disk_subset_verum_disk(null) :- not subset_inter_verum_disk_subset_verum_disk(null).
subset_inter_verum_disk_subset_falsum_key(null) :- subset_falsum_key(null) : inter_verum_disk(X0).
-subset_inter_verum_disk_subset_falsum_key(null) :- not subset_inter_verum_disk_subset_falsum_key(null).
subset_inter_verum_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : inter_verum_disk(X0).
-subset_inter_verum_disk_subset_falsum_peg(null) :- not subset_inter_verum_disk_subset_falsum_peg(null).
subset_inter_verum_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : inter_verum_disk(X0).
-subset_inter_verum_disk_subset_falsum_disk(null) :- not subset_inter_verum_disk_subset_falsum_disk(null).
subset_inter_verum_disk_subset_key_peg(null) :- subset_key_peg(null) : inter_verum_disk(X0).
-subset_inter_verum_disk_subset_key_peg(null) :- not subset_inter_verum_disk_subset_key_peg(null).
subset_inter_verum_disk_subset_key_disk(null) :- subset_key_disk(null) : inter_verum_disk(X0).
-subset_inter_verum_disk_subset_key_disk(null) :- not subset_inter_verum_disk_subset_key_disk(null).
subset_inter_verum_disk_subset_peg_disk(null) :- subset_peg_disk(null) : inter_verum_disk(X0).
-subset_inter_verum_disk_subset_peg_disk(null) :- not subset_inter_verum_disk_subset_peg_disk(null).
subset_inter_falsum_key_inter_falsum_peg(null) :- inter_falsum_peg(X0) : inter_falsum_key(X0).
-subset_inter_falsum_key_inter_falsum_peg(null) :- not subset_inter_falsum_key_inter_falsum_peg(null).
subset_inter_falsum_key_inter_falsum_disk(null) :- inter_falsum_disk(X0) : inter_falsum_key(X0).
-subset_inter_falsum_key_inter_falsum_disk(null) :- not subset_inter_falsum_key_inter_falsum_disk(null).
subset_inter_falsum_key_inter_key_peg(null) :- inter_key_peg(X0) : inter_falsum_key(X0).
-subset_inter_falsum_key_inter_key_peg(null) :- not subset_inter_falsum_key_inter_key_peg(null).
subset_inter_falsum_key_inter_key_disk(null) :- inter_key_disk(X0) : inter_falsum_key(X0).
-subset_inter_falsum_key_inter_key_disk(null) :- not subset_inter_falsum_key_inter_key_disk(null).
subset_inter_falsum_key_inter_peg_disk(null) :- inter_peg_disk(X0) : inter_falsum_key(X0).
-subset_inter_falsum_key_inter_peg_disk(null) :- not subset_inter_falsum_key_inter_peg_disk(null).
subset_inter_falsum_key_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_falsum_key(X0).
-subset_inter_falsum_key_subset_verum_falsum(null) :- not subset_inter_falsum_key_subset_verum_falsum(null).
subset_inter_falsum_key_subset_verum_key(null) :- subset_verum_key(null) : inter_falsum_key(X0).
-subset_inter_falsum_key_subset_verum_key(null) :- not subset_inter_falsum_key_subset_verum_key(null).
subset_inter_falsum_key_subset_verum_peg(null) :- subset_verum_peg(null) : inter_falsum_key(X0).
-subset_inter_falsum_key_subset_verum_peg(null) :- not subset_inter_falsum_key_subset_verum_peg(null).
subset_inter_falsum_key_subset_verum_disk(null) :- subset_verum_disk(null) : inter_falsum_key(X0).
-subset_inter_falsum_key_subset_verum_disk(null) :- not subset_inter_falsum_key_subset_verum_disk(null).
subset_inter_falsum_key_subset_falsum_key(null) :- subset_falsum_key(null) : inter_falsum_key(X0).
-subset_inter_falsum_key_subset_falsum_key(null) :- not subset_inter_falsum_key_subset_falsum_key(null).
subset_inter_falsum_key_subset_falsum_peg(null) :- subset_falsum_peg(null) : inter_falsum_key(X0).
-subset_inter_falsum_key_subset_falsum_peg(null) :- not subset_inter_falsum_key_subset_falsum_peg(null).
subset_inter_falsum_key_subset_falsum_disk(null) :- subset_falsum_disk(null) : inter_falsum_key(X0).
-subset_inter_falsum_key_subset_falsum_disk(null) :- not subset_inter_falsum_key_subset_falsum_disk(null).
subset_inter_falsum_key_subset_key_peg(null) :- subset_key_peg(null) : inter_falsum_key(X0).
-subset_inter_falsum_key_subset_key_peg(null) :- not subset_inter_falsum_key_subset_key_peg(null).
subset_inter_falsum_key_subset_key_disk(null) :- subset_key_disk(null) : inter_falsum_key(X0).
-subset_inter_falsum_key_subset_key_disk(null) :- not subset_inter_falsum_key_subset_key_disk(null).
subset_inter_falsum_key_subset_peg_disk(null) :- subset_peg_disk(null) : inter_falsum_key(X0).
-subset_inter_falsum_key_subset_peg_disk(null) :- not subset_inter_falsum_key_subset_peg_disk(null).
subset_inter_falsum_peg_inter_falsum_disk(null) :- inter_falsum_disk(X0) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_inter_falsum_disk(null) :- not subset_inter_falsum_peg_inter_falsum_disk(null).
subset_inter_falsum_peg_inter_key_peg(null) :- inter_key_peg(X0) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_inter_key_peg(null) :- not subset_inter_falsum_peg_inter_key_peg(null).
subset_inter_falsum_peg_inter_key_disk(null) :- inter_key_disk(X0) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_inter_key_disk(null) :- not subset_inter_falsum_peg_inter_key_disk(null).
subset_inter_falsum_peg_inter_peg_disk(null) :- inter_peg_disk(X0) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_inter_peg_disk(null) :- not subset_inter_falsum_peg_inter_peg_disk(null).
subset_inter_falsum_peg_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_subset_verum_falsum(null) :- not subset_inter_falsum_peg_subset_verum_falsum(null).
subset_inter_falsum_peg_subset_verum_key(null) :- subset_verum_key(null) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_subset_verum_key(null) :- not subset_inter_falsum_peg_subset_verum_key(null).
subset_inter_falsum_peg_subset_verum_peg(null) :- subset_verum_peg(null) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_subset_verum_peg(null) :- not subset_inter_falsum_peg_subset_verum_peg(null).
subset_inter_falsum_peg_subset_verum_disk(null) :- subset_verum_disk(null) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_subset_verum_disk(null) :- not subset_inter_falsum_peg_subset_verum_disk(null).
subset_inter_falsum_peg_subset_falsum_key(null) :- subset_falsum_key(null) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_subset_falsum_key(null) :- not subset_inter_falsum_peg_subset_falsum_key(null).
subset_inter_falsum_peg_subset_falsum_peg(null) :- subset_falsum_peg(null) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_subset_falsum_peg(null) :- not subset_inter_falsum_peg_subset_falsum_peg(null).
subset_inter_falsum_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_subset_falsum_disk(null) :- not subset_inter_falsum_peg_subset_falsum_disk(null).
subset_inter_falsum_peg_subset_key_peg(null) :- subset_key_peg(null) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_subset_key_peg(null) :- not subset_inter_falsum_peg_subset_key_peg(null).
subset_inter_falsum_peg_subset_key_disk(null) :- subset_key_disk(null) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_subset_key_disk(null) :- not subset_inter_falsum_peg_subset_key_disk(null).
subset_inter_falsum_peg_subset_peg_disk(null) :- subset_peg_disk(null) : inter_falsum_peg(X0).
-subset_inter_falsum_peg_subset_peg_disk(null) :- not subset_inter_falsum_peg_subset_peg_disk(null).
subset_inter_falsum_disk_inter_key_peg(null) :- inter_key_peg(X0) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_inter_key_peg(null) :- not subset_inter_falsum_disk_inter_key_peg(null).
subset_inter_falsum_disk_inter_key_disk(null) :- inter_key_disk(X0) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_inter_key_disk(null) :- not subset_inter_falsum_disk_inter_key_disk(null).
subset_inter_falsum_disk_inter_peg_disk(null) :- inter_peg_disk(X0) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_inter_peg_disk(null) :- not subset_inter_falsum_disk_inter_peg_disk(null).
subset_inter_falsum_disk_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_subset_verum_falsum(null) :- not subset_inter_falsum_disk_subset_verum_falsum(null).
subset_inter_falsum_disk_subset_verum_key(null) :- subset_verum_key(null) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_subset_verum_key(null) :- not subset_inter_falsum_disk_subset_verum_key(null).
subset_inter_falsum_disk_subset_verum_peg(null) :- subset_verum_peg(null) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_subset_verum_peg(null) :- not subset_inter_falsum_disk_subset_verum_peg(null).
subset_inter_falsum_disk_subset_verum_disk(null) :- subset_verum_disk(null) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_subset_verum_disk(null) :- not subset_inter_falsum_disk_subset_verum_disk(null).
subset_inter_falsum_disk_subset_falsum_key(null) :- subset_falsum_key(null) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_subset_falsum_key(null) :- not subset_inter_falsum_disk_subset_falsum_key(null).
subset_inter_falsum_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_subset_falsum_peg(null) :- not subset_inter_falsum_disk_subset_falsum_peg(null).
subset_inter_falsum_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_subset_falsum_disk(null) :- not subset_inter_falsum_disk_subset_falsum_disk(null).
subset_inter_falsum_disk_subset_key_peg(null) :- subset_key_peg(null) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_subset_key_peg(null) :- not subset_inter_falsum_disk_subset_key_peg(null).
subset_inter_falsum_disk_subset_key_disk(null) :- subset_key_disk(null) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_subset_key_disk(null) :- not subset_inter_falsum_disk_subset_key_disk(null).
subset_inter_falsum_disk_subset_peg_disk(null) :- subset_peg_disk(null) : inter_falsum_disk(X0).
-subset_inter_falsum_disk_subset_peg_disk(null) :- not subset_inter_falsum_disk_subset_peg_disk(null).
subset_inter_key_peg_inter_key_disk(null) :- inter_key_disk(X0) : inter_key_peg(X0).
-subset_inter_key_peg_inter_key_disk(null) :- not subset_inter_key_peg_inter_key_disk(null).
subset_inter_key_peg_inter_peg_disk(null) :- inter_peg_disk(X0) : inter_key_peg(X0).
-subset_inter_key_peg_inter_peg_disk(null) :- not subset_inter_key_peg_inter_peg_disk(null).
subset_inter_key_peg_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_key_peg(X0).
-subset_inter_key_peg_subset_verum_falsum(null) :- not subset_inter_key_peg_subset_verum_falsum(null).
subset_inter_key_peg_subset_verum_key(null) :- subset_verum_key(null) : inter_key_peg(X0).
-subset_inter_key_peg_subset_verum_key(null) :- not subset_inter_key_peg_subset_verum_key(null).
subset_inter_key_peg_subset_verum_peg(null) :- subset_verum_peg(null) : inter_key_peg(X0).
-subset_inter_key_peg_subset_verum_peg(null) :- not subset_inter_key_peg_subset_verum_peg(null).
subset_inter_key_peg_subset_verum_disk(null) :- subset_verum_disk(null) : inter_key_peg(X0).
-subset_inter_key_peg_subset_verum_disk(null) :- not subset_inter_key_peg_subset_verum_disk(null).
subset_inter_key_peg_subset_falsum_key(null) :- subset_falsum_key(null) : inter_key_peg(X0).
-subset_inter_key_peg_subset_falsum_key(null) :- not subset_inter_key_peg_subset_falsum_key(null).
subset_inter_key_peg_subset_falsum_peg(null) :- subset_falsum_peg(null) : inter_key_peg(X0).
-subset_inter_key_peg_subset_falsum_peg(null) :- not subset_inter_key_peg_subset_falsum_peg(null).
subset_inter_key_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : inter_key_peg(X0).
-subset_inter_key_peg_subset_falsum_disk(null) :- not subset_inter_key_peg_subset_falsum_disk(null).
subset_inter_key_peg_subset_key_peg(null) :- subset_key_peg(null) : inter_key_peg(X0).
-subset_inter_key_peg_subset_key_peg(null) :- not subset_inter_key_peg_subset_key_peg(null).
subset_inter_key_peg_subset_key_disk(null) :- subset_key_disk(null) : inter_key_peg(X0).
-subset_inter_key_peg_subset_key_disk(null) :- not subset_inter_key_peg_subset_key_disk(null).
subset_inter_key_peg_subset_peg_disk(null) :- subset_peg_disk(null) : inter_key_peg(X0).
-subset_inter_key_peg_subset_peg_disk(null) :- not subset_inter_key_peg_subset_peg_disk(null).
subset_inter_key_disk_inter_peg_disk(null) :- inter_peg_disk(X0) : inter_key_disk(X0).
-subset_inter_key_disk_inter_peg_disk(null) :- not subset_inter_key_disk_inter_peg_disk(null).
subset_inter_key_disk_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_key_disk(X0).
-subset_inter_key_disk_subset_verum_falsum(null) :- not subset_inter_key_disk_subset_verum_falsum(null).
subset_inter_key_disk_subset_verum_key(null) :- subset_verum_key(null) : inter_key_disk(X0).
-subset_inter_key_disk_subset_verum_key(null) :- not subset_inter_key_disk_subset_verum_key(null).
subset_inter_key_disk_subset_verum_peg(null) :- subset_verum_peg(null) : inter_key_disk(X0).
-subset_inter_key_disk_subset_verum_peg(null) :- not subset_inter_key_disk_subset_verum_peg(null).
subset_inter_key_disk_subset_verum_disk(null) :- subset_verum_disk(null) : inter_key_disk(X0).
-subset_inter_key_disk_subset_verum_disk(null) :- not subset_inter_key_disk_subset_verum_disk(null).
subset_inter_key_disk_subset_falsum_key(null) :- subset_falsum_key(null) : inter_key_disk(X0).
-subset_inter_key_disk_subset_falsum_key(null) :- not subset_inter_key_disk_subset_falsum_key(null).
subset_inter_key_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : inter_key_disk(X0).
-subset_inter_key_disk_subset_falsum_peg(null) :- not subset_inter_key_disk_subset_falsum_peg(null).
subset_inter_key_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : inter_key_disk(X0).
-subset_inter_key_disk_subset_falsum_disk(null) :- not subset_inter_key_disk_subset_falsum_disk(null).
subset_inter_key_disk_subset_key_peg(null) :- subset_key_peg(null) : inter_key_disk(X0).
-subset_inter_key_disk_subset_key_peg(null) :- not subset_inter_key_disk_subset_key_peg(null).
subset_inter_key_disk_subset_key_disk(null) :- subset_key_disk(null) : inter_key_disk(X0).
-subset_inter_key_disk_subset_key_disk(null) :- not subset_inter_key_disk_subset_key_disk(null).
subset_inter_key_disk_subset_peg_disk(null) :- subset_peg_disk(null) : inter_key_disk(X0).
-subset_inter_key_disk_subset_peg_disk(null) :- not subset_inter_key_disk_subset_peg_disk(null).
subset_inter_peg_disk_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_peg_disk(X0).
-subset_inter_peg_disk_subset_verum_falsum(null) :- not subset_inter_peg_disk_subset_verum_falsum(null).
subset_inter_peg_disk_subset_verum_key(null) :- subset_verum_key(null) : inter_peg_disk(X0).
-subset_inter_peg_disk_subset_verum_key(null) :- not subset_inter_peg_disk_subset_verum_key(null).
subset_inter_peg_disk_subset_verum_peg(null) :- subset_verum_peg(null) : inter_peg_disk(X0).
-subset_inter_peg_disk_subset_verum_peg(null) :- not subset_inter_peg_disk_subset_verum_peg(null).
subset_inter_peg_disk_subset_verum_disk(null) :- subset_verum_disk(null) : inter_peg_disk(X0).
-subset_inter_peg_disk_subset_verum_disk(null) :- not subset_inter_peg_disk_subset_verum_disk(null).
subset_inter_peg_disk_subset_falsum_key(null) :- subset_falsum_key(null) : inter_peg_disk(X0).
-subset_inter_peg_disk_subset_falsum_key(null) :- not subset_inter_peg_disk_subset_falsum_key(null).
subset_inter_peg_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : inter_peg_disk(X0).
-subset_inter_peg_disk_subset_falsum_peg(null) :- not subset_inter_peg_disk_subset_falsum_peg(null).
subset_inter_peg_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : inter_peg_disk(X0).
-subset_inter_peg_disk_subset_falsum_disk(null) :- not subset_inter_peg_disk_subset_falsum_disk(null).
subset_inter_peg_disk_subset_key_peg(null) :- subset_key_peg(null) : inter_peg_disk(X0).
-subset_inter_peg_disk_subset_key_peg(null) :- not subset_inter_peg_disk_subset_key_peg(null).
subset_inter_peg_disk_subset_key_disk(null) :- subset_key_disk(null) : inter_peg_disk(X0).
-subset_inter_peg_disk_subset_key_disk(null) :- not subset_inter_peg_disk_subset_key_disk(null).
subset_inter_peg_disk_subset_peg_disk(null) :- subset_peg_disk(null) : inter_peg_disk(X0).
-subset_inter_peg_disk_subset_peg_disk(null) :- not subset_inter_peg_disk_subset_peg_disk(null).
subset_subset_verum_falsum_subset_verum_key(null) :- subset_verum_key(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_verum_key(null) :- not subset_subset_verum_falsum_subset_verum_key(null).
subset_subset_verum_falsum_subset_verum_peg(null) :- subset_verum_peg(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_verum_peg(null) :- not subset_subset_verum_falsum_subset_verum_peg(null).
subset_subset_verum_falsum_subset_verum_disk(null) :- subset_verum_disk(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_verum_disk(null) :- not subset_subset_verum_falsum_subset_verum_disk(null).
subset_subset_verum_falsum_subset_falsum_key(null) :- subset_falsum_key(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_falsum_key(null) :- not subset_subset_verum_falsum_subset_falsum_key(null).
subset_subset_verum_falsum_subset_falsum_peg(null) :- subset_falsum_peg(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_falsum_peg(null) :- not subset_subset_verum_falsum_subset_falsum_peg(null).
subset_subset_verum_falsum_subset_falsum_disk(null) :- subset_falsum_disk(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_falsum_disk(null) :- not subset_subset_verum_falsum_subset_falsum_disk(null).
subset_subset_verum_falsum_subset_key_peg(null) :- subset_key_peg(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_key_peg(null) :- not subset_subset_verum_falsum_subset_key_peg(null).
subset_subset_verum_falsum_subset_key_disk(null) :- subset_key_disk(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_key_disk(null) :- not subset_subset_verum_falsum_subset_key_disk(null).
subset_subset_verum_falsum_subset_peg_disk(null) :- subset_peg_disk(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_peg_disk(null) :- not subset_subset_verum_falsum_subset_peg_disk(null).
subset_subset_verum_key_subset_verum_peg(null) :- subset_verum_peg(null) : subset_verum_key(null).
-subset_subset_verum_key_subset_verum_peg(null) :- not subset_subset_verum_key_subset_verum_peg(null).
subset_subset_verum_key_subset_verum_disk(null) :- subset_verum_disk(null) : subset_verum_key(null).
-subset_subset_verum_key_subset_verum_disk(null) :- not subset_subset_verum_key_subset_verum_disk(null).
subset_subset_verum_key_subset_falsum_key(null) :- subset_falsum_key(null) : subset_verum_key(null).
-subset_subset_verum_key_subset_falsum_key(null) :- not subset_subset_verum_key_subset_falsum_key(null).
subset_subset_verum_key_subset_falsum_peg(null) :- subset_falsum_peg(null) : subset_verum_key(null).
-subset_subset_verum_key_subset_falsum_peg(null) :- not subset_subset_verum_key_subset_falsum_peg(null).
subset_subset_verum_key_subset_falsum_disk(null) :- subset_falsum_disk(null) : subset_verum_key(null).
-subset_subset_verum_key_subset_falsum_disk(null) :- not subset_subset_verum_key_subset_falsum_disk(null).
subset_subset_verum_key_subset_key_peg(null) :- subset_key_peg(null) : subset_verum_key(null).
-subset_subset_verum_key_subset_key_peg(null) :- not subset_subset_verum_key_subset_key_peg(null).
subset_subset_verum_key_subset_key_disk(null) :- subset_key_disk(null) : subset_verum_key(null).
-subset_subset_verum_key_subset_key_disk(null) :- not subset_subset_verum_key_subset_key_disk(null).
subset_subset_verum_key_subset_peg_disk(null) :- subset_peg_disk(null) : subset_verum_key(null).
-subset_subset_verum_key_subset_peg_disk(null) :- not subset_subset_verum_key_subset_peg_disk(null).
subset_subset_verum_peg_subset_verum_disk(null) :- subset_verum_disk(null) : subset_verum_peg(null).
-subset_subset_verum_peg_subset_verum_disk(null) :- not subset_subset_verum_peg_subset_verum_disk(null).
subset_subset_verum_peg_subset_falsum_key(null) :- subset_falsum_key(null) : subset_verum_peg(null).
-subset_subset_verum_peg_subset_falsum_key(null) :- not subset_subset_verum_peg_subset_falsum_key(null).
subset_subset_verum_peg_subset_falsum_peg(null) :- subset_falsum_peg(null) : subset_verum_peg(null).
-subset_subset_verum_peg_subset_falsum_peg(null) :- not subset_subset_verum_peg_subset_falsum_peg(null).
subset_subset_verum_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : subset_verum_peg(null).
-subset_subset_verum_peg_subset_falsum_disk(null) :- not subset_subset_verum_peg_subset_falsum_disk(null).
subset_subset_verum_peg_subset_key_peg(null) :- subset_key_peg(null) : subset_verum_peg(null).
-subset_subset_verum_peg_subset_key_peg(null) :- not subset_subset_verum_peg_subset_key_peg(null).
subset_subset_verum_peg_subset_key_disk(null) :- subset_key_disk(null) : subset_verum_peg(null).
-subset_subset_verum_peg_subset_key_disk(null) :- not subset_subset_verum_peg_subset_key_disk(null).
subset_subset_verum_peg_subset_peg_disk(null) :- subset_peg_disk(null) : subset_verum_peg(null).
-subset_subset_verum_peg_subset_peg_disk(null) :- not subset_subset_verum_peg_subset_peg_disk(null).
subset_subset_verum_disk_subset_falsum_key(null) :- subset_falsum_key(null) : subset_verum_disk(null).
-subset_subset_verum_disk_subset_falsum_key(null) :- not subset_subset_verum_disk_subset_falsum_key(null).
subset_subset_verum_disk_subset_falsum_peg(null) :- subset_falsum_peg(null) : subset_verum_disk(null).
-subset_subset_verum_disk_subset_falsum_peg(null) :- not subset_subset_verum_disk_subset_falsum_peg(null).
subset_subset_verum_disk_subset_falsum_disk(null) :- subset_falsum_disk(null) : subset_verum_disk(null).
-subset_subset_verum_disk_subset_falsum_disk(null) :- not subset_subset_verum_disk_subset_falsum_disk(null).
subset_subset_verum_disk_subset_key_peg(null) :- subset_key_peg(null) : subset_verum_disk(null).
-subset_subset_verum_disk_subset_key_peg(null) :- not subset_subset_verum_disk_subset_key_peg(null).
subset_subset_verum_disk_subset_key_disk(null) :- subset_key_disk(null) : subset_verum_disk(null).
-subset_subset_verum_disk_subset_key_disk(null) :- not subset_subset_verum_disk_subset_key_disk(null).
subset_subset_verum_disk_subset_peg_disk(null) :- subset_peg_disk(null) : subset_verum_disk(null).
-subset_subset_verum_disk_subset_peg_disk(null) :- not subset_subset_verum_disk_subset_peg_disk(null).
subset_subset_falsum_key_subset_falsum_peg(null) :- subset_falsum_peg(null) : subset_falsum_key(null).
-subset_subset_falsum_key_subset_falsum_peg(null) :- not subset_subset_falsum_key_subset_falsum_peg(null).
subset_subset_falsum_key_subset_falsum_disk(null) :- subset_falsum_disk(null) : subset_falsum_key(null).
-subset_subset_falsum_key_subset_falsum_disk(null) :- not subset_subset_falsum_key_subset_falsum_disk(null).
subset_subset_falsum_key_subset_key_peg(null) :- subset_key_peg(null) : subset_falsum_key(null).
-subset_subset_falsum_key_subset_key_peg(null) :- not subset_subset_falsum_key_subset_key_peg(null).
subset_subset_falsum_key_subset_key_disk(null) :- subset_key_disk(null) : subset_falsum_key(null).
-subset_subset_falsum_key_subset_key_disk(null) :- not subset_subset_falsum_key_subset_key_disk(null).
subset_subset_falsum_key_subset_peg_disk(null) :- subset_peg_disk(null) : subset_falsum_key(null).
-subset_subset_falsum_key_subset_peg_disk(null) :- not subset_subset_falsum_key_subset_peg_disk(null).
subset_subset_falsum_peg_subset_falsum_disk(null) :- subset_falsum_disk(null) : subset_falsum_peg(null).
-subset_subset_falsum_peg_subset_falsum_disk(null) :- not subset_subset_falsum_peg_subset_falsum_disk(null).
subset_subset_falsum_peg_subset_key_peg(null) :- subset_key_peg(null) : subset_falsum_peg(null).
-subset_subset_falsum_peg_subset_key_peg(null) :- not subset_subset_falsum_peg_subset_key_peg(null).
subset_subset_falsum_peg_subset_key_disk(null) :- subset_key_disk(null) : subset_falsum_peg(null).
-subset_subset_falsum_peg_subset_key_disk(null) :- not subset_subset_falsum_peg_subset_key_disk(null).
subset_subset_falsum_peg_subset_peg_disk(null) :- subset_peg_disk(null) : subset_falsum_peg(null).
-subset_subset_falsum_peg_subset_peg_disk(null) :- not subset_subset_falsum_peg_subset_peg_disk(null).
subset_subset_falsum_disk_subset_key_peg(null) :- subset_key_peg(null) : subset_falsum_disk(null).
-subset_subset_falsum_disk_subset_key_peg(null) :- not subset_subset_falsum_disk_subset_key_peg(null).
subset_subset_falsum_disk_subset_key_disk(null) :- subset_key_disk(null) : subset_falsum_disk(null).
-subset_subset_falsum_disk_subset_key_disk(null) :- not subset_subset_falsum_disk_subset_key_disk(null).
subset_subset_falsum_disk_subset_peg_disk(null) :- subset_peg_disk(null) : subset_falsum_disk(null).
-subset_subset_falsum_disk_subset_peg_disk(null) :- not subset_subset_falsum_disk_subset_peg_disk(null).
subset_subset_key_peg_subset_key_disk(null) :- subset_key_disk(null) : subset_key_peg(null).
-subset_subset_key_peg_subset_key_disk(null) :- not subset_subset_key_peg_subset_key_disk(null).
subset_subset_key_peg_subset_peg_disk(null) :- subset_peg_disk(null) : subset_key_peg(null).
-subset_subset_key_peg_subset_peg_disk(null) :- not subset_subset_key_peg_subset_peg_disk(null).
subset_subset_key_disk_subset_peg_disk(null) :- subset_peg_disk(null) : subset_key_disk(null).
-subset_subset_key_disk_subset_peg_disk(null) :- not subset_subset_key_disk_subset_peg_disk(null).

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
