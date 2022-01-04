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
er_smaller_opencell(X0) :- opencell(X1),smaller(X0,X1).
-er_smaller_opencell(X0) :- object(X0),not er_smaller_opencell(X0).
er_below_opencell(X0) :- opencell(X1),below(X0,X1).
-er_below_opencell(X0) :- object(X0),not er_below_opencell(X0).
er_left_opencell(X0) :- opencell(X1),left(X0,X1).
-er_left_opencell(X0) :- object(X0),not er_left_opencell(X0).
er_overlap_opencell(X0) :- opencell(X1),overlap(X0,X1).
-er_overlap_opencell(X0) :- object(X0),not er_overlap_opencell(X0).
er_shape_opencell(X0) :- opencell(X1),shape(X0,X1).
-er_shape_opencell(X0) :- object(X0),not er_shape_opencell(X0).
er_smaller_tile(X0) :- tile(X1),smaller(X0,X1).
-er_smaller_tile(X0) :- object(X0),not er_smaller_tile(X0).
er_below_tile(X0) :- tile(X1),below(X0,X1).
-er_below_tile(X0) :- object(X0),not er_below_tile(X0).
er_left_tile(X0) :- tile(X1),left(X0,X1).
-er_left_tile(X0) :- object(X0),not er_left_tile(X0).
er_overlap_tile(X0) :- tile(X1),overlap(X0,X1).
-er_overlap_tile(X0) :- object(X0),not er_overlap_tile(X0).
er_shape_tile(X0) :- tile(X1),shape(X0,X1).
-er_shape_tile(X0) :- object(X0),not er_shape_tile(X0).
inter_verum_falsum(X0) :- verum(X0),falsum(X0).
-inter_verum_falsum(X0) :- object(X0),not inter_verum_falsum(X0).
inter_verum_opencell(X0) :- verum(X0),opencell(X0).
-inter_verum_opencell(X0) :- object(X0),not inter_verum_opencell(X0).
inter_verum_tile(X0) :- verum(X0),tile(X0).
-inter_verum_tile(X0) :- object(X0),not inter_verum_tile(X0).
inter_falsum_opencell(X0) :- falsum(X0),opencell(X0).
-inter_falsum_opencell(X0) :- object(X0),not inter_falsum_opencell(X0).
inter_falsum_tile(X0) :- falsum(X0),tile(X0).
-inter_falsum_tile(X0) :- object(X0),not inter_falsum_tile(X0).
inter_opencell_tile(X0) :- opencell(X0),tile(X0).
-inter_opencell_tile(X0) :- object(X0),not inter_opencell_tile(X0).
subset_verum_falsum(null) :- falsum(X0) : verum(X0).
-subset_verum_falsum(null) :- not subset_verum_falsum(null).
subset_verum_opencell(null) :- opencell(X0) : verum(X0).
-subset_verum_opencell(null) :- not subset_verum_opencell(null).
subset_verum_tile(null) :- tile(X0) : verum(X0).
-subset_verum_tile(null) :- not subset_verum_tile(null).
subset_falsum_opencell(null) :- opencell(X0) : falsum(X0).
-subset_falsum_opencell(null) :- not subset_falsum_opencell(null).
subset_falsum_tile(null) :- tile(X0) : falsum(X0).
-subset_falsum_tile(null) :- not subset_falsum_tile(null).
subset_opencell_tile(null) :- tile(X0) : opencell(X0).
-subset_opencell_tile(null) :- not subset_opencell_tile(null).

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
er_inv_smaller_opencell(X0) :- opencell(X1),inv_smaller(X0,X1).
-er_inv_smaller_opencell(X0) :- object(X0),not er_inv_smaller_opencell(X0).
er_inv_below_opencell(X0) :- opencell(X1),inv_below(X0,X1).
-er_inv_below_opencell(X0) :- object(X0),not er_inv_below_opencell(X0).
er_inv_left_opencell(X0) :- opencell(X1),inv_left(X0,X1).
-er_inv_left_opencell(X0) :- object(X0),not er_inv_left_opencell(X0).
er_inv_overlap_opencell(X0) :- opencell(X1),inv_overlap(X0,X1).
-er_inv_overlap_opencell(X0) :- object(X0),not er_inv_overlap_opencell(X0).
er_inv_shape_opencell(X0) :- opencell(X1),inv_shape(X0,X1).
-er_inv_shape_opencell(X0) :- object(X0),not er_inv_shape_opencell(X0).
er_comp_smaller_below_opencell(X0) :- opencell(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_opencell(X0) :- object(X0),not er_comp_smaller_below_opencell(X0).
er_comp_smaller_left_opencell(X0) :- opencell(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_opencell(X0) :- object(X0),not er_comp_smaller_left_opencell(X0).
er_comp_smaller_overlap_opencell(X0) :- opencell(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_opencell(X0) :- object(X0),not er_comp_smaller_overlap_opencell(X0).
er_comp_smaller_shape_opencell(X0) :- opencell(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_opencell(X0) :- object(X0),not er_comp_smaller_shape_opencell(X0).
er_comp_below_left_opencell(X0) :- opencell(X1),comp_below_left(X0,X1).
-er_comp_below_left_opencell(X0) :- object(X0),not er_comp_below_left_opencell(X0).
er_comp_below_overlap_opencell(X0) :- opencell(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_opencell(X0) :- object(X0),not er_comp_below_overlap_opencell(X0).
er_comp_below_shape_opencell(X0) :- opencell(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_opencell(X0) :- object(X0),not er_comp_below_shape_opencell(X0).
er_comp_left_overlap_opencell(X0) :- opencell(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_opencell(X0) :- object(X0),not er_comp_left_overlap_opencell(X0).
er_comp_left_shape_opencell(X0) :- opencell(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_opencell(X0) :- object(X0),not er_comp_left_shape_opencell(X0).
er_comp_overlap_shape_opencell(X0) :- opencell(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_opencell(X0) :- object(X0),not er_comp_overlap_shape_opencell(X0).
er_inv_smaller_tile(X0) :- tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_tile(X0) :- object(X0),not er_inv_smaller_tile(X0).
er_inv_below_tile(X0) :- tile(X1),inv_below(X0,X1).
-er_inv_below_tile(X0) :- object(X0),not er_inv_below_tile(X0).
er_inv_left_tile(X0) :- tile(X1),inv_left(X0,X1).
-er_inv_left_tile(X0) :- object(X0),not er_inv_left_tile(X0).
er_inv_overlap_tile(X0) :- tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_tile(X0) :- object(X0),not er_inv_overlap_tile(X0).
er_inv_shape_tile(X0) :- tile(X1),inv_shape(X0,X1).
-er_inv_shape_tile(X0) :- object(X0),not er_inv_shape_tile(X0).
er_comp_smaller_below_tile(X0) :- tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_tile(X0) :- object(X0),not er_comp_smaller_below_tile(X0).
er_comp_smaller_left_tile(X0) :- tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_tile(X0) :- object(X0),not er_comp_smaller_left_tile(X0).
er_comp_smaller_overlap_tile(X0) :- tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_tile(X0) :- object(X0),not er_comp_smaller_overlap_tile(X0).
er_comp_smaller_shape_tile(X0) :- tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_tile(X0) :- object(X0),not er_comp_smaller_shape_tile(X0).
er_comp_below_left_tile(X0) :- tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_tile(X0) :- object(X0),not er_comp_below_left_tile(X0).
er_comp_below_overlap_tile(X0) :- tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_tile(X0) :- object(X0),not er_comp_below_overlap_tile(X0).
er_comp_below_shape_tile(X0) :- tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_tile(X0) :- object(X0),not er_comp_below_shape_tile(X0).
er_comp_left_overlap_tile(X0) :- tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_tile(X0) :- object(X0),not er_comp_left_overlap_tile(X0).
er_comp_left_shape_tile(X0) :- tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_tile(X0) :- object(X0),not er_comp_left_shape_tile(X0).
er_comp_overlap_shape_tile(X0) :- tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_tile(X0) :- object(X0),not er_comp_overlap_shape_tile(X0).
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
er_smaller_er_smaller_opencell(X0) :- er_smaller_opencell(X1),smaller(X0,X1).
-er_smaller_er_smaller_opencell(X0) :- object(X0),not er_smaller_er_smaller_opencell(X0).
er_below_er_smaller_opencell(X0) :- er_smaller_opencell(X1),below(X0,X1).
-er_below_er_smaller_opencell(X0) :- object(X0),not er_below_er_smaller_opencell(X0).
er_left_er_smaller_opencell(X0) :- er_smaller_opencell(X1),left(X0,X1).
-er_left_er_smaller_opencell(X0) :- object(X0),not er_left_er_smaller_opencell(X0).
er_overlap_er_smaller_opencell(X0) :- er_smaller_opencell(X1),overlap(X0,X1).
-er_overlap_er_smaller_opencell(X0) :- object(X0),not er_overlap_er_smaller_opencell(X0).
er_shape_er_smaller_opencell(X0) :- er_smaller_opencell(X1),shape(X0,X1).
-er_shape_er_smaller_opencell(X0) :- object(X0),not er_shape_er_smaller_opencell(X0).
er_inv_smaller_er_smaller_opencell(X0) :- er_smaller_opencell(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_smaller_opencell(X0) :- object(X0),not er_inv_smaller_er_smaller_opencell(X0).
er_inv_below_er_smaller_opencell(X0) :- er_smaller_opencell(X1),inv_below(X0,X1).
-er_inv_below_er_smaller_opencell(X0) :- object(X0),not er_inv_below_er_smaller_opencell(X0).
er_inv_left_er_smaller_opencell(X0) :- er_smaller_opencell(X1),inv_left(X0,X1).
-er_inv_left_er_smaller_opencell(X0) :- object(X0),not er_inv_left_er_smaller_opencell(X0).
er_inv_overlap_er_smaller_opencell(X0) :- er_smaller_opencell(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_smaller_opencell(X0) :- object(X0),not er_inv_overlap_er_smaller_opencell(X0).
er_inv_shape_er_smaller_opencell(X0) :- er_smaller_opencell(X1),inv_shape(X0,X1).
-er_inv_shape_er_smaller_opencell(X0) :- object(X0),not er_inv_shape_er_smaller_opencell(X0).
er_comp_smaller_below_er_smaller_opencell(X0) :- er_smaller_opencell(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_smaller_opencell(X0) :- object(X0),not er_comp_smaller_below_er_smaller_opencell(X0).
er_comp_smaller_left_er_smaller_opencell(X0) :- er_smaller_opencell(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_smaller_opencell(X0) :- object(X0),not er_comp_smaller_left_er_smaller_opencell(X0).
er_comp_smaller_overlap_er_smaller_opencell(X0) :- er_smaller_opencell(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_smaller_opencell(X0) :- object(X0),not er_comp_smaller_overlap_er_smaller_opencell(X0).
er_comp_smaller_shape_er_smaller_opencell(X0) :- er_smaller_opencell(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_smaller_opencell(X0) :- object(X0),not er_comp_smaller_shape_er_smaller_opencell(X0).
er_comp_below_left_er_smaller_opencell(X0) :- er_smaller_opencell(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_smaller_opencell(X0) :- object(X0),not er_comp_below_left_er_smaller_opencell(X0).
er_comp_below_overlap_er_smaller_opencell(X0) :- er_smaller_opencell(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_smaller_opencell(X0) :- object(X0),not er_comp_below_overlap_er_smaller_opencell(X0).
er_comp_below_shape_er_smaller_opencell(X0) :- er_smaller_opencell(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_smaller_opencell(X0) :- object(X0),not er_comp_below_shape_er_smaller_opencell(X0).
er_comp_left_overlap_er_smaller_opencell(X0) :- er_smaller_opencell(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_smaller_opencell(X0) :- object(X0),not er_comp_left_overlap_er_smaller_opencell(X0).
er_comp_left_shape_er_smaller_opencell(X0) :- er_smaller_opencell(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_smaller_opencell(X0) :- object(X0),not er_comp_left_shape_er_smaller_opencell(X0).
er_comp_overlap_shape_er_smaller_opencell(X0) :- er_smaller_opencell(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_smaller_opencell(X0) :- object(X0),not er_comp_overlap_shape_er_smaller_opencell(X0).
er_smaller_er_below_opencell(X0) :- er_below_opencell(X1),smaller(X0,X1).
-er_smaller_er_below_opencell(X0) :- object(X0),not er_smaller_er_below_opencell(X0).
er_below_er_below_opencell(X0) :- er_below_opencell(X1),below(X0,X1).
-er_below_er_below_opencell(X0) :- object(X0),not er_below_er_below_opencell(X0).
er_left_er_below_opencell(X0) :- er_below_opencell(X1),left(X0,X1).
-er_left_er_below_opencell(X0) :- object(X0),not er_left_er_below_opencell(X0).
er_overlap_er_below_opencell(X0) :- er_below_opencell(X1),overlap(X0,X1).
-er_overlap_er_below_opencell(X0) :- object(X0),not er_overlap_er_below_opencell(X0).
er_shape_er_below_opencell(X0) :- er_below_opencell(X1),shape(X0,X1).
-er_shape_er_below_opencell(X0) :- object(X0),not er_shape_er_below_opencell(X0).
er_inv_smaller_er_below_opencell(X0) :- er_below_opencell(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_below_opencell(X0) :- object(X0),not er_inv_smaller_er_below_opencell(X0).
er_inv_below_er_below_opencell(X0) :- er_below_opencell(X1),inv_below(X0,X1).
-er_inv_below_er_below_opencell(X0) :- object(X0),not er_inv_below_er_below_opencell(X0).
er_inv_left_er_below_opencell(X0) :- er_below_opencell(X1),inv_left(X0,X1).
-er_inv_left_er_below_opencell(X0) :- object(X0),not er_inv_left_er_below_opencell(X0).
er_inv_overlap_er_below_opencell(X0) :- er_below_opencell(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_below_opencell(X0) :- object(X0),not er_inv_overlap_er_below_opencell(X0).
er_inv_shape_er_below_opencell(X0) :- er_below_opencell(X1),inv_shape(X0,X1).
-er_inv_shape_er_below_opencell(X0) :- object(X0),not er_inv_shape_er_below_opencell(X0).
er_comp_smaller_below_er_below_opencell(X0) :- er_below_opencell(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_below_opencell(X0) :- object(X0),not er_comp_smaller_below_er_below_opencell(X0).
er_comp_smaller_left_er_below_opencell(X0) :- er_below_opencell(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_below_opencell(X0) :- object(X0),not er_comp_smaller_left_er_below_opencell(X0).
er_comp_smaller_overlap_er_below_opencell(X0) :- er_below_opencell(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_below_opencell(X0) :- object(X0),not er_comp_smaller_overlap_er_below_opencell(X0).
er_comp_smaller_shape_er_below_opencell(X0) :- er_below_opencell(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_below_opencell(X0) :- object(X0),not er_comp_smaller_shape_er_below_opencell(X0).
er_comp_below_left_er_below_opencell(X0) :- er_below_opencell(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_below_opencell(X0) :- object(X0),not er_comp_below_left_er_below_opencell(X0).
er_comp_below_overlap_er_below_opencell(X0) :- er_below_opencell(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_below_opencell(X0) :- object(X0),not er_comp_below_overlap_er_below_opencell(X0).
er_comp_below_shape_er_below_opencell(X0) :- er_below_opencell(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_below_opencell(X0) :- object(X0),not er_comp_below_shape_er_below_opencell(X0).
er_comp_left_overlap_er_below_opencell(X0) :- er_below_opencell(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_below_opencell(X0) :- object(X0),not er_comp_left_overlap_er_below_opencell(X0).
er_comp_left_shape_er_below_opencell(X0) :- er_below_opencell(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_below_opencell(X0) :- object(X0),not er_comp_left_shape_er_below_opencell(X0).
er_comp_overlap_shape_er_below_opencell(X0) :- er_below_opencell(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_below_opencell(X0) :- object(X0),not er_comp_overlap_shape_er_below_opencell(X0).
er_smaller_er_left_opencell(X0) :- er_left_opencell(X1),smaller(X0,X1).
-er_smaller_er_left_opencell(X0) :- object(X0),not er_smaller_er_left_opencell(X0).
er_below_er_left_opencell(X0) :- er_left_opencell(X1),below(X0,X1).
-er_below_er_left_opencell(X0) :- object(X0),not er_below_er_left_opencell(X0).
er_left_er_left_opencell(X0) :- er_left_opencell(X1),left(X0,X1).
-er_left_er_left_opencell(X0) :- object(X0),not er_left_er_left_opencell(X0).
er_overlap_er_left_opencell(X0) :- er_left_opencell(X1),overlap(X0,X1).
-er_overlap_er_left_opencell(X0) :- object(X0),not er_overlap_er_left_opencell(X0).
er_shape_er_left_opencell(X0) :- er_left_opencell(X1),shape(X0,X1).
-er_shape_er_left_opencell(X0) :- object(X0),not er_shape_er_left_opencell(X0).
er_inv_smaller_er_left_opencell(X0) :- er_left_opencell(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_left_opencell(X0) :- object(X0),not er_inv_smaller_er_left_opencell(X0).
er_inv_below_er_left_opencell(X0) :- er_left_opencell(X1),inv_below(X0,X1).
-er_inv_below_er_left_opencell(X0) :- object(X0),not er_inv_below_er_left_opencell(X0).
er_inv_left_er_left_opencell(X0) :- er_left_opencell(X1),inv_left(X0,X1).
-er_inv_left_er_left_opencell(X0) :- object(X0),not er_inv_left_er_left_opencell(X0).
er_inv_overlap_er_left_opencell(X0) :- er_left_opencell(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_left_opencell(X0) :- object(X0),not er_inv_overlap_er_left_opencell(X0).
er_inv_shape_er_left_opencell(X0) :- er_left_opencell(X1),inv_shape(X0,X1).
-er_inv_shape_er_left_opencell(X0) :- object(X0),not er_inv_shape_er_left_opencell(X0).
er_comp_smaller_below_er_left_opencell(X0) :- er_left_opencell(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_left_opencell(X0) :- object(X0),not er_comp_smaller_below_er_left_opencell(X0).
er_comp_smaller_left_er_left_opencell(X0) :- er_left_opencell(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_left_opencell(X0) :- object(X0),not er_comp_smaller_left_er_left_opencell(X0).
er_comp_smaller_overlap_er_left_opencell(X0) :- er_left_opencell(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_left_opencell(X0) :- object(X0),not er_comp_smaller_overlap_er_left_opencell(X0).
er_comp_smaller_shape_er_left_opencell(X0) :- er_left_opencell(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_left_opencell(X0) :- object(X0),not er_comp_smaller_shape_er_left_opencell(X0).
er_comp_below_left_er_left_opencell(X0) :- er_left_opencell(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_left_opencell(X0) :- object(X0),not er_comp_below_left_er_left_opencell(X0).
er_comp_below_overlap_er_left_opencell(X0) :- er_left_opencell(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_left_opencell(X0) :- object(X0),not er_comp_below_overlap_er_left_opencell(X0).
er_comp_below_shape_er_left_opencell(X0) :- er_left_opencell(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_left_opencell(X0) :- object(X0),not er_comp_below_shape_er_left_opencell(X0).
er_comp_left_overlap_er_left_opencell(X0) :- er_left_opencell(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_left_opencell(X0) :- object(X0),not er_comp_left_overlap_er_left_opencell(X0).
er_comp_left_shape_er_left_opencell(X0) :- er_left_opencell(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_left_opencell(X0) :- object(X0),not er_comp_left_shape_er_left_opencell(X0).
er_comp_overlap_shape_er_left_opencell(X0) :- er_left_opencell(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_left_opencell(X0) :- object(X0),not er_comp_overlap_shape_er_left_opencell(X0).
er_smaller_er_overlap_opencell(X0) :- er_overlap_opencell(X1),smaller(X0,X1).
-er_smaller_er_overlap_opencell(X0) :- object(X0),not er_smaller_er_overlap_opencell(X0).
er_below_er_overlap_opencell(X0) :- er_overlap_opencell(X1),below(X0,X1).
-er_below_er_overlap_opencell(X0) :- object(X0),not er_below_er_overlap_opencell(X0).
er_left_er_overlap_opencell(X0) :- er_overlap_opencell(X1),left(X0,X1).
-er_left_er_overlap_opencell(X0) :- object(X0),not er_left_er_overlap_opencell(X0).
er_overlap_er_overlap_opencell(X0) :- er_overlap_opencell(X1),overlap(X0,X1).
-er_overlap_er_overlap_opencell(X0) :- object(X0),not er_overlap_er_overlap_opencell(X0).
er_shape_er_overlap_opencell(X0) :- er_overlap_opencell(X1),shape(X0,X1).
-er_shape_er_overlap_opencell(X0) :- object(X0),not er_shape_er_overlap_opencell(X0).
er_inv_smaller_er_overlap_opencell(X0) :- er_overlap_opencell(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_overlap_opencell(X0) :- object(X0),not er_inv_smaller_er_overlap_opencell(X0).
er_inv_below_er_overlap_opencell(X0) :- er_overlap_opencell(X1),inv_below(X0,X1).
-er_inv_below_er_overlap_opencell(X0) :- object(X0),not er_inv_below_er_overlap_opencell(X0).
er_inv_left_er_overlap_opencell(X0) :- er_overlap_opencell(X1),inv_left(X0,X1).
-er_inv_left_er_overlap_opencell(X0) :- object(X0),not er_inv_left_er_overlap_opencell(X0).
er_inv_overlap_er_overlap_opencell(X0) :- er_overlap_opencell(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_overlap_opencell(X0) :- object(X0),not er_inv_overlap_er_overlap_opencell(X0).
er_inv_shape_er_overlap_opencell(X0) :- er_overlap_opencell(X1),inv_shape(X0,X1).
-er_inv_shape_er_overlap_opencell(X0) :- object(X0),not er_inv_shape_er_overlap_opencell(X0).
er_comp_smaller_below_er_overlap_opencell(X0) :- er_overlap_opencell(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_overlap_opencell(X0) :- object(X0),not er_comp_smaller_below_er_overlap_opencell(X0).
er_comp_smaller_left_er_overlap_opencell(X0) :- er_overlap_opencell(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_overlap_opencell(X0) :- object(X0),not er_comp_smaller_left_er_overlap_opencell(X0).
er_comp_smaller_overlap_er_overlap_opencell(X0) :- er_overlap_opencell(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_overlap_opencell(X0) :- object(X0),not er_comp_smaller_overlap_er_overlap_opencell(X0).
er_comp_smaller_shape_er_overlap_opencell(X0) :- er_overlap_opencell(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_overlap_opencell(X0) :- object(X0),not er_comp_smaller_shape_er_overlap_opencell(X0).
er_comp_below_left_er_overlap_opencell(X0) :- er_overlap_opencell(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_overlap_opencell(X0) :- object(X0),not er_comp_below_left_er_overlap_opencell(X0).
er_comp_below_overlap_er_overlap_opencell(X0) :- er_overlap_opencell(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_overlap_opencell(X0) :- object(X0),not er_comp_below_overlap_er_overlap_opencell(X0).
er_comp_below_shape_er_overlap_opencell(X0) :- er_overlap_opencell(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_overlap_opencell(X0) :- object(X0),not er_comp_below_shape_er_overlap_opencell(X0).
er_comp_left_overlap_er_overlap_opencell(X0) :- er_overlap_opencell(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_overlap_opencell(X0) :- object(X0),not er_comp_left_overlap_er_overlap_opencell(X0).
er_comp_left_shape_er_overlap_opencell(X0) :- er_overlap_opencell(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_overlap_opencell(X0) :- object(X0),not er_comp_left_shape_er_overlap_opencell(X0).
er_comp_overlap_shape_er_overlap_opencell(X0) :- er_overlap_opencell(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_overlap_opencell(X0) :- object(X0),not er_comp_overlap_shape_er_overlap_opencell(X0).
er_smaller_er_shape_opencell(X0) :- er_shape_opencell(X1),smaller(X0,X1).
-er_smaller_er_shape_opencell(X0) :- object(X0),not er_smaller_er_shape_opencell(X0).
er_below_er_shape_opencell(X0) :- er_shape_opencell(X1),below(X0,X1).
-er_below_er_shape_opencell(X0) :- object(X0),not er_below_er_shape_opencell(X0).
er_left_er_shape_opencell(X0) :- er_shape_opencell(X1),left(X0,X1).
-er_left_er_shape_opencell(X0) :- object(X0),not er_left_er_shape_opencell(X0).
er_overlap_er_shape_opencell(X0) :- er_shape_opencell(X1),overlap(X0,X1).
-er_overlap_er_shape_opencell(X0) :- object(X0),not er_overlap_er_shape_opencell(X0).
er_shape_er_shape_opencell(X0) :- er_shape_opencell(X1),shape(X0,X1).
-er_shape_er_shape_opencell(X0) :- object(X0),not er_shape_er_shape_opencell(X0).
er_inv_smaller_er_shape_opencell(X0) :- er_shape_opencell(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_shape_opencell(X0) :- object(X0),not er_inv_smaller_er_shape_opencell(X0).
er_inv_below_er_shape_opencell(X0) :- er_shape_opencell(X1),inv_below(X0,X1).
-er_inv_below_er_shape_opencell(X0) :- object(X0),not er_inv_below_er_shape_opencell(X0).
er_inv_left_er_shape_opencell(X0) :- er_shape_opencell(X1),inv_left(X0,X1).
-er_inv_left_er_shape_opencell(X0) :- object(X0),not er_inv_left_er_shape_opencell(X0).
er_inv_overlap_er_shape_opencell(X0) :- er_shape_opencell(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_shape_opencell(X0) :- object(X0),not er_inv_overlap_er_shape_opencell(X0).
er_inv_shape_er_shape_opencell(X0) :- er_shape_opencell(X1),inv_shape(X0,X1).
-er_inv_shape_er_shape_opencell(X0) :- object(X0),not er_inv_shape_er_shape_opencell(X0).
er_comp_smaller_below_er_shape_opencell(X0) :- er_shape_opencell(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_shape_opencell(X0) :- object(X0),not er_comp_smaller_below_er_shape_opencell(X0).
er_comp_smaller_left_er_shape_opencell(X0) :- er_shape_opencell(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_shape_opencell(X0) :- object(X0),not er_comp_smaller_left_er_shape_opencell(X0).
er_comp_smaller_overlap_er_shape_opencell(X0) :- er_shape_opencell(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_shape_opencell(X0) :- object(X0),not er_comp_smaller_overlap_er_shape_opencell(X0).
er_comp_smaller_shape_er_shape_opencell(X0) :- er_shape_opencell(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_shape_opencell(X0) :- object(X0),not er_comp_smaller_shape_er_shape_opencell(X0).
er_comp_below_left_er_shape_opencell(X0) :- er_shape_opencell(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_shape_opencell(X0) :- object(X0),not er_comp_below_left_er_shape_opencell(X0).
er_comp_below_overlap_er_shape_opencell(X0) :- er_shape_opencell(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_shape_opencell(X0) :- object(X0),not er_comp_below_overlap_er_shape_opencell(X0).
er_comp_below_shape_er_shape_opencell(X0) :- er_shape_opencell(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_shape_opencell(X0) :- object(X0),not er_comp_below_shape_er_shape_opencell(X0).
er_comp_left_overlap_er_shape_opencell(X0) :- er_shape_opencell(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_shape_opencell(X0) :- object(X0),not er_comp_left_overlap_er_shape_opencell(X0).
er_comp_left_shape_er_shape_opencell(X0) :- er_shape_opencell(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_shape_opencell(X0) :- object(X0),not er_comp_left_shape_er_shape_opencell(X0).
er_comp_overlap_shape_er_shape_opencell(X0) :- er_shape_opencell(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_shape_opencell(X0) :- object(X0),not er_comp_overlap_shape_er_shape_opencell(X0).
er_smaller_er_smaller_tile(X0) :- er_smaller_tile(X1),smaller(X0,X1).
-er_smaller_er_smaller_tile(X0) :- object(X0),not er_smaller_er_smaller_tile(X0).
er_below_er_smaller_tile(X0) :- er_smaller_tile(X1),below(X0,X1).
-er_below_er_smaller_tile(X0) :- object(X0),not er_below_er_smaller_tile(X0).
er_left_er_smaller_tile(X0) :- er_smaller_tile(X1),left(X0,X1).
-er_left_er_smaller_tile(X0) :- object(X0),not er_left_er_smaller_tile(X0).
er_overlap_er_smaller_tile(X0) :- er_smaller_tile(X1),overlap(X0,X1).
-er_overlap_er_smaller_tile(X0) :- object(X0),not er_overlap_er_smaller_tile(X0).
er_shape_er_smaller_tile(X0) :- er_smaller_tile(X1),shape(X0,X1).
-er_shape_er_smaller_tile(X0) :- object(X0),not er_shape_er_smaller_tile(X0).
er_inv_smaller_er_smaller_tile(X0) :- er_smaller_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_smaller_tile(X0) :- object(X0),not er_inv_smaller_er_smaller_tile(X0).
er_inv_below_er_smaller_tile(X0) :- er_smaller_tile(X1),inv_below(X0,X1).
-er_inv_below_er_smaller_tile(X0) :- object(X0),not er_inv_below_er_smaller_tile(X0).
er_inv_left_er_smaller_tile(X0) :- er_smaller_tile(X1),inv_left(X0,X1).
-er_inv_left_er_smaller_tile(X0) :- object(X0),not er_inv_left_er_smaller_tile(X0).
er_inv_overlap_er_smaller_tile(X0) :- er_smaller_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_smaller_tile(X0) :- object(X0),not er_inv_overlap_er_smaller_tile(X0).
er_inv_shape_er_smaller_tile(X0) :- er_smaller_tile(X1),inv_shape(X0,X1).
-er_inv_shape_er_smaller_tile(X0) :- object(X0),not er_inv_shape_er_smaller_tile(X0).
er_comp_smaller_below_er_smaller_tile(X0) :- er_smaller_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_smaller_tile(X0) :- object(X0),not er_comp_smaller_below_er_smaller_tile(X0).
er_comp_smaller_left_er_smaller_tile(X0) :- er_smaller_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_smaller_tile(X0) :- object(X0),not er_comp_smaller_left_er_smaller_tile(X0).
er_comp_smaller_overlap_er_smaller_tile(X0) :- er_smaller_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_smaller_tile(X0) :- object(X0),not er_comp_smaller_overlap_er_smaller_tile(X0).
er_comp_smaller_shape_er_smaller_tile(X0) :- er_smaller_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_smaller_tile(X0) :- object(X0),not er_comp_smaller_shape_er_smaller_tile(X0).
er_comp_below_left_er_smaller_tile(X0) :- er_smaller_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_smaller_tile(X0) :- object(X0),not er_comp_below_left_er_smaller_tile(X0).
er_comp_below_overlap_er_smaller_tile(X0) :- er_smaller_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_smaller_tile(X0) :- object(X0),not er_comp_below_overlap_er_smaller_tile(X0).
er_comp_below_shape_er_smaller_tile(X0) :- er_smaller_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_smaller_tile(X0) :- object(X0),not er_comp_below_shape_er_smaller_tile(X0).
er_comp_left_overlap_er_smaller_tile(X0) :- er_smaller_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_smaller_tile(X0) :- object(X0),not er_comp_left_overlap_er_smaller_tile(X0).
er_comp_left_shape_er_smaller_tile(X0) :- er_smaller_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_smaller_tile(X0) :- object(X0),not er_comp_left_shape_er_smaller_tile(X0).
er_comp_overlap_shape_er_smaller_tile(X0) :- er_smaller_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_smaller_tile(X0) :- object(X0),not er_comp_overlap_shape_er_smaller_tile(X0).
er_smaller_er_below_tile(X0) :- er_below_tile(X1),smaller(X0,X1).
-er_smaller_er_below_tile(X0) :- object(X0),not er_smaller_er_below_tile(X0).
er_below_er_below_tile(X0) :- er_below_tile(X1),below(X0,X1).
-er_below_er_below_tile(X0) :- object(X0),not er_below_er_below_tile(X0).
er_left_er_below_tile(X0) :- er_below_tile(X1),left(X0,X1).
-er_left_er_below_tile(X0) :- object(X0),not er_left_er_below_tile(X0).
er_overlap_er_below_tile(X0) :- er_below_tile(X1),overlap(X0,X1).
-er_overlap_er_below_tile(X0) :- object(X0),not er_overlap_er_below_tile(X0).
er_shape_er_below_tile(X0) :- er_below_tile(X1),shape(X0,X1).
-er_shape_er_below_tile(X0) :- object(X0),not er_shape_er_below_tile(X0).
er_inv_smaller_er_below_tile(X0) :- er_below_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_below_tile(X0) :- object(X0),not er_inv_smaller_er_below_tile(X0).
er_inv_below_er_below_tile(X0) :- er_below_tile(X1),inv_below(X0,X1).
-er_inv_below_er_below_tile(X0) :- object(X0),not er_inv_below_er_below_tile(X0).
er_inv_left_er_below_tile(X0) :- er_below_tile(X1),inv_left(X0,X1).
-er_inv_left_er_below_tile(X0) :- object(X0),not er_inv_left_er_below_tile(X0).
er_inv_overlap_er_below_tile(X0) :- er_below_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_below_tile(X0) :- object(X0),not er_inv_overlap_er_below_tile(X0).
er_inv_shape_er_below_tile(X0) :- er_below_tile(X1),inv_shape(X0,X1).
-er_inv_shape_er_below_tile(X0) :- object(X0),not er_inv_shape_er_below_tile(X0).
er_comp_smaller_below_er_below_tile(X0) :- er_below_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_below_tile(X0) :- object(X0),not er_comp_smaller_below_er_below_tile(X0).
er_comp_smaller_left_er_below_tile(X0) :- er_below_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_below_tile(X0) :- object(X0),not er_comp_smaller_left_er_below_tile(X0).
er_comp_smaller_overlap_er_below_tile(X0) :- er_below_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_below_tile(X0) :- object(X0),not er_comp_smaller_overlap_er_below_tile(X0).
er_comp_smaller_shape_er_below_tile(X0) :- er_below_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_below_tile(X0) :- object(X0),not er_comp_smaller_shape_er_below_tile(X0).
er_comp_below_left_er_below_tile(X0) :- er_below_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_below_tile(X0) :- object(X0),not er_comp_below_left_er_below_tile(X0).
er_comp_below_overlap_er_below_tile(X0) :- er_below_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_below_tile(X0) :- object(X0),not er_comp_below_overlap_er_below_tile(X0).
er_comp_below_shape_er_below_tile(X0) :- er_below_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_below_tile(X0) :- object(X0),not er_comp_below_shape_er_below_tile(X0).
er_comp_left_overlap_er_below_tile(X0) :- er_below_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_below_tile(X0) :- object(X0),not er_comp_left_overlap_er_below_tile(X0).
er_comp_left_shape_er_below_tile(X0) :- er_below_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_below_tile(X0) :- object(X0),not er_comp_left_shape_er_below_tile(X0).
er_comp_overlap_shape_er_below_tile(X0) :- er_below_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_below_tile(X0) :- object(X0),not er_comp_overlap_shape_er_below_tile(X0).
er_smaller_er_left_tile(X0) :- er_left_tile(X1),smaller(X0,X1).
-er_smaller_er_left_tile(X0) :- object(X0),not er_smaller_er_left_tile(X0).
er_below_er_left_tile(X0) :- er_left_tile(X1),below(X0,X1).
-er_below_er_left_tile(X0) :- object(X0),not er_below_er_left_tile(X0).
er_left_er_left_tile(X0) :- er_left_tile(X1),left(X0,X1).
-er_left_er_left_tile(X0) :- object(X0),not er_left_er_left_tile(X0).
er_overlap_er_left_tile(X0) :- er_left_tile(X1),overlap(X0,X1).
-er_overlap_er_left_tile(X0) :- object(X0),not er_overlap_er_left_tile(X0).
er_shape_er_left_tile(X0) :- er_left_tile(X1),shape(X0,X1).
-er_shape_er_left_tile(X0) :- object(X0),not er_shape_er_left_tile(X0).
er_inv_smaller_er_left_tile(X0) :- er_left_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_left_tile(X0) :- object(X0),not er_inv_smaller_er_left_tile(X0).
er_inv_below_er_left_tile(X0) :- er_left_tile(X1),inv_below(X0,X1).
-er_inv_below_er_left_tile(X0) :- object(X0),not er_inv_below_er_left_tile(X0).
er_inv_left_er_left_tile(X0) :- er_left_tile(X1),inv_left(X0,X1).
-er_inv_left_er_left_tile(X0) :- object(X0),not er_inv_left_er_left_tile(X0).
er_inv_overlap_er_left_tile(X0) :- er_left_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_left_tile(X0) :- object(X0),not er_inv_overlap_er_left_tile(X0).
er_inv_shape_er_left_tile(X0) :- er_left_tile(X1),inv_shape(X0,X1).
-er_inv_shape_er_left_tile(X0) :- object(X0),not er_inv_shape_er_left_tile(X0).
er_comp_smaller_below_er_left_tile(X0) :- er_left_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_left_tile(X0) :- object(X0),not er_comp_smaller_below_er_left_tile(X0).
er_comp_smaller_left_er_left_tile(X0) :- er_left_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_left_tile(X0) :- object(X0),not er_comp_smaller_left_er_left_tile(X0).
er_comp_smaller_overlap_er_left_tile(X0) :- er_left_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_left_tile(X0) :- object(X0),not er_comp_smaller_overlap_er_left_tile(X0).
er_comp_smaller_shape_er_left_tile(X0) :- er_left_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_left_tile(X0) :- object(X0),not er_comp_smaller_shape_er_left_tile(X0).
er_comp_below_left_er_left_tile(X0) :- er_left_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_left_tile(X0) :- object(X0),not er_comp_below_left_er_left_tile(X0).
er_comp_below_overlap_er_left_tile(X0) :- er_left_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_left_tile(X0) :- object(X0),not er_comp_below_overlap_er_left_tile(X0).
er_comp_below_shape_er_left_tile(X0) :- er_left_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_left_tile(X0) :- object(X0),not er_comp_below_shape_er_left_tile(X0).
er_comp_left_overlap_er_left_tile(X0) :- er_left_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_left_tile(X0) :- object(X0),not er_comp_left_overlap_er_left_tile(X0).
er_comp_left_shape_er_left_tile(X0) :- er_left_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_left_tile(X0) :- object(X0),not er_comp_left_shape_er_left_tile(X0).
er_comp_overlap_shape_er_left_tile(X0) :- er_left_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_left_tile(X0) :- object(X0),not er_comp_overlap_shape_er_left_tile(X0).
er_smaller_er_overlap_tile(X0) :- er_overlap_tile(X1),smaller(X0,X1).
-er_smaller_er_overlap_tile(X0) :- object(X0),not er_smaller_er_overlap_tile(X0).
er_below_er_overlap_tile(X0) :- er_overlap_tile(X1),below(X0,X1).
-er_below_er_overlap_tile(X0) :- object(X0),not er_below_er_overlap_tile(X0).
er_left_er_overlap_tile(X0) :- er_overlap_tile(X1),left(X0,X1).
-er_left_er_overlap_tile(X0) :- object(X0),not er_left_er_overlap_tile(X0).
er_overlap_er_overlap_tile(X0) :- er_overlap_tile(X1),overlap(X0,X1).
-er_overlap_er_overlap_tile(X0) :- object(X0),not er_overlap_er_overlap_tile(X0).
er_shape_er_overlap_tile(X0) :- er_overlap_tile(X1),shape(X0,X1).
-er_shape_er_overlap_tile(X0) :- object(X0),not er_shape_er_overlap_tile(X0).
er_inv_smaller_er_overlap_tile(X0) :- er_overlap_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_overlap_tile(X0) :- object(X0),not er_inv_smaller_er_overlap_tile(X0).
er_inv_below_er_overlap_tile(X0) :- er_overlap_tile(X1),inv_below(X0,X1).
-er_inv_below_er_overlap_tile(X0) :- object(X0),not er_inv_below_er_overlap_tile(X0).
er_inv_left_er_overlap_tile(X0) :- er_overlap_tile(X1),inv_left(X0,X1).
-er_inv_left_er_overlap_tile(X0) :- object(X0),not er_inv_left_er_overlap_tile(X0).
er_inv_overlap_er_overlap_tile(X0) :- er_overlap_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_overlap_tile(X0) :- object(X0),not er_inv_overlap_er_overlap_tile(X0).
er_inv_shape_er_overlap_tile(X0) :- er_overlap_tile(X1),inv_shape(X0,X1).
-er_inv_shape_er_overlap_tile(X0) :- object(X0),not er_inv_shape_er_overlap_tile(X0).
er_comp_smaller_below_er_overlap_tile(X0) :- er_overlap_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_overlap_tile(X0) :- object(X0),not er_comp_smaller_below_er_overlap_tile(X0).
er_comp_smaller_left_er_overlap_tile(X0) :- er_overlap_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_overlap_tile(X0) :- object(X0),not er_comp_smaller_left_er_overlap_tile(X0).
er_comp_smaller_overlap_er_overlap_tile(X0) :- er_overlap_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_overlap_tile(X0) :- object(X0),not er_comp_smaller_overlap_er_overlap_tile(X0).
er_comp_smaller_shape_er_overlap_tile(X0) :- er_overlap_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_overlap_tile(X0) :- object(X0),not er_comp_smaller_shape_er_overlap_tile(X0).
er_comp_below_left_er_overlap_tile(X0) :- er_overlap_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_overlap_tile(X0) :- object(X0),not er_comp_below_left_er_overlap_tile(X0).
er_comp_below_overlap_er_overlap_tile(X0) :- er_overlap_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_overlap_tile(X0) :- object(X0),not er_comp_below_overlap_er_overlap_tile(X0).
er_comp_below_shape_er_overlap_tile(X0) :- er_overlap_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_overlap_tile(X0) :- object(X0),not er_comp_below_shape_er_overlap_tile(X0).
er_comp_left_overlap_er_overlap_tile(X0) :- er_overlap_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_overlap_tile(X0) :- object(X0),not er_comp_left_overlap_er_overlap_tile(X0).
er_comp_left_shape_er_overlap_tile(X0) :- er_overlap_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_overlap_tile(X0) :- object(X0),not er_comp_left_shape_er_overlap_tile(X0).
er_comp_overlap_shape_er_overlap_tile(X0) :- er_overlap_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_overlap_tile(X0) :- object(X0),not er_comp_overlap_shape_er_overlap_tile(X0).
er_smaller_er_shape_tile(X0) :- er_shape_tile(X1),smaller(X0,X1).
-er_smaller_er_shape_tile(X0) :- object(X0),not er_smaller_er_shape_tile(X0).
er_below_er_shape_tile(X0) :- er_shape_tile(X1),below(X0,X1).
-er_below_er_shape_tile(X0) :- object(X0),not er_below_er_shape_tile(X0).
er_left_er_shape_tile(X0) :- er_shape_tile(X1),left(X0,X1).
-er_left_er_shape_tile(X0) :- object(X0),not er_left_er_shape_tile(X0).
er_overlap_er_shape_tile(X0) :- er_shape_tile(X1),overlap(X0,X1).
-er_overlap_er_shape_tile(X0) :- object(X0),not er_overlap_er_shape_tile(X0).
er_shape_er_shape_tile(X0) :- er_shape_tile(X1),shape(X0,X1).
-er_shape_er_shape_tile(X0) :- object(X0),not er_shape_er_shape_tile(X0).
er_inv_smaller_er_shape_tile(X0) :- er_shape_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_er_shape_tile(X0) :- object(X0),not er_inv_smaller_er_shape_tile(X0).
er_inv_below_er_shape_tile(X0) :- er_shape_tile(X1),inv_below(X0,X1).
-er_inv_below_er_shape_tile(X0) :- object(X0),not er_inv_below_er_shape_tile(X0).
er_inv_left_er_shape_tile(X0) :- er_shape_tile(X1),inv_left(X0,X1).
-er_inv_left_er_shape_tile(X0) :- object(X0),not er_inv_left_er_shape_tile(X0).
er_inv_overlap_er_shape_tile(X0) :- er_shape_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_er_shape_tile(X0) :- object(X0),not er_inv_overlap_er_shape_tile(X0).
er_inv_shape_er_shape_tile(X0) :- er_shape_tile(X1),inv_shape(X0,X1).
-er_inv_shape_er_shape_tile(X0) :- object(X0),not er_inv_shape_er_shape_tile(X0).
er_comp_smaller_below_er_shape_tile(X0) :- er_shape_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_er_shape_tile(X0) :- object(X0),not er_comp_smaller_below_er_shape_tile(X0).
er_comp_smaller_left_er_shape_tile(X0) :- er_shape_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_er_shape_tile(X0) :- object(X0),not er_comp_smaller_left_er_shape_tile(X0).
er_comp_smaller_overlap_er_shape_tile(X0) :- er_shape_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_er_shape_tile(X0) :- object(X0),not er_comp_smaller_overlap_er_shape_tile(X0).
er_comp_smaller_shape_er_shape_tile(X0) :- er_shape_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_er_shape_tile(X0) :- object(X0),not er_comp_smaller_shape_er_shape_tile(X0).
er_comp_below_left_er_shape_tile(X0) :- er_shape_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_er_shape_tile(X0) :- object(X0),not er_comp_below_left_er_shape_tile(X0).
er_comp_below_overlap_er_shape_tile(X0) :- er_shape_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_er_shape_tile(X0) :- object(X0),not er_comp_below_overlap_er_shape_tile(X0).
er_comp_below_shape_er_shape_tile(X0) :- er_shape_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_er_shape_tile(X0) :- object(X0),not er_comp_below_shape_er_shape_tile(X0).
er_comp_left_overlap_er_shape_tile(X0) :- er_shape_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_er_shape_tile(X0) :- object(X0),not er_comp_left_overlap_er_shape_tile(X0).
er_comp_left_shape_er_shape_tile(X0) :- er_shape_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_er_shape_tile(X0) :- object(X0),not er_comp_left_shape_er_shape_tile(X0).
er_comp_overlap_shape_er_shape_tile(X0) :- er_shape_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_er_shape_tile(X0) :- object(X0),not er_comp_overlap_shape_er_shape_tile(X0).
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
er_smaller_inter_verum_opencell(X0) :- inter_verum_opencell(X1),smaller(X0,X1).
-er_smaller_inter_verum_opencell(X0) :- object(X0),not er_smaller_inter_verum_opencell(X0).
er_below_inter_verum_opencell(X0) :- inter_verum_opencell(X1),below(X0,X1).
-er_below_inter_verum_opencell(X0) :- object(X0),not er_below_inter_verum_opencell(X0).
er_left_inter_verum_opencell(X0) :- inter_verum_opencell(X1),left(X0,X1).
-er_left_inter_verum_opencell(X0) :- object(X0),not er_left_inter_verum_opencell(X0).
er_overlap_inter_verum_opencell(X0) :- inter_verum_opencell(X1),overlap(X0,X1).
-er_overlap_inter_verum_opencell(X0) :- object(X0),not er_overlap_inter_verum_opencell(X0).
er_shape_inter_verum_opencell(X0) :- inter_verum_opencell(X1),shape(X0,X1).
-er_shape_inter_verum_opencell(X0) :- object(X0),not er_shape_inter_verum_opencell(X0).
er_inv_smaller_inter_verum_opencell(X0) :- inter_verum_opencell(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_verum_opencell(X0) :- object(X0),not er_inv_smaller_inter_verum_opencell(X0).
er_inv_below_inter_verum_opencell(X0) :- inter_verum_opencell(X1),inv_below(X0,X1).
-er_inv_below_inter_verum_opencell(X0) :- object(X0),not er_inv_below_inter_verum_opencell(X0).
er_inv_left_inter_verum_opencell(X0) :- inter_verum_opencell(X1),inv_left(X0,X1).
-er_inv_left_inter_verum_opencell(X0) :- object(X0),not er_inv_left_inter_verum_opencell(X0).
er_inv_overlap_inter_verum_opencell(X0) :- inter_verum_opencell(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_verum_opencell(X0) :- object(X0),not er_inv_overlap_inter_verum_opencell(X0).
er_inv_shape_inter_verum_opencell(X0) :- inter_verum_opencell(X1),inv_shape(X0,X1).
-er_inv_shape_inter_verum_opencell(X0) :- object(X0),not er_inv_shape_inter_verum_opencell(X0).
er_comp_smaller_below_inter_verum_opencell(X0) :- inter_verum_opencell(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_verum_opencell(X0) :- object(X0),not er_comp_smaller_below_inter_verum_opencell(X0).
er_comp_smaller_left_inter_verum_opencell(X0) :- inter_verum_opencell(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_verum_opencell(X0) :- object(X0),not er_comp_smaller_left_inter_verum_opencell(X0).
er_comp_smaller_overlap_inter_verum_opencell(X0) :- inter_verum_opencell(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_verum_opencell(X0) :- object(X0),not er_comp_smaller_overlap_inter_verum_opencell(X0).
er_comp_smaller_shape_inter_verum_opencell(X0) :- inter_verum_opencell(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_verum_opencell(X0) :- object(X0),not er_comp_smaller_shape_inter_verum_opencell(X0).
er_comp_below_left_inter_verum_opencell(X0) :- inter_verum_opencell(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_verum_opencell(X0) :- object(X0),not er_comp_below_left_inter_verum_opencell(X0).
er_comp_below_overlap_inter_verum_opencell(X0) :- inter_verum_opencell(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_verum_opencell(X0) :- object(X0),not er_comp_below_overlap_inter_verum_opencell(X0).
er_comp_below_shape_inter_verum_opencell(X0) :- inter_verum_opencell(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_verum_opencell(X0) :- object(X0),not er_comp_below_shape_inter_verum_opencell(X0).
er_comp_left_overlap_inter_verum_opencell(X0) :- inter_verum_opencell(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_verum_opencell(X0) :- object(X0),not er_comp_left_overlap_inter_verum_opencell(X0).
er_comp_left_shape_inter_verum_opencell(X0) :- inter_verum_opencell(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_verum_opencell(X0) :- object(X0),not er_comp_left_shape_inter_verum_opencell(X0).
er_comp_overlap_shape_inter_verum_opencell(X0) :- inter_verum_opencell(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_verum_opencell(X0) :- object(X0),not er_comp_overlap_shape_inter_verum_opencell(X0).
er_smaller_inter_verum_tile(X0) :- inter_verum_tile(X1),smaller(X0,X1).
-er_smaller_inter_verum_tile(X0) :- object(X0),not er_smaller_inter_verum_tile(X0).
er_below_inter_verum_tile(X0) :- inter_verum_tile(X1),below(X0,X1).
-er_below_inter_verum_tile(X0) :- object(X0),not er_below_inter_verum_tile(X0).
er_left_inter_verum_tile(X0) :- inter_verum_tile(X1),left(X0,X1).
-er_left_inter_verum_tile(X0) :- object(X0),not er_left_inter_verum_tile(X0).
er_overlap_inter_verum_tile(X0) :- inter_verum_tile(X1),overlap(X0,X1).
-er_overlap_inter_verum_tile(X0) :- object(X0),not er_overlap_inter_verum_tile(X0).
er_shape_inter_verum_tile(X0) :- inter_verum_tile(X1),shape(X0,X1).
-er_shape_inter_verum_tile(X0) :- object(X0),not er_shape_inter_verum_tile(X0).
er_inv_smaller_inter_verum_tile(X0) :- inter_verum_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_verum_tile(X0) :- object(X0),not er_inv_smaller_inter_verum_tile(X0).
er_inv_below_inter_verum_tile(X0) :- inter_verum_tile(X1),inv_below(X0,X1).
-er_inv_below_inter_verum_tile(X0) :- object(X0),not er_inv_below_inter_verum_tile(X0).
er_inv_left_inter_verum_tile(X0) :- inter_verum_tile(X1),inv_left(X0,X1).
-er_inv_left_inter_verum_tile(X0) :- object(X0),not er_inv_left_inter_verum_tile(X0).
er_inv_overlap_inter_verum_tile(X0) :- inter_verum_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_verum_tile(X0) :- object(X0),not er_inv_overlap_inter_verum_tile(X0).
er_inv_shape_inter_verum_tile(X0) :- inter_verum_tile(X1),inv_shape(X0,X1).
-er_inv_shape_inter_verum_tile(X0) :- object(X0),not er_inv_shape_inter_verum_tile(X0).
er_comp_smaller_below_inter_verum_tile(X0) :- inter_verum_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_verum_tile(X0) :- object(X0),not er_comp_smaller_below_inter_verum_tile(X0).
er_comp_smaller_left_inter_verum_tile(X0) :- inter_verum_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_verum_tile(X0) :- object(X0),not er_comp_smaller_left_inter_verum_tile(X0).
er_comp_smaller_overlap_inter_verum_tile(X0) :- inter_verum_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_verum_tile(X0) :- object(X0),not er_comp_smaller_overlap_inter_verum_tile(X0).
er_comp_smaller_shape_inter_verum_tile(X0) :- inter_verum_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_verum_tile(X0) :- object(X0),not er_comp_smaller_shape_inter_verum_tile(X0).
er_comp_below_left_inter_verum_tile(X0) :- inter_verum_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_verum_tile(X0) :- object(X0),not er_comp_below_left_inter_verum_tile(X0).
er_comp_below_overlap_inter_verum_tile(X0) :- inter_verum_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_verum_tile(X0) :- object(X0),not er_comp_below_overlap_inter_verum_tile(X0).
er_comp_below_shape_inter_verum_tile(X0) :- inter_verum_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_verum_tile(X0) :- object(X0),not er_comp_below_shape_inter_verum_tile(X0).
er_comp_left_overlap_inter_verum_tile(X0) :- inter_verum_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_verum_tile(X0) :- object(X0),not er_comp_left_overlap_inter_verum_tile(X0).
er_comp_left_shape_inter_verum_tile(X0) :- inter_verum_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_verum_tile(X0) :- object(X0),not er_comp_left_shape_inter_verum_tile(X0).
er_comp_overlap_shape_inter_verum_tile(X0) :- inter_verum_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_verum_tile(X0) :- object(X0),not er_comp_overlap_shape_inter_verum_tile(X0).
er_smaller_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),smaller(X0,X1).
-er_smaller_inter_falsum_opencell(X0) :- object(X0),not er_smaller_inter_falsum_opencell(X0).
er_below_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),below(X0,X1).
-er_below_inter_falsum_opencell(X0) :- object(X0),not er_below_inter_falsum_opencell(X0).
er_left_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),left(X0,X1).
-er_left_inter_falsum_opencell(X0) :- object(X0),not er_left_inter_falsum_opencell(X0).
er_overlap_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),overlap(X0,X1).
-er_overlap_inter_falsum_opencell(X0) :- object(X0),not er_overlap_inter_falsum_opencell(X0).
er_shape_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),shape(X0,X1).
-er_shape_inter_falsum_opencell(X0) :- object(X0),not er_shape_inter_falsum_opencell(X0).
er_inv_smaller_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_falsum_opencell(X0) :- object(X0),not er_inv_smaller_inter_falsum_opencell(X0).
er_inv_below_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),inv_below(X0,X1).
-er_inv_below_inter_falsum_opencell(X0) :- object(X0),not er_inv_below_inter_falsum_opencell(X0).
er_inv_left_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),inv_left(X0,X1).
-er_inv_left_inter_falsum_opencell(X0) :- object(X0),not er_inv_left_inter_falsum_opencell(X0).
er_inv_overlap_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_falsum_opencell(X0) :- object(X0),not er_inv_overlap_inter_falsum_opencell(X0).
er_inv_shape_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),inv_shape(X0,X1).
-er_inv_shape_inter_falsum_opencell(X0) :- object(X0),not er_inv_shape_inter_falsum_opencell(X0).
er_comp_smaller_below_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_falsum_opencell(X0) :- object(X0),not er_comp_smaller_below_inter_falsum_opencell(X0).
er_comp_smaller_left_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_falsum_opencell(X0) :- object(X0),not er_comp_smaller_left_inter_falsum_opencell(X0).
er_comp_smaller_overlap_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_falsum_opencell(X0) :- object(X0),not er_comp_smaller_overlap_inter_falsum_opencell(X0).
er_comp_smaller_shape_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_falsum_opencell(X0) :- object(X0),not er_comp_smaller_shape_inter_falsum_opencell(X0).
er_comp_below_left_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_falsum_opencell(X0) :- object(X0),not er_comp_below_left_inter_falsum_opencell(X0).
er_comp_below_overlap_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_falsum_opencell(X0) :- object(X0),not er_comp_below_overlap_inter_falsum_opencell(X0).
er_comp_below_shape_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_falsum_opencell(X0) :- object(X0),not er_comp_below_shape_inter_falsum_opencell(X0).
er_comp_left_overlap_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_falsum_opencell(X0) :- object(X0),not er_comp_left_overlap_inter_falsum_opencell(X0).
er_comp_left_shape_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_falsum_opencell(X0) :- object(X0),not er_comp_left_shape_inter_falsum_opencell(X0).
er_comp_overlap_shape_inter_falsum_opencell(X0) :- inter_falsum_opencell(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_falsum_opencell(X0) :- object(X0),not er_comp_overlap_shape_inter_falsum_opencell(X0).
er_smaller_inter_falsum_tile(X0) :- inter_falsum_tile(X1),smaller(X0,X1).
-er_smaller_inter_falsum_tile(X0) :- object(X0),not er_smaller_inter_falsum_tile(X0).
er_below_inter_falsum_tile(X0) :- inter_falsum_tile(X1),below(X0,X1).
-er_below_inter_falsum_tile(X0) :- object(X0),not er_below_inter_falsum_tile(X0).
er_left_inter_falsum_tile(X0) :- inter_falsum_tile(X1),left(X0,X1).
-er_left_inter_falsum_tile(X0) :- object(X0),not er_left_inter_falsum_tile(X0).
er_overlap_inter_falsum_tile(X0) :- inter_falsum_tile(X1),overlap(X0,X1).
-er_overlap_inter_falsum_tile(X0) :- object(X0),not er_overlap_inter_falsum_tile(X0).
er_shape_inter_falsum_tile(X0) :- inter_falsum_tile(X1),shape(X0,X1).
-er_shape_inter_falsum_tile(X0) :- object(X0),not er_shape_inter_falsum_tile(X0).
er_inv_smaller_inter_falsum_tile(X0) :- inter_falsum_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_falsum_tile(X0) :- object(X0),not er_inv_smaller_inter_falsum_tile(X0).
er_inv_below_inter_falsum_tile(X0) :- inter_falsum_tile(X1),inv_below(X0,X1).
-er_inv_below_inter_falsum_tile(X0) :- object(X0),not er_inv_below_inter_falsum_tile(X0).
er_inv_left_inter_falsum_tile(X0) :- inter_falsum_tile(X1),inv_left(X0,X1).
-er_inv_left_inter_falsum_tile(X0) :- object(X0),not er_inv_left_inter_falsum_tile(X0).
er_inv_overlap_inter_falsum_tile(X0) :- inter_falsum_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_falsum_tile(X0) :- object(X0),not er_inv_overlap_inter_falsum_tile(X0).
er_inv_shape_inter_falsum_tile(X0) :- inter_falsum_tile(X1),inv_shape(X0,X1).
-er_inv_shape_inter_falsum_tile(X0) :- object(X0),not er_inv_shape_inter_falsum_tile(X0).
er_comp_smaller_below_inter_falsum_tile(X0) :- inter_falsum_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_falsum_tile(X0) :- object(X0),not er_comp_smaller_below_inter_falsum_tile(X0).
er_comp_smaller_left_inter_falsum_tile(X0) :- inter_falsum_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_falsum_tile(X0) :- object(X0),not er_comp_smaller_left_inter_falsum_tile(X0).
er_comp_smaller_overlap_inter_falsum_tile(X0) :- inter_falsum_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_falsum_tile(X0) :- object(X0),not er_comp_smaller_overlap_inter_falsum_tile(X0).
er_comp_smaller_shape_inter_falsum_tile(X0) :- inter_falsum_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_falsum_tile(X0) :- object(X0),not er_comp_smaller_shape_inter_falsum_tile(X0).
er_comp_below_left_inter_falsum_tile(X0) :- inter_falsum_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_falsum_tile(X0) :- object(X0),not er_comp_below_left_inter_falsum_tile(X0).
er_comp_below_overlap_inter_falsum_tile(X0) :- inter_falsum_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_falsum_tile(X0) :- object(X0),not er_comp_below_overlap_inter_falsum_tile(X0).
er_comp_below_shape_inter_falsum_tile(X0) :- inter_falsum_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_falsum_tile(X0) :- object(X0),not er_comp_below_shape_inter_falsum_tile(X0).
er_comp_left_overlap_inter_falsum_tile(X0) :- inter_falsum_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_falsum_tile(X0) :- object(X0),not er_comp_left_overlap_inter_falsum_tile(X0).
er_comp_left_shape_inter_falsum_tile(X0) :- inter_falsum_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_falsum_tile(X0) :- object(X0),not er_comp_left_shape_inter_falsum_tile(X0).
er_comp_overlap_shape_inter_falsum_tile(X0) :- inter_falsum_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_falsum_tile(X0) :- object(X0),not er_comp_overlap_shape_inter_falsum_tile(X0).
er_smaller_inter_opencell_tile(X0) :- inter_opencell_tile(X1),smaller(X0,X1).
-er_smaller_inter_opencell_tile(X0) :- object(X0),not er_smaller_inter_opencell_tile(X0).
er_below_inter_opencell_tile(X0) :- inter_opencell_tile(X1),below(X0,X1).
-er_below_inter_opencell_tile(X0) :- object(X0),not er_below_inter_opencell_tile(X0).
er_left_inter_opencell_tile(X0) :- inter_opencell_tile(X1),left(X0,X1).
-er_left_inter_opencell_tile(X0) :- object(X0),not er_left_inter_opencell_tile(X0).
er_overlap_inter_opencell_tile(X0) :- inter_opencell_tile(X1),overlap(X0,X1).
-er_overlap_inter_opencell_tile(X0) :- object(X0),not er_overlap_inter_opencell_tile(X0).
er_shape_inter_opencell_tile(X0) :- inter_opencell_tile(X1),shape(X0,X1).
-er_shape_inter_opencell_tile(X0) :- object(X0),not er_shape_inter_opencell_tile(X0).
er_inv_smaller_inter_opencell_tile(X0) :- inter_opencell_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_inter_opencell_tile(X0) :- object(X0),not er_inv_smaller_inter_opencell_tile(X0).
er_inv_below_inter_opencell_tile(X0) :- inter_opencell_tile(X1),inv_below(X0,X1).
-er_inv_below_inter_opencell_tile(X0) :- object(X0),not er_inv_below_inter_opencell_tile(X0).
er_inv_left_inter_opencell_tile(X0) :- inter_opencell_tile(X1),inv_left(X0,X1).
-er_inv_left_inter_opencell_tile(X0) :- object(X0),not er_inv_left_inter_opencell_tile(X0).
er_inv_overlap_inter_opencell_tile(X0) :- inter_opencell_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_inter_opencell_tile(X0) :- object(X0),not er_inv_overlap_inter_opencell_tile(X0).
er_inv_shape_inter_opencell_tile(X0) :- inter_opencell_tile(X1),inv_shape(X0,X1).
-er_inv_shape_inter_opencell_tile(X0) :- object(X0),not er_inv_shape_inter_opencell_tile(X0).
er_comp_smaller_below_inter_opencell_tile(X0) :- inter_opencell_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_inter_opencell_tile(X0) :- object(X0),not er_comp_smaller_below_inter_opencell_tile(X0).
er_comp_smaller_left_inter_opencell_tile(X0) :- inter_opencell_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_inter_opencell_tile(X0) :- object(X0),not er_comp_smaller_left_inter_opencell_tile(X0).
er_comp_smaller_overlap_inter_opencell_tile(X0) :- inter_opencell_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_inter_opencell_tile(X0) :- object(X0),not er_comp_smaller_overlap_inter_opencell_tile(X0).
er_comp_smaller_shape_inter_opencell_tile(X0) :- inter_opencell_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_inter_opencell_tile(X0) :- object(X0),not er_comp_smaller_shape_inter_opencell_tile(X0).
er_comp_below_left_inter_opencell_tile(X0) :- inter_opencell_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_inter_opencell_tile(X0) :- object(X0),not er_comp_below_left_inter_opencell_tile(X0).
er_comp_below_overlap_inter_opencell_tile(X0) :- inter_opencell_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_inter_opencell_tile(X0) :- object(X0),not er_comp_below_overlap_inter_opencell_tile(X0).
er_comp_below_shape_inter_opencell_tile(X0) :- inter_opencell_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_inter_opencell_tile(X0) :- object(X0),not er_comp_below_shape_inter_opencell_tile(X0).
er_comp_left_overlap_inter_opencell_tile(X0) :- inter_opencell_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_inter_opencell_tile(X0) :- object(X0),not er_comp_left_overlap_inter_opencell_tile(X0).
er_comp_left_shape_inter_opencell_tile(X0) :- inter_opencell_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_inter_opencell_tile(X0) :- object(X0),not er_comp_left_shape_inter_opencell_tile(X0).
er_comp_overlap_shape_inter_opencell_tile(X0) :- inter_opencell_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_inter_opencell_tile(X0) :- object(X0),not er_comp_overlap_shape_inter_opencell_tile(X0).
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
er_smaller_subset_verum_opencell(X0) :- subset_verum_opencell(X1),smaller(X0,X1).
-er_smaller_subset_verum_opencell(X0) :- object(X0),not er_smaller_subset_verum_opencell(X0).
er_below_subset_verum_opencell(X0) :- subset_verum_opencell(X1),below(X0,X1).
-er_below_subset_verum_opencell(X0) :- object(X0),not er_below_subset_verum_opencell(X0).
er_left_subset_verum_opencell(X0) :- subset_verum_opencell(X1),left(X0,X1).
-er_left_subset_verum_opencell(X0) :- object(X0),not er_left_subset_verum_opencell(X0).
er_overlap_subset_verum_opencell(X0) :- subset_verum_opencell(X1),overlap(X0,X1).
-er_overlap_subset_verum_opencell(X0) :- object(X0),not er_overlap_subset_verum_opencell(X0).
er_shape_subset_verum_opencell(X0) :- subset_verum_opencell(X1),shape(X0,X1).
-er_shape_subset_verum_opencell(X0) :- object(X0),not er_shape_subset_verum_opencell(X0).
er_inv_smaller_subset_verum_opencell(X0) :- subset_verum_opencell(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_verum_opencell(X0) :- object(X0),not er_inv_smaller_subset_verum_opencell(X0).
er_inv_below_subset_verum_opencell(X0) :- subset_verum_opencell(X1),inv_below(X0,X1).
-er_inv_below_subset_verum_opencell(X0) :- object(X0),not er_inv_below_subset_verum_opencell(X0).
er_inv_left_subset_verum_opencell(X0) :- subset_verum_opencell(X1),inv_left(X0,X1).
-er_inv_left_subset_verum_opencell(X0) :- object(X0),not er_inv_left_subset_verum_opencell(X0).
er_inv_overlap_subset_verum_opencell(X0) :- subset_verum_opencell(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_verum_opencell(X0) :- object(X0),not er_inv_overlap_subset_verum_opencell(X0).
er_inv_shape_subset_verum_opencell(X0) :- subset_verum_opencell(X1),inv_shape(X0,X1).
-er_inv_shape_subset_verum_opencell(X0) :- object(X0),not er_inv_shape_subset_verum_opencell(X0).
er_comp_smaller_below_subset_verum_opencell(X0) :- subset_verum_opencell(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_verum_opencell(X0) :- object(X0),not er_comp_smaller_below_subset_verum_opencell(X0).
er_comp_smaller_left_subset_verum_opencell(X0) :- subset_verum_opencell(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_verum_opencell(X0) :- object(X0),not er_comp_smaller_left_subset_verum_opencell(X0).
er_comp_smaller_overlap_subset_verum_opencell(X0) :- subset_verum_opencell(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_verum_opencell(X0) :- object(X0),not er_comp_smaller_overlap_subset_verum_opencell(X0).
er_comp_smaller_shape_subset_verum_opencell(X0) :- subset_verum_opencell(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_verum_opencell(X0) :- object(X0),not er_comp_smaller_shape_subset_verum_opencell(X0).
er_comp_below_left_subset_verum_opencell(X0) :- subset_verum_opencell(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_verum_opencell(X0) :- object(X0),not er_comp_below_left_subset_verum_opencell(X0).
er_comp_below_overlap_subset_verum_opencell(X0) :- subset_verum_opencell(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_verum_opencell(X0) :- object(X0),not er_comp_below_overlap_subset_verum_opencell(X0).
er_comp_below_shape_subset_verum_opencell(X0) :- subset_verum_opencell(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_verum_opencell(X0) :- object(X0),not er_comp_below_shape_subset_verum_opencell(X0).
er_comp_left_overlap_subset_verum_opencell(X0) :- subset_verum_opencell(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_verum_opencell(X0) :- object(X0),not er_comp_left_overlap_subset_verum_opencell(X0).
er_comp_left_shape_subset_verum_opencell(X0) :- subset_verum_opencell(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_verum_opencell(X0) :- object(X0),not er_comp_left_shape_subset_verum_opencell(X0).
er_comp_overlap_shape_subset_verum_opencell(X0) :- subset_verum_opencell(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_verum_opencell(X0) :- object(X0),not er_comp_overlap_shape_subset_verum_opencell(X0).
er_smaller_subset_verum_tile(X0) :- subset_verum_tile(X1),smaller(X0,X1).
-er_smaller_subset_verum_tile(X0) :- object(X0),not er_smaller_subset_verum_tile(X0).
er_below_subset_verum_tile(X0) :- subset_verum_tile(X1),below(X0,X1).
-er_below_subset_verum_tile(X0) :- object(X0),not er_below_subset_verum_tile(X0).
er_left_subset_verum_tile(X0) :- subset_verum_tile(X1),left(X0,X1).
-er_left_subset_verum_tile(X0) :- object(X0),not er_left_subset_verum_tile(X0).
er_overlap_subset_verum_tile(X0) :- subset_verum_tile(X1),overlap(X0,X1).
-er_overlap_subset_verum_tile(X0) :- object(X0),not er_overlap_subset_verum_tile(X0).
er_shape_subset_verum_tile(X0) :- subset_verum_tile(X1),shape(X0,X1).
-er_shape_subset_verum_tile(X0) :- object(X0),not er_shape_subset_verum_tile(X0).
er_inv_smaller_subset_verum_tile(X0) :- subset_verum_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_verum_tile(X0) :- object(X0),not er_inv_smaller_subset_verum_tile(X0).
er_inv_below_subset_verum_tile(X0) :- subset_verum_tile(X1),inv_below(X0,X1).
-er_inv_below_subset_verum_tile(X0) :- object(X0),not er_inv_below_subset_verum_tile(X0).
er_inv_left_subset_verum_tile(X0) :- subset_verum_tile(X1),inv_left(X0,X1).
-er_inv_left_subset_verum_tile(X0) :- object(X0),not er_inv_left_subset_verum_tile(X0).
er_inv_overlap_subset_verum_tile(X0) :- subset_verum_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_verum_tile(X0) :- object(X0),not er_inv_overlap_subset_verum_tile(X0).
er_inv_shape_subset_verum_tile(X0) :- subset_verum_tile(X1),inv_shape(X0,X1).
-er_inv_shape_subset_verum_tile(X0) :- object(X0),not er_inv_shape_subset_verum_tile(X0).
er_comp_smaller_below_subset_verum_tile(X0) :- subset_verum_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_verum_tile(X0) :- object(X0),not er_comp_smaller_below_subset_verum_tile(X0).
er_comp_smaller_left_subset_verum_tile(X0) :- subset_verum_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_verum_tile(X0) :- object(X0),not er_comp_smaller_left_subset_verum_tile(X0).
er_comp_smaller_overlap_subset_verum_tile(X0) :- subset_verum_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_verum_tile(X0) :- object(X0),not er_comp_smaller_overlap_subset_verum_tile(X0).
er_comp_smaller_shape_subset_verum_tile(X0) :- subset_verum_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_verum_tile(X0) :- object(X0),not er_comp_smaller_shape_subset_verum_tile(X0).
er_comp_below_left_subset_verum_tile(X0) :- subset_verum_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_verum_tile(X0) :- object(X0),not er_comp_below_left_subset_verum_tile(X0).
er_comp_below_overlap_subset_verum_tile(X0) :- subset_verum_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_verum_tile(X0) :- object(X0),not er_comp_below_overlap_subset_verum_tile(X0).
er_comp_below_shape_subset_verum_tile(X0) :- subset_verum_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_verum_tile(X0) :- object(X0),not er_comp_below_shape_subset_verum_tile(X0).
er_comp_left_overlap_subset_verum_tile(X0) :- subset_verum_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_verum_tile(X0) :- object(X0),not er_comp_left_overlap_subset_verum_tile(X0).
er_comp_left_shape_subset_verum_tile(X0) :- subset_verum_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_verum_tile(X0) :- object(X0),not er_comp_left_shape_subset_verum_tile(X0).
er_comp_overlap_shape_subset_verum_tile(X0) :- subset_verum_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_verum_tile(X0) :- object(X0),not er_comp_overlap_shape_subset_verum_tile(X0).
er_smaller_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),smaller(X0,X1).
-er_smaller_subset_falsum_opencell(X0) :- object(X0),not er_smaller_subset_falsum_opencell(X0).
er_below_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),below(X0,X1).
-er_below_subset_falsum_opencell(X0) :- object(X0),not er_below_subset_falsum_opencell(X0).
er_left_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),left(X0,X1).
-er_left_subset_falsum_opencell(X0) :- object(X0),not er_left_subset_falsum_opencell(X0).
er_overlap_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),overlap(X0,X1).
-er_overlap_subset_falsum_opencell(X0) :- object(X0),not er_overlap_subset_falsum_opencell(X0).
er_shape_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),shape(X0,X1).
-er_shape_subset_falsum_opencell(X0) :- object(X0),not er_shape_subset_falsum_opencell(X0).
er_inv_smaller_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_falsum_opencell(X0) :- object(X0),not er_inv_smaller_subset_falsum_opencell(X0).
er_inv_below_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),inv_below(X0,X1).
-er_inv_below_subset_falsum_opencell(X0) :- object(X0),not er_inv_below_subset_falsum_opencell(X0).
er_inv_left_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),inv_left(X0,X1).
-er_inv_left_subset_falsum_opencell(X0) :- object(X0),not er_inv_left_subset_falsum_opencell(X0).
er_inv_overlap_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_falsum_opencell(X0) :- object(X0),not er_inv_overlap_subset_falsum_opencell(X0).
er_inv_shape_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),inv_shape(X0,X1).
-er_inv_shape_subset_falsum_opencell(X0) :- object(X0),not er_inv_shape_subset_falsum_opencell(X0).
er_comp_smaller_below_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_falsum_opencell(X0) :- object(X0),not er_comp_smaller_below_subset_falsum_opencell(X0).
er_comp_smaller_left_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_falsum_opencell(X0) :- object(X0),not er_comp_smaller_left_subset_falsum_opencell(X0).
er_comp_smaller_overlap_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_falsum_opencell(X0) :- object(X0),not er_comp_smaller_overlap_subset_falsum_opencell(X0).
er_comp_smaller_shape_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_falsum_opencell(X0) :- object(X0),not er_comp_smaller_shape_subset_falsum_opencell(X0).
er_comp_below_left_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_falsum_opencell(X0) :- object(X0),not er_comp_below_left_subset_falsum_opencell(X0).
er_comp_below_overlap_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_falsum_opencell(X0) :- object(X0),not er_comp_below_overlap_subset_falsum_opencell(X0).
er_comp_below_shape_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_falsum_opencell(X0) :- object(X0),not er_comp_below_shape_subset_falsum_opencell(X0).
er_comp_left_overlap_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_falsum_opencell(X0) :- object(X0),not er_comp_left_overlap_subset_falsum_opencell(X0).
er_comp_left_shape_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_falsum_opencell(X0) :- object(X0),not er_comp_left_shape_subset_falsum_opencell(X0).
er_comp_overlap_shape_subset_falsum_opencell(X0) :- subset_falsum_opencell(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_falsum_opencell(X0) :- object(X0),not er_comp_overlap_shape_subset_falsum_opencell(X0).
er_smaller_subset_falsum_tile(X0) :- subset_falsum_tile(X1),smaller(X0,X1).
-er_smaller_subset_falsum_tile(X0) :- object(X0),not er_smaller_subset_falsum_tile(X0).
er_below_subset_falsum_tile(X0) :- subset_falsum_tile(X1),below(X0,X1).
-er_below_subset_falsum_tile(X0) :- object(X0),not er_below_subset_falsum_tile(X0).
er_left_subset_falsum_tile(X0) :- subset_falsum_tile(X1),left(X0,X1).
-er_left_subset_falsum_tile(X0) :- object(X0),not er_left_subset_falsum_tile(X0).
er_overlap_subset_falsum_tile(X0) :- subset_falsum_tile(X1),overlap(X0,X1).
-er_overlap_subset_falsum_tile(X0) :- object(X0),not er_overlap_subset_falsum_tile(X0).
er_shape_subset_falsum_tile(X0) :- subset_falsum_tile(X1),shape(X0,X1).
-er_shape_subset_falsum_tile(X0) :- object(X0),not er_shape_subset_falsum_tile(X0).
er_inv_smaller_subset_falsum_tile(X0) :- subset_falsum_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_falsum_tile(X0) :- object(X0),not er_inv_smaller_subset_falsum_tile(X0).
er_inv_below_subset_falsum_tile(X0) :- subset_falsum_tile(X1),inv_below(X0,X1).
-er_inv_below_subset_falsum_tile(X0) :- object(X0),not er_inv_below_subset_falsum_tile(X0).
er_inv_left_subset_falsum_tile(X0) :- subset_falsum_tile(X1),inv_left(X0,X1).
-er_inv_left_subset_falsum_tile(X0) :- object(X0),not er_inv_left_subset_falsum_tile(X0).
er_inv_overlap_subset_falsum_tile(X0) :- subset_falsum_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_falsum_tile(X0) :- object(X0),not er_inv_overlap_subset_falsum_tile(X0).
er_inv_shape_subset_falsum_tile(X0) :- subset_falsum_tile(X1),inv_shape(X0,X1).
-er_inv_shape_subset_falsum_tile(X0) :- object(X0),not er_inv_shape_subset_falsum_tile(X0).
er_comp_smaller_below_subset_falsum_tile(X0) :- subset_falsum_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_falsum_tile(X0) :- object(X0),not er_comp_smaller_below_subset_falsum_tile(X0).
er_comp_smaller_left_subset_falsum_tile(X0) :- subset_falsum_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_falsum_tile(X0) :- object(X0),not er_comp_smaller_left_subset_falsum_tile(X0).
er_comp_smaller_overlap_subset_falsum_tile(X0) :- subset_falsum_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_falsum_tile(X0) :- object(X0),not er_comp_smaller_overlap_subset_falsum_tile(X0).
er_comp_smaller_shape_subset_falsum_tile(X0) :- subset_falsum_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_falsum_tile(X0) :- object(X0),not er_comp_smaller_shape_subset_falsum_tile(X0).
er_comp_below_left_subset_falsum_tile(X0) :- subset_falsum_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_falsum_tile(X0) :- object(X0),not er_comp_below_left_subset_falsum_tile(X0).
er_comp_below_overlap_subset_falsum_tile(X0) :- subset_falsum_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_falsum_tile(X0) :- object(X0),not er_comp_below_overlap_subset_falsum_tile(X0).
er_comp_below_shape_subset_falsum_tile(X0) :- subset_falsum_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_falsum_tile(X0) :- object(X0),not er_comp_below_shape_subset_falsum_tile(X0).
er_comp_left_overlap_subset_falsum_tile(X0) :- subset_falsum_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_falsum_tile(X0) :- object(X0),not er_comp_left_overlap_subset_falsum_tile(X0).
er_comp_left_shape_subset_falsum_tile(X0) :- subset_falsum_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_falsum_tile(X0) :- object(X0),not er_comp_left_shape_subset_falsum_tile(X0).
er_comp_overlap_shape_subset_falsum_tile(X0) :- subset_falsum_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_falsum_tile(X0) :- object(X0),not er_comp_overlap_shape_subset_falsum_tile(X0).
er_smaller_subset_opencell_tile(X0) :- subset_opencell_tile(X1),smaller(X0,X1).
-er_smaller_subset_opencell_tile(X0) :- object(X0),not er_smaller_subset_opencell_tile(X0).
er_below_subset_opencell_tile(X0) :- subset_opencell_tile(X1),below(X0,X1).
-er_below_subset_opencell_tile(X0) :- object(X0),not er_below_subset_opencell_tile(X0).
er_left_subset_opencell_tile(X0) :- subset_opencell_tile(X1),left(X0,X1).
-er_left_subset_opencell_tile(X0) :- object(X0),not er_left_subset_opencell_tile(X0).
er_overlap_subset_opencell_tile(X0) :- subset_opencell_tile(X1),overlap(X0,X1).
-er_overlap_subset_opencell_tile(X0) :- object(X0),not er_overlap_subset_opencell_tile(X0).
er_shape_subset_opencell_tile(X0) :- subset_opencell_tile(X1),shape(X0,X1).
-er_shape_subset_opencell_tile(X0) :- object(X0),not er_shape_subset_opencell_tile(X0).
er_inv_smaller_subset_opencell_tile(X0) :- subset_opencell_tile(X1),inv_smaller(X0,X1).
-er_inv_smaller_subset_opencell_tile(X0) :- object(X0),not er_inv_smaller_subset_opencell_tile(X0).
er_inv_below_subset_opencell_tile(X0) :- subset_opencell_tile(X1),inv_below(X0,X1).
-er_inv_below_subset_opencell_tile(X0) :- object(X0),not er_inv_below_subset_opencell_tile(X0).
er_inv_left_subset_opencell_tile(X0) :- subset_opencell_tile(X1),inv_left(X0,X1).
-er_inv_left_subset_opencell_tile(X0) :- object(X0),not er_inv_left_subset_opencell_tile(X0).
er_inv_overlap_subset_opencell_tile(X0) :- subset_opencell_tile(X1),inv_overlap(X0,X1).
-er_inv_overlap_subset_opencell_tile(X0) :- object(X0),not er_inv_overlap_subset_opencell_tile(X0).
er_inv_shape_subset_opencell_tile(X0) :- subset_opencell_tile(X1),inv_shape(X0,X1).
-er_inv_shape_subset_opencell_tile(X0) :- object(X0),not er_inv_shape_subset_opencell_tile(X0).
er_comp_smaller_below_subset_opencell_tile(X0) :- subset_opencell_tile(X1),comp_smaller_below(X0,X1).
-er_comp_smaller_below_subset_opencell_tile(X0) :- object(X0),not er_comp_smaller_below_subset_opencell_tile(X0).
er_comp_smaller_left_subset_opencell_tile(X0) :- subset_opencell_tile(X1),comp_smaller_left(X0,X1).
-er_comp_smaller_left_subset_opencell_tile(X0) :- object(X0),not er_comp_smaller_left_subset_opencell_tile(X0).
er_comp_smaller_overlap_subset_opencell_tile(X0) :- subset_opencell_tile(X1),comp_smaller_overlap(X0,X1).
-er_comp_smaller_overlap_subset_opencell_tile(X0) :- object(X0),not er_comp_smaller_overlap_subset_opencell_tile(X0).
er_comp_smaller_shape_subset_opencell_tile(X0) :- subset_opencell_tile(X1),comp_smaller_shape(X0,X1).
-er_comp_smaller_shape_subset_opencell_tile(X0) :- object(X0),not er_comp_smaller_shape_subset_opencell_tile(X0).
er_comp_below_left_subset_opencell_tile(X0) :- subset_opencell_tile(X1),comp_below_left(X0,X1).
-er_comp_below_left_subset_opencell_tile(X0) :- object(X0),not er_comp_below_left_subset_opencell_tile(X0).
er_comp_below_overlap_subset_opencell_tile(X0) :- subset_opencell_tile(X1),comp_below_overlap(X0,X1).
-er_comp_below_overlap_subset_opencell_tile(X0) :- object(X0),not er_comp_below_overlap_subset_opencell_tile(X0).
er_comp_below_shape_subset_opencell_tile(X0) :- subset_opencell_tile(X1),comp_below_shape(X0,X1).
-er_comp_below_shape_subset_opencell_tile(X0) :- object(X0),not er_comp_below_shape_subset_opencell_tile(X0).
er_comp_left_overlap_subset_opencell_tile(X0) :- subset_opencell_tile(X1),comp_left_overlap(X0,X1).
-er_comp_left_overlap_subset_opencell_tile(X0) :- object(X0),not er_comp_left_overlap_subset_opencell_tile(X0).
er_comp_left_shape_subset_opencell_tile(X0) :- subset_opencell_tile(X1),comp_left_shape(X0,X1).
-er_comp_left_shape_subset_opencell_tile(X0) :- object(X0),not er_comp_left_shape_subset_opencell_tile(X0).
er_comp_overlap_shape_subset_opencell_tile(X0) :- subset_opencell_tile(X1),comp_overlap_shape(X0,X1).
-er_comp_overlap_shape_subset_opencell_tile(X0) :- object(X0),not er_comp_overlap_shape_subset_opencell_tile(X0).
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
inter_verum_er_smaller_opencell(X0) :- verum(X0),er_smaller_opencell(X0).
-inter_verum_er_smaller_opencell(X0) :- object(X0),not inter_verum_er_smaller_opencell(X0).
inter_verum_er_below_opencell(X0) :- verum(X0),er_below_opencell(X0).
-inter_verum_er_below_opencell(X0) :- object(X0),not inter_verum_er_below_opencell(X0).
inter_verum_er_left_opencell(X0) :- verum(X0),er_left_opencell(X0).
-inter_verum_er_left_opencell(X0) :- object(X0),not inter_verum_er_left_opencell(X0).
inter_verum_er_overlap_opencell(X0) :- verum(X0),er_overlap_opencell(X0).
-inter_verum_er_overlap_opencell(X0) :- object(X0),not inter_verum_er_overlap_opencell(X0).
inter_verum_er_shape_opencell(X0) :- verum(X0),er_shape_opencell(X0).
-inter_verum_er_shape_opencell(X0) :- object(X0),not inter_verum_er_shape_opencell(X0).
inter_verum_er_smaller_tile(X0) :- verum(X0),er_smaller_tile(X0).
-inter_verum_er_smaller_tile(X0) :- object(X0),not inter_verum_er_smaller_tile(X0).
inter_verum_er_below_tile(X0) :- verum(X0),er_below_tile(X0).
-inter_verum_er_below_tile(X0) :- object(X0),not inter_verum_er_below_tile(X0).
inter_verum_er_left_tile(X0) :- verum(X0),er_left_tile(X0).
-inter_verum_er_left_tile(X0) :- object(X0),not inter_verum_er_left_tile(X0).
inter_verum_er_overlap_tile(X0) :- verum(X0),er_overlap_tile(X0).
-inter_verum_er_overlap_tile(X0) :- object(X0),not inter_verum_er_overlap_tile(X0).
inter_verum_er_shape_tile(X0) :- verum(X0),er_shape_tile(X0).
-inter_verum_er_shape_tile(X0) :- object(X0),not inter_verum_er_shape_tile(X0).
inter_verum_inter_verum_falsum(X0) :- verum(X0),inter_verum_falsum(X0).
-inter_verum_inter_verum_falsum(X0) :- object(X0),not inter_verum_inter_verum_falsum(X0).
inter_verum_inter_verum_opencell(X0) :- verum(X0),inter_verum_opencell(X0).
-inter_verum_inter_verum_opencell(X0) :- object(X0),not inter_verum_inter_verum_opencell(X0).
inter_verum_inter_verum_tile(X0) :- verum(X0),inter_verum_tile(X0).
-inter_verum_inter_verum_tile(X0) :- object(X0),not inter_verum_inter_verum_tile(X0).
inter_verum_inter_falsum_opencell(X0) :- verum(X0),inter_falsum_opencell(X0).
-inter_verum_inter_falsum_opencell(X0) :- object(X0),not inter_verum_inter_falsum_opencell(X0).
inter_verum_inter_falsum_tile(X0) :- verum(X0),inter_falsum_tile(X0).
-inter_verum_inter_falsum_tile(X0) :- object(X0),not inter_verum_inter_falsum_tile(X0).
inter_verum_inter_opencell_tile(X0) :- verum(X0),inter_opencell_tile(X0).
-inter_verum_inter_opencell_tile(X0) :- object(X0),not inter_verum_inter_opencell_tile(X0).
inter_verum_subset_verum_falsum(X0) :- verum(X0),subset_verum_falsum(null).
-inter_verum_subset_verum_falsum(X0) :- object(X0),not inter_verum_subset_verum_falsum(X0).
inter_verum_subset_verum_opencell(X0) :- verum(X0),subset_verum_opencell(null).
-inter_verum_subset_verum_opencell(X0) :- object(X0),not inter_verum_subset_verum_opencell(X0).
inter_verum_subset_verum_tile(X0) :- verum(X0),subset_verum_tile(null).
-inter_verum_subset_verum_tile(X0) :- object(X0),not inter_verum_subset_verum_tile(X0).
inter_verum_subset_falsum_opencell(X0) :- verum(X0),subset_falsum_opencell(null).
-inter_verum_subset_falsum_opencell(X0) :- object(X0),not inter_verum_subset_falsum_opencell(X0).
inter_verum_subset_falsum_tile(X0) :- verum(X0),subset_falsum_tile(null).
-inter_verum_subset_falsum_tile(X0) :- object(X0),not inter_verum_subset_falsum_tile(X0).
inter_verum_subset_opencell_tile(X0) :- verum(X0),subset_opencell_tile(null).
-inter_verum_subset_opencell_tile(X0) :- object(X0),not inter_verum_subset_opencell_tile(X0).
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
inter_falsum_er_smaller_opencell(X0) :- falsum(X0),er_smaller_opencell(X0).
-inter_falsum_er_smaller_opencell(X0) :- object(X0),not inter_falsum_er_smaller_opencell(X0).
inter_falsum_er_below_opencell(X0) :- falsum(X0),er_below_opencell(X0).
-inter_falsum_er_below_opencell(X0) :- object(X0),not inter_falsum_er_below_opencell(X0).
inter_falsum_er_left_opencell(X0) :- falsum(X0),er_left_opencell(X0).
-inter_falsum_er_left_opencell(X0) :- object(X0),not inter_falsum_er_left_opencell(X0).
inter_falsum_er_overlap_opencell(X0) :- falsum(X0),er_overlap_opencell(X0).
-inter_falsum_er_overlap_opencell(X0) :- object(X0),not inter_falsum_er_overlap_opencell(X0).
inter_falsum_er_shape_opencell(X0) :- falsum(X0),er_shape_opencell(X0).
-inter_falsum_er_shape_opencell(X0) :- object(X0),not inter_falsum_er_shape_opencell(X0).
inter_falsum_er_smaller_tile(X0) :- falsum(X0),er_smaller_tile(X0).
-inter_falsum_er_smaller_tile(X0) :- object(X0),not inter_falsum_er_smaller_tile(X0).
inter_falsum_er_below_tile(X0) :- falsum(X0),er_below_tile(X0).
-inter_falsum_er_below_tile(X0) :- object(X0),not inter_falsum_er_below_tile(X0).
inter_falsum_er_left_tile(X0) :- falsum(X0),er_left_tile(X0).
-inter_falsum_er_left_tile(X0) :- object(X0),not inter_falsum_er_left_tile(X0).
inter_falsum_er_overlap_tile(X0) :- falsum(X0),er_overlap_tile(X0).
-inter_falsum_er_overlap_tile(X0) :- object(X0),not inter_falsum_er_overlap_tile(X0).
inter_falsum_er_shape_tile(X0) :- falsum(X0),er_shape_tile(X0).
-inter_falsum_er_shape_tile(X0) :- object(X0),not inter_falsum_er_shape_tile(X0).
inter_falsum_inter_verum_falsum(X0) :- falsum(X0),inter_verum_falsum(X0).
-inter_falsum_inter_verum_falsum(X0) :- object(X0),not inter_falsum_inter_verum_falsum(X0).
inter_falsum_inter_verum_opencell(X0) :- falsum(X0),inter_verum_opencell(X0).
-inter_falsum_inter_verum_opencell(X0) :- object(X0),not inter_falsum_inter_verum_opencell(X0).
inter_falsum_inter_verum_tile(X0) :- falsum(X0),inter_verum_tile(X0).
-inter_falsum_inter_verum_tile(X0) :- object(X0),not inter_falsum_inter_verum_tile(X0).
inter_falsum_inter_falsum_opencell(X0) :- falsum(X0),inter_falsum_opencell(X0).
-inter_falsum_inter_falsum_opencell(X0) :- object(X0),not inter_falsum_inter_falsum_opencell(X0).
inter_falsum_inter_falsum_tile(X0) :- falsum(X0),inter_falsum_tile(X0).
-inter_falsum_inter_falsum_tile(X0) :- object(X0),not inter_falsum_inter_falsum_tile(X0).
inter_falsum_inter_opencell_tile(X0) :- falsum(X0),inter_opencell_tile(X0).
-inter_falsum_inter_opencell_tile(X0) :- object(X0),not inter_falsum_inter_opencell_tile(X0).
inter_falsum_subset_verum_falsum(X0) :- falsum(X0),subset_verum_falsum(null).
-inter_falsum_subset_verum_falsum(X0) :- object(X0),not inter_falsum_subset_verum_falsum(X0).
inter_falsum_subset_verum_opencell(X0) :- falsum(X0),subset_verum_opencell(null).
-inter_falsum_subset_verum_opencell(X0) :- object(X0),not inter_falsum_subset_verum_opencell(X0).
inter_falsum_subset_verum_tile(X0) :- falsum(X0),subset_verum_tile(null).
-inter_falsum_subset_verum_tile(X0) :- object(X0),not inter_falsum_subset_verum_tile(X0).
inter_falsum_subset_falsum_opencell(X0) :- falsum(X0),subset_falsum_opencell(null).
-inter_falsum_subset_falsum_opencell(X0) :- object(X0),not inter_falsum_subset_falsum_opencell(X0).
inter_falsum_subset_falsum_tile(X0) :- falsum(X0),subset_falsum_tile(null).
-inter_falsum_subset_falsum_tile(X0) :- object(X0),not inter_falsum_subset_falsum_tile(X0).
inter_falsum_subset_opencell_tile(X0) :- falsum(X0),subset_opencell_tile(null).
-inter_falsum_subset_opencell_tile(X0) :- object(X0),not inter_falsum_subset_opencell_tile(X0).
inter_opencell_er_smaller_verum(X0) :- opencell(X0),er_smaller_verum(X0).
-inter_opencell_er_smaller_verum(X0) :- object(X0),not inter_opencell_er_smaller_verum(X0).
inter_opencell_er_below_verum(X0) :- opencell(X0),er_below_verum(X0).
-inter_opencell_er_below_verum(X0) :- object(X0),not inter_opencell_er_below_verum(X0).
inter_opencell_er_left_verum(X0) :- opencell(X0),er_left_verum(X0).
-inter_opencell_er_left_verum(X0) :- object(X0),not inter_opencell_er_left_verum(X0).
inter_opencell_er_overlap_verum(X0) :- opencell(X0),er_overlap_verum(X0).
-inter_opencell_er_overlap_verum(X0) :- object(X0),not inter_opencell_er_overlap_verum(X0).
inter_opencell_er_shape_verum(X0) :- opencell(X0),er_shape_verum(X0).
-inter_opencell_er_shape_verum(X0) :- object(X0),not inter_opencell_er_shape_verum(X0).
inter_opencell_er_smaller_falsum(X0) :- opencell(X0),er_smaller_falsum(X0).
-inter_opencell_er_smaller_falsum(X0) :- object(X0),not inter_opencell_er_smaller_falsum(X0).
inter_opencell_er_below_falsum(X0) :- opencell(X0),er_below_falsum(X0).
-inter_opencell_er_below_falsum(X0) :- object(X0),not inter_opencell_er_below_falsum(X0).
inter_opencell_er_left_falsum(X0) :- opencell(X0),er_left_falsum(X0).
-inter_opencell_er_left_falsum(X0) :- object(X0),not inter_opencell_er_left_falsum(X0).
inter_opencell_er_overlap_falsum(X0) :- opencell(X0),er_overlap_falsum(X0).
-inter_opencell_er_overlap_falsum(X0) :- object(X0),not inter_opencell_er_overlap_falsum(X0).
inter_opencell_er_shape_falsum(X0) :- opencell(X0),er_shape_falsum(X0).
-inter_opencell_er_shape_falsum(X0) :- object(X0),not inter_opencell_er_shape_falsum(X0).
inter_opencell_er_smaller_opencell(X0) :- opencell(X0),er_smaller_opencell(X0).
-inter_opencell_er_smaller_opencell(X0) :- object(X0),not inter_opencell_er_smaller_opencell(X0).
inter_opencell_er_below_opencell(X0) :- opencell(X0),er_below_opencell(X0).
-inter_opencell_er_below_opencell(X0) :- object(X0),not inter_opencell_er_below_opencell(X0).
inter_opencell_er_left_opencell(X0) :- opencell(X0),er_left_opencell(X0).
-inter_opencell_er_left_opencell(X0) :- object(X0),not inter_opencell_er_left_opencell(X0).
inter_opencell_er_overlap_opencell(X0) :- opencell(X0),er_overlap_opencell(X0).
-inter_opencell_er_overlap_opencell(X0) :- object(X0),not inter_opencell_er_overlap_opencell(X0).
inter_opencell_er_shape_opencell(X0) :- opencell(X0),er_shape_opencell(X0).
-inter_opencell_er_shape_opencell(X0) :- object(X0),not inter_opencell_er_shape_opencell(X0).
inter_opencell_er_smaller_tile(X0) :- opencell(X0),er_smaller_tile(X0).
-inter_opencell_er_smaller_tile(X0) :- object(X0),not inter_opencell_er_smaller_tile(X0).
inter_opencell_er_below_tile(X0) :- opencell(X0),er_below_tile(X0).
-inter_opencell_er_below_tile(X0) :- object(X0),not inter_opencell_er_below_tile(X0).
inter_opencell_er_left_tile(X0) :- opencell(X0),er_left_tile(X0).
-inter_opencell_er_left_tile(X0) :- object(X0),not inter_opencell_er_left_tile(X0).
inter_opencell_er_overlap_tile(X0) :- opencell(X0),er_overlap_tile(X0).
-inter_opencell_er_overlap_tile(X0) :- object(X0),not inter_opencell_er_overlap_tile(X0).
inter_opencell_er_shape_tile(X0) :- opencell(X0),er_shape_tile(X0).
-inter_opencell_er_shape_tile(X0) :- object(X0),not inter_opencell_er_shape_tile(X0).
inter_opencell_inter_verum_falsum(X0) :- opencell(X0),inter_verum_falsum(X0).
-inter_opencell_inter_verum_falsum(X0) :- object(X0),not inter_opencell_inter_verum_falsum(X0).
inter_opencell_inter_verum_opencell(X0) :- opencell(X0),inter_verum_opencell(X0).
-inter_opencell_inter_verum_opencell(X0) :- object(X0),not inter_opencell_inter_verum_opencell(X0).
inter_opencell_inter_verum_tile(X0) :- opencell(X0),inter_verum_tile(X0).
-inter_opencell_inter_verum_tile(X0) :- object(X0),not inter_opencell_inter_verum_tile(X0).
inter_opencell_inter_falsum_opencell(X0) :- opencell(X0),inter_falsum_opencell(X0).
-inter_opencell_inter_falsum_opencell(X0) :- object(X0),not inter_opencell_inter_falsum_opencell(X0).
inter_opencell_inter_falsum_tile(X0) :- opencell(X0),inter_falsum_tile(X0).
-inter_opencell_inter_falsum_tile(X0) :- object(X0),not inter_opencell_inter_falsum_tile(X0).
inter_opencell_inter_opencell_tile(X0) :- opencell(X0),inter_opencell_tile(X0).
-inter_opencell_inter_opencell_tile(X0) :- object(X0),not inter_opencell_inter_opencell_tile(X0).
inter_opencell_subset_verum_falsum(X0) :- opencell(X0),subset_verum_falsum(null).
-inter_opencell_subset_verum_falsum(X0) :- object(X0),not inter_opencell_subset_verum_falsum(X0).
inter_opencell_subset_verum_opencell(X0) :- opencell(X0),subset_verum_opencell(null).
-inter_opencell_subset_verum_opencell(X0) :- object(X0),not inter_opencell_subset_verum_opencell(X0).
inter_opencell_subset_verum_tile(X0) :- opencell(X0),subset_verum_tile(null).
-inter_opencell_subset_verum_tile(X0) :- object(X0),not inter_opencell_subset_verum_tile(X0).
inter_opencell_subset_falsum_opencell(X0) :- opencell(X0),subset_falsum_opencell(null).
-inter_opencell_subset_falsum_opencell(X0) :- object(X0),not inter_opencell_subset_falsum_opencell(X0).
inter_opencell_subset_falsum_tile(X0) :- opencell(X0),subset_falsum_tile(null).
-inter_opencell_subset_falsum_tile(X0) :- object(X0),not inter_opencell_subset_falsum_tile(X0).
inter_opencell_subset_opencell_tile(X0) :- opencell(X0),subset_opencell_tile(null).
-inter_opencell_subset_opencell_tile(X0) :- object(X0),not inter_opencell_subset_opencell_tile(X0).
inter_tile_er_smaller_verum(X0) :- tile(X0),er_smaller_verum(X0).
-inter_tile_er_smaller_verum(X0) :- object(X0),not inter_tile_er_smaller_verum(X0).
inter_tile_er_below_verum(X0) :- tile(X0),er_below_verum(X0).
-inter_tile_er_below_verum(X0) :- object(X0),not inter_tile_er_below_verum(X0).
inter_tile_er_left_verum(X0) :- tile(X0),er_left_verum(X0).
-inter_tile_er_left_verum(X0) :- object(X0),not inter_tile_er_left_verum(X0).
inter_tile_er_overlap_verum(X0) :- tile(X0),er_overlap_verum(X0).
-inter_tile_er_overlap_verum(X0) :- object(X0),not inter_tile_er_overlap_verum(X0).
inter_tile_er_shape_verum(X0) :- tile(X0),er_shape_verum(X0).
-inter_tile_er_shape_verum(X0) :- object(X0),not inter_tile_er_shape_verum(X0).
inter_tile_er_smaller_falsum(X0) :- tile(X0),er_smaller_falsum(X0).
-inter_tile_er_smaller_falsum(X0) :- object(X0),not inter_tile_er_smaller_falsum(X0).
inter_tile_er_below_falsum(X0) :- tile(X0),er_below_falsum(X0).
-inter_tile_er_below_falsum(X0) :- object(X0),not inter_tile_er_below_falsum(X0).
inter_tile_er_left_falsum(X0) :- tile(X0),er_left_falsum(X0).
-inter_tile_er_left_falsum(X0) :- object(X0),not inter_tile_er_left_falsum(X0).
inter_tile_er_overlap_falsum(X0) :- tile(X0),er_overlap_falsum(X0).
-inter_tile_er_overlap_falsum(X0) :- object(X0),not inter_tile_er_overlap_falsum(X0).
inter_tile_er_shape_falsum(X0) :- tile(X0),er_shape_falsum(X0).
-inter_tile_er_shape_falsum(X0) :- object(X0),not inter_tile_er_shape_falsum(X0).
inter_tile_er_smaller_opencell(X0) :- tile(X0),er_smaller_opencell(X0).
-inter_tile_er_smaller_opencell(X0) :- object(X0),not inter_tile_er_smaller_opencell(X0).
inter_tile_er_below_opencell(X0) :- tile(X0),er_below_opencell(X0).
-inter_tile_er_below_opencell(X0) :- object(X0),not inter_tile_er_below_opencell(X0).
inter_tile_er_left_opencell(X0) :- tile(X0),er_left_opencell(X0).
-inter_tile_er_left_opencell(X0) :- object(X0),not inter_tile_er_left_opencell(X0).
inter_tile_er_overlap_opencell(X0) :- tile(X0),er_overlap_opencell(X0).
-inter_tile_er_overlap_opencell(X0) :- object(X0),not inter_tile_er_overlap_opencell(X0).
inter_tile_er_shape_opencell(X0) :- tile(X0),er_shape_opencell(X0).
-inter_tile_er_shape_opencell(X0) :- object(X0),not inter_tile_er_shape_opencell(X0).
inter_tile_er_smaller_tile(X0) :- tile(X0),er_smaller_tile(X0).
-inter_tile_er_smaller_tile(X0) :- object(X0),not inter_tile_er_smaller_tile(X0).
inter_tile_er_below_tile(X0) :- tile(X0),er_below_tile(X0).
-inter_tile_er_below_tile(X0) :- object(X0),not inter_tile_er_below_tile(X0).
inter_tile_er_left_tile(X0) :- tile(X0),er_left_tile(X0).
-inter_tile_er_left_tile(X0) :- object(X0),not inter_tile_er_left_tile(X0).
inter_tile_er_overlap_tile(X0) :- tile(X0),er_overlap_tile(X0).
-inter_tile_er_overlap_tile(X0) :- object(X0),not inter_tile_er_overlap_tile(X0).
inter_tile_er_shape_tile(X0) :- tile(X0),er_shape_tile(X0).
-inter_tile_er_shape_tile(X0) :- object(X0),not inter_tile_er_shape_tile(X0).
inter_tile_inter_verum_falsum(X0) :- tile(X0),inter_verum_falsum(X0).
-inter_tile_inter_verum_falsum(X0) :- object(X0),not inter_tile_inter_verum_falsum(X0).
inter_tile_inter_verum_opencell(X0) :- tile(X0),inter_verum_opencell(X0).
-inter_tile_inter_verum_opencell(X0) :- object(X0),not inter_tile_inter_verum_opencell(X0).
inter_tile_inter_verum_tile(X0) :- tile(X0),inter_verum_tile(X0).
-inter_tile_inter_verum_tile(X0) :- object(X0),not inter_tile_inter_verum_tile(X0).
inter_tile_inter_falsum_opencell(X0) :- tile(X0),inter_falsum_opencell(X0).
-inter_tile_inter_falsum_opencell(X0) :- object(X0),not inter_tile_inter_falsum_opencell(X0).
inter_tile_inter_falsum_tile(X0) :- tile(X0),inter_falsum_tile(X0).
-inter_tile_inter_falsum_tile(X0) :- object(X0),not inter_tile_inter_falsum_tile(X0).
inter_tile_inter_opencell_tile(X0) :- tile(X0),inter_opencell_tile(X0).
-inter_tile_inter_opencell_tile(X0) :- object(X0),not inter_tile_inter_opencell_tile(X0).
inter_tile_subset_verum_falsum(X0) :- tile(X0),subset_verum_falsum(null).
-inter_tile_subset_verum_falsum(X0) :- object(X0),not inter_tile_subset_verum_falsum(X0).
inter_tile_subset_verum_opencell(X0) :- tile(X0),subset_verum_opencell(null).
-inter_tile_subset_verum_opencell(X0) :- object(X0),not inter_tile_subset_verum_opencell(X0).
inter_tile_subset_verum_tile(X0) :- tile(X0),subset_verum_tile(null).
-inter_tile_subset_verum_tile(X0) :- object(X0),not inter_tile_subset_verum_tile(X0).
inter_tile_subset_falsum_opencell(X0) :- tile(X0),subset_falsum_opencell(null).
-inter_tile_subset_falsum_opencell(X0) :- object(X0),not inter_tile_subset_falsum_opencell(X0).
inter_tile_subset_falsum_tile(X0) :- tile(X0),subset_falsum_tile(null).
-inter_tile_subset_falsum_tile(X0) :- object(X0),not inter_tile_subset_falsum_tile(X0).
inter_tile_subset_opencell_tile(X0) :- tile(X0),subset_opencell_tile(null).
-inter_tile_subset_opencell_tile(X0) :- object(X0),not inter_tile_subset_opencell_tile(X0).
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
inter_er_smaller_verum_er_smaller_opencell(X0) :- er_smaller_verum(X0),er_smaller_opencell(X0).
-inter_er_smaller_verum_er_smaller_opencell(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_opencell(X0).
inter_er_smaller_verum_er_below_opencell(X0) :- er_smaller_verum(X0),er_below_opencell(X0).
-inter_er_smaller_verum_er_below_opencell(X0) :- object(X0),not inter_er_smaller_verum_er_below_opencell(X0).
inter_er_smaller_verum_er_left_opencell(X0) :- er_smaller_verum(X0),er_left_opencell(X0).
-inter_er_smaller_verum_er_left_opencell(X0) :- object(X0),not inter_er_smaller_verum_er_left_opencell(X0).
inter_er_smaller_verum_er_overlap_opencell(X0) :- er_smaller_verum(X0),er_overlap_opencell(X0).
-inter_er_smaller_verum_er_overlap_opencell(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_opencell(X0).
inter_er_smaller_verum_er_shape_opencell(X0) :- er_smaller_verum(X0),er_shape_opencell(X0).
-inter_er_smaller_verum_er_shape_opencell(X0) :- object(X0),not inter_er_smaller_verum_er_shape_opencell(X0).
inter_er_smaller_verum_er_smaller_tile(X0) :- er_smaller_verum(X0),er_smaller_tile(X0).
-inter_er_smaller_verum_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_tile(X0).
inter_er_smaller_verum_er_below_tile(X0) :- er_smaller_verum(X0),er_below_tile(X0).
-inter_er_smaller_verum_er_below_tile(X0) :- object(X0),not inter_er_smaller_verum_er_below_tile(X0).
inter_er_smaller_verum_er_left_tile(X0) :- er_smaller_verum(X0),er_left_tile(X0).
-inter_er_smaller_verum_er_left_tile(X0) :- object(X0),not inter_er_smaller_verum_er_left_tile(X0).
inter_er_smaller_verum_er_overlap_tile(X0) :- er_smaller_verum(X0),er_overlap_tile(X0).
-inter_er_smaller_verum_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_tile(X0).
inter_er_smaller_verum_er_shape_tile(X0) :- er_smaller_verum(X0),er_shape_tile(X0).
-inter_er_smaller_verum_er_shape_tile(X0) :- object(X0),not inter_er_smaller_verum_er_shape_tile(X0).
inter_er_smaller_verum_inter_verum_falsum(X0) :- er_smaller_verum(X0),inter_verum_falsum(X0).
-inter_er_smaller_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_falsum(X0).
inter_er_smaller_verum_inter_verum_opencell(X0) :- er_smaller_verum(X0),inter_verum_opencell(X0).
-inter_er_smaller_verum_inter_verum_opencell(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_opencell(X0).
inter_er_smaller_verum_inter_verum_tile(X0) :- er_smaller_verum(X0),inter_verum_tile(X0).
-inter_er_smaller_verum_inter_verum_tile(X0) :- object(X0),not inter_er_smaller_verum_inter_verum_tile(X0).
inter_er_smaller_verum_inter_falsum_opencell(X0) :- er_smaller_verum(X0),inter_falsum_opencell(X0).
-inter_er_smaller_verum_inter_falsum_opencell(X0) :- object(X0),not inter_er_smaller_verum_inter_falsum_opencell(X0).
inter_er_smaller_verum_inter_falsum_tile(X0) :- er_smaller_verum(X0),inter_falsum_tile(X0).
-inter_er_smaller_verum_inter_falsum_tile(X0) :- object(X0),not inter_er_smaller_verum_inter_falsum_tile(X0).
inter_er_smaller_verum_inter_opencell_tile(X0) :- er_smaller_verum(X0),inter_opencell_tile(X0).
-inter_er_smaller_verum_inter_opencell_tile(X0) :- object(X0),not inter_er_smaller_verum_inter_opencell_tile(X0).
inter_er_smaller_verum_subset_verum_falsum(X0) :- er_smaller_verum(X0),subset_verum_falsum(null).
-inter_er_smaller_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_falsum(X0).
inter_er_smaller_verum_subset_verum_opencell(X0) :- er_smaller_verum(X0),subset_verum_opencell(null).
-inter_er_smaller_verum_subset_verum_opencell(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_opencell(X0).
inter_er_smaller_verum_subset_verum_tile(X0) :- er_smaller_verum(X0),subset_verum_tile(null).
-inter_er_smaller_verum_subset_verum_tile(X0) :- object(X0),not inter_er_smaller_verum_subset_verum_tile(X0).
inter_er_smaller_verum_subset_falsum_opencell(X0) :- er_smaller_verum(X0),subset_falsum_opencell(null).
-inter_er_smaller_verum_subset_falsum_opencell(X0) :- object(X0),not inter_er_smaller_verum_subset_falsum_opencell(X0).
inter_er_smaller_verum_subset_falsum_tile(X0) :- er_smaller_verum(X0),subset_falsum_tile(null).
-inter_er_smaller_verum_subset_falsum_tile(X0) :- object(X0),not inter_er_smaller_verum_subset_falsum_tile(X0).
inter_er_smaller_verum_subset_opencell_tile(X0) :- er_smaller_verum(X0),subset_opencell_tile(null).
-inter_er_smaller_verum_subset_opencell_tile(X0) :- object(X0),not inter_er_smaller_verum_subset_opencell_tile(X0).
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
inter_er_below_verum_er_smaller_opencell(X0) :- er_below_verum(X0),er_smaller_opencell(X0).
-inter_er_below_verum_er_smaller_opencell(X0) :- object(X0),not inter_er_below_verum_er_smaller_opencell(X0).
inter_er_below_verum_er_below_opencell(X0) :- er_below_verum(X0),er_below_opencell(X0).
-inter_er_below_verum_er_below_opencell(X0) :- object(X0),not inter_er_below_verum_er_below_opencell(X0).
inter_er_below_verum_er_left_opencell(X0) :- er_below_verum(X0),er_left_opencell(X0).
-inter_er_below_verum_er_left_opencell(X0) :- object(X0),not inter_er_below_verum_er_left_opencell(X0).
inter_er_below_verum_er_overlap_opencell(X0) :- er_below_verum(X0),er_overlap_opencell(X0).
-inter_er_below_verum_er_overlap_opencell(X0) :- object(X0),not inter_er_below_verum_er_overlap_opencell(X0).
inter_er_below_verum_er_shape_opencell(X0) :- er_below_verum(X0),er_shape_opencell(X0).
-inter_er_below_verum_er_shape_opencell(X0) :- object(X0),not inter_er_below_verum_er_shape_opencell(X0).
inter_er_below_verum_er_smaller_tile(X0) :- er_below_verum(X0),er_smaller_tile(X0).
-inter_er_below_verum_er_smaller_tile(X0) :- object(X0),not inter_er_below_verum_er_smaller_tile(X0).
inter_er_below_verum_er_below_tile(X0) :- er_below_verum(X0),er_below_tile(X0).
-inter_er_below_verum_er_below_tile(X0) :- object(X0),not inter_er_below_verum_er_below_tile(X0).
inter_er_below_verum_er_left_tile(X0) :- er_below_verum(X0),er_left_tile(X0).
-inter_er_below_verum_er_left_tile(X0) :- object(X0),not inter_er_below_verum_er_left_tile(X0).
inter_er_below_verum_er_overlap_tile(X0) :- er_below_verum(X0),er_overlap_tile(X0).
-inter_er_below_verum_er_overlap_tile(X0) :- object(X0),not inter_er_below_verum_er_overlap_tile(X0).
inter_er_below_verum_er_shape_tile(X0) :- er_below_verum(X0),er_shape_tile(X0).
-inter_er_below_verum_er_shape_tile(X0) :- object(X0),not inter_er_below_verum_er_shape_tile(X0).
inter_er_below_verum_inter_verum_falsum(X0) :- er_below_verum(X0),inter_verum_falsum(X0).
-inter_er_below_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_below_verum_inter_verum_falsum(X0).
inter_er_below_verum_inter_verum_opencell(X0) :- er_below_verum(X0),inter_verum_opencell(X0).
-inter_er_below_verum_inter_verum_opencell(X0) :- object(X0),not inter_er_below_verum_inter_verum_opencell(X0).
inter_er_below_verum_inter_verum_tile(X0) :- er_below_verum(X0),inter_verum_tile(X0).
-inter_er_below_verum_inter_verum_tile(X0) :- object(X0),not inter_er_below_verum_inter_verum_tile(X0).
inter_er_below_verum_inter_falsum_opencell(X0) :- er_below_verum(X0),inter_falsum_opencell(X0).
-inter_er_below_verum_inter_falsum_opencell(X0) :- object(X0),not inter_er_below_verum_inter_falsum_opencell(X0).
inter_er_below_verum_inter_falsum_tile(X0) :- er_below_verum(X0),inter_falsum_tile(X0).
-inter_er_below_verum_inter_falsum_tile(X0) :- object(X0),not inter_er_below_verum_inter_falsum_tile(X0).
inter_er_below_verum_inter_opencell_tile(X0) :- er_below_verum(X0),inter_opencell_tile(X0).
-inter_er_below_verum_inter_opencell_tile(X0) :- object(X0),not inter_er_below_verum_inter_opencell_tile(X0).
inter_er_below_verum_subset_verum_falsum(X0) :- er_below_verum(X0),subset_verum_falsum(null).
-inter_er_below_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_below_verum_subset_verum_falsum(X0).
inter_er_below_verum_subset_verum_opencell(X0) :- er_below_verum(X0),subset_verum_opencell(null).
-inter_er_below_verum_subset_verum_opencell(X0) :- object(X0),not inter_er_below_verum_subset_verum_opencell(X0).
inter_er_below_verum_subset_verum_tile(X0) :- er_below_verum(X0),subset_verum_tile(null).
-inter_er_below_verum_subset_verum_tile(X0) :- object(X0),not inter_er_below_verum_subset_verum_tile(X0).
inter_er_below_verum_subset_falsum_opencell(X0) :- er_below_verum(X0),subset_falsum_opencell(null).
-inter_er_below_verum_subset_falsum_opencell(X0) :- object(X0),not inter_er_below_verum_subset_falsum_opencell(X0).
inter_er_below_verum_subset_falsum_tile(X0) :- er_below_verum(X0),subset_falsum_tile(null).
-inter_er_below_verum_subset_falsum_tile(X0) :- object(X0),not inter_er_below_verum_subset_falsum_tile(X0).
inter_er_below_verum_subset_opencell_tile(X0) :- er_below_verum(X0),subset_opencell_tile(null).
-inter_er_below_verum_subset_opencell_tile(X0) :- object(X0),not inter_er_below_verum_subset_opencell_tile(X0).
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
inter_er_left_verum_er_smaller_opencell(X0) :- er_left_verum(X0),er_smaller_opencell(X0).
-inter_er_left_verum_er_smaller_opencell(X0) :- object(X0),not inter_er_left_verum_er_smaller_opencell(X0).
inter_er_left_verum_er_below_opencell(X0) :- er_left_verum(X0),er_below_opencell(X0).
-inter_er_left_verum_er_below_opencell(X0) :- object(X0),not inter_er_left_verum_er_below_opencell(X0).
inter_er_left_verum_er_left_opencell(X0) :- er_left_verum(X0),er_left_opencell(X0).
-inter_er_left_verum_er_left_opencell(X0) :- object(X0),not inter_er_left_verum_er_left_opencell(X0).
inter_er_left_verum_er_overlap_opencell(X0) :- er_left_verum(X0),er_overlap_opencell(X0).
-inter_er_left_verum_er_overlap_opencell(X0) :- object(X0),not inter_er_left_verum_er_overlap_opencell(X0).
inter_er_left_verum_er_shape_opencell(X0) :- er_left_verum(X0),er_shape_opencell(X0).
-inter_er_left_verum_er_shape_opencell(X0) :- object(X0),not inter_er_left_verum_er_shape_opencell(X0).
inter_er_left_verum_er_smaller_tile(X0) :- er_left_verum(X0),er_smaller_tile(X0).
-inter_er_left_verum_er_smaller_tile(X0) :- object(X0),not inter_er_left_verum_er_smaller_tile(X0).
inter_er_left_verum_er_below_tile(X0) :- er_left_verum(X0),er_below_tile(X0).
-inter_er_left_verum_er_below_tile(X0) :- object(X0),not inter_er_left_verum_er_below_tile(X0).
inter_er_left_verum_er_left_tile(X0) :- er_left_verum(X0),er_left_tile(X0).
-inter_er_left_verum_er_left_tile(X0) :- object(X0),not inter_er_left_verum_er_left_tile(X0).
inter_er_left_verum_er_overlap_tile(X0) :- er_left_verum(X0),er_overlap_tile(X0).
-inter_er_left_verum_er_overlap_tile(X0) :- object(X0),not inter_er_left_verum_er_overlap_tile(X0).
inter_er_left_verum_er_shape_tile(X0) :- er_left_verum(X0),er_shape_tile(X0).
-inter_er_left_verum_er_shape_tile(X0) :- object(X0),not inter_er_left_verum_er_shape_tile(X0).
inter_er_left_verum_inter_verum_falsum(X0) :- er_left_verum(X0),inter_verum_falsum(X0).
-inter_er_left_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_left_verum_inter_verum_falsum(X0).
inter_er_left_verum_inter_verum_opencell(X0) :- er_left_verum(X0),inter_verum_opencell(X0).
-inter_er_left_verum_inter_verum_opencell(X0) :- object(X0),not inter_er_left_verum_inter_verum_opencell(X0).
inter_er_left_verum_inter_verum_tile(X0) :- er_left_verum(X0),inter_verum_tile(X0).
-inter_er_left_verum_inter_verum_tile(X0) :- object(X0),not inter_er_left_verum_inter_verum_tile(X0).
inter_er_left_verum_inter_falsum_opencell(X0) :- er_left_verum(X0),inter_falsum_opencell(X0).
-inter_er_left_verum_inter_falsum_opencell(X0) :- object(X0),not inter_er_left_verum_inter_falsum_opencell(X0).
inter_er_left_verum_inter_falsum_tile(X0) :- er_left_verum(X0),inter_falsum_tile(X0).
-inter_er_left_verum_inter_falsum_tile(X0) :- object(X0),not inter_er_left_verum_inter_falsum_tile(X0).
inter_er_left_verum_inter_opencell_tile(X0) :- er_left_verum(X0),inter_opencell_tile(X0).
-inter_er_left_verum_inter_opencell_tile(X0) :- object(X0),not inter_er_left_verum_inter_opencell_tile(X0).
inter_er_left_verum_subset_verum_falsum(X0) :- er_left_verum(X0),subset_verum_falsum(null).
-inter_er_left_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_left_verum_subset_verum_falsum(X0).
inter_er_left_verum_subset_verum_opencell(X0) :- er_left_verum(X0),subset_verum_opencell(null).
-inter_er_left_verum_subset_verum_opencell(X0) :- object(X0),not inter_er_left_verum_subset_verum_opencell(X0).
inter_er_left_verum_subset_verum_tile(X0) :- er_left_verum(X0),subset_verum_tile(null).
-inter_er_left_verum_subset_verum_tile(X0) :- object(X0),not inter_er_left_verum_subset_verum_tile(X0).
inter_er_left_verum_subset_falsum_opencell(X0) :- er_left_verum(X0),subset_falsum_opencell(null).
-inter_er_left_verum_subset_falsum_opencell(X0) :- object(X0),not inter_er_left_verum_subset_falsum_opencell(X0).
inter_er_left_verum_subset_falsum_tile(X0) :- er_left_verum(X0),subset_falsum_tile(null).
-inter_er_left_verum_subset_falsum_tile(X0) :- object(X0),not inter_er_left_verum_subset_falsum_tile(X0).
inter_er_left_verum_subset_opencell_tile(X0) :- er_left_verum(X0),subset_opencell_tile(null).
-inter_er_left_verum_subset_opencell_tile(X0) :- object(X0),not inter_er_left_verum_subset_opencell_tile(X0).
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
inter_er_overlap_verum_er_smaller_opencell(X0) :- er_overlap_verum(X0),er_smaller_opencell(X0).
-inter_er_overlap_verum_er_smaller_opencell(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_opencell(X0).
inter_er_overlap_verum_er_below_opencell(X0) :- er_overlap_verum(X0),er_below_opencell(X0).
-inter_er_overlap_verum_er_below_opencell(X0) :- object(X0),not inter_er_overlap_verum_er_below_opencell(X0).
inter_er_overlap_verum_er_left_opencell(X0) :- er_overlap_verum(X0),er_left_opencell(X0).
-inter_er_overlap_verum_er_left_opencell(X0) :- object(X0),not inter_er_overlap_verum_er_left_opencell(X0).
inter_er_overlap_verum_er_overlap_opencell(X0) :- er_overlap_verum(X0),er_overlap_opencell(X0).
-inter_er_overlap_verum_er_overlap_opencell(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_opencell(X0).
inter_er_overlap_verum_er_shape_opencell(X0) :- er_overlap_verum(X0),er_shape_opencell(X0).
-inter_er_overlap_verum_er_shape_opencell(X0) :- object(X0),not inter_er_overlap_verum_er_shape_opencell(X0).
inter_er_overlap_verum_er_smaller_tile(X0) :- er_overlap_verum(X0),er_smaller_tile(X0).
-inter_er_overlap_verum_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_tile(X0).
inter_er_overlap_verum_er_below_tile(X0) :- er_overlap_verum(X0),er_below_tile(X0).
-inter_er_overlap_verum_er_below_tile(X0) :- object(X0),not inter_er_overlap_verum_er_below_tile(X0).
inter_er_overlap_verum_er_left_tile(X0) :- er_overlap_verum(X0),er_left_tile(X0).
-inter_er_overlap_verum_er_left_tile(X0) :- object(X0),not inter_er_overlap_verum_er_left_tile(X0).
inter_er_overlap_verum_er_overlap_tile(X0) :- er_overlap_verum(X0),er_overlap_tile(X0).
-inter_er_overlap_verum_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_tile(X0).
inter_er_overlap_verum_er_shape_tile(X0) :- er_overlap_verum(X0),er_shape_tile(X0).
-inter_er_overlap_verum_er_shape_tile(X0) :- object(X0),not inter_er_overlap_verum_er_shape_tile(X0).
inter_er_overlap_verum_inter_verum_falsum(X0) :- er_overlap_verum(X0),inter_verum_falsum(X0).
-inter_er_overlap_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_falsum(X0).
inter_er_overlap_verum_inter_verum_opencell(X0) :- er_overlap_verum(X0),inter_verum_opencell(X0).
-inter_er_overlap_verum_inter_verum_opencell(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_opencell(X0).
inter_er_overlap_verum_inter_verum_tile(X0) :- er_overlap_verum(X0),inter_verum_tile(X0).
-inter_er_overlap_verum_inter_verum_tile(X0) :- object(X0),not inter_er_overlap_verum_inter_verum_tile(X0).
inter_er_overlap_verum_inter_falsum_opencell(X0) :- er_overlap_verum(X0),inter_falsum_opencell(X0).
-inter_er_overlap_verum_inter_falsum_opencell(X0) :- object(X0),not inter_er_overlap_verum_inter_falsum_opencell(X0).
inter_er_overlap_verum_inter_falsum_tile(X0) :- er_overlap_verum(X0),inter_falsum_tile(X0).
-inter_er_overlap_verum_inter_falsum_tile(X0) :- object(X0),not inter_er_overlap_verum_inter_falsum_tile(X0).
inter_er_overlap_verum_inter_opencell_tile(X0) :- er_overlap_verum(X0),inter_opencell_tile(X0).
-inter_er_overlap_verum_inter_opencell_tile(X0) :- object(X0),not inter_er_overlap_verum_inter_opencell_tile(X0).
inter_er_overlap_verum_subset_verum_falsum(X0) :- er_overlap_verum(X0),subset_verum_falsum(null).
-inter_er_overlap_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_falsum(X0).
inter_er_overlap_verum_subset_verum_opencell(X0) :- er_overlap_verum(X0),subset_verum_opencell(null).
-inter_er_overlap_verum_subset_verum_opencell(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_opencell(X0).
inter_er_overlap_verum_subset_verum_tile(X0) :- er_overlap_verum(X0),subset_verum_tile(null).
-inter_er_overlap_verum_subset_verum_tile(X0) :- object(X0),not inter_er_overlap_verum_subset_verum_tile(X0).
inter_er_overlap_verum_subset_falsum_opencell(X0) :- er_overlap_verum(X0),subset_falsum_opencell(null).
-inter_er_overlap_verum_subset_falsum_opencell(X0) :- object(X0),not inter_er_overlap_verum_subset_falsum_opencell(X0).
inter_er_overlap_verum_subset_falsum_tile(X0) :- er_overlap_verum(X0),subset_falsum_tile(null).
-inter_er_overlap_verum_subset_falsum_tile(X0) :- object(X0),not inter_er_overlap_verum_subset_falsum_tile(X0).
inter_er_overlap_verum_subset_opencell_tile(X0) :- er_overlap_verum(X0),subset_opencell_tile(null).
-inter_er_overlap_verum_subset_opencell_tile(X0) :- object(X0),not inter_er_overlap_verum_subset_opencell_tile(X0).
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
inter_er_shape_verum_er_smaller_opencell(X0) :- er_shape_verum(X0),er_smaller_opencell(X0).
-inter_er_shape_verum_er_smaller_opencell(X0) :- object(X0),not inter_er_shape_verum_er_smaller_opencell(X0).
inter_er_shape_verum_er_below_opencell(X0) :- er_shape_verum(X0),er_below_opencell(X0).
-inter_er_shape_verum_er_below_opencell(X0) :- object(X0),not inter_er_shape_verum_er_below_opencell(X0).
inter_er_shape_verum_er_left_opencell(X0) :- er_shape_verum(X0),er_left_opencell(X0).
-inter_er_shape_verum_er_left_opencell(X0) :- object(X0),not inter_er_shape_verum_er_left_opencell(X0).
inter_er_shape_verum_er_overlap_opencell(X0) :- er_shape_verum(X0),er_overlap_opencell(X0).
-inter_er_shape_verum_er_overlap_opencell(X0) :- object(X0),not inter_er_shape_verum_er_overlap_opencell(X0).
inter_er_shape_verum_er_shape_opencell(X0) :- er_shape_verum(X0),er_shape_opencell(X0).
-inter_er_shape_verum_er_shape_opencell(X0) :- object(X0),not inter_er_shape_verum_er_shape_opencell(X0).
inter_er_shape_verum_er_smaller_tile(X0) :- er_shape_verum(X0),er_smaller_tile(X0).
-inter_er_shape_verum_er_smaller_tile(X0) :- object(X0),not inter_er_shape_verum_er_smaller_tile(X0).
inter_er_shape_verum_er_below_tile(X0) :- er_shape_verum(X0),er_below_tile(X0).
-inter_er_shape_verum_er_below_tile(X0) :- object(X0),not inter_er_shape_verum_er_below_tile(X0).
inter_er_shape_verum_er_left_tile(X0) :- er_shape_verum(X0),er_left_tile(X0).
-inter_er_shape_verum_er_left_tile(X0) :- object(X0),not inter_er_shape_verum_er_left_tile(X0).
inter_er_shape_verum_er_overlap_tile(X0) :- er_shape_verum(X0),er_overlap_tile(X0).
-inter_er_shape_verum_er_overlap_tile(X0) :- object(X0),not inter_er_shape_verum_er_overlap_tile(X0).
inter_er_shape_verum_er_shape_tile(X0) :- er_shape_verum(X0),er_shape_tile(X0).
-inter_er_shape_verum_er_shape_tile(X0) :- object(X0),not inter_er_shape_verum_er_shape_tile(X0).
inter_er_shape_verum_inter_verum_falsum(X0) :- er_shape_verum(X0),inter_verum_falsum(X0).
-inter_er_shape_verum_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_verum_inter_verum_falsum(X0).
inter_er_shape_verum_inter_verum_opencell(X0) :- er_shape_verum(X0),inter_verum_opencell(X0).
-inter_er_shape_verum_inter_verum_opencell(X0) :- object(X0),not inter_er_shape_verum_inter_verum_opencell(X0).
inter_er_shape_verum_inter_verum_tile(X0) :- er_shape_verum(X0),inter_verum_tile(X0).
-inter_er_shape_verum_inter_verum_tile(X0) :- object(X0),not inter_er_shape_verum_inter_verum_tile(X0).
inter_er_shape_verum_inter_falsum_opencell(X0) :- er_shape_verum(X0),inter_falsum_opencell(X0).
-inter_er_shape_verum_inter_falsum_opencell(X0) :- object(X0),not inter_er_shape_verum_inter_falsum_opencell(X0).
inter_er_shape_verum_inter_falsum_tile(X0) :- er_shape_verum(X0),inter_falsum_tile(X0).
-inter_er_shape_verum_inter_falsum_tile(X0) :- object(X0),not inter_er_shape_verum_inter_falsum_tile(X0).
inter_er_shape_verum_inter_opencell_tile(X0) :- er_shape_verum(X0),inter_opencell_tile(X0).
-inter_er_shape_verum_inter_opencell_tile(X0) :- object(X0),not inter_er_shape_verum_inter_opencell_tile(X0).
inter_er_shape_verum_subset_verum_falsum(X0) :- er_shape_verum(X0),subset_verum_falsum(null).
-inter_er_shape_verum_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_verum_subset_verum_falsum(X0).
inter_er_shape_verum_subset_verum_opencell(X0) :- er_shape_verum(X0),subset_verum_opencell(null).
-inter_er_shape_verum_subset_verum_opencell(X0) :- object(X0),not inter_er_shape_verum_subset_verum_opencell(X0).
inter_er_shape_verum_subset_verum_tile(X0) :- er_shape_verum(X0),subset_verum_tile(null).
-inter_er_shape_verum_subset_verum_tile(X0) :- object(X0),not inter_er_shape_verum_subset_verum_tile(X0).
inter_er_shape_verum_subset_falsum_opencell(X0) :- er_shape_verum(X0),subset_falsum_opencell(null).
-inter_er_shape_verum_subset_falsum_opencell(X0) :- object(X0),not inter_er_shape_verum_subset_falsum_opencell(X0).
inter_er_shape_verum_subset_falsum_tile(X0) :- er_shape_verum(X0),subset_falsum_tile(null).
-inter_er_shape_verum_subset_falsum_tile(X0) :- object(X0),not inter_er_shape_verum_subset_falsum_tile(X0).
inter_er_shape_verum_subset_opencell_tile(X0) :- er_shape_verum(X0),subset_opencell_tile(null).
-inter_er_shape_verum_subset_opencell_tile(X0) :- object(X0),not inter_er_shape_verum_subset_opencell_tile(X0).
inter_er_smaller_falsum_er_below_falsum(X0) :- er_smaller_falsum(X0),er_below_falsum(X0).
-inter_er_smaller_falsum_er_below_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_below_falsum(X0).
inter_er_smaller_falsum_er_left_falsum(X0) :- er_smaller_falsum(X0),er_left_falsum(X0).
-inter_er_smaller_falsum_er_left_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_left_falsum(X0).
inter_er_smaller_falsum_er_overlap_falsum(X0) :- er_smaller_falsum(X0),er_overlap_falsum(X0).
-inter_er_smaller_falsum_er_overlap_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_falsum(X0).
inter_er_smaller_falsum_er_shape_falsum(X0) :- er_smaller_falsum(X0),er_shape_falsum(X0).
-inter_er_smaller_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_falsum(X0).
inter_er_smaller_falsum_er_smaller_opencell(X0) :- er_smaller_falsum(X0),er_smaller_opencell(X0).
-inter_er_smaller_falsum_er_smaller_opencell(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_opencell(X0).
inter_er_smaller_falsum_er_below_opencell(X0) :- er_smaller_falsum(X0),er_below_opencell(X0).
-inter_er_smaller_falsum_er_below_opencell(X0) :- object(X0),not inter_er_smaller_falsum_er_below_opencell(X0).
inter_er_smaller_falsum_er_left_opencell(X0) :- er_smaller_falsum(X0),er_left_opencell(X0).
-inter_er_smaller_falsum_er_left_opencell(X0) :- object(X0),not inter_er_smaller_falsum_er_left_opencell(X0).
inter_er_smaller_falsum_er_overlap_opencell(X0) :- er_smaller_falsum(X0),er_overlap_opencell(X0).
-inter_er_smaller_falsum_er_overlap_opencell(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_opencell(X0).
inter_er_smaller_falsum_er_shape_opencell(X0) :- er_smaller_falsum(X0),er_shape_opencell(X0).
-inter_er_smaller_falsum_er_shape_opencell(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_opencell(X0).
inter_er_smaller_falsum_er_smaller_tile(X0) :- er_smaller_falsum(X0),er_smaller_tile(X0).
-inter_er_smaller_falsum_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_tile(X0).
inter_er_smaller_falsum_er_below_tile(X0) :- er_smaller_falsum(X0),er_below_tile(X0).
-inter_er_smaller_falsum_er_below_tile(X0) :- object(X0),not inter_er_smaller_falsum_er_below_tile(X0).
inter_er_smaller_falsum_er_left_tile(X0) :- er_smaller_falsum(X0),er_left_tile(X0).
-inter_er_smaller_falsum_er_left_tile(X0) :- object(X0),not inter_er_smaller_falsum_er_left_tile(X0).
inter_er_smaller_falsum_er_overlap_tile(X0) :- er_smaller_falsum(X0),er_overlap_tile(X0).
-inter_er_smaller_falsum_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_tile(X0).
inter_er_smaller_falsum_er_shape_tile(X0) :- er_smaller_falsum(X0),er_shape_tile(X0).
-inter_er_smaller_falsum_er_shape_tile(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_tile(X0).
inter_er_smaller_falsum_inter_verum_falsum(X0) :- er_smaller_falsum(X0),inter_verum_falsum(X0).
-inter_er_smaller_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_falsum(X0).
inter_er_smaller_falsum_inter_verum_opencell(X0) :- er_smaller_falsum(X0),inter_verum_opencell(X0).
-inter_er_smaller_falsum_inter_verum_opencell(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_opencell(X0).
inter_er_smaller_falsum_inter_verum_tile(X0) :- er_smaller_falsum(X0),inter_verum_tile(X0).
-inter_er_smaller_falsum_inter_verum_tile(X0) :- object(X0),not inter_er_smaller_falsum_inter_verum_tile(X0).
inter_er_smaller_falsum_inter_falsum_opencell(X0) :- er_smaller_falsum(X0),inter_falsum_opencell(X0).
-inter_er_smaller_falsum_inter_falsum_opencell(X0) :- object(X0),not inter_er_smaller_falsum_inter_falsum_opencell(X0).
inter_er_smaller_falsum_inter_falsum_tile(X0) :- er_smaller_falsum(X0),inter_falsum_tile(X0).
-inter_er_smaller_falsum_inter_falsum_tile(X0) :- object(X0),not inter_er_smaller_falsum_inter_falsum_tile(X0).
inter_er_smaller_falsum_inter_opencell_tile(X0) :- er_smaller_falsum(X0),inter_opencell_tile(X0).
-inter_er_smaller_falsum_inter_opencell_tile(X0) :- object(X0),not inter_er_smaller_falsum_inter_opencell_tile(X0).
inter_er_smaller_falsum_subset_verum_falsum(X0) :- er_smaller_falsum(X0),subset_verum_falsum(null).
-inter_er_smaller_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_falsum(X0).
inter_er_smaller_falsum_subset_verum_opencell(X0) :- er_smaller_falsum(X0),subset_verum_opencell(null).
-inter_er_smaller_falsum_subset_verum_opencell(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_opencell(X0).
inter_er_smaller_falsum_subset_verum_tile(X0) :- er_smaller_falsum(X0),subset_verum_tile(null).
-inter_er_smaller_falsum_subset_verum_tile(X0) :- object(X0),not inter_er_smaller_falsum_subset_verum_tile(X0).
inter_er_smaller_falsum_subset_falsum_opencell(X0) :- er_smaller_falsum(X0),subset_falsum_opencell(null).
-inter_er_smaller_falsum_subset_falsum_opencell(X0) :- object(X0),not inter_er_smaller_falsum_subset_falsum_opencell(X0).
inter_er_smaller_falsum_subset_falsum_tile(X0) :- er_smaller_falsum(X0),subset_falsum_tile(null).
-inter_er_smaller_falsum_subset_falsum_tile(X0) :- object(X0),not inter_er_smaller_falsum_subset_falsum_tile(X0).
inter_er_smaller_falsum_subset_opencell_tile(X0) :- er_smaller_falsum(X0),subset_opencell_tile(null).
-inter_er_smaller_falsum_subset_opencell_tile(X0) :- object(X0),not inter_er_smaller_falsum_subset_opencell_tile(X0).
inter_er_below_falsum_er_left_falsum(X0) :- er_below_falsum(X0),er_left_falsum(X0).
-inter_er_below_falsum_er_left_falsum(X0) :- object(X0),not inter_er_below_falsum_er_left_falsum(X0).
inter_er_below_falsum_er_overlap_falsum(X0) :- er_below_falsum(X0),er_overlap_falsum(X0).
-inter_er_below_falsum_er_overlap_falsum(X0) :- object(X0),not inter_er_below_falsum_er_overlap_falsum(X0).
inter_er_below_falsum_er_shape_falsum(X0) :- er_below_falsum(X0),er_shape_falsum(X0).
-inter_er_below_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_below_falsum_er_shape_falsum(X0).
inter_er_below_falsum_er_smaller_opencell(X0) :- er_below_falsum(X0),er_smaller_opencell(X0).
-inter_er_below_falsum_er_smaller_opencell(X0) :- object(X0),not inter_er_below_falsum_er_smaller_opencell(X0).
inter_er_below_falsum_er_below_opencell(X0) :- er_below_falsum(X0),er_below_opencell(X0).
-inter_er_below_falsum_er_below_opencell(X0) :- object(X0),not inter_er_below_falsum_er_below_opencell(X0).
inter_er_below_falsum_er_left_opencell(X0) :- er_below_falsum(X0),er_left_opencell(X0).
-inter_er_below_falsum_er_left_opencell(X0) :- object(X0),not inter_er_below_falsum_er_left_opencell(X0).
inter_er_below_falsum_er_overlap_opencell(X0) :- er_below_falsum(X0),er_overlap_opencell(X0).
-inter_er_below_falsum_er_overlap_opencell(X0) :- object(X0),not inter_er_below_falsum_er_overlap_opencell(X0).
inter_er_below_falsum_er_shape_opencell(X0) :- er_below_falsum(X0),er_shape_opencell(X0).
-inter_er_below_falsum_er_shape_opencell(X0) :- object(X0),not inter_er_below_falsum_er_shape_opencell(X0).
inter_er_below_falsum_er_smaller_tile(X0) :- er_below_falsum(X0),er_smaller_tile(X0).
-inter_er_below_falsum_er_smaller_tile(X0) :- object(X0),not inter_er_below_falsum_er_smaller_tile(X0).
inter_er_below_falsum_er_below_tile(X0) :- er_below_falsum(X0),er_below_tile(X0).
-inter_er_below_falsum_er_below_tile(X0) :- object(X0),not inter_er_below_falsum_er_below_tile(X0).
inter_er_below_falsum_er_left_tile(X0) :- er_below_falsum(X0),er_left_tile(X0).
-inter_er_below_falsum_er_left_tile(X0) :- object(X0),not inter_er_below_falsum_er_left_tile(X0).
inter_er_below_falsum_er_overlap_tile(X0) :- er_below_falsum(X0),er_overlap_tile(X0).
-inter_er_below_falsum_er_overlap_tile(X0) :- object(X0),not inter_er_below_falsum_er_overlap_tile(X0).
inter_er_below_falsum_er_shape_tile(X0) :- er_below_falsum(X0),er_shape_tile(X0).
-inter_er_below_falsum_er_shape_tile(X0) :- object(X0),not inter_er_below_falsum_er_shape_tile(X0).
inter_er_below_falsum_inter_verum_falsum(X0) :- er_below_falsum(X0),inter_verum_falsum(X0).
-inter_er_below_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_below_falsum_inter_verum_falsum(X0).
inter_er_below_falsum_inter_verum_opencell(X0) :- er_below_falsum(X0),inter_verum_opencell(X0).
-inter_er_below_falsum_inter_verum_opencell(X0) :- object(X0),not inter_er_below_falsum_inter_verum_opencell(X0).
inter_er_below_falsum_inter_verum_tile(X0) :- er_below_falsum(X0),inter_verum_tile(X0).
-inter_er_below_falsum_inter_verum_tile(X0) :- object(X0),not inter_er_below_falsum_inter_verum_tile(X0).
inter_er_below_falsum_inter_falsum_opencell(X0) :- er_below_falsum(X0),inter_falsum_opencell(X0).
-inter_er_below_falsum_inter_falsum_opencell(X0) :- object(X0),not inter_er_below_falsum_inter_falsum_opencell(X0).
inter_er_below_falsum_inter_falsum_tile(X0) :- er_below_falsum(X0),inter_falsum_tile(X0).
-inter_er_below_falsum_inter_falsum_tile(X0) :- object(X0),not inter_er_below_falsum_inter_falsum_tile(X0).
inter_er_below_falsum_inter_opencell_tile(X0) :- er_below_falsum(X0),inter_opencell_tile(X0).
-inter_er_below_falsum_inter_opencell_tile(X0) :- object(X0),not inter_er_below_falsum_inter_opencell_tile(X0).
inter_er_below_falsum_subset_verum_falsum(X0) :- er_below_falsum(X0),subset_verum_falsum(null).
-inter_er_below_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_below_falsum_subset_verum_falsum(X0).
inter_er_below_falsum_subset_verum_opencell(X0) :- er_below_falsum(X0),subset_verum_opencell(null).
-inter_er_below_falsum_subset_verum_opencell(X0) :- object(X0),not inter_er_below_falsum_subset_verum_opencell(X0).
inter_er_below_falsum_subset_verum_tile(X0) :- er_below_falsum(X0),subset_verum_tile(null).
-inter_er_below_falsum_subset_verum_tile(X0) :- object(X0),not inter_er_below_falsum_subset_verum_tile(X0).
inter_er_below_falsum_subset_falsum_opencell(X0) :- er_below_falsum(X0),subset_falsum_opencell(null).
-inter_er_below_falsum_subset_falsum_opencell(X0) :- object(X0),not inter_er_below_falsum_subset_falsum_opencell(X0).
inter_er_below_falsum_subset_falsum_tile(X0) :- er_below_falsum(X0),subset_falsum_tile(null).
-inter_er_below_falsum_subset_falsum_tile(X0) :- object(X0),not inter_er_below_falsum_subset_falsum_tile(X0).
inter_er_below_falsum_subset_opencell_tile(X0) :- er_below_falsum(X0),subset_opencell_tile(null).
-inter_er_below_falsum_subset_opencell_tile(X0) :- object(X0),not inter_er_below_falsum_subset_opencell_tile(X0).
inter_er_left_falsum_er_overlap_falsum(X0) :- er_left_falsum(X0),er_overlap_falsum(X0).
-inter_er_left_falsum_er_overlap_falsum(X0) :- object(X0),not inter_er_left_falsum_er_overlap_falsum(X0).
inter_er_left_falsum_er_shape_falsum(X0) :- er_left_falsum(X0),er_shape_falsum(X0).
-inter_er_left_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_left_falsum_er_shape_falsum(X0).
inter_er_left_falsum_er_smaller_opencell(X0) :- er_left_falsum(X0),er_smaller_opencell(X0).
-inter_er_left_falsum_er_smaller_opencell(X0) :- object(X0),not inter_er_left_falsum_er_smaller_opencell(X0).
inter_er_left_falsum_er_below_opencell(X0) :- er_left_falsum(X0),er_below_opencell(X0).
-inter_er_left_falsum_er_below_opencell(X0) :- object(X0),not inter_er_left_falsum_er_below_opencell(X0).
inter_er_left_falsum_er_left_opencell(X0) :- er_left_falsum(X0),er_left_opencell(X0).
-inter_er_left_falsum_er_left_opencell(X0) :- object(X0),not inter_er_left_falsum_er_left_opencell(X0).
inter_er_left_falsum_er_overlap_opencell(X0) :- er_left_falsum(X0),er_overlap_opencell(X0).
-inter_er_left_falsum_er_overlap_opencell(X0) :- object(X0),not inter_er_left_falsum_er_overlap_opencell(X0).
inter_er_left_falsum_er_shape_opencell(X0) :- er_left_falsum(X0),er_shape_opencell(X0).
-inter_er_left_falsum_er_shape_opencell(X0) :- object(X0),not inter_er_left_falsum_er_shape_opencell(X0).
inter_er_left_falsum_er_smaller_tile(X0) :- er_left_falsum(X0),er_smaller_tile(X0).
-inter_er_left_falsum_er_smaller_tile(X0) :- object(X0),not inter_er_left_falsum_er_smaller_tile(X0).
inter_er_left_falsum_er_below_tile(X0) :- er_left_falsum(X0),er_below_tile(X0).
-inter_er_left_falsum_er_below_tile(X0) :- object(X0),not inter_er_left_falsum_er_below_tile(X0).
inter_er_left_falsum_er_left_tile(X0) :- er_left_falsum(X0),er_left_tile(X0).
-inter_er_left_falsum_er_left_tile(X0) :- object(X0),not inter_er_left_falsum_er_left_tile(X0).
inter_er_left_falsum_er_overlap_tile(X0) :- er_left_falsum(X0),er_overlap_tile(X0).
-inter_er_left_falsum_er_overlap_tile(X0) :- object(X0),not inter_er_left_falsum_er_overlap_tile(X0).
inter_er_left_falsum_er_shape_tile(X0) :- er_left_falsum(X0),er_shape_tile(X0).
-inter_er_left_falsum_er_shape_tile(X0) :- object(X0),not inter_er_left_falsum_er_shape_tile(X0).
inter_er_left_falsum_inter_verum_falsum(X0) :- er_left_falsum(X0),inter_verum_falsum(X0).
-inter_er_left_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_left_falsum_inter_verum_falsum(X0).
inter_er_left_falsum_inter_verum_opencell(X0) :- er_left_falsum(X0),inter_verum_opencell(X0).
-inter_er_left_falsum_inter_verum_opencell(X0) :- object(X0),not inter_er_left_falsum_inter_verum_opencell(X0).
inter_er_left_falsum_inter_verum_tile(X0) :- er_left_falsum(X0),inter_verum_tile(X0).
-inter_er_left_falsum_inter_verum_tile(X0) :- object(X0),not inter_er_left_falsum_inter_verum_tile(X0).
inter_er_left_falsum_inter_falsum_opencell(X0) :- er_left_falsum(X0),inter_falsum_opencell(X0).
-inter_er_left_falsum_inter_falsum_opencell(X0) :- object(X0),not inter_er_left_falsum_inter_falsum_opencell(X0).
inter_er_left_falsum_inter_falsum_tile(X0) :- er_left_falsum(X0),inter_falsum_tile(X0).
-inter_er_left_falsum_inter_falsum_tile(X0) :- object(X0),not inter_er_left_falsum_inter_falsum_tile(X0).
inter_er_left_falsum_inter_opencell_tile(X0) :- er_left_falsum(X0),inter_opencell_tile(X0).
-inter_er_left_falsum_inter_opencell_tile(X0) :- object(X0),not inter_er_left_falsum_inter_opencell_tile(X0).
inter_er_left_falsum_subset_verum_falsum(X0) :- er_left_falsum(X0),subset_verum_falsum(null).
-inter_er_left_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_left_falsum_subset_verum_falsum(X0).
inter_er_left_falsum_subset_verum_opencell(X0) :- er_left_falsum(X0),subset_verum_opencell(null).
-inter_er_left_falsum_subset_verum_opencell(X0) :- object(X0),not inter_er_left_falsum_subset_verum_opencell(X0).
inter_er_left_falsum_subset_verum_tile(X0) :- er_left_falsum(X0),subset_verum_tile(null).
-inter_er_left_falsum_subset_verum_tile(X0) :- object(X0),not inter_er_left_falsum_subset_verum_tile(X0).
inter_er_left_falsum_subset_falsum_opencell(X0) :- er_left_falsum(X0),subset_falsum_opencell(null).
-inter_er_left_falsum_subset_falsum_opencell(X0) :- object(X0),not inter_er_left_falsum_subset_falsum_opencell(X0).
inter_er_left_falsum_subset_falsum_tile(X0) :- er_left_falsum(X0),subset_falsum_tile(null).
-inter_er_left_falsum_subset_falsum_tile(X0) :- object(X0),not inter_er_left_falsum_subset_falsum_tile(X0).
inter_er_left_falsum_subset_opencell_tile(X0) :- er_left_falsum(X0),subset_opencell_tile(null).
-inter_er_left_falsum_subset_opencell_tile(X0) :- object(X0),not inter_er_left_falsum_subset_opencell_tile(X0).
inter_er_overlap_falsum_er_shape_falsum(X0) :- er_overlap_falsum(X0),er_shape_falsum(X0).
-inter_er_overlap_falsum_er_shape_falsum(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_falsum(X0).
inter_er_overlap_falsum_er_smaller_opencell(X0) :- er_overlap_falsum(X0),er_smaller_opencell(X0).
-inter_er_overlap_falsum_er_smaller_opencell(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_opencell(X0).
inter_er_overlap_falsum_er_below_opencell(X0) :- er_overlap_falsum(X0),er_below_opencell(X0).
-inter_er_overlap_falsum_er_below_opencell(X0) :- object(X0),not inter_er_overlap_falsum_er_below_opencell(X0).
inter_er_overlap_falsum_er_left_opencell(X0) :- er_overlap_falsum(X0),er_left_opencell(X0).
-inter_er_overlap_falsum_er_left_opencell(X0) :- object(X0),not inter_er_overlap_falsum_er_left_opencell(X0).
inter_er_overlap_falsum_er_overlap_opencell(X0) :- er_overlap_falsum(X0),er_overlap_opencell(X0).
-inter_er_overlap_falsum_er_overlap_opencell(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_opencell(X0).
inter_er_overlap_falsum_er_shape_opencell(X0) :- er_overlap_falsum(X0),er_shape_opencell(X0).
-inter_er_overlap_falsum_er_shape_opencell(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_opencell(X0).
inter_er_overlap_falsum_er_smaller_tile(X0) :- er_overlap_falsum(X0),er_smaller_tile(X0).
-inter_er_overlap_falsum_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_tile(X0).
inter_er_overlap_falsum_er_below_tile(X0) :- er_overlap_falsum(X0),er_below_tile(X0).
-inter_er_overlap_falsum_er_below_tile(X0) :- object(X0),not inter_er_overlap_falsum_er_below_tile(X0).
inter_er_overlap_falsum_er_left_tile(X0) :- er_overlap_falsum(X0),er_left_tile(X0).
-inter_er_overlap_falsum_er_left_tile(X0) :- object(X0),not inter_er_overlap_falsum_er_left_tile(X0).
inter_er_overlap_falsum_er_overlap_tile(X0) :- er_overlap_falsum(X0),er_overlap_tile(X0).
-inter_er_overlap_falsum_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_tile(X0).
inter_er_overlap_falsum_er_shape_tile(X0) :- er_overlap_falsum(X0),er_shape_tile(X0).
-inter_er_overlap_falsum_er_shape_tile(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_tile(X0).
inter_er_overlap_falsum_inter_verum_falsum(X0) :- er_overlap_falsum(X0),inter_verum_falsum(X0).
-inter_er_overlap_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_falsum(X0).
inter_er_overlap_falsum_inter_verum_opencell(X0) :- er_overlap_falsum(X0),inter_verum_opencell(X0).
-inter_er_overlap_falsum_inter_verum_opencell(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_opencell(X0).
inter_er_overlap_falsum_inter_verum_tile(X0) :- er_overlap_falsum(X0),inter_verum_tile(X0).
-inter_er_overlap_falsum_inter_verum_tile(X0) :- object(X0),not inter_er_overlap_falsum_inter_verum_tile(X0).
inter_er_overlap_falsum_inter_falsum_opencell(X0) :- er_overlap_falsum(X0),inter_falsum_opencell(X0).
-inter_er_overlap_falsum_inter_falsum_opencell(X0) :- object(X0),not inter_er_overlap_falsum_inter_falsum_opencell(X0).
inter_er_overlap_falsum_inter_falsum_tile(X0) :- er_overlap_falsum(X0),inter_falsum_tile(X0).
-inter_er_overlap_falsum_inter_falsum_tile(X0) :- object(X0),not inter_er_overlap_falsum_inter_falsum_tile(X0).
inter_er_overlap_falsum_inter_opencell_tile(X0) :- er_overlap_falsum(X0),inter_opencell_tile(X0).
-inter_er_overlap_falsum_inter_opencell_tile(X0) :- object(X0),not inter_er_overlap_falsum_inter_opencell_tile(X0).
inter_er_overlap_falsum_subset_verum_falsum(X0) :- er_overlap_falsum(X0),subset_verum_falsum(null).
-inter_er_overlap_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_falsum(X0).
inter_er_overlap_falsum_subset_verum_opencell(X0) :- er_overlap_falsum(X0),subset_verum_opencell(null).
-inter_er_overlap_falsum_subset_verum_opencell(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_opencell(X0).
inter_er_overlap_falsum_subset_verum_tile(X0) :- er_overlap_falsum(X0),subset_verum_tile(null).
-inter_er_overlap_falsum_subset_verum_tile(X0) :- object(X0),not inter_er_overlap_falsum_subset_verum_tile(X0).
inter_er_overlap_falsum_subset_falsum_opencell(X0) :- er_overlap_falsum(X0),subset_falsum_opencell(null).
-inter_er_overlap_falsum_subset_falsum_opencell(X0) :- object(X0),not inter_er_overlap_falsum_subset_falsum_opencell(X0).
inter_er_overlap_falsum_subset_falsum_tile(X0) :- er_overlap_falsum(X0),subset_falsum_tile(null).
-inter_er_overlap_falsum_subset_falsum_tile(X0) :- object(X0),not inter_er_overlap_falsum_subset_falsum_tile(X0).
inter_er_overlap_falsum_subset_opencell_tile(X0) :- er_overlap_falsum(X0),subset_opencell_tile(null).
-inter_er_overlap_falsum_subset_opencell_tile(X0) :- object(X0),not inter_er_overlap_falsum_subset_opencell_tile(X0).
inter_er_shape_falsum_er_smaller_opencell(X0) :- er_shape_falsum(X0),er_smaller_opencell(X0).
-inter_er_shape_falsum_er_smaller_opencell(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_opencell(X0).
inter_er_shape_falsum_er_below_opencell(X0) :- er_shape_falsum(X0),er_below_opencell(X0).
-inter_er_shape_falsum_er_below_opencell(X0) :- object(X0),not inter_er_shape_falsum_er_below_opencell(X0).
inter_er_shape_falsum_er_left_opencell(X0) :- er_shape_falsum(X0),er_left_opencell(X0).
-inter_er_shape_falsum_er_left_opencell(X0) :- object(X0),not inter_er_shape_falsum_er_left_opencell(X0).
inter_er_shape_falsum_er_overlap_opencell(X0) :- er_shape_falsum(X0),er_overlap_opencell(X0).
-inter_er_shape_falsum_er_overlap_opencell(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_opencell(X0).
inter_er_shape_falsum_er_shape_opencell(X0) :- er_shape_falsum(X0),er_shape_opencell(X0).
-inter_er_shape_falsum_er_shape_opencell(X0) :- object(X0),not inter_er_shape_falsum_er_shape_opencell(X0).
inter_er_shape_falsum_er_smaller_tile(X0) :- er_shape_falsum(X0),er_smaller_tile(X0).
-inter_er_shape_falsum_er_smaller_tile(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_tile(X0).
inter_er_shape_falsum_er_below_tile(X0) :- er_shape_falsum(X0),er_below_tile(X0).
-inter_er_shape_falsum_er_below_tile(X0) :- object(X0),not inter_er_shape_falsum_er_below_tile(X0).
inter_er_shape_falsum_er_left_tile(X0) :- er_shape_falsum(X0),er_left_tile(X0).
-inter_er_shape_falsum_er_left_tile(X0) :- object(X0),not inter_er_shape_falsum_er_left_tile(X0).
inter_er_shape_falsum_er_overlap_tile(X0) :- er_shape_falsum(X0),er_overlap_tile(X0).
-inter_er_shape_falsum_er_overlap_tile(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_tile(X0).
inter_er_shape_falsum_er_shape_tile(X0) :- er_shape_falsum(X0),er_shape_tile(X0).
-inter_er_shape_falsum_er_shape_tile(X0) :- object(X0),not inter_er_shape_falsum_er_shape_tile(X0).
inter_er_shape_falsum_inter_verum_falsum(X0) :- er_shape_falsum(X0),inter_verum_falsum(X0).
-inter_er_shape_falsum_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_falsum(X0).
inter_er_shape_falsum_inter_verum_opencell(X0) :- er_shape_falsum(X0),inter_verum_opencell(X0).
-inter_er_shape_falsum_inter_verum_opencell(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_opencell(X0).
inter_er_shape_falsum_inter_verum_tile(X0) :- er_shape_falsum(X0),inter_verum_tile(X0).
-inter_er_shape_falsum_inter_verum_tile(X0) :- object(X0),not inter_er_shape_falsum_inter_verum_tile(X0).
inter_er_shape_falsum_inter_falsum_opencell(X0) :- er_shape_falsum(X0),inter_falsum_opencell(X0).
-inter_er_shape_falsum_inter_falsum_opencell(X0) :- object(X0),not inter_er_shape_falsum_inter_falsum_opencell(X0).
inter_er_shape_falsum_inter_falsum_tile(X0) :- er_shape_falsum(X0),inter_falsum_tile(X0).
-inter_er_shape_falsum_inter_falsum_tile(X0) :- object(X0),not inter_er_shape_falsum_inter_falsum_tile(X0).
inter_er_shape_falsum_inter_opencell_tile(X0) :- er_shape_falsum(X0),inter_opencell_tile(X0).
-inter_er_shape_falsum_inter_opencell_tile(X0) :- object(X0),not inter_er_shape_falsum_inter_opencell_tile(X0).
inter_er_shape_falsum_subset_verum_falsum(X0) :- er_shape_falsum(X0),subset_verum_falsum(null).
-inter_er_shape_falsum_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_falsum(X0).
inter_er_shape_falsum_subset_verum_opencell(X0) :- er_shape_falsum(X0),subset_verum_opencell(null).
-inter_er_shape_falsum_subset_verum_opencell(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_opencell(X0).
inter_er_shape_falsum_subset_verum_tile(X0) :- er_shape_falsum(X0),subset_verum_tile(null).
-inter_er_shape_falsum_subset_verum_tile(X0) :- object(X0),not inter_er_shape_falsum_subset_verum_tile(X0).
inter_er_shape_falsum_subset_falsum_opencell(X0) :- er_shape_falsum(X0),subset_falsum_opencell(null).
-inter_er_shape_falsum_subset_falsum_opencell(X0) :- object(X0),not inter_er_shape_falsum_subset_falsum_opencell(X0).
inter_er_shape_falsum_subset_falsum_tile(X0) :- er_shape_falsum(X0),subset_falsum_tile(null).
-inter_er_shape_falsum_subset_falsum_tile(X0) :- object(X0),not inter_er_shape_falsum_subset_falsum_tile(X0).
inter_er_shape_falsum_subset_opencell_tile(X0) :- er_shape_falsum(X0),subset_opencell_tile(null).
-inter_er_shape_falsum_subset_opencell_tile(X0) :- object(X0),not inter_er_shape_falsum_subset_opencell_tile(X0).
inter_er_smaller_opencell_er_below_opencell(X0) :- er_smaller_opencell(X0),er_below_opencell(X0).
-inter_er_smaller_opencell_er_below_opencell(X0) :- object(X0),not inter_er_smaller_opencell_er_below_opencell(X0).
inter_er_smaller_opencell_er_left_opencell(X0) :- er_smaller_opencell(X0),er_left_opencell(X0).
-inter_er_smaller_opencell_er_left_opencell(X0) :- object(X0),not inter_er_smaller_opencell_er_left_opencell(X0).
inter_er_smaller_opencell_er_overlap_opencell(X0) :- er_smaller_opencell(X0),er_overlap_opencell(X0).
-inter_er_smaller_opencell_er_overlap_opencell(X0) :- object(X0),not inter_er_smaller_opencell_er_overlap_opencell(X0).
inter_er_smaller_opencell_er_shape_opencell(X0) :- er_smaller_opencell(X0),er_shape_opencell(X0).
-inter_er_smaller_opencell_er_shape_opencell(X0) :- object(X0),not inter_er_smaller_opencell_er_shape_opencell(X0).
inter_er_smaller_opencell_er_smaller_tile(X0) :- er_smaller_opencell(X0),er_smaller_tile(X0).
-inter_er_smaller_opencell_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_opencell_er_smaller_tile(X0).
inter_er_smaller_opencell_er_below_tile(X0) :- er_smaller_opencell(X0),er_below_tile(X0).
-inter_er_smaller_opencell_er_below_tile(X0) :- object(X0),not inter_er_smaller_opencell_er_below_tile(X0).
inter_er_smaller_opencell_er_left_tile(X0) :- er_smaller_opencell(X0),er_left_tile(X0).
-inter_er_smaller_opencell_er_left_tile(X0) :- object(X0),not inter_er_smaller_opencell_er_left_tile(X0).
inter_er_smaller_opencell_er_overlap_tile(X0) :- er_smaller_opencell(X0),er_overlap_tile(X0).
-inter_er_smaller_opencell_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_opencell_er_overlap_tile(X0).
inter_er_smaller_opencell_er_shape_tile(X0) :- er_smaller_opencell(X0),er_shape_tile(X0).
-inter_er_smaller_opencell_er_shape_tile(X0) :- object(X0),not inter_er_smaller_opencell_er_shape_tile(X0).
inter_er_smaller_opencell_inter_verum_falsum(X0) :- er_smaller_opencell(X0),inter_verum_falsum(X0).
-inter_er_smaller_opencell_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_opencell_inter_verum_falsum(X0).
inter_er_smaller_opencell_inter_verum_opencell(X0) :- er_smaller_opencell(X0),inter_verum_opencell(X0).
-inter_er_smaller_opencell_inter_verum_opencell(X0) :- object(X0),not inter_er_smaller_opencell_inter_verum_opencell(X0).
inter_er_smaller_opencell_inter_verum_tile(X0) :- er_smaller_opencell(X0),inter_verum_tile(X0).
-inter_er_smaller_opencell_inter_verum_tile(X0) :- object(X0),not inter_er_smaller_opencell_inter_verum_tile(X0).
inter_er_smaller_opencell_inter_falsum_opencell(X0) :- er_smaller_opencell(X0),inter_falsum_opencell(X0).
-inter_er_smaller_opencell_inter_falsum_opencell(X0) :- object(X0),not inter_er_smaller_opencell_inter_falsum_opencell(X0).
inter_er_smaller_opencell_inter_falsum_tile(X0) :- er_smaller_opencell(X0),inter_falsum_tile(X0).
-inter_er_smaller_opencell_inter_falsum_tile(X0) :- object(X0),not inter_er_smaller_opencell_inter_falsum_tile(X0).
inter_er_smaller_opencell_inter_opencell_tile(X0) :- er_smaller_opencell(X0),inter_opencell_tile(X0).
-inter_er_smaller_opencell_inter_opencell_tile(X0) :- object(X0),not inter_er_smaller_opencell_inter_opencell_tile(X0).
inter_er_smaller_opencell_subset_verum_falsum(X0) :- er_smaller_opencell(X0),subset_verum_falsum(null).
-inter_er_smaller_opencell_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_opencell_subset_verum_falsum(X0).
inter_er_smaller_opencell_subset_verum_opencell(X0) :- er_smaller_opencell(X0),subset_verum_opencell(null).
-inter_er_smaller_opencell_subset_verum_opencell(X0) :- object(X0),not inter_er_smaller_opencell_subset_verum_opencell(X0).
inter_er_smaller_opencell_subset_verum_tile(X0) :- er_smaller_opencell(X0),subset_verum_tile(null).
-inter_er_smaller_opencell_subset_verum_tile(X0) :- object(X0),not inter_er_smaller_opencell_subset_verum_tile(X0).
inter_er_smaller_opencell_subset_falsum_opencell(X0) :- er_smaller_opencell(X0),subset_falsum_opencell(null).
-inter_er_smaller_opencell_subset_falsum_opencell(X0) :- object(X0),not inter_er_smaller_opencell_subset_falsum_opencell(X0).
inter_er_smaller_opencell_subset_falsum_tile(X0) :- er_smaller_opencell(X0),subset_falsum_tile(null).
-inter_er_smaller_opencell_subset_falsum_tile(X0) :- object(X0),not inter_er_smaller_opencell_subset_falsum_tile(X0).
inter_er_smaller_opencell_subset_opencell_tile(X0) :- er_smaller_opencell(X0),subset_opencell_tile(null).
-inter_er_smaller_opencell_subset_opencell_tile(X0) :- object(X0),not inter_er_smaller_opencell_subset_opencell_tile(X0).
inter_er_below_opencell_er_left_opencell(X0) :- er_below_opencell(X0),er_left_opencell(X0).
-inter_er_below_opencell_er_left_opencell(X0) :- object(X0),not inter_er_below_opencell_er_left_opencell(X0).
inter_er_below_opencell_er_overlap_opencell(X0) :- er_below_opencell(X0),er_overlap_opencell(X0).
-inter_er_below_opencell_er_overlap_opencell(X0) :- object(X0),not inter_er_below_opencell_er_overlap_opencell(X0).
inter_er_below_opencell_er_shape_opencell(X0) :- er_below_opencell(X0),er_shape_opencell(X0).
-inter_er_below_opencell_er_shape_opencell(X0) :- object(X0),not inter_er_below_opencell_er_shape_opencell(X0).
inter_er_below_opencell_er_smaller_tile(X0) :- er_below_opencell(X0),er_smaller_tile(X0).
-inter_er_below_opencell_er_smaller_tile(X0) :- object(X0),not inter_er_below_opencell_er_smaller_tile(X0).
inter_er_below_opencell_er_below_tile(X0) :- er_below_opencell(X0),er_below_tile(X0).
-inter_er_below_opencell_er_below_tile(X0) :- object(X0),not inter_er_below_opencell_er_below_tile(X0).
inter_er_below_opencell_er_left_tile(X0) :- er_below_opencell(X0),er_left_tile(X0).
-inter_er_below_opencell_er_left_tile(X0) :- object(X0),not inter_er_below_opencell_er_left_tile(X0).
inter_er_below_opencell_er_overlap_tile(X0) :- er_below_opencell(X0),er_overlap_tile(X0).
-inter_er_below_opencell_er_overlap_tile(X0) :- object(X0),not inter_er_below_opencell_er_overlap_tile(X0).
inter_er_below_opencell_er_shape_tile(X0) :- er_below_opencell(X0),er_shape_tile(X0).
-inter_er_below_opencell_er_shape_tile(X0) :- object(X0),not inter_er_below_opencell_er_shape_tile(X0).
inter_er_below_opencell_inter_verum_falsum(X0) :- er_below_opencell(X0),inter_verum_falsum(X0).
-inter_er_below_opencell_inter_verum_falsum(X0) :- object(X0),not inter_er_below_opencell_inter_verum_falsum(X0).
inter_er_below_opencell_inter_verum_opencell(X0) :- er_below_opencell(X0),inter_verum_opencell(X0).
-inter_er_below_opencell_inter_verum_opencell(X0) :- object(X0),not inter_er_below_opencell_inter_verum_opencell(X0).
inter_er_below_opencell_inter_verum_tile(X0) :- er_below_opencell(X0),inter_verum_tile(X0).
-inter_er_below_opencell_inter_verum_tile(X0) :- object(X0),not inter_er_below_opencell_inter_verum_tile(X0).
inter_er_below_opencell_inter_falsum_opencell(X0) :- er_below_opencell(X0),inter_falsum_opencell(X0).
-inter_er_below_opencell_inter_falsum_opencell(X0) :- object(X0),not inter_er_below_opencell_inter_falsum_opencell(X0).
inter_er_below_opencell_inter_falsum_tile(X0) :- er_below_opencell(X0),inter_falsum_tile(X0).
-inter_er_below_opencell_inter_falsum_tile(X0) :- object(X0),not inter_er_below_opencell_inter_falsum_tile(X0).
inter_er_below_opencell_inter_opencell_tile(X0) :- er_below_opencell(X0),inter_opencell_tile(X0).
-inter_er_below_opencell_inter_opencell_tile(X0) :- object(X0),not inter_er_below_opencell_inter_opencell_tile(X0).
inter_er_below_opencell_subset_verum_falsum(X0) :- er_below_opencell(X0),subset_verum_falsum(null).
-inter_er_below_opencell_subset_verum_falsum(X0) :- object(X0),not inter_er_below_opencell_subset_verum_falsum(X0).
inter_er_below_opencell_subset_verum_opencell(X0) :- er_below_opencell(X0),subset_verum_opencell(null).
-inter_er_below_opencell_subset_verum_opencell(X0) :- object(X0),not inter_er_below_opencell_subset_verum_opencell(X0).
inter_er_below_opencell_subset_verum_tile(X0) :- er_below_opencell(X0),subset_verum_tile(null).
-inter_er_below_opencell_subset_verum_tile(X0) :- object(X0),not inter_er_below_opencell_subset_verum_tile(X0).
inter_er_below_opencell_subset_falsum_opencell(X0) :- er_below_opencell(X0),subset_falsum_opencell(null).
-inter_er_below_opencell_subset_falsum_opencell(X0) :- object(X0),not inter_er_below_opencell_subset_falsum_opencell(X0).
inter_er_below_opencell_subset_falsum_tile(X0) :- er_below_opencell(X0),subset_falsum_tile(null).
-inter_er_below_opencell_subset_falsum_tile(X0) :- object(X0),not inter_er_below_opencell_subset_falsum_tile(X0).
inter_er_below_opencell_subset_opencell_tile(X0) :- er_below_opencell(X0),subset_opencell_tile(null).
-inter_er_below_opencell_subset_opencell_tile(X0) :- object(X0),not inter_er_below_opencell_subset_opencell_tile(X0).
inter_er_left_opencell_er_overlap_opencell(X0) :- er_left_opencell(X0),er_overlap_opencell(X0).
-inter_er_left_opencell_er_overlap_opencell(X0) :- object(X0),not inter_er_left_opencell_er_overlap_opencell(X0).
inter_er_left_opencell_er_shape_opencell(X0) :- er_left_opencell(X0),er_shape_opencell(X0).
-inter_er_left_opencell_er_shape_opencell(X0) :- object(X0),not inter_er_left_opencell_er_shape_opencell(X0).
inter_er_left_opencell_er_smaller_tile(X0) :- er_left_opencell(X0),er_smaller_tile(X0).
-inter_er_left_opencell_er_smaller_tile(X0) :- object(X0),not inter_er_left_opencell_er_smaller_tile(X0).
inter_er_left_opencell_er_below_tile(X0) :- er_left_opencell(X0),er_below_tile(X0).
-inter_er_left_opencell_er_below_tile(X0) :- object(X0),not inter_er_left_opencell_er_below_tile(X0).
inter_er_left_opencell_er_left_tile(X0) :- er_left_opencell(X0),er_left_tile(X0).
-inter_er_left_opencell_er_left_tile(X0) :- object(X0),not inter_er_left_opencell_er_left_tile(X0).
inter_er_left_opencell_er_overlap_tile(X0) :- er_left_opencell(X0),er_overlap_tile(X0).
-inter_er_left_opencell_er_overlap_tile(X0) :- object(X0),not inter_er_left_opencell_er_overlap_tile(X0).
inter_er_left_opencell_er_shape_tile(X0) :- er_left_opencell(X0),er_shape_tile(X0).
-inter_er_left_opencell_er_shape_tile(X0) :- object(X0),not inter_er_left_opencell_er_shape_tile(X0).
inter_er_left_opencell_inter_verum_falsum(X0) :- er_left_opencell(X0),inter_verum_falsum(X0).
-inter_er_left_opencell_inter_verum_falsum(X0) :- object(X0),not inter_er_left_opencell_inter_verum_falsum(X0).
inter_er_left_opencell_inter_verum_opencell(X0) :- er_left_opencell(X0),inter_verum_opencell(X0).
-inter_er_left_opencell_inter_verum_opencell(X0) :- object(X0),not inter_er_left_opencell_inter_verum_opencell(X0).
inter_er_left_opencell_inter_verum_tile(X0) :- er_left_opencell(X0),inter_verum_tile(X0).
-inter_er_left_opencell_inter_verum_tile(X0) :- object(X0),not inter_er_left_opencell_inter_verum_tile(X0).
inter_er_left_opencell_inter_falsum_opencell(X0) :- er_left_opencell(X0),inter_falsum_opencell(X0).
-inter_er_left_opencell_inter_falsum_opencell(X0) :- object(X0),not inter_er_left_opencell_inter_falsum_opencell(X0).
inter_er_left_opencell_inter_falsum_tile(X0) :- er_left_opencell(X0),inter_falsum_tile(X0).
-inter_er_left_opencell_inter_falsum_tile(X0) :- object(X0),not inter_er_left_opencell_inter_falsum_tile(X0).
inter_er_left_opencell_inter_opencell_tile(X0) :- er_left_opencell(X0),inter_opencell_tile(X0).
-inter_er_left_opencell_inter_opencell_tile(X0) :- object(X0),not inter_er_left_opencell_inter_opencell_tile(X0).
inter_er_left_opencell_subset_verum_falsum(X0) :- er_left_opencell(X0),subset_verum_falsum(null).
-inter_er_left_opencell_subset_verum_falsum(X0) :- object(X0),not inter_er_left_opencell_subset_verum_falsum(X0).
inter_er_left_opencell_subset_verum_opencell(X0) :- er_left_opencell(X0),subset_verum_opencell(null).
-inter_er_left_opencell_subset_verum_opencell(X0) :- object(X0),not inter_er_left_opencell_subset_verum_opencell(X0).
inter_er_left_opencell_subset_verum_tile(X0) :- er_left_opencell(X0),subset_verum_tile(null).
-inter_er_left_opencell_subset_verum_tile(X0) :- object(X0),not inter_er_left_opencell_subset_verum_tile(X0).
inter_er_left_opencell_subset_falsum_opencell(X0) :- er_left_opencell(X0),subset_falsum_opencell(null).
-inter_er_left_opencell_subset_falsum_opencell(X0) :- object(X0),not inter_er_left_opencell_subset_falsum_opencell(X0).
inter_er_left_opencell_subset_falsum_tile(X0) :- er_left_opencell(X0),subset_falsum_tile(null).
-inter_er_left_opencell_subset_falsum_tile(X0) :- object(X0),not inter_er_left_opencell_subset_falsum_tile(X0).
inter_er_left_opencell_subset_opencell_tile(X0) :- er_left_opencell(X0),subset_opencell_tile(null).
-inter_er_left_opencell_subset_opencell_tile(X0) :- object(X0),not inter_er_left_opencell_subset_opencell_tile(X0).
inter_er_overlap_opencell_er_shape_opencell(X0) :- er_overlap_opencell(X0),er_shape_opencell(X0).
-inter_er_overlap_opencell_er_shape_opencell(X0) :- object(X0),not inter_er_overlap_opencell_er_shape_opencell(X0).
inter_er_overlap_opencell_er_smaller_tile(X0) :- er_overlap_opencell(X0),er_smaller_tile(X0).
-inter_er_overlap_opencell_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_opencell_er_smaller_tile(X0).
inter_er_overlap_opencell_er_below_tile(X0) :- er_overlap_opencell(X0),er_below_tile(X0).
-inter_er_overlap_opencell_er_below_tile(X0) :- object(X0),not inter_er_overlap_opencell_er_below_tile(X0).
inter_er_overlap_opencell_er_left_tile(X0) :- er_overlap_opencell(X0),er_left_tile(X0).
-inter_er_overlap_opencell_er_left_tile(X0) :- object(X0),not inter_er_overlap_opencell_er_left_tile(X0).
inter_er_overlap_opencell_er_overlap_tile(X0) :- er_overlap_opencell(X0),er_overlap_tile(X0).
-inter_er_overlap_opencell_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_opencell_er_overlap_tile(X0).
inter_er_overlap_opencell_er_shape_tile(X0) :- er_overlap_opencell(X0),er_shape_tile(X0).
-inter_er_overlap_opencell_er_shape_tile(X0) :- object(X0),not inter_er_overlap_opencell_er_shape_tile(X0).
inter_er_overlap_opencell_inter_verum_falsum(X0) :- er_overlap_opencell(X0),inter_verum_falsum(X0).
-inter_er_overlap_opencell_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_opencell_inter_verum_falsum(X0).
inter_er_overlap_opencell_inter_verum_opencell(X0) :- er_overlap_opencell(X0),inter_verum_opencell(X0).
-inter_er_overlap_opencell_inter_verum_opencell(X0) :- object(X0),not inter_er_overlap_opencell_inter_verum_opencell(X0).
inter_er_overlap_opencell_inter_verum_tile(X0) :- er_overlap_opencell(X0),inter_verum_tile(X0).
-inter_er_overlap_opencell_inter_verum_tile(X0) :- object(X0),not inter_er_overlap_opencell_inter_verum_tile(X0).
inter_er_overlap_opencell_inter_falsum_opencell(X0) :- er_overlap_opencell(X0),inter_falsum_opencell(X0).
-inter_er_overlap_opencell_inter_falsum_opencell(X0) :- object(X0),not inter_er_overlap_opencell_inter_falsum_opencell(X0).
inter_er_overlap_opencell_inter_falsum_tile(X0) :- er_overlap_opencell(X0),inter_falsum_tile(X0).
-inter_er_overlap_opencell_inter_falsum_tile(X0) :- object(X0),not inter_er_overlap_opencell_inter_falsum_tile(X0).
inter_er_overlap_opencell_inter_opencell_tile(X0) :- er_overlap_opencell(X0),inter_opencell_tile(X0).
-inter_er_overlap_opencell_inter_opencell_tile(X0) :- object(X0),not inter_er_overlap_opencell_inter_opencell_tile(X0).
inter_er_overlap_opencell_subset_verum_falsum(X0) :- er_overlap_opencell(X0),subset_verum_falsum(null).
-inter_er_overlap_opencell_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_opencell_subset_verum_falsum(X0).
inter_er_overlap_opencell_subset_verum_opencell(X0) :- er_overlap_opencell(X0),subset_verum_opencell(null).
-inter_er_overlap_opencell_subset_verum_opencell(X0) :- object(X0),not inter_er_overlap_opencell_subset_verum_opencell(X0).
inter_er_overlap_opencell_subset_verum_tile(X0) :- er_overlap_opencell(X0),subset_verum_tile(null).
-inter_er_overlap_opencell_subset_verum_tile(X0) :- object(X0),not inter_er_overlap_opencell_subset_verum_tile(X0).
inter_er_overlap_opencell_subset_falsum_opencell(X0) :- er_overlap_opencell(X0),subset_falsum_opencell(null).
-inter_er_overlap_opencell_subset_falsum_opencell(X0) :- object(X0),not inter_er_overlap_opencell_subset_falsum_opencell(X0).
inter_er_overlap_opencell_subset_falsum_tile(X0) :- er_overlap_opencell(X0),subset_falsum_tile(null).
-inter_er_overlap_opencell_subset_falsum_tile(X0) :- object(X0),not inter_er_overlap_opencell_subset_falsum_tile(X0).
inter_er_overlap_opencell_subset_opencell_tile(X0) :- er_overlap_opencell(X0),subset_opencell_tile(null).
-inter_er_overlap_opencell_subset_opencell_tile(X0) :- object(X0),not inter_er_overlap_opencell_subset_opencell_tile(X0).
inter_er_shape_opencell_er_smaller_tile(X0) :- er_shape_opencell(X0),er_smaller_tile(X0).
-inter_er_shape_opencell_er_smaller_tile(X0) :- object(X0),not inter_er_shape_opencell_er_smaller_tile(X0).
inter_er_shape_opencell_er_below_tile(X0) :- er_shape_opencell(X0),er_below_tile(X0).
-inter_er_shape_opencell_er_below_tile(X0) :- object(X0),not inter_er_shape_opencell_er_below_tile(X0).
inter_er_shape_opencell_er_left_tile(X0) :- er_shape_opencell(X0),er_left_tile(X0).
-inter_er_shape_opencell_er_left_tile(X0) :- object(X0),not inter_er_shape_opencell_er_left_tile(X0).
inter_er_shape_opencell_er_overlap_tile(X0) :- er_shape_opencell(X0),er_overlap_tile(X0).
-inter_er_shape_opencell_er_overlap_tile(X0) :- object(X0),not inter_er_shape_opencell_er_overlap_tile(X0).
inter_er_shape_opencell_er_shape_tile(X0) :- er_shape_opencell(X0),er_shape_tile(X0).
-inter_er_shape_opencell_er_shape_tile(X0) :- object(X0),not inter_er_shape_opencell_er_shape_tile(X0).
inter_er_shape_opencell_inter_verum_falsum(X0) :- er_shape_opencell(X0),inter_verum_falsum(X0).
-inter_er_shape_opencell_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_opencell_inter_verum_falsum(X0).
inter_er_shape_opencell_inter_verum_opencell(X0) :- er_shape_opencell(X0),inter_verum_opencell(X0).
-inter_er_shape_opencell_inter_verum_opencell(X0) :- object(X0),not inter_er_shape_opencell_inter_verum_opencell(X0).
inter_er_shape_opencell_inter_verum_tile(X0) :- er_shape_opencell(X0),inter_verum_tile(X0).
-inter_er_shape_opencell_inter_verum_tile(X0) :- object(X0),not inter_er_shape_opencell_inter_verum_tile(X0).
inter_er_shape_opencell_inter_falsum_opencell(X0) :- er_shape_opencell(X0),inter_falsum_opencell(X0).
-inter_er_shape_opencell_inter_falsum_opencell(X0) :- object(X0),not inter_er_shape_opencell_inter_falsum_opencell(X0).
inter_er_shape_opencell_inter_falsum_tile(X0) :- er_shape_opencell(X0),inter_falsum_tile(X0).
-inter_er_shape_opencell_inter_falsum_tile(X0) :- object(X0),not inter_er_shape_opencell_inter_falsum_tile(X0).
inter_er_shape_opencell_inter_opencell_tile(X0) :- er_shape_opencell(X0),inter_opencell_tile(X0).
-inter_er_shape_opencell_inter_opencell_tile(X0) :- object(X0),not inter_er_shape_opencell_inter_opencell_tile(X0).
inter_er_shape_opencell_subset_verum_falsum(X0) :- er_shape_opencell(X0),subset_verum_falsum(null).
-inter_er_shape_opencell_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_opencell_subset_verum_falsum(X0).
inter_er_shape_opencell_subset_verum_opencell(X0) :- er_shape_opencell(X0),subset_verum_opencell(null).
-inter_er_shape_opencell_subset_verum_opencell(X0) :- object(X0),not inter_er_shape_opencell_subset_verum_opencell(X0).
inter_er_shape_opencell_subset_verum_tile(X0) :- er_shape_opencell(X0),subset_verum_tile(null).
-inter_er_shape_opencell_subset_verum_tile(X0) :- object(X0),not inter_er_shape_opencell_subset_verum_tile(X0).
inter_er_shape_opencell_subset_falsum_opencell(X0) :- er_shape_opencell(X0),subset_falsum_opencell(null).
-inter_er_shape_opencell_subset_falsum_opencell(X0) :- object(X0),not inter_er_shape_opencell_subset_falsum_opencell(X0).
inter_er_shape_opencell_subset_falsum_tile(X0) :- er_shape_opencell(X0),subset_falsum_tile(null).
-inter_er_shape_opencell_subset_falsum_tile(X0) :- object(X0),not inter_er_shape_opencell_subset_falsum_tile(X0).
inter_er_shape_opencell_subset_opencell_tile(X0) :- er_shape_opencell(X0),subset_opencell_tile(null).
-inter_er_shape_opencell_subset_opencell_tile(X0) :- object(X0),not inter_er_shape_opencell_subset_opencell_tile(X0).
inter_er_smaller_tile_er_below_tile(X0) :- er_smaller_tile(X0),er_below_tile(X0).
-inter_er_smaller_tile_er_below_tile(X0) :- object(X0),not inter_er_smaller_tile_er_below_tile(X0).
inter_er_smaller_tile_er_left_tile(X0) :- er_smaller_tile(X0),er_left_tile(X0).
-inter_er_smaller_tile_er_left_tile(X0) :- object(X0),not inter_er_smaller_tile_er_left_tile(X0).
inter_er_smaller_tile_er_overlap_tile(X0) :- er_smaller_tile(X0),er_overlap_tile(X0).
-inter_er_smaller_tile_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_tile_er_overlap_tile(X0).
inter_er_smaller_tile_er_shape_tile(X0) :- er_smaller_tile(X0),er_shape_tile(X0).
-inter_er_smaller_tile_er_shape_tile(X0) :- object(X0),not inter_er_smaller_tile_er_shape_tile(X0).
inter_er_smaller_tile_inter_verum_falsum(X0) :- er_smaller_tile(X0),inter_verum_falsum(X0).
-inter_er_smaller_tile_inter_verum_falsum(X0) :- object(X0),not inter_er_smaller_tile_inter_verum_falsum(X0).
inter_er_smaller_tile_inter_verum_opencell(X0) :- er_smaller_tile(X0),inter_verum_opencell(X0).
-inter_er_smaller_tile_inter_verum_opencell(X0) :- object(X0),not inter_er_smaller_tile_inter_verum_opencell(X0).
inter_er_smaller_tile_inter_verum_tile(X0) :- er_smaller_tile(X0),inter_verum_tile(X0).
-inter_er_smaller_tile_inter_verum_tile(X0) :- object(X0),not inter_er_smaller_tile_inter_verum_tile(X0).
inter_er_smaller_tile_inter_falsum_opencell(X0) :- er_smaller_tile(X0),inter_falsum_opencell(X0).
-inter_er_smaller_tile_inter_falsum_opencell(X0) :- object(X0),not inter_er_smaller_tile_inter_falsum_opencell(X0).
inter_er_smaller_tile_inter_falsum_tile(X0) :- er_smaller_tile(X0),inter_falsum_tile(X0).
-inter_er_smaller_tile_inter_falsum_tile(X0) :- object(X0),not inter_er_smaller_tile_inter_falsum_tile(X0).
inter_er_smaller_tile_inter_opencell_tile(X0) :- er_smaller_tile(X0),inter_opencell_tile(X0).
-inter_er_smaller_tile_inter_opencell_tile(X0) :- object(X0),not inter_er_smaller_tile_inter_opencell_tile(X0).
inter_er_smaller_tile_subset_verum_falsum(X0) :- er_smaller_tile(X0),subset_verum_falsum(null).
-inter_er_smaller_tile_subset_verum_falsum(X0) :- object(X0),not inter_er_smaller_tile_subset_verum_falsum(X0).
inter_er_smaller_tile_subset_verum_opencell(X0) :- er_smaller_tile(X0),subset_verum_opencell(null).
-inter_er_smaller_tile_subset_verum_opencell(X0) :- object(X0),not inter_er_smaller_tile_subset_verum_opencell(X0).
inter_er_smaller_tile_subset_verum_tile(X0) :- er_smaller_tile(X0),subset_verum_tile(null).
-inter_er_smaller_tile_subset_verum_tile(X0) :- object(X0),not inter_er_smaller_tile_subset_verum_tile(X0).
inter_er_smaller_tile_subset_falsum_opencell(X0) :- er_smaller_tile(X0),subset_falsum_opencell(null).
-inter_er_smaller_tile_subset_falsum_opencell(X0) :- object(X0),not inter_er_smaller_tile_subset_falsum_opencell(X0).
inter_er_smaller_tile_subset_falsum_tile(X0) :- er_smaller_tile(X0),subset_falsum_tile(null).
-inter_er_smaller_tile_subset_falsum_tile(X0) :- object(X0),not inter_er_smaller_tile_subset_falsum_tile(X0).
inter_er_smaller_tile_subset_opencell_tile(X0) :- er_smaller_tile(X0),subset_opencell_tile(null).
-inter_er_smaller_tile_subset_opencell_tile(X0) :- object(X0),not inter_er_smaller_tile_subset_opencell_tile(X0).
inter_er_below_tile_er_left_tile(X0) :- er_below_tile(X0),er_left_tile(X0).
-inter_er_below_tile_er_left_tile(X0) :- object(X0),not inter_er_below_tile_er_left_tile(X0).
inter_er_below_tile_er_overlap_tile(X0) :- er_below_tile(X0),er_overlap_tile(X0).
-inter_er_below_tile_er_overlap_tile(X0) :- object(X0),not inter_er_below_tile_er_overlap_tile(X0).
inter_er_below_tile_er_shape_tile(X0) :- er_below_tile(X0),er_shape_tile(X0).
-inter_er_below_tile_er_shape_tile(X0) :- object(X0),not inter_er_below_tile_er_shape_tile(X0).
inter_er_below_tile_inter_verum_falsum(X0) :- er_below_tile(X0),inter_verum_falsum(X0).
-inter_er_below_tile_inter_verum_falsum(X0) :- object(X0),not inter_er_below_tile_inter_verum_falsum(X0).
inter_er_below_tile_inter_verum_opencell(X0) :- er_below_tile(X0),inter_verum_opencell(X0).
-inter_er_below_tile_inter_verum_opencell(X0) :- object(X0),not inter_er_below_tile_inter_verum_opencell(X0).
inter_er_below_tile_inter_verum_tile(X0) :- er_below_tile(X0),inter_verum_tile(X0).
-inter_er_below_tile_inter_verum_tile(X0) :- object(X0),not inter_er_below_tile_inter_verum_tile(X0).
inter_er_below_tile_inter_falsum_opencell(X0) :- er_below_tile(X0),inter_falsum_opencell(X0).
-inter_er_below_tile_inter_falsum_opencell(X0) :- object(X0),not inter_er_below_tile_inter_falsum_opencell(X0).
inter_er_below_tile_inter_falsum_tile(X0) :- er_below_tile(X0),inter_falsum_tile(X0).
-inter_er_below_tile_inter_falsum_tile(X0) :- object(X0),not inter_er_below_tile_inter_falsum_tile(X0).
inter_er_below_tile_inter_opencell_tile(X0) :- er_below_tile(X0),inter_opencell_tile(X0).
-inter_er_below_tile_inter_opencell_tile(X0) :- object(X0),not inter_er_below_tile_inter_opencell_tile(X0).
inter_er_below_tile_subset_verum_falsum(X0) :- er_below_tile(X0),subset_verum_falsum(null).
-inter_er_below_tile_subset_verum_falsum(X0) :- object(X0),not inter_er_below_tile_subset_verum_falsum(X0).
inter_er_below_tile_subset_verum_opencell(X0) :- er_below_tile(X0),subset_verum_opencell(null).
-inter_er_below_tile_subset_verum_opencell(X0) :- object(X0),not inter_er_below_tile_subset_verum_opencell(X0).
inter_er_below_tile_subset_verum_tile(X0) :- er_below_tile(X0),subset_verum_tile(null).
-inter_er_below_tile_subset_verum_tile(X0) :- object(X0),not inter_er_below_tile_subset_verum_tile(X0).
inter_er_below_tile_subset_falsum_opencell(X0) :- er_below_tile(X0),subset_falsum_opencell(null).
-inter_er_below_tile_subset_falsum_opencell(X0) :- object(X0),not inter_er_below_tile_subset_falsum_opencell(X0).
inter_er_below_tile_subset_falsum_tile(X0) :- er_below_tile(X0),subset_falsum_tile(null).
-inter_er_below_tile_subset_falsum_tile(X0) :- object(X0),not inter_er_below_tile_subset_falsum_tile(X0).
inter_er_below_tile_subset_opencell_tile(X0) :- er_below_tile(X0),subset_opencell_tile(null).
-inter_er_below_tile_subset_opencell_tile(X0) :- object(X0),not inter_er_below_tile_subset_opencell_tile(X0).
inter_er_left_tile_er_overlap_tile(X0) :- er_left_tile(X0),er_overlap_tile(X0).
-inter_er_left_tile_er_overlap_tile(X0) :- object(X0),not inter_er_left_tile_er_overlap_tile(X0).
inter_er_left_tile_er_shape_tile(X0) :- er_left_tile(X0),er_shape_tile(X0).
-inter_er_left_tile_er_shape_tile(X0) :- object(X0),not inter_er_left_tile_er_shape_tile(X0).
inter_er_left_tile_inter_verum_falsum(X0) :- er_left_tile(X0),inter_verum_falsum(X0).
-inter_er_left_tile_inter_verum_falsum(X0) :- object(X0),not inter_er_left_tile_inter_verum_falsum(X0).
inter_er_left_tile_inter_verum_opencell(X0) :- er_left_tile(X0),inter_verum_opencell(X0).
-inter_er_left_tile_inter_verum_opencell(X0) :- object(X0),not inter_er_left_tile_inter_verum_opencell(X0).
inter_er_left_tile_inter_verum_tile(X0) :- er_left_tile(X0),inter_verum_tile(X0).
-inter_er_left_tile_inter_verum_tile(X0) :- object(X0),not inter_er_left_tile_inter_verum_tile(X0).
inter_er_left_tile_inter_falsum_opencell(X0) :- er_left_tile(X0),inter_falsum_opencell(X0).
-inter_er_left_tile_inter_falsum_opencell(X0) :- object(X0),not inter_er_left_tile_inter_falsum_opencell(X0).
inter_er_left_tile_inter_falsum_tile(X0) :- er_left_tile(X0),inter_falsum_tile(X0).
-inter_er_left_tile_inter_falsum_tile(X0) :- object(X0),not inter_er_left_tile_inter_falsum_tile(X0).
inter_er_left_tile_inter_opencell_tile(X0) :- er_left_tile(X0),inter_opencell_tile(X0).
-inter_er_left_tile_inter_opencell_tile(X0) :- object(X0),not inter_er_left_tile_inter_opencell_tile(X0).
inter_er_left_tile_subset_verum_falsum(X0) :- er_left_tile(X0),subset_verum_falsum(null).
-inter_er_left_tile_subset_verum_falsum(X0) :- object(X0),not inter_er_left_tile_subset_verum_falsum(X0).
inter_er_left_tile_subset_verum_opencell(X0) :- er_left_tile(X0),subset_verum_opencell(null).
-inter_er_left_tile_subset_verum_opencell(X0) :- object(X0),not inter_er_left_tile_subset_verum_opencell(X0).
inter_er_left_tile_subset_verum_tile(X0) :- er_left_tile(X0),subset_verum_tile(null).
-inter_er_left_tile_subset_verum_tile(X0) :- object(X0),not inter_er_left_tile_subset_verum_tile(X0).
inter_er_left_tile_subset_falsum_opencell(X0) :- er_left_tile(X0),subset_falsum_opencell(null).
-inter_er_left_tile_subset_falsum_opencell(X0) :- object(X0),not inter_er_left_tile_subset_falsum_opencell(X0).
inter_er_left_tile_subset_falsum_tile(X0) :- er_left_tile(X0),subset_falsum_tile(null).
-inter_er_left_tile_subset_falsum_tile(X0) :- object(X0),not inter_er_left_tile_subset_falsum_tile(X0).
inter_er_left_tile_subset_opencell_tile(X0) :- er_left_tile(X0),subset_opencell_tile(null).
-inter_er_left_tile_subset_opencell_tile(X0) :- object(X0),not inter_er_left_tile_subset_opencell_tile(X0).
inter_er_overlap_tile_er_shape_tile(X0) :- er_overlap_tile(X0),er_shape_tile(X0).
-inter_er_overlap_tile_er_shape_tile(X0) :- object(X0),not inter_er_overlap_tile_er_shape_tile(X0).
inter_er_overlap_tile_inter_verum_falsum(X0) :- er_overlap_tile(X0),inter_verum_falsum(X0).
-inter_er_overlap_tile_inter_verum_falsum(X0) :- object(X0),not inter_er_overlap_tile_inter_verum_falsum(X0).
inter_er_overlap_tile_inter_verum_opencell(X0) :- er_overlap_tile(X0),inter_verum_opencell(X0).
-inter_er_overlap_tile_inter_verum_opencell(X0) :- object(X0),not inter_er_overlap_tile_inter_verum_opencell(X0).
inter_er_overlap_tile_inter_verum_tile(X0) :- er_overlap_tile(X0),inter_verum_tile(X0).
-inter_er_overlap_tile_inter_verum_tile(X0) :- object(X0),not inter_er_overlap_tile_inter_verum_tile(X0).
inter_er_overlap_tile_inter_falsum_opencell(X0) :- er_overlap_tile(X0),inter_falsum_opencell(X0).
-inter_er_overlap_tile_inter_falsum_opencell(X0) :- object(X0),not inter_er_overlap_tile_inter_falsum_opencell(X0).
inter_er_overlap_tile_inter_falsum_tile(X0) :- er_overlap_tile(X0),inter_falsum_tile(X0).
-inter_er_overlap_tile_inter_falsum_tile(X0) :- object(X0),not inter_er_overlap_tile_inter_falsum_tile(X0).
inter_er_overlap_tile_inter_opencell_tile(X0) :- er_overlap_tile(X0),inter_opencell_tile(X0).
-inter_er_overlap_tile_inter_opencell_tile(X0) :- object(X0),not inter_er_overlap_tile_inter_opencell_tile(X0).
inter_er_overlap_tile_subset_verum_falsum(X0) :- er_overlap_tile(X0),subset_verum_falsum(null).
-inter_er_overlap_tile_subset_verum_falsum(X0) :- object(X0),not inter_er_overlap_tile_subset_verum_falsum(X0).
inter_er_overlap_tile_subset_verum_opencell(X0) :- er_overlap_tile(X0),subset_verum_opencell(null).
-inter_er_overlap_tile_subset_verum_opencell(X0) :- object(X0),not inter_er_overlap_tile_subset_verum_opencell(X0).
inter_er_overlap_tile_subset_verum_tile(X0) :- er_overlap_tile(X0),subset_verum_tile(null).
-inter_er_overlap_tile_subset_verum_tile(X0) :- object(X0),not inter_er_overlap_tile_subset_verum_tile(X0).
inter_er_overlap_tile_subset_falsum_opencell(X0) :- er_overlap_tile(X0),subset_falsum_opencell(null).
-inter_er_overlap_tile_subset_falsum_opencell(X0) :- object(X0),not inter_er_overlap_tile_subset_falsum_opencell(X0).
inter_er_overlap_tile_subset_falsum_tile(X0) :- er_overlap_tile(X0),subset_falsum_tile(null).
-inter_er_overlap_tile_subset_falsum_tile(X0) :- object(X0),not inter_er_overlap_tile_subset_falsum_tile(X0).
inter_er_overlap_tile_subset_opencell_tile(X0) :- er_overlap_tile(X0),subset_opencell_tile(null).
-inter_er_overlap_tile_subset_opencell_tile(X0) :- object(X0),not inter_er_overlap_tile_subset_opencell_tile(X0).
inter_er_shape_tile_inter_verum_falsum(X0) :- er_shape_tile(X0),inter_verum_falsum(X0).
-inter_er_shape_tile_inter_verum_falsum(X0) :- object(X0),not inter_er_shape_tile_inter_verum_falsum(X0).
inter_er_shape_tile_inter_verum_opencell(X0) :- er_shape_tile(X0),inter_verum_opencell(X0).
-inter_er_shape_tile_inter_verum_opencell(X0) :- object(X0),not inter_er_shape_tile_inter_verum_opencell(X0).
inter_er_shape_tile_inter_verum_tile(X0) :- er_shape_tile(X0),inter_verum_tile(X0).
-inter_er_shape_tile_inter_verum_tile(X0) :- object(X0),not inter_er_shape_tile_inter_verum_tile(X0).
inter_er_shape_tile_inter_falsum_opencell(X0) :- er_shape_tile(X0),inter_falsum_opencell(X0).
-inter_er_shape_tile_inter_falsum_opencell(X0) :- object(X0),not inter_er_shape_tile_inter_falsum_opencell(X0).
inter_er_shape_tile_inter_falsum_tile(X0) :- er_shape_tile(X0),inter_falsum_tile(X0).
-inter_er_shape_tile_inter_falsum_tile(X0) :- object(X0),not inter_er_shape_tile_inter_falsum_tile(X0).
inter_er_shape_tile_inter_opencell_tile(X0) :- er_shape_tile(X0),inter_opencell_tile(X0).
-inter_er_shape_tile_inter_opencell_tile(X0) :- object(X0),not inter_er_shape_tile_inter_opencell_tile(X0).
inter_er_shape_tile_subset_verum_falsum(X0) :- er_shape_tile(X0),subset_verum_falsum(null).
-inter_er_shape_tile_subset_verum_falsum(X0) :- object(X0),not inter_er_shape_tile_subset_verum_falsum(X0).
inter_er_shape_tile_subset_verum_opencell(X0) :- er_shape_tile(X0),subset_verum_opencell(null).
-inter_er_shape_tile_subset_verum_opencell(X0) :- object(X0),not inter_er_shape_tile_subset_verum_opencell(X0).
inter_er_shape_tile_subset_verum_tile(X0) :- er_shape_tile(X0),subset_verum_tile(null).
-inter_er_shape_tile_subset_verum_tile(X0) :- object(X0),not inter_er_shape_tile_subset_verum_tile(X0).
inter_er_shape_tile_subset_falsum_opencell(X0) :- er_shape_tile(X0),subset_falsum_opencell(null).
-inter_er_shape_tile_subset_falsum_opencell(X0) :- object(X0),not inter_er_shape_tile_subset_falsum_opencell(X0).
inter_er_shape_tile_subset_falsum_tile(X0) :- er_shape_tile(X0),subset_falsum_tile(null).
-inter_er_shape_tile_subset_falsum_tile(X0) :- object(X0),not inter_er_shape_tile_subset_falsum_tile(X0).
inter_er_shape_tile_subset_opencell_tile(X0) :- er_shape_tile(X0),subset_opencell_tile(null).
-inter_er_shape_tile_subset_opencell_tile(X0) :- object(X0),not inter_er_shape_tile_subset_opencell_tile(X0).
inter_inter_verum_falsum_inter_verum_opencell(X0) :- inter_verum_falsum(X0),inter_verum_opencell(X0).
-inter_inter_verum_falsum_inter_verum_opencell(X0) :- object(X0),not inter_inter_verum_falsum_inter_verum_opencell(X0).
inter_inter_verum_falsum_inter_verum_tile(X0) :- inter_verum_falsum(X0),inter_verum_tile(X0).
-inter_inter_verum_falsum_inter_verum_tile(X0) :- object(X0),not inter_inter_verum_falsum_inter_verum_tile(X0).
inter_inter_verum_falsum_inter_falsum_opencell(X0) :- inter_verum_falsum(X0),inter_falsum_opencell(X0).
-inter_inter_verum_falsum_inter_falsum_opencell(X0) :- object(X0),not inter_inter_verum_falsum_inter_falsum_opencell(X0).
inter_inter_verum_falsum_inter_falsum_tile(X0) :- inter_verum_falsum(X0),inter_falsum_tile(X0).
-inter_inter_verum_falsum_inter_falsum_tile(X0) :- object(X0),not inter_inter_verum_falsum_inter_falsum_tile(X0).
inter_inter_verum_falsum_inter_opencell_tile(X0) :- inter_verum_falsum(X0),inter_opencell_tile(X0).
-inter_inter_verum_falsum_inter_opencell_tile(X0) :- object(X0),not inter_inter_verum_falsum_inter_opencell_tile(X0).
inter_inter_verum_falsum_subset_verum_falsum(X0) :- inter_verum_falsum(X0),subset_verum_falsum(null).
-inter_inter_verum_falsum_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_falsum(X0).
inter_inter_verum_falsum_subset_verum_opencell(X0) :- inter_verum_falsum(X0),subset_verum_opencell(null).
-inter_inter_verum_falsum_subset_verum_opencell(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_opencell(X0).
inter_inter_verum_falsum_subset_verum_tile(X0) :- inter_verum_falsum(X0),subset_verum_tile(null).
-inter_inter_verum_falsum_subset_verum_tile(X0) :- object(X0),not inter_inter_verum_falsum_subset_verum_tile(X0).
inter_inter_verum_falsum_subset_falsum_opencell(X0) :- inter_verum_falsum(X0),subset_falsum_opencell(null).
-inter_inter_verum_falsum_subset_falsum_opencell(X0) :- object(X0),not inter_inter_verum_falsum_subset_falsum_opencell(X0).
inter_inter_verum_falsum_subset_falsum_tile(X0) :- inter_verum_falsum(X0),subset_falsum_tile(null).
-inter_inter_verum_falsum_subset_falsum_tile(X0) :- object(X0),not inter_inter_verum_falsum_subset_falsum_tile(X0).
inter_inter_verum_falsum_subset_opencell_tile(X0) :- inter_verum_falsum(X0),subset_opencell_tile(null).
-inter_inter_verum_falsum_subset_opencell_tile(X0) :- object(X0),not inter_inter_verum_falsum_subset_opencell_tile(X0).
inter_inter_verum_opencell_inter_verum_tile(X0) :- inter_verum_opencell(X0),inter_verum_tile(X0).
-inter_inter_verum_opencell_inter_verum_tile(X0) :- object(X0),not inter_inter_verum_opencell_inter_verum_tile(X0).
inter_inter_verum_opencell_inter_falsum_opencell(X0) :- inter_verum_opencell(X0),inter_falsum_opencell(X0).
-inter_inter_verum_opencell_inter_falsum_opencell(X0) :- object(X0),not inter_inter_verum_opencell_inter_falsum_opencell(X0).
inter_inter_verum_opencell_inter_falsum_tile(X0) :- inter_verum_opencell(X0),inter_falsum_tile(X0).
-inter_inter_verum_opencell_inter_falsum_tile(X0) :- object(X0),not inter_inter_verum_opencell_inter_falsum_tile(X0).
inter_inter_verum_opencell_inter_opencell_tile(X0) :- inter_verum_opencell(X0),inter_opencell_tile(X0).
-inter_inter_verum_opencell_inter_opencell_tile(X0) :- object(X0),not inter_inter_verum_opencell_inter_opencell_tile(X0).
inter_inter_verum_opencell_subset_verum_falsum(X0) :- inter_verum_opencell(X0),subset_verum_falsum(null).
-inter_inter_verum_opencell_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_opencell_subset_verum_falsum(X0).
inter_inter_verum_opencell_subset_verum_opencell(X0) :- inter_verum_opencell(X0),subset_verum_opencell(null).
-inter_inter_verum_opencell_subset_verum_opencell(X0) :- object(X0),not inter_inter_verum_opencell_subset_verum_opencell(X0).
inter_inter_verum_opencell_subset_verum_tile(X0) :- inter_verum_opencell(X0),subset_verum_tile(null).
-inter_inter_verum_opencell_subset_verum_tile(X0) :- object(X0),not inter_inter_verum_opencell_subset_verum_tile(X0).
inter_inter_verum_opencell_subset_falsum_opencell(X0) :- inter_verum_opencell(X0),subset_falsum_opencell(null).
-inter_inter_verum_opencell_subset_falsum_opencell(X0) :- object(X0),not inter_inter_verum_opencell_subset_falsum_opencell(X0).
inter_inter_verum_opencell_subset_falsum_tile(X0) :- inter_verum_opencell(X0),subset_falsum_tile(null).
-inter_inter_verum_opencell_subset_falsum_tile(X0) :- object(X0),not inter_inter_verum_opencell_subset_falsum_tile(X0).
inter_inter_verum_opencell_subset_opencell_tile(X0) :- inter_verum_opencell(X0),subset_opencell_tile(null).
-inter_inter_verum_opencell_subset_opencell_tile(X0) :- object(X0),not inter_inter_verum_opencell_subset_opencell_tile(X0).
inter_inter_verum_tile_inter_falsum_opencell(X0) :- inter_verum_tile(X0),inter_falsum_opencell(X0).
-inter_inter_verum_tile_inter_falsum_opencell(X0) :- object(X0),not inter_inter_verum_tile_inter_falsum_opencell(X0).
inter_inter_verum_tile_inter_falsum_tile(X0) :- inter_verum_tile(X0),inter_falsum_tile(X0).
-inter_inter_verum_tile_inter_falsum_tile(X0) :- object(X0),not inter_inter_verum_tile_inter_falsum_tile(X0).
inter_inter_verum_tile_inter_opencell_tile(X0) :- inter_verum_tile(X0),inter_opencell_tile(X0).
-inter_inter_verum_tile_inter_opencell_tile(X0) :- object(X0),not inter_inter_verum_tile_inter_opencell_tile(X0).
inter_inter_verum_tile_subset_verum_falsum(X0) :- inter_verum_tile(X0),subset_verum_falsum(null).
-inter_inter_verum_tile_subset_verum_falsum(X0) :- object(X0),not inter_inter_verum_tile_subset_verum_falsum(X0).
inter_inter_verum_tile_subset_verum_opencell(X0) :- inter_verum_tile(X0),subset_verum_opencell(null).
-inter_inter_verum_tile_subset_verum_opencell(X0) :- object(X0),not inter_inter_verum_tile_subset_verum_opencell(X0).
inter_inter_verum_tile_subset_verum_tile(X0) :- inter_verum_tile(X0),subset_verum_tile(null).
-inter_inter_verum_tile_subset_verum_tile(X0) :- object(X0),not inter_inter_verum_tile_subset_verum_tile(X0).
inter_inter_verum_tile_subset_falsum_opencell(X0) :- inter_verum_tile(X0),subset_falsum_opencell(null).
-inter_inter_verum_tile_subset_falsum_opencell(X0) :- object(X0),not inter_inter_verum_tile_subset_falsum_opencell(X0).
inter_inter_verum_tile_subset_falsum_tile(X0) :- inter_verum_tile(X0),subset_falsum_tile(null).
-inter_inter_verum_tile_subset_falsum_tile(X0) :- object(X0),not inter_inter_verum_tile_subset_falsum_tile(X0).
inter_inter_verum_tile_subset_opencell_tile(X0) :- inter_verum_tile(X0),subset_opencell_tile(null).
-inter_inter_verum_tile_subset_opencell_tile(X0) :- object(X0),not inter_inter_verum_tile_subset_opencell_tile(X0).
inter_inter_falsum_opencell_inter_falsum_tile(X0) :- inter_falsum_opencell(X0),inter_falsum_tile(X0).
-inter_inter_falsum_opencell_inter_falsum_tile(X0) :- object(X0),not inter_inter_falsum_opencell_inter_falsum_tile(X0).
inter_inter_falsum_opencell_inter_opencell_tile(X0) :- inter_falsum_opencell(X0),inter_opencell_tile(X0).
-inter_inter_falsum_opencell_inter_opencell_tile(X0) :- object(X0),not inter_inter_falsum_opencell_inter_opencell_tile(X0).
inter_inter_falsum_opencell_subset_verum_falsum(X0) :- inter_falsum_opencell(X0),subset_verum_falsum(null).
-inter_inter_falsum_opencell_subset_verum_falsum(X0) :- object(X0),not inter_inter_falsum_opencell_subset_verum_falsum(X0).
inter_inter_falsum_opencell_subset_verum_opencell(X0) :- inter_falsum_opencell(X0),subset_verum_opencell(null).
-inter_inter_falsum_opencell_subset_verum_opencell(X0) :- object(X0),not inter_inter_falsum_opencell_subset_verum_opencell(X0).
inter_inter_falsum_opencell_subset_verum_tile(X0) :- inter_falsum_opencell(X0),subset_verum_tile(null).
-inter_inter_falsum_opencell_subset_verum_tile(X0) :- object(X0),not inter_inter_falsum_opencell_subset_verum_tile(X0).
inter_inter_falsum_opencell_subset_falsum_opencell(X0) :- inter_falsum_opencell(X0),subset_falsum_opencell(null).
-inter_inter_falsum_opencell_subset_falsum_opencell(X0) :- object(X0),not inter_inter_falsum_opencell_subset_falsum_opencell(X0).
inter_inter_falsum_opencell_subset_falsum_tile(X0) :- inter_falsum_opencell(X0),subset_falsum_tile(null).
-inter_inter_falsum_opencell_subset_falsum_tile(X0) :- object(X0),not inter_inter_falsum_opencell_subset_falsum_tile(X0).
inter_inter_falsum_opencell_subset_opencell_tile(X0) :- inter_falsum_opencell(X0),subset_opencell_tile(null).
-inter_inter_falsum_opencell_subset_opencell_tile(X0) :- object(X0),not inter_inter_falsum_opencell_subset_opencell_tile(X0).
inter_inter_falsum_tile_inter_opencell_tile(X0) :- inter_falsum_tile(X0),inter_opencell_tile(X0).
-inter_inter_falsum_tile_inter_opencell_tile(X0) :- object(X0),not inter_inter_falsum_tile_inter_opencell_tile(X0).
inter_inter_falsum_tile_subset_verum_falsum(X0) :- inter_falsum_tile(X0),subset_verum_falsum(null).
-inter_inter_falsum_tile_subset_verum_falsum(X0) :- object(X0),not inter_inter_falsum_tile_subset_verum_falsum(X0).
inter_inter_falsum_tile_subset_verum_opencell(X0) :- inter_falsum_tile(X0),subset_verum_opencell(null).
-inter_inter_falsum_tile_subset_verum_opencell(X0) :- object(X0),not inter_inter_falsum_tile_subset_verum_opencell(X0).
inter_inter_falsum_tile_subset_verum_tile(X0) :- inter_falsum_tile(X0),subset_verum_tile(null).
-inter_inter_falsum_tile_subset_verum_tile(X0) :- object(X0),not inter_inter_falsum_tile_subset_verum_tile(X0).
inter_inter_falsum_tile_subset_falsum_opencell(X0) :- inter_falsum_tile(X0),subset_falsum_opencell(null).
-inter_inter_falsum_tile_subset_falsum_opencell(X0) :- object(X0),not inter_inter_falsum_tile_subset_falsum_opencell(X0).
inter_inter_falsum_tile_subset_falsum_tile(X0) :- inter_falsum_tile(X0),subset_falsum_tile(null).
-inter_inter_falsum_tile_subset_falsum_tile(X0) :- object(X0),not inter_inter_falsum_tile_subset_falsum_tile(X0).
inter_inter_falsum_tile_subset_opencell_tile(X0) :- inter_falsum_tile(X0),subset_opencell_tile(null).
-inter_inter_falsum_tile_subset_opencell_tile(X0) :- object(X0),not inter_inter_falsum_tile_subset_opencell_tile(X0).
inter_inter_opencell_tile_subset_verum_falsum(X0) :- inter_opencell_tile(X0),subset_verum_falsum(null).
-inter_inter_opencell_tile_subset_verum_falsum(X0) :- object(X0),not inter_inter_opencell_tile_subset_verum_falsum(X0).
inter_inter_opencell_tile_subset_verum_opencell(X0) :- inter_opencell_tile(X0),subset_verum_opencell(null).
-inter_inter_opencell_tile_subset_verum_opencell(X0) :- object(X0),not inter_inter_opencell_tile_subset_verum_opencell(X0).
inter_inter_opencell_tile_subset_verum_tile(X0) :- inter_opencell_tile(X0),subset_verum_tile(null).
-inter_inter_opencell_tile_subset_verum_tile(X0) :- object(X0),not inter_inter_opencell_tile_subset_verum_tile(X0).
inter_inter_opencell_tile_subset_falsum_opencell(X0) :- inter_opencell_tile(X0),subset_falsum_opencell(null).
-inter_inter_opencell_tile_subset_falsum_opencell(X0) :- object(X0),not inter_inter_opencell_tile_subset_falsum_opencell(X0).
inter_inter_opencell_tile_subset_falsum_tile(X0) :- inter_opencell_tile(X0),subset_falsum_tile(null).
-inter_inter_opencell_tile_subset_falsum_tile(X0) :- object(X0),not inter_inter_opencell_tile_subset_falsum_tile(X0).
inter_inter_opencell_tile_subset_opencell_tile(X0) :- inter_opencell_tile(X0),subset_opencell_tile(null).
-inter_inter_opencell_tile_subset_opencell_tile(X0) :- object(X0),not inter_inter_opencell_tile_subset_opencell_tile(X0).
inter_subset_verum_falsum_subset_verum_opencell(null) :- subset_verum_falsum(null),subset_verum_opencell(null).
-inter_subset_verum_falsum_subset_verum_opencell(null) :- object(null),not inter_subset_verum_falsum_subset_verum_opencell(null).
inter_subset_verum_falsum_subset_verum_tile(null) :- subset_verum_falsum(null),subset_verum_tile(null).
-inter_subset_verum_falsum_subset_verum_tile(null) :- object(null),not inter_subset_verum_falsum_subset_verum_tile(null).
inter_subset_verum_falsum_subset_falsum_opencell(null) :- subset_verum_falsum(null),subset_falsum_opencell(null).
-inter_subset_verum_falsum_subset_falsum_opencell(null) :- object(null),not inter_subset_verum_falsum_subset_falsum_opencell(null).
inter_subset_verum_falsum_subset_falsum_tile(null) :- subset_verum_falsum(null),subset_falsum_tile(null).
-inter_subset_verum_falsum_subset_falsum_tile(null) :- object(null),not inter_subset_verum_falsum_subset_falsum_tile(null).
inter_subset_verum_falsum_subset_opencell_tile(null) :- subset_verum_falsum(null),subset_opencell_tile(null).
-inter_subset_verum_falsum_subset_opencell_tile(null) :- object(null),not inter_subset_verum_falsum_subset_opencell_tile(null).
inter_subset_verum_opencell_subset_verum_tile(null) :- subset_verum_opencell(null),subset_verum_tile(null).
-inter_subset_verum_opencell_subset_verum_tile(null) :- object(null),not inter_subset_verum_opencell_subset_verum_tile(null).
inter_subset_verum_opencell_subset_falsum_opencell(null) :- subset_verum_opencell(null),subset_falsum_opencell(null).
-inter_subset_verum_opencell_subset_falsum_opencell(null) :- object(null),not inter_subset_verum_opencell_subset_falsum_opencell(null).
inter_subset_verum_opencell_subset_falsum_tile(null) :- subset_verum_opencell(null),subset_falsum_tile(null).
-inter_subset_verum_opencell_subset_falsum_tile(null) :- object(null),not inter_subset_verum_opencell_subset_falsum_tile(null).
inter_subset_verum_opencell_subset_opencell_tile(null) :- subset_verum_opencell(null),subset_opencell_tile(null).
-inter_subset_verum_opencell_subset_opencell_tile(null) :- object(null),not inter_subset_verum_opencell_subset_opencell_tile(null).
inter_subset_verum_tile_subset_falsum_opencell(null) :- subset_verum_tile(null),subset_falsum_opencell(null).
-inter_subset_verum_tile_subset_falsum_opencell(null) :- object(null),not inter_subset_verum_tile_subset_falsum_opencell(null).
inter_subset_verum_tile_subset_falsum_tile(null) :- subset_verum_tile(null),subset_falsum_tile(null).
-inter_subset_verum_tile_subset_falsum_tile(null) :- object(null),not inter_subset_verum_tile_subset_falsum_tile(null).
inter_subset_verum_tile_subset_opencell_tile(null) :- subset_verum_tile(null),subset_opencell_tile(null).
-inter_subset_verum_tile_subset_opencell_tile(null) :- object(null),not inter_subset_verum_tile_subset_opencell_tile(null).
inter_subset_falsum_opencell_subset_falsum_tile(null) :- subset_falsum_opencell(null),subset_falsum_tile(null).
-inter_subset_falsum_opencell_subset_falsum_tile(null) :- object(null),not inter_subset_falsum_opencell_subset_falsum_tile(null).
inter_subset_falsum_opencell_subset_opencell_tile(null) :- subset_falsum_opencell(null),subset_opencell_tile(null).
-inter_subset_falsum_opencell_subset_opencell_tile(null) :- object(null),not inter_subset_falsum_opencell_subset_opencell_tile(null).
inter_subset_falsum_tile_subset_opencell_tile(null) :- subset_falsum_tile(null),subset_opencell_tile(null).
-inter_subset_falsum_tile_subset_opencell_tile(null) :- object(null),not inter_subset_falsum_tile_subset_opencell_tile(null).
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
subset_verum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : verum(X0).
-subset_verum_er_smaller_opencell(null) :- not subset_verum_er_smaller_opencell(null).
subset_verum_er_below_opencell(null) :- er_below_opencell(X0) : verum(X0).
-subset_verum_er_below_opencell(null) :- not subset_verum_er_below_opencell(null).
subset_verum_er_left_opencell(null) :- er_left_opencell(X0) : verum(X0).
-subset_verum_er_left_opencell(null) :- not subset_verum_er_left_opencell(null).
subset_verum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : verum(X0).
-subset_verum_er_overlap_opencell(null) :- not subset_verum_er_overlap_opencell(null).
subset_verum_er_shape_opencell(null) :- er_shape_opencell(X0) : verum(X0).
-subset_verum_er_shape_opencell(null) :- not subset_verum_er_shape_opencell(null).
subset_verum_er_smaller_tile(null) :- er_smaller_tile(X0) : verum(X0).
-subset_verum_er_smaller_tile(null) :- not subset_verum_er_smaller_tile(null).
subset_verum_er_below_tile(null) :- er_below_tile(X0) : verum(X0).
-subset_verum_er_below_tile(null) :- not subset_verum_er_below_tile(null).
subset_verum_er_left_tile(null) :- er_left_tile(X0) : verum(X0).
-subset_verum_er_left_tile(null) :- not subset_verum_er_left_tile(null).
subset_verum_er_overlap_tile(null) :- er_overlap_tile(X0) : verum(X0).
-subset_verum_er_overlap_tile(null) :- not subset_verum_er_overlap_tile(null).
subset_verum_er_shape_tile(null) :- er_shape_tile(X0) : verum(X0).
-subset_verum_er_shape_tile(null) :- not subset_verum_er_shape_tile(null).
subset_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : verum(X0).
-subset_verum_inter_verum_falsum(null) :- not subset_verum_inter_verum_falsum(null).
subset_verum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : verum(X0).
-subset_verum_inter_verum_opencell(null) :- not subset_verum_inter_verum_opencell(null).
subset_verum_inter_verum_tile(null) :- inter_verum_tile(X0) : verum(X0).
-subset_verum_inter_verum_tile(null) :- not subset_verum_inter_verum_tile(null).
subset_verum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : verum(X0).
-subset_verum_inter_falsum_opencell(null) :- not subset_verum_inter_falsum_opencell(null).
subset_verum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : verum(X0).
-subset_verum_inter_falsum_tile(null) :- not subset_verum_inter_falsum_tile(null).
subset_verum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : verum(X0).
-subset_verum_inter_opencell_tile(null) :- not subset_verum_inter_opencell_tile(null).
subset_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : verum(X0).
-subset_verum_subset_verum_falsum(null) :- not subset_verum_subset_verum_falsum(null).
subset_verum_subset_verum_opencell(null) :- subset_verum_opencell(null) : verum(X0).
-subset_verum_subset_verum_opencell(null) :- not subset_verum_subset_verum_opencell(null).
subset_verum_subset_verum_tile(null) :- subset_verum_tile(null) : verum(X0).
-subset_verum_subset_verum_tile(null) :- not subset_verum_subset_verum_tile(null).
subset_verum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : verum(X0).
-subset_verum_subset_falsum_opencell(null) :- not subset_verum_subset_falsum_opencell(null).
subset_verum_subset_falsum_tile(null) :- subset_falsum_tile(null) : verum(X0).
-subset_verum_subset_falsum_tile(null) :- not subset_verum_subset_falsum_tile(null).
subset_verum_subset_opencell_tile(null) :- subset_opencell_tile(null) : verum(X0).
-subset_verum_subset_opencell_tile(null) :- not subset_verum_subset_opencell_tile(null).
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
subset_falsum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : falsum(X0).
-subset_falsum_er_smaller_opencell(null) :- not subset_falsum_er_smaller_opencell(null).
subset_falsum_er_below_opencell(null) :- er_below_opencell(X0) : falsum(X0).
-subset_falsum_er_below_opencell(null) :- not subset_falsum_er_below_opencell(null).
subset_falsum_er_left_opencell(null) :- er_left_opencell(X0) : falsum(X0).
-subset_falsum_er_left_opencell(null) :- not subset_falsum_er_left_opencell(null).
subset_falsum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : falsum(X0).
-subset_falsum_er_overlap_opencell(null) :- not subset_falsum_er_overlap_opencell(null).
subset_falsum_er_shape_opencell(null) :- er_shape_opencell(X0) : falsum(X0).
-subset_falsum_er_shape_opencell(null) :- not subset_falsum_er_shape_opencell(null).
subset_falsum_er_smaller_tile(null) :- er_smaller_tile(X0) : falsum(X0).
-subset_falsum_er_smaller_tile(null) :- not subset_falsum_er_smaller_tile(null).
subset_falsum_er_below_tile(null) :- er_below_tile(X0) : falsum(X0).
-subset_falsum_er_below_tile(null) :- not subset_falsum_er_below_tile(null).
subset_falsum_er_left_tile(null) :- er_left_tile(X0) : falsum(X0).
-subset_falsum_er_left_tile(null) :- not subset_falsum_er_left_tile(null).
subset_falsum_er_overlap_tile(null) :- er_overlap_tile(X0) : falsum(X0).
-subset_falsum_er_overlap_tile(null) :- not subset_falsum_er_overlap_tile(null).
subset_falsum_er_shape_tile(null) :- er_shape_tile(X0) : falsum(X0).
-subset_falsum_er_shape_tile(null) :- not subset_falsum_er_shape_tile(null).
subset_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : falsum(X0).
-subset_falsum_inter_verum_falsum(null) :- not subset_falsum_inter_verum_falsum(null).
subset_falsum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : falsum(X0).
-subset_falsum_inter_verum_opencell(null) :- not subset_falsum_inter_verum_opencell(null).
subset_falsum_inter_verum_tile(null) :- inter_verum_tile(X0) : falsum(X0).
-subset_falsum_inter_verum_tile(null) :- not subset_falsum_inter_verum_tile(null).
subset_falsum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : falsum(X0).
-subset_falsum_inter_falsum_opencell(null) :- not subset_falsum_inter_falsum_opencell(null).
subset_falsum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : falsum(X0).
-subset_falsum_inter_falsum_tile(null) :- not subset_falsum_inter_falsum_tile(null).
subset_falsum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : falsum(X0).
-subset_falsum_inter_opencell_tile(null) :- not subset_falsum_inter_opencell_tile(null).
subset_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : falsum(X0).
-subset_falsum_subset_verum_falsum(null) :- not subset_falsum_subset_verum_falsum(null).
subset_falsum_subset_verum_opencell(null) :- subset_verum_opencell(null) : falsum(X0).
-subset_falsum_subset_verum_opencell(null) :- not subset_falsum_subset_verum_opencell(null).
subset_falsum_subset_verum_tile(null) :- subset_verum_tile(null) : falsum(X0).
-subset_falsum_subset_verum_tile(null) :- not subset_falsum_subset_verum_tile(null).
subset_falsum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : falsum(X0).
-subset_falsum_subset_falsum_opencell(null) :- not subset_falsum_subset_falsum_opencell(null).
subset_falsum_subset_falsum_tile(null) :- subset_falsum_tile(null) : falsum(X0).
-subset_falsum_subset_falsum_tile(null) :- not subset_falsum_subset_falsum_tile(null).
subset_falsum_subset_opencell_tile(null) :- subset_opencell_tile(null) : falsum(X0).
-subset_falsum_subset_opencell_tile(null) :- not subset_falsum_subset_opencell_tile(null).
subset_opencell_er_smaller_verum(null) :- er_smaller_verum(X0) : opencell(X0).
-subset_opencell_er_smaller_verum(null) :- not subset_opencell_er_smaller_verum(null).
subset_opencell_er_below_verum(null) :- er_below_verum(X0) : opencell(X0).
-subset_opencell_er_below_verum(null) :- not subset_opencell_er_below_verum(null).
subset_opencell_er_left_verum(null) :- er_left_verum(X0) : opencell(X0).
-subset_opencell_er_left_verum(null) :- not subset_opencell_er_left_verum(null).
subset_opencell_er_overlap_verum(null) :- er_overlap_verum(X0) : opencell(X0).
-subset_opencell_er_overlap_verum(null) :- not subset_opencell_er_overlap_verum(null).
subset_opencell_er_shape_verum(null) :- er_shape_verum(X0) : opencell(X0).
-subset_opencell_er_shape_verum(null) :- not subset_opencell_er_shape_verum(null).
subset_opencell_er_smaller_falsum(null) :- er_smaller_falsum(X0) : opencell(X0).
-subset_opencell_er_smaller_falsum(null) :- not subset_opencell_er_smaller_falsum(null).
subset_opencell_er_below_falsum(null) :- er_below_falsum(X0) : opencell(X0).
-subset_opencell_er_below_falsum(null) :- not subset_opencell_er_below_falsum(null).
subset_opencell_er_left_falsum(null) :- er_left_falsum(X0) : opencell(X0).
-subset_opencell_er_left_falsum(null) :- not subset_opencell_er_left_falsum(null).
subset_opencell_er_overlap_falsum(null) :- er_overlap_falsum(X0) : opencell(X0).
-subset_opencell_er_overlap_falsum(null) :- not subset_opencell_er_overlap_falsum(null).
subset_opencell_er_shape_falsum(null) :- er_shape_falsum(X0) : opencell(X0).
-subset_opencell_er_shape_falsum(null) :- not subset_opencell_er_shape_falsum(null).
subset_opencell_er_smaller_opencell(null) :- er_smaller_opencell(X0) : opencell(X0).
-subset_opencell_er_smaller_opencell(null) :- not subset_opencell_er_smaller_opencell(null).
subset_opencell_er_below_opencell(null) :- er_below_opencell(X0) : opencell(X0).
-subset_opencell_er_below_opencell(null) :- not subset_opencell_er_below_opencell(null).
subset_opencell_er_left_opencell(null) :- er_left_opencell(X0) : opencell(X0).
-subset_opencell_er_left_opencell(null) :- not subset_opencell_er_left_opencell(null).
subset_opencell_er_overlap_opencell(null) :- er_overlap_opencell(X0) : opencell(X0).
-subset_opencell_er_overlap_opencell(null) :- not subset_opencell_er_overlap_opencell(null).
subset_opencell_er_shape_opencell(null) :- er_shape_opencell(X0) : opencell(X0).
-subset_opencell_er_shape_opencell(null) :- not subset_opencell_er_shape_opencell(null).
subset_opencell_er_smaller_tile(null) :- er_smaller_tile(X0) : opencell(X0).
-subset_opencell_er_smaller_tile(null) :- not subset_opencell_er_smaller_tile(null).
subset_opencell_er_below_tile(null) :- er_below_tile(X0) : opencell(X0).
-subset_opencell_er_below_tile(null) :- not subset_opencell_er_below_tile(null).
subset_opencell_er_left_tile(null) :- er_left_tile(X0) : opencell(X0).
-subset_opencell_er_left_tile(null) :- not subset_opencell_er_left_tile(null).
subset_opencell_er_overlap_tile(null) :- er_overlap_tile(X0) : opencell(X0).
-subset_opencell_er_overlap_tile(null) :- not subset_opencell_er_overlap_tile(null).
subset_opencell_er_shape_tile(null) :- er_shape_tile(X0) : opencell(X0).
-subset_opencell_er_shape_tile(null) :- not subset_opencell_er_shape_tile(null).
subset_opencell_inter_verum_falsum(null) :- inter_verum_falsum(X0) : opencell(X0).
-subset_opencell_inter_verum_falsum(null) :- not subset_opencell_inter_verum_falsum(null).
subset_opencell_inter_verum_opencell(null) :- inter_verum_opencell(X0) : opencell(X0).
-subset_opencell_inter_verum_opencell(null) :- not subset_opencell_inter_verum_opencell(null).
subset_opencell_inter_verum_tile(null) :- inter_verum_tile(X0) : opencell(X0).
-subset_opencell_inter_verum_tile(null) :- not subset_opencell_inter_verum_tile(null).
subset_opencell_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : opencell(X0).
-subset_opencell_inter_falsum_opencell(null) :- not subset_opencell_inter_falsum_opencell(null).
subset_opencell_inter_falsum_tile(null) :- inter_falsum_tile(X0) : opencell(X0).
-subset_opencell_inter_falsum_tile(null) :- not subset_opencell_inter_falsum_tile(null).
subset_opencell_inter_opencell_tile(null) :- inter_opencell_tile(X0) : opencell(X0).
-subset_opencell_inter_opencell_tile(null) :- not subset_opencell_inter_opencell_tile(null).
subset_opencell_subset_verum_falsum(null) :- subset_verum_falsum(null) : opencell(X0).
-subset_opencell_subset_verum_falsum(null) :- not subset_opencell_subset_verum_falsum(null).
subset_opencell_subset_verum_opencell(null) :- subset_verum_opencell(null) : opencell(X0).
-subset_opencell_subset_verum_opencell(null) :- not subset_opencell_subset_verum_opencell(null).
subset_opencell_subset_verum_tile(null) :- subset_verum_tile(null) : opencell(X0).
-subset_opencell_subset_verum_tile(null) :- not subset_opencell_subset_verum_tile(null).
subset_opencell_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : opencell(X0).
-subset_opencell_subset_falsum_opencell(null) :- not subset_opencell_subset_falsum_opencell(null).
subset_opencell_subset_falsum_tile(null) :- subset_falsum_tile(null) : opencell(X0).
-subset_opencell_subset_falsum_tile(null) :- not subset_opencell_subset_falsum_tile(null).
subset_opencell_subset_opencell_tile(null) :- subset_opencell_tile(null) : opencell(X0).
-subset_opencell_subset_opencell_tile(null) :- not subset_opencell_subset_opencell_tile(null).
subset_tile_er_smaller_verum(null) :- er_smaller_verum(X0) : tile(X0).
-subset_tile_er_smaller_verum(null) :- not subset_tile_er_smaller_verum(null).
subset_tile_er_below_verum(null) :- er_below_verum(X0) : tile(X0).
-subset_tile_er_below_verum(null) :- not subset_tile_er_below_verum(null).
subset_tile_er_left_verum(null) :- er_left_verum(X0) : tile(X0).
-subset_tile_er_left_verum(null) :- not subset_tile_er_left_verum(null).
subset_tile_er_overlap_verum(null) :- er_overlap_verum(X0) : tile(X0).
-subset_tile_er_overlap_verum(null) :- not subset_tile_er_overlap_verum(null).
subset_tile_er_shape_verum(null) :- er_shape_verum(X0) : tile(X0).
-subset_tile_er_shape_verum(null) :- not subset_tile_er_shape_verum(null).
subset_tile_er_smaller_falsum(null) :- er_smaller_falsum(X0) : tile(X0).
-subset_tile_er_smaller_falsum(null) :- not subset_tile_er_smaller_falsum(null).
subset_tile_er_below_falsum(null) :- er_below_falsum(X0) : tile(X0).
-subset_tile_er_below_falsum(null) :- not subset_tile_er_below_falsum(null).
subset_tile_er_left_falsum(null) :- er_left_falsum(X0) : tile(X0).
-subset_tile_er_left_falsum(null) :- not subset_tile_er_left_falsum(null).
subset_tile_er_overlap_falsum(null) :- er_overlap_falsum(X0) : tile(X0).
-subset_tile_er_overlap_falsum(null) :- not subset_tile_er_overlap_falsum(null).
subset_tile_er_shape_falsum(null) :- er_shape_falsum(X0) : tile(X0).
-subset_tile_er_shape_falsum(null) :- not subset_tile_er_shape_falsum(null).
subset_tile_er_smaller_opencell(null) :- er_smaller_opencell(X0) : tile(X0).
-subset_tile_er_smaller_opencell(null) :- not subset_tile_er_smaller_opencell(null).
subset_tile_er_below_opencell(null) :- er_below_opencell(X0) : tile(X0).
-subset_tile_er_below_opencell(null) :- not subset_tile_er_below_opencell(null).
subset_tile_er_left_opencell(null) :- er_left_opencell(X0) : tile(X0).
-subset_tile_er_left_opencell(null) :- not subset_tile_er_left_opencell(null).
subset_tile_er_overlap_opencell(null) :- er_overlap_opencell(X0) : tile(X0).
-subset_tile_er_overlap_opencell(null) :- not subset_tile_er_overlap_opencell(null).
subset_tile_er_shape_opencell(null) :- er_shape_opencell(X0) : tile(X0).
-subset_tile_er_shape_opencell(null) :- not subset_tile_er_shape_opencell(null).
subset_tile_er_smaller_tile(null) :- er_smaller_tile(X0) : tile(X0).
-subset_tile_er_smaller_tile(null) :- not subset_tile_er_smaller_tile(null).
subset_tile_er_below_tile(null) :- er_below_tile(X0) : tile(X0).
-subset_tile_er_below_tile(null) :- not subset_tile_er_below_tile(null).
subset_tile_er_left_tile(null) :- er_left_tile(X0) : tile(X0).
-subset_tile_er_left_tile(null) :- not subset_tile_er_left_tile(null).
subset_tile_er_overlap_tile(null) :- er_overlap_tile(X0) : tile(X0).
-subset_tile_er_overlap_tile(null) :- not subset_tile_er_overlap_tile(null).
subset_tile_er_shape_tile(null) :- er_shape_tile(X0) : tile(X0).
-subset_tile_er_shape_tile(null) :- not subset_tile_er_shape_tile(null).
subset_tile_inter_verum_falsum(null) :- inter_verum_falsum(X0) : tile(X0).
-subset_tile_inter_verum_falsum(null) :- not subset_tile_inter_verum_falsum(null).
subset_tile_inter_verum_opencell(null) :- inter_verum_opencell(X0) : tile(X0).
-subset_tile_inter_verum_opencell(null) :- not subset_tile_inter_verum_opencell(null).
subset_tile_inter_verum_tile(null) :- inter_verum_tile(X0) : tile(X0).
-subset_tile_inter_verum_tile(null) :- not subset_tile_inter_verum_tile(null).
subset_tile_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : tile(X0).
-subset_tile_inter_falsum_opencell(null) :- not subset_tile_inter_falsum_opencell(null).
subset_tile_inter_falsum_tile(null) :- inter_falsum_tile(X0) : tile(X0).
-subset_tile_inter_falsum_tile(null) :- not subset_tile_inter_falsum_tile(null).
subset_tile_inter_opencell_tile(null) :- inter_opencell_tile(X0) : tile(X0).
-subset_tile_inter_opencell_tile(null) :- not subset_tile_inter_opencell_tile(null).
subset_tile_subset_verum_falsum(null) :- subset_verum_falsum(null) : tile(X0).
-subset_tile_subset_verum_falsum(null) :- not subset_tile_subset_verum_falsum(null).
subset_tile_subset_verum_opencell(null) :- subset_verum_opencell(null) : tile(X0).
-subset_tile_subset_verum_opencell(null) :- not subset_tile_subset_verum_opencell(null).
subset_tile_subset_verum_tile(null) :- subset_verum_tile(null) : tile(X0).
-subset_tile_subset_verum_tile(null) :- not subset_tile_subset_verum_tile(null).
subset_tile_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : tile(X0).
-subset_tile_subset_falsum_opencell(null) :- not subset_tile_subset_falsum_opencell(null).
subset_tile_subset_falsum_tile(null) :- subset_falsum_tile(null) : tile(X0).
-subset_tile_subset_falsum_tile(null) :- not subset_tile_subset_falsum_tile(null).
subset_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : tile(X0).
-subset_tile_subset_opencell_tile(null) :- not subset_tile_subset_opencell_tile(null).
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
subset_er_smaller_verum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_smaller_opencell(null) :- not subset_er_smaller_verum_er_smaller_opencell(null).
subset_er_smaller_verum_er_below_opencell(null) :- er_below_opencell(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_below_opencell(null) :- not subset_er_smaller_verum_er_below_opencell(null).
subset_er_smaller_verum_er_left_opencell(null) :- er_left_opencell(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_left_opencell(null) :- not subset_er_smaller_verum_er_left_opencell(null).
subset_er_smaller_verum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_overlap_opencell(null) :- not subset_er_smaller_verum_er_overlap_opencell(null).
subset_er_smaller_verum_er_shape_opencell(null) :- er_shape_opencell(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_shape_opencell(null) :- not subset_er_smaller_verum_er_shape_opencell(null).
subset_er_smaller_verum_er_smaller_tile(null) :- er_smaller_tile(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_smaller_tile(null) :- not subset_er_smaller_verum_er_smaller_tile(null).
subset_er_smaller_verum_er_below_tile(null) :- er_below_tile(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_below_tile(null) :- not subset_er_smaller_verum_er_below_tile(null).
subset_er_smaller_verum_er_left_tile(null) :- er_left_tile(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_left_tile(null) :- not subset_er_smaller_verum_er_left_tile(null).
subset_er_smaller_verum_er_overlap_tile(null) :- er_overlap_tile(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_overlap_tile(null) :- not subset_er_smaller_verum_er_overlap_tile(null).
subset_er_smaller_verum_er_shape_tile(null) :- er_shape_tile(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_er_shape_tile(null) :- not subset_er_smaller_verum_er_shape_tile(null).
subset_er_smaller_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_falsum(null) :- not subset_er_smaller_verum_inter_verum_falsum(null).
subset_er_smaller_verum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_opencell(null) :- not subset_er_smaller_verum_inter_verum_opencell(null).
subset_er_smaller_verum_inter_verum_tile(null) :- inter_verum_tile(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_verum_tile(null) :- not subset_er_smaller_verum_inter_verum_tile(null).
subset_er_smaller_verum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_falsum_opencell(null) :- not subset_er_smaller_verum_inter_falsum_opencell(null).
subset_er_smaller_verum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_falsum_tile(null) :- not subset_er_smaller_verum_inter_falsum_tile(null).
subset_er_smaller_verum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_smaller_verum(X0).
-subset_er_smaller_verum_inter_opencell_tile(null) :- not subset_er_smaller_verum_inter_opencell_tile(null).
subset_er_smaller_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_falsum(null) :- not subset_er_smaller_verum_subset_verum_falsum(null).
subset_er_smaller_verum_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_opencell(null) :- not subset_er_smaller_verum_subset_verum_opencell(null).
subset_er_smaller_verum_subset_verum_tile(null) :- subset_verum_tile(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_verum_tile(null) :- not subset_er_smaller_verum_subset_verum_tile(null).
subset_er_smaller_verum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_falsum_opencell(null) :- not subset_er_smaller_verum_subset_falsum_opencell(null).
subset_er_smaller_verum_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_falsum_tile(null) :- not subset_er_smaller_verum_subset_falsum_tile(null).
subset_er_smaller_verum_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_smaller_verum(X0).
-subset_er_smaller_verum_subset_opencell_tile(null) :- not subset_er_smaller_verum_subset_opencell_tile(null).
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
subset_er_below_verum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : er_below_verum(X0).
-subset_er_below_verum_er_smaller_opencell(null) :- not subset_er_below_verum_er_smaller_opencell(null).
subset_er_below_verum_er_below_opencell(null) :- er_below_opencell(X0) : er_below_verum(X0).
-subset_er_below_verum_er_below_opencell(null) :- not subset_er_below_verum_er_below_opencell(null).
subset_er_below_verum_er_left_opencell(null) :- er_left_opencell(X0) : er_below_verum(X0).
-subset_er_below_verum_er_left_opencell(null) :- not subset_er_below_verum_er_left_opencell(null).
subset_er_below_verum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_below_verum(X0).
-subset_er_below_verum_er_overlap_opencell(null) :- not subset_er_below_verum_er_overlap_opencell(null).
subset_er_below_verum_er_shape_opencell(null) :- er_shape_opencell(X0) : er_below_verum(X0).
-subset_er_below_verum_er_shape_opencell(null) :- not subset_er_below_verum_er_shape_opencell(null).
subset_er_below_verum_er_smaller_tile(null) :- er_smaller_tile(X0) : er_below_verum(X0).
-subset_er_below_verum_er_smaller_tile(null) :- not subset_er_below_verum_er_smaller_tile(null).
subset_er_below_verum_er_below_tile(null) :- er_below_tile(X0) : er_below_verum(X0).
-subset_er_below_verum_er_below_tile(null) :- not subset_er_below_verum_er_below_tile(null).
subset_er_below_verum_er_left_tile(null) :- er_left_tile(X0) : er_below_verum(X0).
-subset_er_below_verum_er_left_tile(null) :- not subset_er_below_verum_er_left_tile(null).
subset_er_below_verum_er_overlap_tile(null) :- er_overlap_tile(X0) : er_below_verum(X0).
-subset_er_below_verum_er_overlap_tile(null) :- not subset_er_below_verum_er_overlap_tile(null).
subset_er_below_verum_er_shape_tile(null) :- er_shape_tile(X0) : er_below_verum(X0).
-subset_er_below_verum_er_shape_tile(null) :- not subset_er_below_verum_er_shape_tile(null).
subset_er_below_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_falsum(null) :- not subset_er_below_verum_inter_verum_falsum(null).
subset_er_below_verum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_opencell(null) :- not subset_er_below_verum_inter_verum_opencell(null).
subset_er_below_verum_inter_verum_tile(null) :- inter_verum_tile(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_verum_tile(null) :- not subset_er_below_verum_inter_verum_tile(null).
subset_er_below_verum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_falsum_opencell(null) :- not subset_er_below_verum_inter_falsum_opencell(null).
subset_er_below_verum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_falsum_tile(null) :- not subset_er_below_verum_inter_falsum_tile(null).
subset_er_below_verum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_below_verum(X0).
-subset_er_below_verum_inter_opencell_tile(null) :- not subset_er_below_verum_inter_opencell_tile(null).
subset_er_below_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_falsum(null) :- not subset_er_below_verum_subset_verum_falsum(null).
subset_er_below_verum_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_opencell(null) :- not subset_er_below_verum_subset_verum_opencell(null).
subset_er_below_verum_subset_verum_tile(null) :- subset_verum_tile(null) : er_below_verum(X0).
-subset_er_below_verum_subset_verum_tile(null) :- not subset_er_below_verum_subset_verum_tile(null).
subset_er_below_verum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_below_verum(X0).
-subset_er_below_verum_subset_falsum_opencell(null) :- not subset_er_below_verum_subset_falsum_opencell(null).
subset_er_below_verum_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_below_verum(X0).
-subset_er_below_verum_subset_falsum_tile(null) :- not subset_er_below_verum_subset_falsum_tile(null).
subset_er_below_verum_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_below_verum(X0).
-subset_er_below_verum_subset_opencell_tile(null) :- not subset_er_below_verum_subset_opencell_tile(null).
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
subset_er_left_verum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : er_left_verum(X0).
-subset_er_left_verum_er_smaller_opencell(null) :- not subset_er_left_verum_er_smaller_opencell(null).
subset_er_left_verum_er_below_opencell(null) :- er_below_opencell(X0) : er_left_verum(X0).
-subset_er_left_verum_er_below_opencell(null) :- not subset_er_left_verum_er_below_opencell(null).
subset_er_left_verum_er_left_opencell(null) :- er_left_opencell(X0) : er_left_verum(X0).
-subset_er_left_verum_er_left_opencell(null) :- not subset_er_left_verum_er_left_opencell(null).
subset_er_left_verum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_left_verum(X0).
-subset_er_left_verum_er_overlap_opencell(null) :- not subset_er_left_verum_er_overlap_opencell(null).
subset_er_left_verum_er_shape_opencell(null) :- er_shape_opencell(X0) : er_left_verum(X0).
-subset_er_left_verum_er_shape_opencell(null) :- not subset_er_left_verum_er_shape_opencell(null).
subset_er_left_verum_er_smaller_tile(null) :- er_smaller_tile(X0) : er_left_verum(X0).
-subset_er_left_verum_er_smaller_tile(null) :- not subset_er_left_verum_er_smaller_tile(null).
subset_er_left_verum_er_below_tile(null) :- er_below_tile(X0) : er_left_verum(X0).
-subset_er_left_verum_er_below_tile(null) :- not subset_er_left_verum_er_below_tile(null).
subset_er_left_verum_er_left_tile(null) :- er_left_tile(X0) : er_left_verum(X0).
-subset_er_left_verum_er_left_tile(null) :- not subset_er_left_verum_er_left_tile(null).
subset_er_left_verum_er_overlap_tile(null) :- er_overlap_tile(X0) : er_left_verum(X0).
-subset_er_left_verum_er_overlap_tile(null) :- not subset_er_left_verum_er_overlap_tile(null).
subset_er_left_verum_er_shape_tile(null) :- er_shape_tile(X0) : er_left_verum(X0).
-subset_er_left_verum_er_shape_tile(null) :- not subset_er_left_verum_er_shape_tile(null).
subset_er_left_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_falsum(null) :- not subset_er_left_verum_inter_verum_falsum(null).
subset_er_left_verum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_opencell(null) :- not subset_er_left_verum_inter_verum_opencell(null).
subset_er_left_verum_inter_verum_tile(null) :- inter_verum_tile(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_verum_tile(null) :- not subset_er_left_verum_inter_verum_tile(null).
subset_er_left_verum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_falsum_opencell(null) :- not subset_er_left_verum_inter_falsum_opencell(null).
subset_er_left_verum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_falsum_tile(null) :- not subset_er_left_verum_inter_falsum_tile(null).
subset_er_left_verum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_left_verum(X0).
-subset_er_left_verum_inter_opencell_tile(null) :- not subset_er_left_verum_inter_opencell_tile(null).
subset_er_left_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_falsum(null) :- not subset_er_left_verum_subset_verum_falsum(null).
subset_er_left_verum_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_opencell(null) :- not subset_er_left_verum_subset_verum_opencell(null).
subset_er_left_verum_subset_verum_tile(null) :- subset_verum_tile(null) : er_left_verum(X0).
-subset_er_left_verum_subset_verum_tile(null) :- not subset_er_left_verum_subset_verum_tile(null).
subset_er_left_verum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_left_verum(X0).
-subset_er_left_verum_subset_falsum_opencell(null) :- not subset_er_left_verum_subset_falsum_opencell(null).
subset_er_left_verum_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_left_verum(X0).
-subset_er_left_verum_subset_falsum_tile(null) :- not subset_er_left_verum_subset_falsum_tile(null).
subset_er_left_verum_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_left_verum(X0).
-subset_er_left_verum_subset_opencell_tile(null) :- not subset_er_left_verum_subset_opencell_tile(null).
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
subset_er_overlap_verum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_smaller_opencell(null) :- not subset_er_overlap_verum_er_smaller_opencell(null).
subset_er_overlap_verum_er_below_opencell(null) :- er_below_opencell(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_below_opencell(null) :- not subset_er_overlap_verum_er_below_opencell(null).
subset_er_overlap_verum_er_left_opencell(null) :- er_left_opencell(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_left_opencell(null) :- not subset_er_overlap_verum_er_left_opencell(null).
subset_er_overlap_verum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_overlap_opencell(null) :- not subset_er_overlap_verum_er_overlap_opencell(null).
subset_er_overlap_verum_er_shape_opencell(null) :- er_shape_opencell(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_shape_opencell(null) :- not subset_er_overlap_verum_er_shape_opencell(null).
subset_er_overlap_verum_er_smaller_tile(null) :- er_smaller_tile(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_smaller_tile(null) :- not subset_er_overlap_verum_er_smaller_tile(null).
subset_er_overlap_verum_er_below_tile(null) :- er_below_tile(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_below_tile(null) :- not subset_er_overlap_verum_er_below_tile(null).
subset_er_overlap_verum_er_left_tile(null) :- er_left_tile(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_left_tile(null) :- not subset_er_overlap_verum_er_left_tile(null).
subset_er_overlap_verum_er_overlap_tile(null) :- er_overlap_tile(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_overlap_tile(null) :- not subset_er_overlap_verum_er_overlap_tile(null).
subset_er_overlap_verum_er_shape_tile(null) :- er_shape_tile(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_er_shape_tile(null) :- not subset_er_overlap_verum_er_shape_tile(null).
subset_er_overlap_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_falsum(null) :- not subset_er_overlap_verum_inter_verum_falsum(null).
subset_er_overlap_verum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_opencell(null) :- not subset_er_overlap_verum_inter_verum_opencell(null).
subset_er_overlap_verum_inter_verum_tile(null) :- inter_verum_tile(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_verum_tile(null) :- not subset_er_overlap_verum_inter_verum_tile(null).
subset_er_overlap_verum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_falsum_opencell(null) :- not subset_er_overlap_verum_inter_falsum_opencell(null).
subset_er_overlap_verum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_falsum_tile(null) :- not subset_er_overlap_verum_inter_falsum_tile(null).
subset_er_overlap_verum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_overlap_verum(X0).
-subset_er_overlap_verum_inter_opencell_tile(null) :- not subset_er_overlap_verum_inter_opencell_tile(null).
subset_er_overlap_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_falsum(null) :- not subset_er_overlap_verum_subset_verum_falsum(null).
subset_er_overlap_verum_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_opencell(null) :- not subset_er_overlap_verum_subset_verum_opencell(null).
subset_er_overlap_verum_subset_verum_tile(null) :- subset_verum_tile(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_verum_tile(null) :- not subset_er_overlap_verum_subset_verum_tile(null).
subset_er_overlap_verum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_falsum_opencell(null) :- not subset_er_overlap_verum_subset_falsum_opencell(null).
subset_er_overlap_verum_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_falsum_tile(null) :- not subset_er_overlap_verum_subset_falsum_tile(null).
subset_er_overlap_verum_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_overlap_verum(X0).
-subset_er_overlap_verum_subset_opencell_tile(null) :- not subset_er_overlap_verum_subset_opencell_tile(null).
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
subset_er_shape_verum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_smaller_opencell(null) :- not subset_er_shape_verum_er_smaller_opencell(null).
subset_er_shape_verum_er_below_opencell(null) :- er_below_opencell(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_below_opencell(null) :- not subset_er_shape_verum_er_below_opencell(null).
subset_er_shape_verum_er_left_opencell(null) :- er_left_opencell(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_left_opencell(null) :- not subset_er_shape_verum_er_left_opencell(null).
subset_er_shape_verum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_overlap_opencell(null) :- not subset_er_shape_verum_er_overlap_opencell(null).
subset_er_shape_verum_er_shape_opencell(null) :- er_shape_opencell(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_shape_opencell(null) :- not subset_er_shape_verum_er_shape_opencell(null).
subset_er_shape_verum_er_smaller_tile(null) :- er_smaller_tile(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_smaller_tile(null) :- not subset_er_shape_verum_er_smaller_tile(null).
subset_er_shape_verum_er_below_tile(null) :- er_below_tile(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_below_tile(null) :- not subset_er_shape_verum_er_below_tile(null).
subset_er_shape_verum_er_left_tile(null) :- er_left_tile(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_left_tile(null) :- not subset_er_shape_verum_er_left_tile(null).
subset_er_shape_verum_er_overlap_tile(null) :- er_overlap_tile(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_overlap_tile(null) :- not subset_er_shape_verum_er_overlap_tile(null).
subset_er_shape_verum_er_shape_tile(null) :- er_shape_tile(X0) : er_shape_verum(X0).
-subset_er_shape_verum_er_shape_tile(null) :- not subset_er_shape_verum_er_shape_tile(null).
subset_er_shape_verum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_falsum(null) :- not subset_er_shape_verum_inter_verum_falsum(null).
subset_er_shape_verum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_opencell(null) :- not subset_er_shape_verum_inter_verum_opencell(null).
subset_er_shape_verum_inter_verum_tile(null) :- inter_verum_tile(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_verum_tile(null) :- not subset_er_shape_verum_inter_verum_tile(null).
subset_er_shape_verum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_falsum_opencell(null) :- not subset_er_shape_verum_inter_falsum_opencell(null).
subset_er_shape_verum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_falsum_tile(null) :- not subset_er_shape_verum_inter_falsum_tile(null).
subset_er_shape_verum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_shape_verum(X0).
-subset_er_shape_verum_inter_opencell_tile(null) :- not subset_er_shape_verum_inter_opencell_tile(null).
subset_er_shape_verum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_falsum(null) :- not subset_er_shape_verum_subset_verum_falsum(null).
subset_er_shape_verum_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_opencell(null) :- not subset_er_shape_verum_subset_verum_opencell(null).
subset_er_shape_verum_subset_verum_tile(null) :- subset_verum_tile(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_verum_tile(null) :- not subset_er_shape_verum_subset_verum_tile(null).
subset_er_shape_verum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_falsum_opencell(null) :- not subset_er_shape_verum_subset_falsum_opencell(null).
subset_er_shape_verum_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_falsum_tile(null) :- not subset_er_shape_verum_subset_falsum_tile(null).
subset_er_shape_verum_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_shape_verum(X0).
-subset_er_shape_verum_subset_opencell_tile(null) :- not subset_er_shape_verum_subset_opencell_tile(null).
subset_er_smaller_falsum_er_below_falsum(null) :- er_below_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_falsum(null) :- not subset_er_smaller_falsum_er_below_falsum(null).
subset_er_smaller_falsum_er_left_falsum(null) :- er_left_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_falsum(null) :- not subset_er_smaller_falsum_er_left_falsum(null).
subset_er_smaller_falsum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_falsum(null) :- not subset_er_smaller_falsum_er_overlap_falsum(null).
subset_er_smaller_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_falsum(null) :- not subset_er_smaller_falsum_er_shape_falsum(null).
subset_er_smaller_falsum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_smaller_opencell(null) :- not subset_er_smaller_falsum_er_smaller_opencell(null).
subset_er_smaller_falsum_er_below_opencell(null) :- er_below_opencell(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_opencell(null) :- not subset_er_smaller_falsum_er_below_opencell(null).
subset_er_smaller_falsum_er_left_opencell(null) :- er_left_opencell(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_opencell(null) :- not subset_er_smaller_falsum_er_left_opencell(null).
subset_er_smaller_falsum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_opencell(null) :- not subset_er_smaller_falsum_er_overlap_opencell(null).
subset_er_smaller_falsum_er_shape_opencell(null) :- er_shape_opencell(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_opencell(null) :- not subset_er_smaller_falsum_er_shape_opencell(null).
subset_er_smaller_falsum_er_smaller_tile(null) :- er_smaller_tile(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_smaller_tile(null) :- not subset_er_smaller_falsum_er_smaller_tile(null).
subset_er_smaller_falsum_er_below_tile(null) :- er_below_tile(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_below_tile(null) :- not subset_er_smaller_falsum_er_below_tile(null).
subset_er_smaller_falsum_er_left_tile(null) :- er_left_tile(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_left_tile(null) :- not subset_er_smaller_falsum_er_left_tile(null).
subset_er_smaller_falsum_er_overlap_tile(null) :- er_overlap_tile(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_overlap_tile(null) :- not subset_er_smaller_falsum_er_overlap_tile(null).
subset_er_smaller_falsum_er_shape_tile(null) :- er_shape_tile(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_er_shape_tile(null) :- not subset_er_smaller_falsum_er_shape_tile(null).
subset_er_smaller_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_falsum(null) :- not subset_er_smaller_falsum_inter_verum_falsum(null).
subset_er_smaller_falsum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_opencell(null) :- not subset_er_smaller_falsum_inter_verum_opencell(null).
subset_er_smaller_falsum_inter_verum_tile(null) :- inter_verum_tile(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_verum_tile(null) :- not subset_er_smaller_falsum_inter_verum_tile(null).
subset_er_smaller_falsum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_falsum_opencell(null) :- not subset_er_smaller_falsum_inter_falsum_opencell(null).
subset_er_smaller_falsum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_falsum_tile(null) :- not subset_er_smaller_falsum_inter_falsum_tile(null).
subset_er_smaller_falsum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_inter_opencell_tile(null) :- not subset_er_smaller_falsum_inter_opencell_tile(null).
subset_er_smaller_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_falsum(null) :- not subset_er_smaller_falsum_subset_verum_falsum(null).
subset_er_smaller_falsum_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_opencell(null) :- not subset_er_smaller_falsum_subset_verum_opencell(null).
subset_er_smaller_falsum_subset_verum_tile(null) :- subset_verum_tile(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_verum_tile(null) :- not subset_er_smaller_falsum_subset_verum_tile(null).
subset_er_smaller_falsum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_falsum_opencell(null) :- not subset_er_smaller_falsum_subset_falsum_opencell(null).
subset_er_smaller_falsum_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_falsum_tile(null) :- not subset_er_smaller_falsum_subset_falsum_tile(null).
subset_er_smaller_falsum_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_smaller_falsum(X0).
-subset_er_smaller_falsum_subset_opencell_tile(null) :- not subset_er_smaller_falsum_subset_opencell_tile(null).
subset_er_below_falsum_er_left_falsum(null) :- er_left_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_falsum(null) :- not subset_er_below_falsum_er_left_falsum(null).
subset_er_below_falsum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_falsum(null) :- not subset_er_below_falsum_er_overlap_falsum(null).
subset_er_below_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_falsum(null) :- not subset_er_below_falsum_er_shape_falsum(null).
subset_er_below_falsum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_smaller_opencell(null) :- not subset_er_below_falsum_er_smaller_opencell(null).
subset_er_below_falsum_er_below_opencell(null) :- er_below_opencell(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_below_opencell(null) :- not subset_er_below_falsum_er_below_opencell(null).
subset_er_below_falsum_er_left_opencell(null) :- er_left_opencell(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_opencell(null) :- not subset_er_below_falsum_er_left_opencell(null).
subset_er_below_falsum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_opencell(null) :- not subset_er_below_falsum_er_overlap_opencell(null).
subset_er_below_falsum_er_shape_opencell(null) :- er_shape_opencell(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_opencell(null) :- not subset_er_below_falsum_er_shape_opencell(null).
subset_er_below_falsum_er_smaller_tile(null) :- er_smaller_tile(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_smaller_tile(null) :- not subset_er_below_falsum_er_smaller_tile(null).
subset_er_below_falsum_er_below_tile(null) :- er_below_tile(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_below_tile(null) :- not subset_er_below_falsum_er_below_tile(null).
subset_er_below_falsum_er_left_tile(null) :- er_left_tile(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_left_tile(null) :- not subset_er_below_falsum_er_left_tile(null).
subset_er_below_falsum_er_overlap_tile(null) :- er_overlap_tile(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_overlap_tile(null) :- not subset_er_below_falsum_er_overlap_tile(null).
subset_er_below_falsum_er_shape_tile(null) :- er_shape_tile(X0) : er_below_falsum(X0).
-subset_er_below_falsum_er_shape_tile(null) :- not subset_er_below_falsum_er_shape_tile(null).
subset_er_below_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_falsum(null) :- not subset_er_below_falsum_inter_verum_falsum(null).
subset_er_below_falsum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_opencell(null) :- not subset_er_below_falsum_inter_verum_opencell(null).
subset_er_below_falsum_inter_verum_tile(null) :- inter_verum_tile(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_verum_tile(null) :- not subset_er_below_falsum_inter_verum_tile(null).
subset_er_below_falsum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_falsum_opencell(null) :- not subset_er_below_falsum_inter_falsum_opencell(null).
subset_er_below_falsum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_falsum_tile(null) :- not subset_er_below_falsum_inter_falsum_tile(null).
subset_er_below_falsum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_below_falsum(X0).
-subset_er_below_falsum_inter_opencell_tile(null) :- not subset_er_below_falsum_inter_opencell_tile(null).
subset_er_below_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_falsum(null) :- not subset_er_below_falsum_subset_verum_falsum(null).
subset_er_below_falsum_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_opencell(null) :- not subset_er_below_falsum_subset_verum_opencell(null).
subset_er_below_falsum_subset_verum_tile(null) :- subset_verum_tile(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_verum_tile(null) :- not subset_er_below_falsum_subset_verum_tile(null).
subset_er_below_falsum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_falsum_opencell(null) :- not subset_er_below_falsum_subset_falsum_opencell(null).
subset_er_below_falsum_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_falsum_tile(null) :- not subset_er_below_falsum_subset_falsum_tile(null).
subset_er_below_falsum_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_below_falsum(X0).
-subset_er_below_falsum_subset_opencell_tile(null) :- not subset_er_below_falsum_subset_opencell_tile(null).
subset_er_left_falsum_er_overlap_falsum(null) :- er_overlap_falsum(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_falsum(null) :- not subset_er_left_falsum_er_overlap_falsum(null).
subset_er_left_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_falsum(null) :- not subset_er_left_falsum_er_shape_falsum(null).
subset_er_left_falsum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_smaller_opencell(null) :- not subset_er_left_falsum_er_smaller_opencell(null).
subset_er_left_falsum_er_below_opencell(null) :- er_below_opencell(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_below_opencell(null) :- not subset_er_left_falsum_er_below_opencell(null).
subset_er_left_falsum_er_left_opencell(null) :- er_left_opencell(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_left_opencell(null) :- not subset_er_left_falsum_er_left_opencell(null).
subset_er_left_falsum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_opencell(null) :- not subset_er_left_falsum_er_overlap_opencell(null).
subset_er_left_falsum_er_shape_opencell(null) :- er_shape_opencell(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_opencell(null) :- not subset_er_left_falsum_er_shape_opencell(null).
subset_er_left_falsum_er_smaller_tile(null) :- er_smaller_tile(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_smaller_tile(null) :- not subset_er_left_falsum_er_smaller_tile(null).
subset_er_left_falsum_er_below_tile(null) :- er_below_tile(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_below_tile(null) :- not subset_er_left_falsum_er_below_tile(null).
subset_er_left_falsum_er_left_tile(null) :- er_left_tile(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_left_tile(null) :- not subset_er_left_falsum_er_left_tile(null).
subset_er_left_falsum_er_overlap_tile(null) :- er_overlap_tile(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_overlap_tile(null) :- not subset_er_left_falsum_er_overlap_tile(null).
subset_er_left_falsum_er_shape_tile(null) :- er_shape_tile(X0) : er_left_falsum(X0).
-subset_er_left_falsum_er_shape_tile(null) :- not subset_er_left_falsum_er_shape_tile(null).
subset_er_left_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_falsum(null) :- not subset_er_left_falsum_inter_verum_falsum(null).
subset_er_left_falsum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_opencell(null) :- not subset_er_left_falsum_inter_verum_opencell(null).
subset_er_left_falsum_inter_verum_tile(null) :- inter_verum_tile(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_verum_tile(null) :- not subset_er_left_falsum_inter_verum_tile(null).
subset_er_left_falsum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_falsum_opencell(null) :- not subset_er_left_falsum_inter_falsum_opencell(null).
subset_er_left_falsum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_falsum_tile(null) :- not subset_er_left_falsum_inter_falsum_tile(null).
subset_er_left_falsum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_left_falsum(X0).
-subset_er_left_falsum_inter_opencell_tile(null) :- not subset_er_left_falsum_inter_opencell_tile(null).
subset_er_left_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_falsum(null) :- not subset_er_left_falsum_subset_verum_falsum(null).
subset_er_left_falsum_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_opencell(null) :- not subset_er_left_falsum_subset_verum_opencell(null).
subset_er_left_falsum_subset_verum_tile(null) :- subset_verum_tile(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_verum_tile(null) :- not subset_er_left_falsum_subset_verum_tile(null).
subset_er_left_falsum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_falsum_opencell(null) :- not subset_er_left_falsum_subset_falsum_opencell(null).
subset_er_left_falsum_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_falsum_tile(null) :- not subset_er_left_falsum_subset_falsum_tile(null).
subset_er_left_falsum_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_left_falsum(X0).
-subset_er_left_falsum_subset_opencell_tile(null) :- not subset_er_left_falsum_subset_opencell_tile(null).
subset_er_overlap_falsum_er_shape_falsum(null) :- er_shape_falsum(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_falsum(null) :- not subset_er_overlap_falsum_er_shape_falsum(null).
subset_er_overlap_falsum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_smaller_opencell(null) :- not subset_er_overlap_falsum_er_smaller_opencell(null).
subset_er_overlap_falsum_er_below_opencell(null) :- er_below_opencell(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_below_opencell(null) :- not subset_er_overlap_falsum_er_below_opencell(null).
subset_er_overlap_falsum_er_left_opencell(null) :- er_left_opencell(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_left_opencell(null) :- not subset_er_overlap_falsum_er_left_opencell(null).
subset_er_overlap_falsum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_overlap_opencell(null) :- not subset_er_overlap_falsum_er_overlap_opencell(null).
subset_er_overlap_falsum_er_shape_opencell(null) :- er_shape_opencell(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_opencell(null) :- not subset_er_overlap_falsum_er_shape_opencell(null).
subset_er_overlap_falsum_er_smaller_tile(null) :- er_smaller_tile(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_smaller_tile(null) :- not subset_er_overlap_falsum_er_smaller_tile(null).
subset_er_overlap_falsum_er_below_tile(null) :- er_below_tile(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_below_tile(null) :- not subset_er_overlap_falsum_er_below_tile(null).
subset_er_overlap_falsum_er_left_tile(null) :- er_left_tile(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_left_tile(null) :- not subset_er_overlap_falsum_er_left_tile(null).
subset_er_overlap_falsum_er_overlap_tile(null) :- er_overlap_tile(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_overlap_tile(null) :- not subset_er_overlap_falsum_er_overlap_tile(null).
subset_er_overlap_falsum_er_shape_tile(null) :- er_shape_tile(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_er_shape_tile(null) :- not subset_er_overlap_falsum_er_shape_tile(null).
subset_er_overlap_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_falsum(null) :- not subset_er_overlap_falsum_inter_verum_falsum(null).
subset_er_overlap_falsum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_opencell(null) :- not subset_er_overlap_falsum_inter_verum_opencell(null).
subset_er_overlap_falsum_inter_verum_tile(null) :- inter_verum_tile(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_verum_tile(null) :- not subset_er_overlap_falsum_inter_verum_tile(null).
subset_er_overlap_falsum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_falsum_opencell(null) :- not subset_er_overlap_falsum_inter_falsum_opencell(null).
subset_er_overlap_falsum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_falsum_tile(null) :- not subset_er_overlap_falsum_inter_falsum_tile(null).
subset_er_overlap_falsum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_inter_opencell_tile(null) :- not subset_er_overlap_falsum_inter_opencell_tile(null).
subset_er_overlap_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_falsum(null) :- not subset_er_overlap_falsum_subset_verum_falsum(null).
subset_er_overlap_falsum_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_opencell(null) :- not subset_er_overlap_falsum_subset_verum_opencell(null).
subset_er_overlap_falsum_subset_verum_tile(null) :- subset_verum_tile(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_verum_tile(null) :- not subset_er_overlap_falsum_subset_verum_tile(null).
subset_er_overlap_falsum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_falsum_opencell(null) :- not subset_er_overlap_falsum_subset_falsum_opencell(null).
subset_er_overlap_falsum_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_falsum_tile(null) :- not subset_er_overlap_falsum_subset_falsum_tile(null).
subset_er_overlap_falsum_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_overlap_falsum(X0).
-subset_er_overlap_falsum_subset_opencell_tile(null) :- not subset_er_overlap_falsum_subset_opencell_tile(null).
subset_er_shape_falsum_er_smaller_opencell(null) :- er_smaller_opencell(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_smaller_opencell(null) :- not subset_er_shape_falsum_er_smaller_opencell(null).
subset_er_shape_falsum_er_below_opencell(null) :- er_below_opencell(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_below_opencell(null) :- not subset_er_shape_falsum_er_below_opencell(null).
subset_er_shape_falsum_er_left_opencell(null) :- er_left_opencell(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_left_opencell(null) :- not subset_er_shape_falsum_er_left_opencell(null).
subset_er_shape_falsum_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_overlap_opencell(null) :- not subset_er_shape_falsum_er_overlap_opencell(null).
subset_er_shape_falsum_er_shape_opencell(null) :- er_shape_opencell(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_shape_opencell(null) :- not subset_er_shape_falsum_er_shape_opencell(null).
subset_er_shape_falsum_er_smaller_tile(null) :- er_smaller_tile(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_smaller_tile(null) :- not subset_er_shape_falsum_er_smaller_tile(null).
subset_er_shape_falsum_er_below_tile(null) :- er_below_tile(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_below_tile(null) :- not subset_er_shape_falsum_er_below_tile(null).
subset_er_shape_falsum_er_left_tile(null) :- er_left_tile(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_left_tile(null) :- not subset_er_shape_falsum_er_left_tile(null).
subset_er_shape_falsum_er_overlap_tile(null) :- er_overlap_tile(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_overlap_tile(null) :- not subset_er_shape_falsum_er_overlap_tile(null).
subset_er_shape_falsum_er_shape_tile(null) :- er_shape_tile(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_er_shape_tile(null) :- not subset_er_shape_falsum_er_shape_tile(null).
subset_er_shape_falsum_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_falsum(null) :- not subset_er_shape_falsum_inter_verum_falsum(null).
subset_er_shape_falsum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_opencell(null) :- not subset_er_shape_falsum_inter_verum_opencell(null).
subset_er_shape_falsum_inter_verum_tile(null) :- inter_verum_tile(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_verum_tile(null) :- not subset_er_shape_falsum_inter_verum_tile(null).
subset_er_shape_falsum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_falsum_opencell(null) :- not subset_er_shape_falsum_inter_falsum_opencell(null).
subset_er_shape_falsum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_falsum_tile(null) :- not subset_er_shape_falsum_inter_falsum_tile(null).
subset_er_shape_falsum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_shape_falsum(X0).
-subset_er_shape_falsum_inter_opencell_tile(null) :- not subset_er_shape_falsum_inter_opencell_tile(null).
subset_er_shape_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_falsum(null) :- not subset_er_shape_falsum_subset_verum_falsum(null).
subset_er_shape_falsum_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_opencell(null) :- not subset_er_shape_falsum_subset_verum_opencell(null).
subset_er_shape_falsum_subset_verum_tile(null) :- subset_verum_tile(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_verum_tile(null) :- not subset_er_shape_falsum_subset_verum_tile(null).
subset_er_shape_falsum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_falsum_opencell(null) :- not subset_er_shape_falsum_subset_falsum_opencell(null).
subset_er_shape_falsum_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_falsum_tile(null) :- not subset_er_shape_falsum_subset_falsum_tile(null).
subset_er_shape_falsum_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_shape_falsum(X0).
-subset_er_shape_falsum_subset_opencell_tile(null) :- not subset_er_shape_falsum_subset_opencell_tile(null).
subset_er_smaller_opencell_er_below_opencell(null) :- er_below_opencell(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_er_below_opencell(null) :- not subset_er_smaller_opencell_er_below_opencell(null).
subset_er_smaller_opencell_er_left_opencell(null) :- er_left_opencell(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_er_left_opencell(null) :- not subset_er_smaller_opencell_er_left_opencell(null).
subset_er_smaller_opencell_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_er_overlap_opencell(null) :- not subset_er_smaller_opencell_er_overlap_opencell(null).
subset_er_smaller_opencell_er_shape_opencell(null) :- er_shape_opencell(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_er_shape_opencell(null) :- not subset_er_smaller_opencell_er_shape_opencell(null).
subset_er_smaller_opencell_er_smaller_tile(null) :- er_smaller_tile(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_er_smaller_tile(null) :- not subset_er_smaller_opencell_er_smaller_tile(null).
subset_er_smaller_opencell_er_below_tile(null) :- er_below_tile(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_er_below_tile(null) :- not subset_er_smaller_opencell_er_below_tile(null).
subset_er_smaller_opencell_er_left_tile(null) :- er_left_tile(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_er_left_tile(null) :- not subset_er_smaller_opencell_er_left_tile(null).
subset_er_smaller_opencell_er_overlap_tile(null) :- er_overlap_tile(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_er_overlap_tile(null) :- not subset_er_smaller_opencell_er_overlap_tile(null).
subset_er_smaller_opencell_er_shape_tile(null) :- er_shape_tile(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_er_shape_tile(null) :- not subset_er_smaller_opencell_er_shape_tile(null).
subset_er_smaller_opencell_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_inter_verum_falsum(null) :- not subset_er_smaller_opencell_inter_verum_falsum(null).
subset_er_smaller_opencell_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_inter_verum_opencell(null) :- not subset_er_smaller_opencell_inter_verum_opencell(null).
subset_er_smaller_opencell_inter_verum_tile(null) :- inter_verum_tile(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_inter_verum_tile(null) :- not subset_er_smaller_opencell_inter_verum_tile(null).
subset_er_smaller_opencell_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_inter_falsum_opencell(null) :- not subset_er_smaller_opencell_inter_falsum_opencell(null).
subset_er_smaller_opencell_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_inter_falsum_tile(null) :- not subset_er_smaller_opencell_inter_falsum_tile(null).
subset_er_smaller_opencell_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_inter_opencell_tile(null) :- not subset_er_smaller_opencell_inter_opencell_tile(null).
subset_er_smaller_opencell_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_subset_verum_falsum(null) :- not subset_er_smaller_opencell_subset_verum_falsum(null).
subset_er_smaller_opencell_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_subset_verum_opencell(null) :- not subset_er_smaller_opencell_subset_verum_opencell(null).
subset_er_smaller_opencell_subset_verum_tile(null) :- subset_verum_tile(null) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_subset_verum_tile(null) :- not subset_er_smaller_opencell_subset_verum_tile(null).
subset_er_smaller_opencell_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_subset_falsum_opencell(null) :- not subset_er_smaller_opencell_subset_falsum_opencell(null).
subset_er_smaller_opencell_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_subset_falsum_tile(null) :- not subset_er_smaller_opencell_subset_falsum_tile(null).
subset_er_smaller_opencell_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_smaller_opencell(X0).
-subset_er_smaller_opencell_subset_opencell_tile(null) :- not subset_er_smaller_opencell_subset_opencell_tile(null).
subset_er_below_opencell_er_left_opencell(null) :- er_left_opencell(X0) : er_below_opencell(X0).
-subset_er_below_opencell_er_left_opencell(null) :- not subset_er_below_opencell_er_left_opencell(null).
subset_er_below_opencell_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_below_opencell(X0).
-subset_er_below_opencell_er_overlap_opencell(null) :- not subset_er_below_opencell_er_overlap_opencell(null).
subset_er_below_opencell_er_shape_opencell(null) :- er_shape_opencell(X0) : er_below_opencell(X0).
-subset_er_below_opencell_er_shape_opencell(null) :- not subset_er_below_opencell_er_shape_opencell(null).
subset_er_below_opencell_er_smaller_tile(null) :- er_smaller_tile(X0) : er_below_opencell(X0).
-subset_er_below_opencell_er_smaller_tile(null) :- not subset_er_below_opencell_er_smaller_tile(null).
subset_er_below_opencell_er_below_tile(null) :- er_below_tile(X0) : er_below_opencell(X0).
-subset_er_below_opencell_er_below_tile(null) :- not subset_er_below_opencell_er_below_tile(null).
subset_er_below_opencell_er_left_tile(null) :- er_left_tile(X0) : er_below_opencell(X0).
-subset_er_below_opencell_er_left_tile(null) :- not subset_er_below_opencell_er_left_tile(null).
subset_er_below_opencell_er_overlap_tile(null) :- er_overlap_tile(X0) : er_below_opencell(X0).
-subset_er_below_opencell_er_overlap_tile(null) :- not subset_er_below_opencell_er_overlap_tile(null).
subset_er_below_opencell_er_shape_tile(null) :- er_shape_tile(X0) : er_below_opencell(X0).
-subset_er_below_opencell_er_shape_tile(null) :- not subset_er_below_opencell_er_shape_tile(null).
subset_er_below_opencell_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_opencell(X0).
-subset_er_below_opencell_inter_verum_falsum(null) :- not subset_er_below_opencell_inter_verum_falsum(null).
subset_er_below_opencell_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_below_opencell(X0).
-subset_er_below_opencell_inter_verum_opencell(null) :- not subset_er_below_opencell_inter_verum_opencell(null).
subset_er_below_opencell_inter_verum_tile(null) :- inter_verum_tile(X0) : er_below_opencell(X0).
-subset_er_below_opencell_inter_verum_tile(null) :- not subset_er_below_opencell_inter_verum_tile(null).
subset_er_below_opencell_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_below_opencell(X0).
-subset_er_below_opencell_inter_falsum_opencell(null) :- not subset_er_below_opencell_inter_falsum_opencell(null).
subset_er_below_opencell_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_below_opencell(X0).
-subset_er_below_opencell_inter_falsum_tile(null) :- not subset_er_below_opencell_inter_falsum_tile(null).
subset_er_below_opencell_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_below_opencell(X0).
-subset_er_below_opencell_inter_opencell_tile(null) :- not subset_er_below_opencell_inter_opencell_tile(null).
subset_er_below_opencell_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_opencell(X0).
-subset_er_below_opencell_subset_verum_falsum(null) :- not subset_er_below_opencell_subset_verum_falsum(null).
subset_er_below_opencell_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_below_opencell(X0).
-subset_er_below_opencell_subset_verum_opencell(null) :- not subset_er_below_opencell_subset_verum_opencell(null).
subset_er_below_opencell_subset_verum_tile(null) :- subset_verum_tile(null) : er_below_opencell(X0).
-subset_er_below_opencell_subset_verum_tile(null) :- not subset_er_below_opencell_subset_verum_tile(null).
subset_er_below_opencell_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_below_opencell(X0).
-subset_er_below_opencell_subset_falsum_opencell(null) :- not subset_er_below_opencell_subset_falsum_opencell(null).
subset_er_below_opencell_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_below_opencell(X0).
-subset_er_below_opencell_subset_falsum_tile(null) :- not subset_er_below_opencell_subset_falsum_tile(null).
subset_er_below_opencell_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_below_opencell(X0).
-subset_er_below_opencell_subset_opencell_tile(null) :- not subset_er_below_opencell_subset_opencell_tile(null).
subset_er_left_opencell_er_overlap_opencell(null) :- er_overlap_opencell(X0) : er_left_opencell(X0).
-subset_er_left_opencell_er_overlap_opencell(null) :- not subset_er_left_opencell_er_overlap_opencell(null).
subset_er_left_opencell_er_shape_opencell(null) :- er_shape_opencell(X0) : er_left_opencell(X0).
-subset_er_left_opencell_er_shape_opencell(null) :- not subset_er_left_opencell_er_shape_opencell(null).
subset_er_left_opencell_er_smaller_tile(null) :- er_smaller_tile(X0) : er_left_opencell(X0).
-subset_er_left_opencell_er_smaller_tile(null) :- not subset_er_left_opencell_er_smaller_tile(null).
subset_er_left_opencell_er_below_tile(null) :- er_below_tile(X0) : er_left_opencell(X0).
-subset_er_left_opencell_er_below_tile(null) :- not subset_er_left_opencell_er_below_tile(null).
subset_er_left_opencell_er_left_tile(null) :- er_left_tile(X0) : er_left_opencell(X0).
-subset_er_left_opencell_er_left_tile(null) :- not subset_er_left_opencell_er_left_tile(null).
subset_er_left_opencell_er_overlap_tile(null) :- er_overlap_tile(X0) : er_left_opencell(X0).
-subset_er_left_opencell_er_overlap_tile(null) :- not subset_er_left_opencell_er_overlap_tile(null).
subset_er_left_opencell_er_shape_tile(null) :- er_shape_tile(X0) : er_left_opencell(X0).
-subset_er_left_opencell_er_shape_tile(null) :- not subset_er_left_opencell_er_shape_tile(null).
subset_er_left_opencell_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_opencell(X0).
-subset_er_left_opencell_inter_verum_falsum(null) :- not subset_er_left_opencell_inter_verum_falsum(null).
subset_er_left_opencell_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_left_opencell(X0).
-subset_er_left_opencell_inter_verum_opencell(null) :- not subset_er_left_opencell_inter_verum_opencell(null).
subset_er_left_opencell_inter_verum_tile(null) :- inter_verum_tile(X0) : er_left_opencell(X0).
-subset_er_left_opencell_inter_verum_tile(null) :- not subset_er_left_opencell_inter_verum_tile(null).
subset_er_left_opencell_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_left_opencell(X0).
-subset_er_left_opencell_inter_falsum_opencell(null) :- not subset_er_left_opencell_inter_falsum_opencell(null).
subset_er_left_opencell_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_left_opencell(X0).
-subset_er_left_opencell_inter_falsum_tile(null) :- not subset_er_left_opencell_inter_falsum_tile(null).
subset_er_left_opencell_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_left_opencell(X0).
-subset_er_left_opencell_inter_opencell_tile(null) :- not subset_er_left_opencell_inter_opencell_tile(null).
subset_er_left_opencell_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_opencell(X0).
-subset_er_left_opencell_subset_verum_falsum(null) :- not subset_er_left_opencell_subset_verum_falsum(null).
subset_er_left_opencell_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_left_opencell(X0).
-subset_er_left_opencell_subset_verum_opencell(null) :- not subset_er_left_opencell_subset_verum_opencell(null).
subset_er_left_opencell_subset_verum_tile(null) :- subset_verum_tile(null) : er_left_opencell(X0).
-subset_er_left_opencell_subset_verum_tile(null) :- not subset_er_left_opencell_subset_verum_tile(null).
subset_er_left_opencell_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_left_opencell(X0).
-subset_er_left_opencell_subset_falsum_opencell(null) :- not subset_er_left_opencell_subset_falsum_opencell(null).
subset_er_left_opencell_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_left_opencell(X0).
-subset_er_left_opencell_subset_falsum_tile(null) :- not subset_er_left_opencell_subset_falsum_tile(null).
subset_er_left_opencell_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_left_opencell(X0).
-subset_er_left_opencell_subset_opencell_tile(null) :- not subset_er_left_opencell_subset_opencell_tile(null).
subset_er_overlap_opencell_er_shape_opencell(null) :- er_shape_opencell(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_er_shape_opencell(null) :- not subset_er_overlap_opencell_er_shape_opencell(null).
subset_er_overlap_opencell_er_smaller_tile(null) :- er_smaller_tile(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_er_smaller_tile(null) :- not subset_er_overlap_opencell_er_smaller_tile(null).
subset_er_overlap_opencell_er_below_tile(null) :- er_below_tile(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_er_below_tile(null) :- not subset_er_overlap_opencell_er_below_tile(null).
subset_er_overlap_opencell_er_left_tile(null) :- er_left_tile(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_er_left_tile(null) :- not subset_er_overlap_opencell_er_left_tile(null).
subset_er_overlap_opencell_er_overlap_tile(null) :- er_overlap_tile(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_er_overlap_tile(null) :- not subset_er_overlap_opencell_er_overlap_tile(null).
subset_er_overlap_opencell_er_shape_tile(null) :- er_shape_tile(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_er_shape_tile(null) :- not subset_er_overlap_opencell_er_shape_tile(null).
subset_er_overlap_opencell_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_inter_verum_falsum(null) :- not subset_er_overlap_opencell_inter_verum_falsum(null).
subset_er_overlap_opencell_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_inter_verum_opencell(null) :- not subset_er_overlap_opencell_inter_verum_opencell(null).
subset_er_overlap_opencell_inter_verum_tile(null) :- inter_verum_tile(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_inter_verum_tile(null) :- not subset_er_overlap_opencell_inter_verum_tile(null).
subset_er_overlap_opencell_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_inter_falsum_opencell(null) :- not subset_er_overlap_opencell_inter_falsum_opencell(null).
subset_er_overlap_opencell_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_inter_falsum_tile(null) :- not subset_er_overlap_opencell_inter_falsum_tile(null).
subset_er_overlap_opencell_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_inter_opencell_tile(null) :- not subset_er_overlap_opencell_inter_opencell_tile(null).
subset_er_overlap_opencell_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_subset_verum_falsum(null) :- not subset_er_overlap_opencell_subset_verum_falsum(null).
subset_er_overlap_opencell_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_subset_verum_opencell(null) :- not subset_er_overlap_opencell_subset_verum_opencell(null).
subset_er_overlap_opencell_subset_verum_tile(null) :- subset_verum_tile(null) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_subset_verum_tile(null) :- not subset_er_overlap_opencell_subset_verum_tile(null).
subset_er_overlap_opencell_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_subset_falsum_opencell(null) :- not subset_er_overlap_opencell_subset_falsum_opencell(null).
subset_er_overlap_opencell_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_subset_falsum_tile(null) :- not subset_er_overlap_opencell_subset_falsum_tile(null).
subset_er_overlap_opencell_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_overlap_opencell(X0).
-subset_er_overlap_opencell_subset_opencell_tile(null) :- not subset_er_overlap_opencell_subset_opencell_tile(null).
subset_er_shape_opencell_er_smaller_tile(null) :- er_smaller_tile(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_er_smaller_tile(null) :- not subset_er_shape_opencell_er_smaller_tile(null).
subset_er_shape_opencell_er_below_tile(null) :- er_below_tile(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_er_below_tile(null) :- not subset_er_shape_opencell_er_below_tile(null).
subset_er_shape_opencell_er_left_tile(null) :- er_left_tile(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_er_left_tile(null) :- not subset_er_shape_opencell_er_left_tile(null).
subset_er_shape_opencell_er_overlap_tile(null) :- er_overlap_tile(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_er_overlap_tile(null) :- not subset_er_shape_opencell_er_overlap_tile(null).
subset_er_shape_opencell_er_shape_tile(null) :- er_shape_tile(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_er_shape_tile(null) :- not subset_er_shape_opencell_er_shape_tile(null).
subset_er_shape_opencell_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_inter_verum_falsum(null) :- not subset_er_shape_opencell_inter_verum_falsum(null).
subset_er_shape_opencell_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_inter_verum_opencell(null) :- not subset_er_shape_opencell_inter_verum_opencell(null).
subset_er_shape_opencell_inter_verum_tile(null) :- inter_verum_tile(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_inter_verum_tile(null) :- not subset_er_shape_opencell_inter_verum_tile(null).
subset_er_shape_opencell_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_inter_falsum_opencell(null) :- not subset_er_shape_opencell_inter_falsum_opencell(null).
subset_er_shape_opencell_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_inter_falsum_tile(null) :- not subset_er_shape_opencell_inter_falsum_tile(null).
subset_er_shape_opencell_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_shape_opencell(X0).
-subset_er_shape_opencell_inter_opencell_tile(null) :- not subset_er_shape_opencell_inter_opencell_tile(null).
subset_er_shape_opencell_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_opencell(X0).
-subset_er_shape_opencell_subset_verum_falsum(null) :- not subset_er_shape_opencell_subset_verum_falsum(null).
subset_er_shape_opencell_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_shape_opencell(X0).
-subset_er_shape_opencell_subset_verum_opencell(null) :- not subset_er_shape_opencell_subset_verum_opencell(null).
subset_er_shape_opencell_subset_verum_tile(null) :- subset_verum_tile(null) : er_shape_opencell(X0).
-subset_er_shape_opencell_subset_verum_tile(null) :- not subset_er_shape_opencell_subset_verum_tile(null).
subset_er_shape_opencell_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_shape_opencell(X0).
-subset_er_shape_opencell_subset_falsum_opencell(null) :- not subset_er_shape_opencell_subset_falsum_opencell(null).
subset_er_shape_opencell_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_shape_opencell(X0).
-subset_er_shape_opencell_subset_falsum_tile(null) :- not subset_er_shape_opencell_subset_falsum_tile(null).
subset_er_shape_opencell_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_shape_opencell(X0).
-subset_er_shape_opencell_subset_opencell_tile(null) :- not subset_er_shape_opencell_subset_opencell_tile(null).
subset_er_smaller_tile_er_below_tile(null) :- er_below_tile(X0) : er_smaller_tile(X0).
-subset_er_smaller_tile_er_below_tile(null) :- not subset_er_smaller_tile_er_below_tile(null).
subset_er_smaller_tile_er_left_tile(null) :- er_left_tile(X0) : er_smaller_tile(X0).
-subset_er_smaller_tile_er_left_tile(null) :- not subset_er_smaller_tile_er_left_tile(null).
subset_er_smaller_tile_er_overlap_tile(null) :- er_overlap_tile(X0) : er_smaller_tile(X0).
-subset_er_smaller_tile_er_overlap_tile(null) :- not subset_er_smaller_tile_er_overlap_tile(null).
subset_er_smaller_tile_er_shape_tile(null) :- er_shape_tile(X0) : er_smaller_tile(X0).
-subset_er_smaller_tile_er_shape_tile(null) :- not subset_er_smaller_tile_er_shape_tile(null).
subset_er_smaller_tile_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_smaller_tile(X0).
-subset_er_smaller_tile_inter_verum_falsum(null) :- not subset_er_smaller_tile_inter_verum_falsum(null).
subset_er_smaller_tile_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_smaller_tile(X0).
-subset_er_smaller_tile_inter_verum_opencell(null) :- not subset_er_smaller_tile_inter_verum_opencell(null).
subset_er_smaller_tile_inter_verum_tile(null) :- inter_verum_tile(X0) : er_smaller_tile(X0).
-subset_er_smaller_tile_inter_verum_tile(null) :- not subset_er_smaller_tile_inter_verum_tile(null).
subset_er_smaller_tile_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_smaller_tile(X0).
-subset_er_smaller_tile_inter_falsum_opencell(null) :- not subset_er_smaller_tile_inter_falsum_opencell(null).
subset_er_smaller_tile_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_smaller_tile(X0).
-subset_er_smaller_tile_inter_falsum_tile(null) :- not subset_er_smaller_tile_inter_falsum_tile(null).
subset_er_smaller_tile_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_smaller_tile(X0).
-subset_er_smaller_tile_inter_opencell_tile(null) :- not subset_er_smaller_tile_inter_opencell_tile(null).
subset_er_smaller_tile_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_smaller_tile(X0).
-subset_er_smaller_tile_subset_verum_falsum(null) :- not subset_er_smaller_tile_subset_verum_falsum(null).
subset_er_smaller_tile_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_smaller_tile(X0).
-subset_er_smaller_tile_subset_verum_opencell(null) :- not subset_er_smaller_tile_subset_verum_opencell(null).
subset_er_smaller_tile_subset_verum_tile(null) :- subset_verum_tile(null) : er_smaller_tile(X0).
-subset_er_smaller_tile_subset_verum_tile(null) :- not subset_er_smaller_tile_subset_verum_tile(null).
subset_er_smaller_tile_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_smaller_tile(X0).
-subset_er_smaller_tile_subset_falsum_opencell(null) :- not subset_er_smaller_tile_subset_falsum_opencell(null).
subset_er_smaller_tile_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_smaller_tile(X0).
-subset_er_smaller_tile_subset_falsum_tile(null) :- not subset_er_smaller_tile_subset_falsum_tile(null).
subset_er_smaller_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_smaller_tile(X0).
-subset_er_smaller_tile_subset_opencell_tile(null) :- not subset_er_smaller_tile_subset_opencell_tile(null).
subset_er_below_tile_er_left_tile(null) :- er_left_tile(X0) : er_below_tile(X0).
-subset_er_below_tile_er_left_tile(null) :- not subset_er_below_tile_er_left_tile(null).
subset_er_below_tile_er_overlap_tile(null) :- er_overlap_tile(X0) : er_below_tile(X0).
-subset_er_below_tile_er_overlap_tile(null) :- not subset_er_below_tile_er_overlap_tile(null).
subset_er_below_tile_er_shape_tile(null) :- er_shape_tile(X0) : er_below_tile(X0).
-subset_er_below_tile_er_shape_tile(null) :- not subset_er_below_tile_er_shape_tile(null).
subset_er_below_tile_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_below_tile(X0).
-subset_er_below_tile_inter_verum_falsum(null) :- not subset_er_below_tile_inter_verum_falsum(null).
subset_er_below_tile_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_below_tile(X0).
-subset_er_below_tile_inter_verum_opencell(null) :- not subset_er_below_tile_inter_verum_opencell(null).
subset_er_below_tile_inter_verum_tile(null) :- inter_verum_tile(X0) : er_below_tile(X0).
-subset_er_below_tile_inter_verum_tile(null) :- not subset_er_below_tile_inter_verum_tile(null).
subset_er_below_tile_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_below_tile(X0).
-subset_er_below_tile_inter_falsum_opencell(null) :- not subset_er_below_tile_inter_falsum_opencell(null).
subset_er_below_tile_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_below_tile(X0).
-subset_er_below_tile_inter_falsum_tile(null) :- not subset_er_below_tile_inter_falsum_tile(null).
subset_er_below_tile_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_below_tile(X0).
-subset_er_below_tile_inter_opencell_tile(null) :- not subset_er_below_tile_inter_opencell_tile(null).
subset_er_below_tile_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_below_tile(X0).
-subset_er_below_tile_subset_verum_falsum(null) :- not subset_er_below_tile_subset_verum_falsum(null).
subset_er_below_tile_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_below_tile(X0).
-subset_er_below_tile_subset_verum_opencell(null) :- not subset_er_below_tile_subset_verum_opencell(null).
subset_er_below_tile_subset_verum_tile(null) :- subset_verum_tile(null) : er_below_tile(X0).
-subset_er_below_tile_subset_verum_tile(null) :- not subset_er_below_tile_subset_verum_tile(null).
subset_er_below_tile_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_below_tile(X0).
-subset_er_below_tile_subset_falsum_opencell(null) :- not subset_er_below_tile_subset_falsum_opencell(null).
subset_er_below_tile_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_below_tile(X0).
-subset_er_below_tile_subset_falsum_tile(null) :- not subset_er_below_tile_subset_falsum_tile(null).
subset_er_below_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_below_tile(X0).
-subset_er_below_tile_subset_opencell_tile(null) :- not subset_er_below_tile_subset_opencell_tile(null).
subset_er_left_tile_er_overlap_tile(null) :- er_overlap_tile(X0) : er_left_tile(X0).
-subset_er_left_tile_er_overlap_tile(null) :- not subset_er_left_tile_er_overlap_tile(null).
subset_er_left_tile_er_shape_tile(null) :- er_shape_tile(X0) : er_left_tile(X0).
-subset_er_left_tile_er_shape_tile(null) :- not subset_er_left_tile_er_shape_tile(null).
subset_er_left_tile_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_left_tile(X0).
-subset_er_left_tile_inter_verum_falsum(null) :- not subset_er_left_tile_inter_verum_falsum(null).
subset_er_left_tile_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_left_tile(X0).
-subset_er_left_tile_inter_verum_opencell(null) :- not subset_er_left_tile_inter_verum_opencell(null).
subset_er_left_tile_inter_verum_tile(null) :- inter_verum_tile(X0) : er_left_tile(X0).
-subset_er_left_tile_inter_verum_tile(null) :- not subset_er_left_tile_inter_verum_tile(null).
subset_er_left_tile_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_left_tile(X0).
-subset_er_left_tile_inter_falsum_opencell(null) :- not subset_er_left_tile_inter_falsum_opencell(null).
subset_er_left_tile_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_left_tile(X0).
-subset_er_left_tile_inter_falsum_tile(null) :- not subset_er_left_tile_inter_falsum_tile(null).
subset_er_left_tile_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_left_tile(X0).
-subset_er_left_tile_inter_opencell_tile(null) :- not subset_er_left_tile_inter_opencell_tile(null).
subset_er_left_tile_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_left_tile(X0).
-subset_er_left_tile_subset_verum_falsum(null) :- not subset_er_left_tile_subset_verum_falsum(null).
subset_er_left_tile_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_left_tile(X0).
-subset_er_left_tile_subset_verum_opencell(null) :- not subset_er_left_tile_subset_verum_opencell(null).
subset_er_left_tile_subset_verum_tile(null) :- subset_verum_tile(null) : er_left_tile(X0).
-subset_er_left_tile_subset_verum_tile(null) :- not subset_er_left_tile_subset_verum_tile(null).
subset_er_left_tile_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_left_tile(X0).
-subset_er_left_tile_subset_falsum_opencell(null) :- not subset_er_left_tile_subset_falsum_opencell(null).
subset_er_left_tile_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_left_tile(X0).
-subset_er_left_tile_subset_falsum_tile(null) :- not subset_er_left_tile_subset_falsum_tile(null).
subset_er_left_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_left_tile(X0).
-subset_er_left_tile_subset_opencell_tile(null) :- not subset_er_left_tile_subset_opencell_tile(null).
subset_er_overlap_tile_er_shape_tile(null) :- er_shape_tile(X0) : er_overlap_tile(X0).
-subset_er_overlap_tile_er_shape_tile(null) :- not subset_er_overlap_tile_er_shape_tile(null).
subset_er_overlap_tile_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_overlap_tile(X0).
-subset_er_overlap_tile_inter_verum_falsum(null) :- not subset_er_overlap_tile_inter_verum_falsum(null).
subset_er_overlap_tile_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_overlap_tile(X0).
-subset_er_overlap_tile_inter_verum_opencell(null) :- not subset_er_overlap_tile_inter_verum_opencell(null).
subset_er_overlap_tile_inter_verum_tile(null) :- inter_verum_tile(X0) : er_overlap_tile(X0).
-subset_er_overlap_tile_inter_verum_tile(null) :- not subset_er_overlap_tile_inter_verum_tile(null).
subset_er_overlap_tile_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_overlap_tile(X0).
-subset_er_overlap_tile_inter_falsum_opencell(null) :- not subset_er_overlap_tile_inter_falsum_opencell(null).
subset_er_overlap_tile_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_overlap_tile(X0).
-subset_er_overlap_tile_inter_falsum_tile(null) :- not subset_er_overlap_tile_inter_falsum_tile(null).
subset_er_overlap_tile_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_overlap_tile(X0).
-subset_er_overlap_tile_inter_opencell_tile(null) :- not subset_er_overlap_tile_inter_opencell_tile(null).
subset_er_overlap_tile_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_overlap_tile(X0).
-subset_er_overlap_tile_subset_verum_falsum(null) :- not subset_er_overlap_tile_subset_verum_falsum(null).
subset_er_overlap_tile_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_overlap_tile(X0).
-subset_er_overlap_tile_subset_verum_opencell(null) :- not subset_er_overlap_tile_subset_verum_opencell(null).
subset_er_overlap_tile_subset_verum_tile(null) :- subset_verum_tile(null) : er_overlap_tile(X0).
-subset_er_overlap_tile_subset_verum_tile(null) :- not subset_er_overlap_tile_subset_verum_tile(null).
subset_er_overlap_tile_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_overlap_tile(X0).
-subset_er_overlap_tile_subset_falsum_opencell(null) :- not subset_er_overlap_tile_subset_falsum_opencell(null).
subset_er_overlap_tile_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_overlap_tile(X0).
-subset_er_overlap_tile_subset_falsum_tile(null) :- not subset_er_overlap_tile_subset_falsum_tile(null).
subset_er_overlap_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_overlap_tile(X0).
-subset_er_overlap_tile_subset_opencell_tile(null) :- not subset_er_overlap_tile_subset_opencell_tile(null).
subset_er_shape_tile_inter_verum_falsum(null) :- inter_verum_falsum(X0) : er_shape_tile(X0).
-subset_er_shape_tile_inter_verum_falsum(null) :- not subset_er_shape_tile_inter_verum_falsum(null).
subset_er_shape_tile_inter_verum_opencell(null) :- inter_verum_opencell(X0) : er_shape_tile(X0).
-subset_er_shape_tile_inter_verum_opencell(null) :- not subset_er_shape_tile_inter_verum_opencell(null).
subset_er_shape_tile_inter_verum_tile(null) :- inter_verum_tile(X0) : er_shape_tile(X0).
-subset_er_shape_tile_inter_verum_tile(null) :- not subset_er_shape_tile_inter_verum_tile(null).
subset_er_shape_tile_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : er_shape_tile(X0).
-subset_er_shape_tile_inter_falsum_opencell(null) :- not subset_er_shape_tile_inter_falsum_opencell(null).
subset_er_shape_tile_inter_falsum_tile(null) :- inter_falsum_tile(X0) : er_shape_tile(X0).
-subset_er_shape_tile_inter_falsum_tile(null) :- not subset_er_shape_tile_inter_falsum_tile(null).
subset_er_shape_tile_inter_opencell_tile(null) :- inter_opencell_tile(X0) : er_shape_tile(X0).
-subset_er_shape_tile_inter_opencell_tile(null) :- not subset_er_shape_tile_inter_opencell_tile(null).
subset_er_shape_tile_subset_verum_falsum(null) :- subset_verum_falsum(null) : er_shape_tile(X0).
-subset_er_shape_tile_subset_verum_falsum(null) :- not subset_er_shape_tile_subset_verum_falsum(null).
subset_er_shape_tile_subset_verum_opencell(null) :- subset_verum_opencell(null) : er_shape_tile(X0).
-subset_er_shape_tile_subset_verum_opencell(null) :- not subset_er_shape_tile_subset_verum_opencell(null).
subset_er_shape_tile_subset_verum_tile(null) :- subset_verum_tile(null) : er_shape_tile(X0).
-subset_er_shape_tile_subset_verum_tile(null) :- not subset_er_shape_tile_subset_verum_tile(null).
subset_er_shape_tile_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : er_shape_tile(X0).
-subset_er_shape_tile_subset_falsum_opencell(null) :- not subset_er_shape_tile_subset_falsum_opencell(null).
subset_er_shape_tile_subset_falsum_tile(null) :- subset_falsum_tile(null) : er_shape_tile(X0).
-subset_er_shape_tile_subset_falsum_tile(null) :- not subset_er_shape_tile_subset_falsum_tile(null).
subset_er_shape_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : er_shape_tile(X0).
-subset_er_shape_tile_subset_opencell_tile(null) :- not subset_er_shape_tile_subset_opencell_tile(null).
subset_inter_verum_falsum_inter_verum_opencell(null) :- inter_verum_opencell(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_verum_opencell(null) :- not subset_inter_verum_falsum_inter_verum_opencell(null).
subset_inter_verum_falsum_inter_verum_tile(null) :- inter_verum_tile(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_verum_tile(null) :- not subset_inter_verum_falsum_inter_verum_tile(null).
subset_inter_verum_falsum_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_falsum_opencell(null) :- not subset_inter_verum_falsum_inter_falsum_opencell(null).
subset_inter_verum_falsum_inter_falsum_tile(null) :- inter_falsum_tile(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_falsum_tile(null) :- not subset_inter_verum_falsum_inter_falsum_tile(null).
subset_inter_verum_falsum_inter_opencell_tile(null) :- inter_opencell_tile(X0) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_inter_opencell_tile(null) :- not subset_inter_verum_falsum_inter_opencell_tile(null).
subset_inter_verum_falsum_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_falsum(null) :- not subset_inter_verum_falsum_subset_verum_falsum(null).
subset_inter_verum_falsum_subset_verum_opencell(null) :- subset_verum_opencell(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_opencell(null) :- not subset_inter_verum_falsum_subset_verum_opencell(null).
subset_inter_verum_falsum_subset_verum_tile(null) :- subset_verum_tile(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_verum_tile(null) :- not subset_inter_verum_falsum_subset_verum_tile(null).
subset_inter_verum_falsum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_falsum_opencell(null) :- not subset_inter_verum_falsum_subset_falsum_opencell(null).
subset_inter_verum_falsum_subset_falsum_tile(null) :- subset_falsum_tile(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_falsum_tile(null) :- not subset_inter_verum_falsum_subset_falsum_tile(null).
subset_inter_verum_falsum_subset_opencell_tile(null) :- subset_opencell_tile(null) : inter_verum_falsum(X0).
-subset_inter_verum_falsum_subset_opencell_tile(null) :- not subset_inter_verum_falsum_subset_opencell_tile(null).
subset_inter_verum_opencell_inter_verum_tile(null) :- inter_verum_tile(X0) : inter_verum_opencell(X0).
-subset_inter_verum_opencell_inter_verum_tile(null) :- not subset_inter_verum_opencell_inter_verum_tile(null).
subset_inter_verum_opencell_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : inter_verum_opencell(X0).
-subset_inter_verum_opencell_inter_falsum_opencell(null) :- not subset_inter_verum_opencell_inter_falsum_opencell(null).
subset_inter_verum_opencell_inter_falsum_tile(null) :- inter_falsum_tile(X0) : inter_verum_opencell(X0).
-subset_inter_verum_opencell_inter_falsum_tile(null) :- not subset_inter_verum_opencell_inter_falsum_tile(null).
subset_inter_verum_opencell_inter_opencell_tile(null) :- inter_opencell_tile(X0) : inter_verum_opencell(X0).
-subset_inter_verum_opencell_inter_opencell_tile(null) :- not subset_inter_verum_opencell_inter_opencell_tile(null).
subset_inter_verum_opencell_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_opencell(X0).
-subset_inter_verum_opencell_subset_verum_falsum(null) :- not subset_inter_verum_opencell_subset_verum_falsum(null).
subset_inter_verum_opencell_subset_verum_opencell(null) :- subset_verum_opencell(null) : inter_verum_opencell(X0).
-subset_inter_verum_opencell_subset_verum_opencell(null) :- not subset_inter_verum_opencell_subset_verum_opencell(null).
subset_inter_verum_opencell_subset_verum_tile(null) :- subset_verum_tile(null) : inter_verum_opencell(X0).
-subset_inter_verum_opencell_subset_verum_tile(null) :- not subset_inter_verum_opencell_subset_verum_tile(null).
subset_inter_verum_opencell_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : inter_verum_opencell(X0).
-subset_inter_verum_opencell_subset_falsum_opencell(null) :- not subset_inter_verum_opencell_subset_falsum_opencell(null).
subset_inter_verum_opencell_subset_falsum_tile(null) :- subset_falsum_tile(null) : inter_verum_opencell(X0).
-subset_inter_verum_opencell_subset_falsum_tile(null) :- not subset_inter_verum_opencell_subset_falsum_tile(null).
subset_inter_verum_opencell_subset_opencell_tile(null) :- subset_opencell_tile(null) : inter_verum_opencell(X0).
-subset_inter_verum_opencell_subset_opencell_tile(null) :- not subset_inter_verum_opencell_subset_opencell_tile(null).
subset_inter_verum_tile_inter_falsum_opencell(null) :- inter_falsum_opencell(X0) : inter_verum_tile(X0).
-subset_inter_verum_tile_inter_falsum_opencell(null) :- not subset_inter_verum_tile_inter_falsum_opencell(null).
subset_inter_verum_tile_inter_falsum_tile(null) :- inter_falsum_tile(X0) : inter_verum_tile(X0).
-subset_inter_verum_tile_inter_falsum_tile(null) :- not subset_inter_verum_tile_inter_falsum_tile(null).
subset_inter_verum_tile_inter_opencell_tile(null) :- inter_opencell_tile(X0) : inter_verum_tile(X0).
-subset_inter_verum_tile_inter_opencell_tile(null) :- not subset_inter_verum_tile_inter_opencell_tile(null).
subset_inter_verum_tile_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_verum_tile(X0).
-subset_inter_verum_tile_subset_verum_falsum(null) :- not subset_inter_verum_tile_subset_verum_falsum(null).
subset_inter_verum_tile_subset_verum_opencell(null) :- subset_verum_opencell(null) : inter_verum_tile(X0).
-subset_inter_verum_tile_subset_verum_opencell(null) :- not subset_inter_verum_tile_subset_verum_opencell(null).
subset_inter_verum_tile_subset_verum_tile(null) :- subset_verum_tile(null) : inter_verum_tile(X0).
-subset_inter_verum_tile_subset_verum_tile(null) :- not subset_inter_verum_tile_subset_verum_tile(null).
subset_inter_verum_tile_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : inter_verum_tile(X0).
-subset_inter_verum_tile_subset_falsum_opencell(null) :- not subset_inter_verum_tile_subset_falsum_opencell(null).
subset_inter_verum_tile_subset_falsum_tile(null) :- subset_falsum_tile(null) : inter_verum_tile(X0).
-subset_inter_verum_tile_subset_falsum_tile(null) :- not subset_inter_verum_tile_subset_falsum_tile(null).
subset_inter_verum_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : inter_verum_tile(X0).
-subset_inter_verum_tile_subset_opencell_tile(null) :- not subset_inter_verum_tile_subset_opencell_tile(null).
subset_inter_falsum_opencell_inter_falsum_tile(null) :- inter_falsum_tile(X0) : inter_falsum_opencell(X0).
-subset_inter_falsum_opencell_inter_falsum_tile(null) :- not subset_inter_falsum_opencell_inter_falsum_tile(null).
subset_inter_falsum_opencell_inter_opencell_tile(null) :- inter_opencell_tile(X0) : inter_falsum_opencell(X0).
-subset_inter_falsum_opencell_inter_opencell_tile(null) :- not subset_inter_falsum_opencell_inter_opencell_tile(null).
subset_inter_falsum_opencell_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_falsum_opencell(X0).
-subset_inter_falsum_opencell_subset_verum_falsum(null) :- not subset_inter_falsum_opencell_subset_verum_falsum(null).
subset_inter_falsum_opencell_subset_verum_opencell(null) :- subset_verum_opencell(null) : inter_falsum_opencell(X0).
-subset_inter_falsum_opencell_subset_verum_opencell(null) :- not subset_inter_falsum_opencell_subset_verum_opencell(null).
subset_inter_falsum_opencell_subset_verum_tile(null) :- subset_verum_tile(null) : inter_falsum_opencell(X0).
-subset_inter_falsum_opencell_subset_verum_tile(null) :- not subset_inter_falsum_opencell_subset_verum_tile(null).
subset_inter_falsum_opencell_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : inter_falsum_opencell(X0).
-subset_inter_falsum_opencell_subset_falsum_opencell(null) :- not subset_inter_falsum_opencell_subset_falsum_opencell(null).
subset_inter_falsum_opencell_subset_falsum_tile(null) :- subset_falsum_tile(null) : inter_falsum_opencell(X0).
-subset_inter_falsum_opencell_subset_falsum_tile(null) :- not subset_inter_falsum_opencell_subset_falsum_tile(null).
subset_inter_falsum_opencell_subset_opencell_tile(null) :- subset_opencell_tile(null) : inter_falsum_opencell(X0).
-subset_inter_falsum_opencell_subset_opencell_tile(null) :- not subset_inter_falsum_opencell_subset_opencell_tile(null).
subset_inter_falsum_tile_inter_opencell_tile(null) :- inter_opencell_tile(X0) : inter_falsum_tile(X0).
-subset_inter_falsum_tile_inter_opencell_tile(null) :- not subset_inter_falsum_tile_inter_opencell_tile(null).
subset_inter_falsum_tile_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_falsum_tile(X0).
-subset_inter_falsum_tile_subset_verum_falsum(null) :- not subset_inter_falsum_tile_subset_verum_falsum(null).
subset_inter_falsum_tile_subset_verum_opencell(null) :- subset_verum_opencell(null) : inter_falsum_tile(X0).
-subset_inter_falsum_tile_subset_verum_opencell(null) :- not subset_inter_falsum_tile_subset_verum_opencell(null).
subset_inter_falsum_tile_subset_verum_tile(null) :- subset_verum_tile(null) : inter_falsum_tile(X0).
-subset_inter_falsum_tile_subset_verum_tile(null) :- not subset_inter_falsum_tile_subset_verum_tile(null).
subset_inter_falsum_tile_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : inter_falsum_tile(X0).
-subset_inter_falsum_tile_subset_falsum_opencell(null) :- not subset_inter_falsum_tile_subset_falsum_opencell(null).
subset_inter_falsum_tile_subset_falsum_tile(null) :- subset_falsum_tile(null) : inter_falsum_tile(X0).
-subset_inter_falsum_tile_subset_falsum_tile(null) :- not subset_inter_falsum_tile_subset_falsum_tile(null).
subset_inter_falsum_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : inter_falsum_tile(X0).
-subset_inter_falsum_tile_subset_opencell_tile(null) :- not subset_inter_falsum_tile_subset_opencell_tile(null).
subset_inter_opencell_tile_subset_verum_falsum(null) :- subset_verum_falsum(null) : inter_opencell_tile(X0).
-subset_inter_opencell_tile_subset_verum_falsum(null) :- not subset_inter_opencell_tile_subset_verum_falsum(null).
subset_inter_opencell_tile_subset_verum_opencell(null) :- subset_verum_opencell(null) : inter_opencell_tile(X0).
-subset_inter_opencell_tile_subset_verum_opencell(null) :- not subset_inter_opencell_tile_subset_verum_opencell(null).
subset_inter_opencell_tile_subset_verum_tile(null) :- subset_verum_tile(null) : inter_opencell_tile(X0).
-subset_inter_opencell_tile_subset_verum_tile(null) :- not subset_inter_opencell_tile_subset_verum_tile(null).
subset_inter_opencell_tile_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : inter_opencell_tile(X0).
-subset_inter_opencell_tile_subset_falsum_opencell(null) :- not subset_inter_opencell_tile_subset_falsum_opencell(null).
subset_inter_opencell_tile_subset_falsum_tile(null) :- subset_falsum_tile(null) : inter_opencell_tile(X0).
-subset_inter_opencell_tile_subset_falsum_tile(null) :- not subset_inter_opencell_tile_subset_falsum_tile(null).
subset_inter_opencell_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : inter_opencell_tile(X0).
-subset_inter_opencell_tile_subset_opencell_tile(null) :- not subset_inter_opencell_tile_subset_opencell_tile(null).
subset_subset_verum_falsum_subset_verum_opencell(null) :- subset_verum_opencell(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_verum_opencell(null) :- not subset_subset_verum_falsum_subset_verum_opencell(null).
subset_subset_verum_falsum_subset_verum_tile(null) :- subset_verum_tile(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_verum_tile(null) :- not subset_subset_verum_falsum_subset_verum_tile(null).
subset_subset_verum_falsum_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_falsum_opencell(null) :- not subset_subset_verum_falsum_subset_falsum_opencell(null).
subset_subset_verum_falsum_subset_falsum_tile(null) :- subset_falsum_tile(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_falsum_tile(null) :- not subset_subset_verum_falsum_subset_falsum_tile(null).
subset_subset_verum_falsum_subset_opencell_tile(null) :- subset_opencell_tile(null) : subset_verum_falsum(null).
-subset_subset_verum_falsum_subset_opencell_tile(null) :- not subset_subset_verum_falsum_subset_opencell_tile(null).
subset_subset_verum_opencell_subset_verum_tile(null) :- subset_verum_tile(null) : subset_verum_opencell(null).
-subset_subset_verum_opencell_subset_verum_tile(null) :- not subset_subset_verum_opencell_subset_verum_tile(null).
subset_subset_verum_opencell_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : subset_verum_opencell(null).
-subset_subset_verum_opencell_subset_falsum_opencell(null) :- not subset_subset_verum_opencell_subset_falsum_opencell(null).
subset_subset_verum_opencell_subset_falsum_tile(null) :- subset_falsum_tile(null) : subset_verum_opencell(null).
-subset_subset_verum_opencell_subset_falsum_tile(null) :- not subset_subset_verum_opencell_subset_falsum_tile(null).
subset_subset_verum_opencell_subset_opencell_tile(null) :- subset_opencell_tile(null) : subset_verum_opencell(null).
-subset_subset_verum_opencell_subset_opencell_tile(null) :- not subset_subset_verum_opencell_subset_opencell_tile(null).
subset_subset_verum_tile_subset_falsum_opencell(null) :- subset_falsum_opencell(null) : subset_verum_tile(null).
-subset_subset_verum_tile_subset_falsum_opencell(null) :- not subset_subset_verum_tile_subset_falsum_opencell(null).
subset_subset_verum_tile_subset_falsum_tile(null) :- subset_falsum_tile(null) : subset_verum_tile(null).
-subset_subset_verum_tile_subset_falsum_tile(null) :- not subset_subset_verum_tile_subset_falsum_tile(null).
subset_subset_verum_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : subset_verum_tile(null).
-subset_subset_verum_tile_subset_opencell_tile(null) :- not subset_subset_verum_tile_subset_opencell_tile(null).
subset_subset_falsum_opencell_subset_falsum_tile(null) :- subset_falsum_tile(null) : subset_falsum_opencell(null).
-subset_subset_falsum_opencell_subset_falsum_tile(null) :- not subset_subset_falsum_opencell_subset_falsum_tile(null).
subset_subset_falsum_opencell_subset_opencell_tile(null) :- subset_opencell_tile(null) : subset_falsum_opencell(null).
-subset_subset_falsum_opencell_subset_opencell_tile(null) :- not subset_subset_falsum_opencell_subset_opencell_tile(null).
subset_subset_falsum_tile_subset_opencell_tile(null) :- subset_opencell_tile(null) : subset_falsum_tile(null).
-subset_subset_falsum_tile_subset_opencell_tile(null) :- not subset_subset_falsum_tile_subset_opencell_tile(null).

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
% Number of generated preds: 2190
