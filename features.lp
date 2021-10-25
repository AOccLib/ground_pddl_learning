% er concepts
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
er_smaller_lockedcell(X0) :- lockedcell(X1),smaller(X0,X1).
-er_smaller_lockedcell(X0) :- object(X0),not er_smaller_lockedcell(X0).
er_below_lockedcell(X0) :- lockedcell(X1),below(X0,X1).
-er_below_lockedcell(X0) :- object(X0),not er_below_lockedcell(X0).
er_left_lockedcell(X0) :- lockedcell(X1),left(X0,X1).
-er_left_lockedcell(X0) :- object(X0),not er_left_lockedcell(X0).
er_overlap_lockedcell(X0) :- lockedcell(X1),overlap(X0,X1).
-er_overlap_lockedcell(X0) :- object(X0),not er_overlap_lockedcell(X0).
er_shape_lockedcell(X0) :- lockedcell(X1),shape(X0,X1).
-er_shape_lockedcell(X0) :- object(X0),not er_shape_lockedcell(X0).
er_smaller_sokoban(X0) :- sokoban(X1),smaller(X0,X1).
-er_smaller_sokoban(X0) :- object(X0),not er_smaller_sokoban(X0).
er_below_sokoban(X0) :- sokoban(X1),below(X0,X1).
-er_below_sokoban(X0) :- object(X0),not er_below_sokoban(X0).
er_left_sokoban(X0) :- sokoban(X1),left(X0,X1).
-er_left_sokoban(X0) :- object(X0),not er_left_sokoban(X0).
er_overlap_sokoban(X0) :- sokoban(X1),overlap(X0,X1).
-er_overlap_sokoban(X0) :- object(X0),not er_overlap_sokoban(X0).
er_shape_sokoban(X0) :- sokoban(X1),shape(X0,X1).
-er_shape_sokoban(X0) :- object(X0),not er_shape_sokoban(X0).
er_smaller_crate(X0) :- crate(X1),smaller(X0,X1).
-er_smaller_crate(X0) :- object(X0),not er_smaller_crate(X0).
er_below_crate(X0) :- crate(X1),below(X0,X1).
-er_below_crate(X0) :- object(X0),not er_below_crate(X0).
er_left_crate(X0) :- crate(X1),left(X0,X1).
-er_left_crate(X0) :- object(X0),not er_left_crate(X0).
er_overlap_crate(X0) :- crate(X1),overlap(X0,X1).
-er_overlap_crate(X0) :- object(X0),not er_overlap_crate(X0).
er_shape_crate(X0) :- crate(X1),shape(X0,X1).
-er_shape_crate(X0) :- object(X0),not er_shape_crate(X0).
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
% inter concepts
inter_verum_falsum(X0) :- verum(X0),falsum(X0).
-inter_verum_falsum(X0) :- object(X0),not inter_verum_falsum(X0).
inter_verum_robot(X0) :- verum(X0),robot(X0).
-inter_verum_robot(X0) :- object(X0),not inter_verum_robot(X0).
inter_verum_block(X0) :- verum(X0),block(X0).
-inter_verum_block(X0) :- object(X0),not inter_verum_block(X0).
inter_verum_table(X0) :- verum(X0),table(X0).
-inter_verum_table(X0) :- object(X0),not inter_verum_table(X0).
inter_verum_opencell(X0) :- verum(X0),opencell(X0).
-inter_verum_opencell(X0) :- object(X0),not inter_verum_opencell(X0).
inter_verum_lockedcell(X0) :- verum(X0),lockedcell(X0).
-inter_verum_lockedcell(X0) :- object(X0),not inter_verum_lockedcell(X0).
inter_verum_sokoban(X0) :- verum(X0),sokoban(X0).
-inter_verum_sokoban(X0) :- object(X0),not inter_verum_sokoban(X0).
inter_verum_crate(X0) :- verum(X0),crate(X0).
-inter_verum_crate(X0) :- object(X0),not inter_verum_crate(X0).
inter_verum_key(X0) :- verum(X0),key(X0).
-inter_verum_key(X0) :- object(X0),not inter_verum_key(X0).
inter_verum_peg(X0) :- verum(X0),peg(X0).
-inter_verum_peg(X0) :- object(X0),not inter_verum_peg(X0).
inter_verum_disk(X0) :- verum(X0),disk(X0).
-inter_verum_disk(X0) :- object(X0),not inter_verum_disk(X0).
inter_verum_tile(X0) :- verum(X0),tile(X0).
-inter_verum_tile(X0) :- object(X0),not inter_verum_tile(X0).
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
inter_verum_er_smaller_lockedcell(X0) :- verum(X0),er_smaller_lockedcell(X0).
-inter_verum_er_smaller_lockedcell(X0) :- object(X0),not inter_verum_er_smaller_lockedcell(X0).
inter_verum_er_below_lockedcell(X0) :- verum(X0),er_below_lockedcell(X0).
-inter_verum_er_below_lockedcell(X0) :- object(X0),not inter_verum_er_below_lockedcell(X0).
inter_verum_er_left_lockedcell(X0) :- verum(X0),er_left_lockedcell(X0).
-inter_verum_er_left_lockedcell(X0) :- object(X0),not inter_verum_er_left_lockedcell(X0).
inter_verum_er_overlap_lockedcell(X0) :- verum(X0),er_overlap_lockedcell(X0).
-inter_verum_er_overlap_lockedcell(X0) :- object(X0),not inter_verum_er_overlap_lockedcell(X0).
inter_verum_er_shape_lockedcell(X0) :- verum(X0),er_shape_lockedcell(X0).
-inter_verum_er_shape_lockedcell(X0) :- object(X0),not inter_verum_er_shape_lockedcell(X0).
inter_verum_er_smaller_sokoban(X0) :- verum(X0),er_smaller_sokoban(X0).
-inter_verum_er_smaller_sokoban(X0) :- object(X0),not inter_verum_er_smaller_sokoban(X0).
inter_verum_er_below_sokoban(X0) :- verum(X0),er_below_sokoban(X0).
-inter_verum_er_below_sokoban(X0) :- object(X0),not inter_verum_er_below_sokoban(X0).
inter_verum_er_left_sokoban(X0) :- verum(X0),er_left_sokoban(X0).
-inter_verum_er_left_sokoban(X0) :- object(X0),not inter_verum_er_left_sokoban(X0).
inter_verum_er_overlap_sokoban(X0) :- verum(X0),er_overlap_sokoban(X0).
-inter_verum_er_overlap_sokoban(X0) :- object(X0),not inter_verum_er_overlap_sokoban(X0).
inter_verum_er_shape_sokoban(X0) :- verum(X0),er_shape_sokoban(X0).
-inter_verum_er_shape_sokoban(X0) :- object(X0),not inter_verum_er_shape_sokoban(X0).
inter_verum_er_smaller_crate(X0) :- verum(X0),er_smaller_crate(X0).
-inter_verum_er_smaller_crate(X0) :- object(X0),not inter_verum_er_smaller_crate(X0).
inter_verum_er_below_crate(X0) :- verum(X0),er_below_crate(X0).
-inter_verum_er_below_crate(X0) :- object(X0),not inter_verum_er_below_crate(X0).
inter_verum_er_left_crate(X0) :- verum(X0),er_left_crate(X0).
-inter_verum_er_left_crate(X0) :- object(X0),not inter_verum_er_left_crate(X0).
inter_verum_er_overlap_crate(X0) :- verum(X0),er_overlap_crate(X0).
-inter_verum_er_overlap_crate(X0) :- object(X0),not inter_verum_er_overlap_crate(X0).
inter_verum_er_shape_crate(X0) :- verum(X0),er_shape_crate(X0).
-inter_verum_er_shape_crate(X0) :- object(X0),not inter_verum_er_shape_crate(X0).
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
inter_falsum_robot(X0) :- falsum(X0),robot(X0).
-inter_falsum_robot(X0) :- object(X0),not inter_falsum_robot(X0).
inter_falsum_block(X0) :- falsum(X0),block(X0).
-inter_falsum_block(X0) :- object(X0),not inter_falsum_block(X0).
inter_falsum_table(X0) :- falsum(X0),table(X0).
-inter_falsum_table(X0) :- object(X0),not inter_falsum_table(X0).
inter_falsum_opencell(X0) :- falsum(X0),opencell(X0).
-inter_falsum_opencell(X0) :- object(X0),not inter_falsum_opencell(X0).
inter_falsum_lockedcell(X0) :- falsum(X0),lockedcell(X0).
-inter_falsum_lockedcell(X0) :- object(X0),not inter_falsum_lockedcell(X0).
inter_falsum_sokoban(X0) :- falsum(X0),sokoban(X0).
-inter_falsum_sokoban(X0) :- object(X0),not inter_falsum_sokoban(X0).
inter_falsum_crate(X0) :- falsum(X0),crate(X0).
-inter_falsum_crate(X0) :- object(X0),not inter_falsum_crate(X0).
inter_falsum_key(X0) :- falsum(X0),key(X0).
-inter_falsum_key(X0) :- object(X0),not inter_falsum_key(X0).
inter_falsum_peg(X0) :- falsum(X0),peg(X0).
-inter_falsum_peg(X0) :- object(X0),not inter_falsum_peg(X0).
inter_falsum_disk(X0) :- falsum(X0),disk(X0).
-inter_falsum_disk(X0) :- object(X0),not inter_falsum_disk(X0).
inter_falsum_tile(X0) :- falsum(X0),tile(X0).
-inter_falsum_tile(X0) :- object(X0),not inter_falsum_tile(X0).
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
inter_falsum_er_smaller_lockedcell(X0) :- falsum(X0),er_smaller_lockedcell(X0).
-inter_falsum_er_smaller_lockedcell(X0) :- object(X0),not inter_falsum_er_smaller_lockedcell(X0).
inter_falsum_er_below_lockedcell(X0) :- falsum(X0),er_below_lockedcell(X0).
-inter_falsum_er_below_lockedcell(X0) :- object(X0),not inter_falsum_er_below_lockedcell(X0).
inter_falsum_er_left_lockedcell(X0) :- falsum(X0),er_left_lockedcell(X0).
-inter_falsum_er_left_lockedcell(X0) :- object(X0),not inter_falsum_er_left_lockedcell(X0).
inter_falsum_er_overlap_lockedcell(X0) :- falsum(X0),er_overlap_lockedcell(X0).
-inter_falsum_er_overlap_lockedcell(X0) :- object(X0),not inter_falsum_er_overlap_lockedcell(X0).
inter_falsum_er_shape_lockedcell(X0) :- falsum(X0),er_shape_lockedcell(X0).
-inter_falsum_er_shape_lockedcell(X0) :- object(X0),not inter_falsum_er_shape_lockedcell(X0).
inter_falsum_er_smaller_sokoban(X0) :- falsum(X0),er_smaller_sokoban(X0).
-inter_falsum_er_smaller_sokoban(X0) :- object(X0),not inter_falsum_er_smaller_sokoban(X0).
inter_falsum_er_below_sokoban(X0) :- falsum(X0),er_below_sokoban(X0).
-inter_falsum_er_below_sokoban(X0) :- object(X0),not inter_falsum_er_below_sokoban(X0).
inter_falsum_er_left_sokoban(X0) :- falsum(X0),er_left_sokoban(X0).
-inter_falsum_er_left_sokoban(X0) :- object(X0),not inter_falsum_er_left_sokoban(X0).
inter_falsum_er_overlap_sokoban(X0) :- falsum(X0),er_overlap_sokoban(X0).
-inter_falsum_er_overlap_sokoban(X0) :- object(X0),not inter_falsum_er_overlap_sokoban(X0).
inter_falsum_er_shape_sokoban(X0) :- falsum(X0),er_shape_sokoban(X0).
-inter_falsum_er_shape_sokoban(X0) :- object(X0),not inter_falsum_er_shape_sokoban(X0).
inter_falsum_er_smaller_crate(X0) :- falsum(X0),er_smaller_crate(X0).
-inter_falsum_er_smaller_crate(X0) :- object(X0),not inter_falsum_er_smaller_crate(X0).
inter_falsum_er_below_crate(X0) :- falsum(X0),er_below_crate(X0).
-inter_falsum_er_below_crate(X0) :- object(X0),not inter_falsum_er_below_crate(X0).
inter_falsum_er_left_crate(X0) :- falsum(X0),er_left_crate(X0).
-inter_falsum_er_left_crate(X0) :- object(X0),not inter_falsum_er_left_crate(X0).
inter_falsum_er_overlap_crate(X0) :- falsum(X0),er_overlap_crate(X0).
-inter_falsum_er_overlap_crate(X0) :- object(X0),not inter_falsum_er_overlap_crate(X0).
inter_falsum_er_shape_crate(X0) :- falsum(X0),er_shape_crate(X0).
-inter_falsum_er_shape_crate(X0) :- object(X0),not inter_falsum_er_shape_crate(X0).
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
inter_robot_block(X0) :- robot(X0),block(X0).
-inter_robot_block(X0) :- object(X0),not inter_robot_block(X0).
inter_robot_table(X0) :- robot(X0),table(X0).
-inter_robot_table(X0) :- object(X0),not inter_robot_table(X0).
inter_robot_opencell(X0) :- robot(X0),opencell(X0).
-inter_robot_opencell(X0) :- object(X0),not inter_robot_opencell(X0).
inter_robot_lockedcell(X0) :- robot(X0),lockedcell(X0).
-inter_robot_lockedcell(X0) :- object(X0),not inter_robot_lockedcell(X0).
inter_robot_sokoban(X0) :- robot(X0),sokoban(X0).
-inter_robot_sokoban(X0) :- object(X0),not inter_robot_sokoban(X0).
inter_robot_crate(X0) :- robot(X0),crate(X0).
-inter_robot_crate(X0) :- object(X0),not inter_robot_crate(X0).
inter_robot_key(X0) :- robot(X0),key(X0).
-inter_robot_key(X0) :- object(X0),not inter_robot_key(X0).
inter_robot_peg(X0) :- robot(X0),peg(X0).
-inter_robot_peg(X0) :- object(X0),not inter_robot_peg(X0).
inter_robot_disk(X0) :- robot(X0),disk(X0).
-inter_robot_disk(X0) :- object(X0),not inter_robot_disk(X0).
inter_robot_tile(X0) :- robot(X0),tile(X0).
-inter_robot_tile(X0) :- object(X0),not inter_robot_tile(X0).
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
inter_robot_er_smaller_opencell(X0) :- robot(X0),er_smaller_opencell(X0).
-inter_robot_er_smaller_opencell(X0) :- object(X0),not inter_robot_er_smaller_opencell(X0).
inter_robot_er_below_opencell(X0) :- robot(X0),er_below_opencell(X0).
-inter_robot_er_below_opencell(X0) :- object(X0),not inter_robot_er_below_opencell(X0).
inter_robot_er_left_opencell(X0) :- robot(X0),er_left_opencell(X0).
-inter_robot_er_left_opencell(X0) :- object(X0),not inter_robot_er_left_opencell(X0).
inter_robot_er_overlap_opencell(X0) :- robot(X0),er_overlap_opencell(X0).
-inter_robot_er_overlap_opencell(X0) :- object(X0),not inter_robot_er_overlap_opencell(X0).
inter_robot_er_shape_opencell(X0) :- robot(X0),er_shape_opencell(X0).
-inter_robot_er_shape_opencell(X0) :- object(X0),not inter_robot_er_shape_opencell(X0).
inter_robot_er_smaller_lockedcell(X0) :- robot(X0),er_smaller_lockedcell(X0).
-inter_robot_er_smaller_lockedcell(X0) :- object(X0),not inter_robot_er_smaller_lockedcell(X0).
inter_robot_er_below_lockedcell(X0) :- robot(X0),er_below_lockedcell(X0).
-inter_robot_er_below_lockedcell(X0) :- object(X0),not inter_robot_er_below_lockedcell(X0).
inter_robot_er_left_lockedcell(X0) :- robot(X0),er_left_lockedcell(X0).
-inter_robot_er_left_lockedcell(X0) :- object(X0),not inter_robot_er_left_lockedcell(X0).
inter_robot_er_overlap_lockedcell(X0) :- robot(X0),er_overlap_lockedcell(X0).
-inter_robot_er_overlap_lockedcell(X0) :- object(X0),not inter_robot_er_overlap_lockedcell(X0).
inter_robot_er_shape_lockedcell(X0) :- robot(X0),er_shape_lockedcell(X0).
-inter_robot_er_shape_lockedcell(X0) :- object(X0),not inter_robot_er_shape_lockedcell(X0).
inter_robot_er_smaller_sokoban(X0) :- robot(X0),er_smaller_sokoban(X0).
-inter_robot_er_smaller_sokoban(X0) :- object(X0),not inter_robot_er_smaller_sokoban(X0).
inter_robot_er_below_sokoban(X0) :- robot(X0),er_below_sokoban(X0).
-inter_robot_er_below_sokoban(X0) :- object(X0),not inter_robot_er_below_sokoban(X0).
inter_robot_er_left_sokoban(X0) :- robot(X0),er_left_sokoban(X0).
-inter_robot_er_left_sokoban(X0) :- object(X0),not inter_robot_er_left_sokoban(X0).
inter_robot_er_overlap_sokoban(X0) :- robot(X0),er_overlap_sokoban(X0).
-inter_robot_er_overlap_sokoban(X0) :- object(X0),not inter_robot_er_overlap_sokoban(X0).
inter_robot_er_shape_sokoban(X0) :- robot(X0),er_shape_sokoban(X0).
-inter_robot_er_shape_sokoban(X0) :- object(X0),not inter_robot_er_shape_sokoban(X0).
inter_robot_er_smaller_crate(X0) :- robot(X0),er_smaller_crate(X0).
-inter_robot_er_smaller_crate(X0) :- object(X0),not inter_robot_er_smaller_crate(X0).
inter_robot_er_below_crate(X0) :- robot(X0),er_below_crate(X0).
-inter_robot_er_below_crate(X0) :- object(X0),not inter_robot_er_below_crate(X0).
inter_robot_er_left_crate(X0) :- robot(X0),er_left_crate(X0).
-inter_robot_er_left_crate(X0) :- object(X0),not inter_robot_er_left_crate(X0).
inter_robot_er_overlap_crate(X0) :- robot(X0),er_overlap_crate(X0).
-inter_robot_er_overlap_crate(X0) :- object(X0),not inter_robot_er_overlap_crate(X0).
inter_robot_er_shape_crate(X0) :- robot(X0),er_shape_crate(X0).
-inter_robot_er_shape_crate(X0) :- object(X0),not inter_robot_er_shape_crate(X0).
inter_robot_er_smaller_key(X0) :- robot(X0),er_smaller_key(X0).
-inter_robot_er_smaller_key(X0) :- object(X0),not inter_robot_er_smaller_key(X0).
inter_robot_er_below_key(X0) :- robot(X0),er_below_key(X0).
-inter_robot_er_below_key(X0) :- object(X0),not inter_robot_er_below_key(X0).
inter_robot_er_left_key(X0) :- robot(X0),er_left_key(X0).
-inter_robot_er_left_key(X0) :- object(X0),not inter_robot_er_left_key(X0).
inter_robot_er_overlap_key(X0) :- robot(X0),er_overlap_key(X0).
-inter_robot_er_overlap_key(X0) :- object(X0),not inter_robot_er_overlap_key(X0).
inter_robot_er_shape_key(X0) :- robot(X0),er_shape_key(X0).
-inter_robot_er_shape_key(X0) :- object(X0),not inter_robot_er_shape_key(X0).
inter_robot_er_smaller_peg(X0) :- robot(X0),er_smaller_peg(X0).
-inter_robot_er_smaller_peg(X0) :- object(X0),not inter_robot_er_smaller_peg(X0).
inter_robot_er_below_peg(X0) :- robot(X0),er_below_peg(X0).
-inter_robot_er_below_peg(X0) :- object(X0),not inter_robot_er_below_peg(X0).
inter_robot_er_left_peg(X0) :- robot(X0),er_left_peg(X0).
-inter_robot_er_left_peg(X0) :- object(X0),not inter_robot_er_left_peg(X0).
inter_robot_er_overlap_peg(X0) :- robot(X0),er_overlap_peg(X0).
-inter_robot_er_overlap_peg(X0) :- object(X0),not inter_robot_er_overlap_peg(X0).
inter_robot_er_shape_peg(X0) :- robot(X0),er_shape_peg(X0).
-inter_robot_er_shape_peg(X0) :- object(X0),not inter_robot_er_shape_peg(X0).
inter_robot_er_smaller_disk(X0) :- robot(X0),er_smaller_disk(X0).
-inter_robot_er_smaller_disk(X0) :- object(X0),not inter_robot_er_smaller_disk(X0).
inter_robot_er_below_disk(X0) :- robot(X0),er_below_disk(X0).
-inter_robot_er_below_disk(X0) :- object(X0),not inter_robot_er_below_disk(X0).
inter_robot_er_left_disk(X0) :- robot(X0),er_left_disk(X0).
-inter_robot_er_left_disk(X0) :- object(X0),not inter_robot_er_left_disk(X0).
inter_robot_er_overlap_disk(X0) :- robot(X0),er_overlap_disk(X0).
-inter_robot_er_overlap_disk(X0) :- object(X0),not inter_robot_er_overlap_disk(X0).
inter_robot_er_shape_disk(X0) :- robot(X0),er_shape_disk(X0).
-inter_robot_er_shape_disk(X0) :- object(X0),not inter_robot_er_shape_disk(X0).
inter_robot_er_smaller_tile(X0) :- robot(X0),er_smaller_tile(X0).
-inter_robot_er_smaller_tile(X0) :- object(X0),not inter_robot_er_smaller_tile(X0).
inter_robot_er_below_tile(X0) :- robot(X0),er_below_tile(X0).
-inter_robot_er_below_tile(X0) :- object(X0),not inter_robot_er_below_tile(X0).
inter_robot_er_left_tile(X0) :- robot(X0),er_left_tile(X0).
-inter_robot_er_left_tile(X0) :- object(X0),not inter_robot_er_left_tile(X0).
inter_robot_er_overlap_tile(X0) :- robot(X0),er_overlap_tile(X0).
-inter_robot_er_overlap_tile(X0) :- object(X0),not inter_robot_er_overlap_tile(X0).
inter_robot_er_shape_tile(X0) :- robot(X0),er_shape_tile(X0).
-inter_robot_er_shape_tile(X0) :- object(X0),not inter_robot_er_shape_tile(X0).
inter_block_table(X0) :- block(X0),table(X0).
-inter_block_table(X0) :- object(X0),not inter_block_table(X0).
inter_block_opencell(X0) :- block(X0),opencell(X0).
-inter_block_opencell(X0) :- object(X0),not inter_block_opencell(X0).
inter_block_lockedcell(X0) :- block(X0),lockedcell(X0).
-inter_block_lockedcell(X0) :- object(X0),not inter_block_lockedcell(X0).
inter_block_sokoban(X0) :- block(X0),sokoban(X0).
-inter_block_sokoban(X0) :- object(X0),not inter_block_sokoban(X0).
inter_block_crate(X0) :- block(X0),crate(X0).
-inter_block_crate(X0) :- object(X0),not inter_block_crate(X0).
inter_block_key(X0) :- block(X0),key(X0).
-inter_block_key(X0) :- object(X0),not inter_block_key(X0).
inter_block_peg(X0) :- block(X0),peg(X0).
-inter_block_peg(X0) :- object(X0),not inter_block_peg(X0).
inter_block_disk(X0) :- block(X0),disk(X0).
-inter_block_disk(X0) :- object(X0),not inter_block_disk(X0).
inter_block_tile(X0) :- block(X0),tile(X0).
-inter_block_tile(X0) :- object(X0),not inter_block_tile(X0).
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
inter_block_er_smaller_opencell(X0) :- block(X0),er_smaller_opencell(X0).
-inter_block_er_smaller_opencell(X0) :- object(X0),not inter_block_er_smaller_opencell(X0).
inter_block_er_below_opencell(X0) :- block(X0),er_below_opencell(X0).
-inter_block_er_below_opencell(X0) :- object(X0),not inter_block_er_below_opencell(X0).
inter_block_er_left_opencell(X0) :- block(X0),er_left_opencell(X0).
-inter_block_er_left_opencell(X0) :- object(X0),not inter_block_er_left_opencell(X0).
inter_block_er_overlap_opencell(X0) :- block(X0),er_overlap_opencell(X0).
-inter_block_er_overlap_opencell(X0) :- object(X0),not inter_block_er_overlap_opencell(X0).
inter_block_er_shape_opencell(X0) :- block(X0),er_shape_opencell(X0).
-inter_block_er_shape_opencell(X0) :- object(X0),not inter_block_er_shape_opencell(X0).
inter_block_er_smaller_lockedcell(X0) :- block(X0),er_smaller_lockedcell(X0).
-inter_block_er_smaller_lockedcell(X0) :- object(X0),not inter_block_er_smaller_lockedcell(X0).
inter_block_er_below_lockedcell(X0) :- block(X0),er_below_lockedcell(X0).
-inter_block_er_below_lockedcell(X0) :- object(X0),not inter_block_er_below_lockedcell(X0).
inter_block_er_left_lockedcell(X0) :- block(X0),er_left_lockedcell(X0).
-inter_block_er_left_lockedcell(X0) :- object(X0),not inter_block_er_left_lockedcell(X0).
inter_block_er_overlap_lockedcell(X0) :- block(X0),er_overlap_lockedcell(X0).
-inter_block_er_overlap_lockedcell(X0) :- object(X0),not inter_block_er_overlap_lockedcell(X0).
inter_block_er_shape_lockedcell(X0) :- block(X0),er_shape_lockedcell(X0).
-inter_block_er_shape_lockedcell(X0) :- object(X0),not inter_block_er_shape_lockedcell(X0).
inter_block_er_smaller_sokoban(X0) :- block(X0),er_smaller_sokoban(X0).
-inter_block_er_smaller_sokoban(X0) :- object(X0),not inter_block_er_smaller_sokoban(X0).
inter_block_er_below_sokoban(X0) :- block(X0),er_below_sokoban(X0).
-inter_block_er_below_sokoban(X0) :- object(X0),not inter_block_er_below_sokoban(X0).
inter_block_er_left_sokoban(X0) :- block(X0),er_left_sokoban(X0).
-inter_block_er_left_sokoban(X0) :- object(X0),not inter_block_er_left_sokoban(X0).
inter_block_er_overlap_sokoban(X0) :- block(X0),er_overlap_sokoban(X0).
-inter_block_er_overlap_sokoban(X0) :- object(X0),not inter_block_er_overlap_sokoban(X0).
inter_block_er_shape_sokoban(X0) :- block(X0),er_shape_sokoban(X0).
-inter_block_er_shape_sokoban(X0) :- object(X0),not inter_block_er_shape_sokoban(X0).
inter_block_er_smaller_crate(X0) :- block(X0),er_smaller_crate(X0).
-inter_block_er_smaller_crate(X0) :- object(X0),not inter_block_er_smaller_crate(X0).
inter_block_er_below_crate(X0) :- block(X0),er_below_crate(X0).
-inter_block_er_below_crate(X0) :- object(X0),not inter_block_er_below_crate(X0).
inter_block_er_left_crate(X0) :- block(X0),er_left_crate(X0).
-inter_block_er_left_crate(X0) :- object(X0),not inter_block_er_left_crate(X0).
inter_block_er_overlap_crate(X0) :- block(X0),er_overlap_crate(X0).
-inter_block_er_overlap_crate(X0) :- object(X0),not inter_block_er_overlap_crate(X0).
inter_block_er_shape_crate(X0) :- block(X0),er_shape_crate(X0).
-inter_block_er_shape_crate(X0) :- object(X0),not inter_block_er_shape_crate(X0).
inter_block_er_smaller_key(X0) :- block(X0),er_smaller_key(X0).
-inter_block_er_smaller_key(X0) :- object(X0),not inter_block_er_smaller_key(X0).
inter_block_er_below_key(X0) :- block(X0),er_below_key(X0).
-inter_block_er_below_key(X0) :- object(X0),not inter_block_er_below_key(X0).
inter_block_er_left_key(X0) :- block(X0),er_left_key(X0).
-inter_block_er_left_key(X0) :- object(X0),not inter_block_er_left_key(X0).
inter_block_er_overlap_key(X0) :- block(X0),er_overlap_key(X0).
-inter_block_er_overlap_key(X0) :- object(X0),not inter_block_er_overlap_key(X0).
inter_block_er_shape_key(X0) :- block(X0),er_shape_key(X0).
-inter_block_er_shape_key(X0) :- object(X0),not inter_block_er_shape_key(X0).
inter_block_er_smaller_peg(X0) :- block(X0),er_smaller_peg(X0).
-inter_block_er_smaller_peg(X0) :- object(X0),not inter_block_er_smaller_peg(X0).
inter_block_er_below_peg(X0) :- block(X0),er_below_peg(X0).
-inter_block_er_below_peg(X0) :- object(X0),not inter_block_er_below_peg(X0).
inter_block_er_left_peg(X0) :- block(X0),er_left_peg(X0).
-inter_block_er_left_peg(X0) :- object(X0),not inter_block_er_left_peg(X0).
inter_block_er_overlap_peg(X0) :- block(X0),er_overlap_peg(X0).
-inter_block_er_overlap_peg(X0) :- object(X0),not inter_block_er_overlap_peg(X0).
inter_block_er_shape_peg(X0) :- block(X0),er_shape_peg(X0).
-inter_block_er_shape_peg(X0) :- object(X0),not inter_block_er_shape_peg(X0).
inter_block_er_smaller_disk(X0) :- block(X0),er_smaller_disk(X0).
-inter_block_er_smaller_disk(X0) :- object(X0),not inter_block_er_smaller_disk(X0).
inter_block_er_below_disk(X0) :- block(X0),er_below_disk(X0).
-inter_block_er_below_disk(X0) :- object(X0),not inter_block_er_below_disk(X0).
inter_block_er_left_disk(X0) :- block(X0),er_left_disk(X0).
-inter_block_er_left_disk(X0) :- object(X0),not inter_block_er_left_disk(X0).
inter_block_er_overlap_disk(X0) :- block(X0),er_overlap_disk(X0).
-inter_block_er_overlap_disk(X0) :- object(X0),not inter_block_er_overlap_disk(X0).
inter_block_er_shape_disk(X0) :- block(X0),er_shape_disk(X0).
-inter_block_er_shape_disk(X0) :- object(X0),not inter_block_er_shape_disk(X0).
inter_block_er_smaller_tile(X0) :- block(X0),er_smaller_tile(X0).
-inter_block_er_smaller_tile(X0) :- object(X0),not inter_block_er_smaller_tile(X0).
inter_block_er_below_tile(X0) :- block(X0),er_below_tile(X0).
-inter_block_er_below_tile(X0) :- object(X0),not inter_block_er_below_tile(X0).
inter_block_er_left_tile(X0) :- block(X0),er_left_tile(X0).
-inter_block_er_left_tile(X0) :- object(X0),not inter_block_er_left_tile(X0).
inter_block_er_overlap_tile(X0) :- block(X0),er_overlap_tile(X0).
-inter_block_er_overlap_tile(X0) :- object(X0),not inter_block_er_overlap_tile(X0).
inter_block_er_shape_tile(X0) :- block(X0),er_shape_tile(X0).
-inter_block_er_shape_tile(X0) :- object(X0),not inter_block_er_shape_tile(X0).
inter_table_opencell(X0) :- table(X0),opencell(X0).
-inter_table_opencell(X0) :- object(X0),not inter_table_opencell(X0).
inter_table_lockedcell(X0) :- table(X0),lockedcell(X0).
-inter_table_lockedcell(X0) :- object(X0),not inter_table_lockedcell(X0).
inter_table_sokoban(X0) :- table(X0),sokoban(X0).
-inter_table_sokoban(X0) :- object(X0),not inter_table_sokoban(X0).
inter_table_crate(X0) :- table(X0),crate(X0).
-inter_table_crate(X0) :- object(X0),not inter_table_crate(X0).
inter_table_key(X0) :- table(X0),key(X0).
-inter_table_key(X0) :- object(X0),not inter_table_key(X0).
inter_table_peg(X0) :- table(X0),peg(X0).
-inter_table_peg(X0) :- object(X0),not inter_table_peg(X0).
inter_table_disk(X0) :- table(X0),disk(X0).
-inter_table_disk(X0) :- object(X0),not inter_table_disk(X0).
inter_table_tile(X0) :- table(X0),tile(X0).
-inter_table_tile(X0) :- object(X0),not inter_table_tile(X0).
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
inter_table_er_smaller_opencell(X0) :- table(X0),er_smaller_opencell(X0).
-inter_table_er_smaller_opencell(X0) :- object(X0),not inter_table_er_smaller_opencell(X0).
inter_table_er_below_opencell(X0) :- table(X0),er_below_opencell(X0).
-inter_table_er_below_opencell(X0) :- object(X0),not inter_table_er_below_opencell(X0).
inter_table_er_left_opencell(X0) :- table(X0),er_left_opencell(X0).
-inter_table_er_left_opencell(X0) :- object(X0),not inter_table_er_left_opencell(X0).
inter_table_er_overlap_opencell(X0) :- table(X0),er_overlap_opencell(X0).
-inter_table_er_overlap_opencell(X0) :- object(X0),not inter_table_er_overlap_opencell(X0).
inter_table_er_shape_opencell(X0) :- table(X0),er_shape_opencell(X0).
-inter_table_er_shape_opencell(X0) :- object(X0),not inter_table_er_shape_opencell(X0).
inter_table_er_smaller_lockedcell(X0) :- table(X0),er_smaller_lockedcell(X0).
-inter_table_er_smaller_lockedcell(X0) :- object(X0),not inter_table_er_smaller_lockedcell(X0).
inter_table_er_below_lockedcell(X0) :- table(X0),er_below_lockedcell(X0).
-inter_table_er_below_lockedcell(X0) :- object(X0),not inter_table_er_below_lockedcell(X0).
inter_table_er_left_lockedcell(X0) :- table(X0),er_left_lockedcell(X0).
-inter_table_er_left_lockedcell(X0) :- object(X0),not inter_table_er_left_lockedcell(X0).
inter_table_er_overlap_lockedcell(X0) :- table(X0),er_overlap_lockedcell(X0).
-inter_table_er_overlap_lockedcell(X0) :- object(X0),not inter_table_er_overlap_lockedcell(X0).
inter_table_er_shape_lockedcell(X0) :- table(X0),er_shape_lockedcell(X0).
-inter_table_er_shape_lockedcell(X0) :- object(X0),not inter_table_er_shape_lockedcell(X0).
inter_table_er_smaller_sokoban(X0) :- table(X0),er_smaller_sokoban(X0).
-inter_table_er_smaller_sokoban(X0) :- object(X0),not inter_table_er_smaller_sokoban(X0).
inter_table_er_below_sokoban(X0) :- table(X0),er_below_sokoban(X0).
-inter_table_er_below_sokoban(X0) :- object(X0),not inter_table_er_below_sokoban(X0).
inter_table_er_left_sokoban(X0) :- table(X0),er_left_sokoban(X0).
-inter_table_er_left_sokoban(X0) :- object(X0),not inter_table_er_left_sokoban(X0).
inter_table_er_overlap_sokoban(X0) :- table(X0),er_overlap_sokoban(X0).
-inter_table_er_overlap_sokoban(X0) :- object(X0),not inter_table_er_overlap_sokoban(X0).
inter_table_er_shape_sokoban(X0) :- table(X0),er_shape_sokoban(X0).
-inter_table_er_shape_sokoban(X0) :- object(X0),not inter_table_er_shape_sokoban(X0).
inter_table_er_smaller_crate(X0) :- table(X0),er_smaller_crate(X0).
-inter_table_er_smaller_crate(X0) :- object(X0),not inter_table_er_smaller_crate(X0).
inter_table_er_below_crate(X0) :- table(X0),er_below_crate(X0).
-inter_table_er_below_crate(X0) :- object(X0),not inter_table_er_below_crate(X0).
inter_table_er_left_crate(X0) :- table(X0),er_left_crate(X0).
-inter_table_er_left_crate(X0) :- object(X0),not inter_table_er_left_crate(X0).
inter_table_er_overlap_crate(X0) :- table(X0),er_overlap_crate(X0).
-inter_table_er_overlap_crate(X0) :- object(X0),not inter_table_er_overlap_crate(X0).
inter_table_er_shape_crate(X0) :- table(X0),er_shape_crate(X0).
-inter_table_er_shape_crate(X0) :- object(X0),not inter_table_er_shape_crate(X0).
inter_table_er_smaller_key(X0) :- table(X0),er_smaller_key(X0).
-inter_table_er_smaller_key(X0) :- object(X0),not inter_table_er_smaller_key(X0).
inter_table_er_below_key(X0) :- table(X0),er_below_key(X0).
-inter_table_er_below_key(X0) :- object(X0),not inter_table_er_below_key(X0).
inter_table_er_left_key(X0) :- table(X0),er_left_key(X0).
-inter_table_er_left_key(X0) :- object(X0),not inter_table_er_left_key(X0).
inter_table_er_overlap_key(X0) :- table(X0),er_overlap_key(X0).
-inter_table_er_overlap_key(X0) :- object(X0),not inter_table_er_overlap_key(X0).
inter_table_er_shape_key(X0) :- table(X0),er_shape_key(X0).
-inter_table_er_shape_key(X0) :- object(X0),not inter_table_er_shape_key(X0).
inter_table_er_smaller_peg(X0) :- table(X0),er_smaller_peg(X0).
-inter_table_er_smaller_peg(X0) :- object(X0),not inter_table_er_smaller_peg(X0).
inter_table_er_below_peg(X0) :- table(X0),er_below_peg(X0).
-inter_table_er_below_peg(X0) :- object(X0),not inter_table_er_below_peg(X0).
inter_table_er_left_peg(X0) :- table(X0),er_left_peg(X0).
-inter_table_er_left_peg(X0) :- object(X0),not inter_table_er_left_peg(X0).
inter_table_er_overlap_peg(X0) :- table(X0),er_overlap_peg(X0).
-inter_table_er_overlap_peg(X0) :- object(X0),not inter_table_er_overlap_peg(X0).
inter_table_er_shape_peg(X0) :- table(X0),er_shape_peg(X0).
-inter_table_er_shape_peg(X0) :- object(X0),not inter_table_er_shape_peg(X0).
inter_table_er_smaller_disk(X0) :- table(X0),er_smaller_disk(X0).
-inter_table_er_smaller_disk(X0) :- object(X0),not inter_table_er_smaller_disk(X0).
inter_table_er_below_disk(X0) :- table(X0),er_below_disk(X0).
-inter_table_er_below_disk(X0) :- object(X0),not inter_table_er_below_disk(X0).
inter_table_er_left_disk(X0) :- table(X0),er_left_disk(X0).
-inter_table_er_left_disk(X0) :- object(X0),not inter_table_er_left_disk(X0).
inter_table_er_overlap_disk(X0) :- table(X0),er_overlap_disk(X0).
-inter_table_er_overlap_disk(X0) :- object(X0),not inter_table_er_overlap_disk(X0).
inter_table_er_shape_disk(X0) :- table(X0),er_shape_disk(X0).
-inter_table_er_shape_disk(X0) :- object(X0),not inter_table_er_shape_disk(X0).
inter_table_er_smaller_tile(X0) :- table(X0),er_smaller_tile(X0).
-inter_table_er_smaller_tile(X0) :- object(X0),not inter_table_er_smaller_tile(X0).
inter_table_er_below_tile(X0) :- table(X0),er_below_tile(X0).
-inter_table_er_below_tile(X0) :- object(X0),not inter_table_er_below_tile(X0).
inter_table_er_left_tile(X0) :- table(X0),er_left_tile(X0).
-inter_table_er_left_tile(X0) :- object(X0),not inter_table_er_left_tile(X0).
inter_table_er_overlap_tile(X0) :- table(X0),er_overlap_tile(X0).
-inter_table_er_overlap_tile(X0) :- object(X0),not inter_table_er_overlap_tile(X0).
inter_table_er_shape_tile(X0) :- table(X0),er_shape_tile(X0).
-inter_table_er_shape_tile(X0) :- object(X0),not inter_table_er_shape_tile(X0).
inter_opencell_lockedcell(X0) :- opencell(X0),lockedcell(X0).
-inter_opencell_lockedcell(X0) :- object(X0),not inter_opencell_lockedcell(X0).
inter_opencell_sokoban(X0) :- opencell(X0),sokoban(X0).
-inter_opencell_sokoban(X0) :- object(X0),not inter_opencell_sokoban(X0).
inter_opencell_crate(X0) :- opencell(X0),crate(X0).
-inter_opencell_crate(X0) :- object(X0),not inter_opencell_crate(X0).
inter_opencell_key(X0) :- opencell(X0),key(X0).
-inter_opencell_key(X0) :- object(X0),not inter_opencell_key(X0).
inter_opencell_peg(X0) :- opencell(X0),peg(X0).
-inter_opencell_peg(X0) :- object(X0),not inter_opencell_peg(X0).
inter_opencell_disk(X0) :- opencell(X0),disk(X0).
-inter_opencell_disk(X0) :- object(X0),not inter_opencell_disk(X0).
inter_opencell_tile(X0) :- opencell(X0),tile(X0).
-inter_opencell_tile(X0) :- object(X0),not inter_opencell_tile(X0).
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
inter_opencell_er_smaller_robot(X0) :- opencell(X0),er_smaller_robot(X0).
-inter_opencell_er_smaller_robot(X0) :- object(X0),not inter_opencell_er_smaller_robot(X0).
inter_opencell_er_below_robot(X0) :- opencell(X0),er_below_robot(X0).
-inter_opencell_er_below_robot(X0) :- object(X0),not inter_opencell_er_below_robot(X0).
inter_opencell_er_left_robot(X0) :- opencell(X0),er_left_robot(X0).
-inter_opencell_er_left_robot(X0) :- object(X0),not inter_opencell_er_left_robot(X0).
inter_opencell_er_overlap_robot(X0) :- opencell(X0),er_overlap_robot(X0).
-inter_opencell_er_overlap_robot(X0) :- object(X0),not inter_opencell_er_overlap_robot(X0).
inter_opencell_er_shape_robot(X0) :- opencell(X0),er_shape_robot(X0).
-inter_opencell_er_shape_robot(X0) :- object(X0),not inter_opencell_er_shape_robot(X0).
inter_opencell_er_smaller_block(X0) :- opencell(X0),er_smaller_block(X0).
-inter_opencell_er_smaller_block(X0) :- object(X0),not inter_opencell_er_smaller_block(X0).
inter_opencell_er_below_block(X0) :- opencell(X0),er_below_block(X0).
-inter_opencell_er_below_block(X0) :- object(X0),not inter_opencell_er_below_block(X0).
inter_opencell_er_left_block(X0) :- opencell(X0),er_left_block(X0).
-inter_opencell_er_left_block(X0) :- object(X0),not inter_opencell_er_left_block(X0).
inter_opencell_er_overlap_block(X0) :- opencell(X0),er_overlap_block(X0).
-inter_opencell_er_overlap_block(X0) :- object(X0),not inter_opencell_er_overlap_block(X0).
inter_opencell_er_shape_block(X0) :- opencell(X0),er_shape_block(X0).
-inter_opencell_er_shape_block(X0) :- object(X0),not inter_opencell_er_shape_block(X0).
inter_opencell_er_smaller_table(X0) :- opencell(X0),er_smaller_table(X0).
-inter_opencell_er_smaller_table(X0) :- object(X0),not inter_opencell_er_smaller_table(X0).
inter_opencell_er_below_table(X0) :- opencell(X0),er_below_table(X0).
-inter_opencell_er_below_table(X0) :- object(X0),not inter_opencell_er_below_table(X0).
inter_opencell_er_left_table(X0) :- opencell(X0),er_left_table(X0).
-inter_opencell_er_left_table(X0) :- object(X0),not inter_opencell_er_left_table(X0).
inter_opencell_er_overlap_table(X0) :- opencell(X0),er_overlap_table(X0).
-inter_opencell_er_overlap_table(X0) :- object(X0),not inter_opencell_er_overlap_table(X0).
inter_opencell_er_shape_table(X0) :- opencell(X0),er_shape_table(X0).
-inter_opencell_er_shape_table(X0) :- object(X0),not inter_opencell_er_shape_table(X0).
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
inter_opencell_er_smaller_lockedcell(X0) :- opencell(X0),er_smaller_lockedcell(X0).
-inter_opencell_er_smaller_lockedcell(X0) :- object(X0),not inter_opencell_er_smaller_lockedcell(X0).
inter_opencell_er_below_lockedcell(X0) :- opencell(X0),er_below_lockedcell(X0).
-inter_opencell_er_below_lockedcell(X0) :- object(X0),not inter_opencell_er_below_lockedcell(X0).
inter_opencell_er_left_lockedcell(X0) :- opencell(X0),er_left_lockedcell(X0).
-inter_opencell_er_left_lockedcell(X0) :- object(X0),not inter_opencell_er_left_lockedcell(X0).
inter_opencell_er_overlap_lockedcell(X0) :- opencell(X0),er_overlap_lockedcell(X0).
-inter_opencell_er_overlap_lockedcell(X0) :- object(X0),not inter_opencell_er_overlap_lockedcell(X0).
inter_opencell_er_shape_lockedcell(X0) :- opencell(X0),er_shape_lockedcell(X0).
-inter_opencell_er_shape_lockedcell(X0) :- object(X0),not inter_opencell_er_shape_lockedcell(X0).
inter_opencell_er_smaller_sokoban(X0) :- opencell(X0),er_smaller_sokoban(X0).
-inter_opencell_er_smaller_sokoban(X0) :- object(X0),not inter_opencell_er_smaller_sokoban(X0).
inter_opencell_er_below_sokoban(X0) :- opencell(X0),er_below_sokoban(X0).
-inter_opencell_er_below_sokoban(X0) :- object(X0),not inter_opencell_er_below_sokoban(X0).
inter_opencell_er_left_sokoban(X0) :- opencell(X0),er_left_sokoban(X0).
-inter_opencell_er_left_sokoban(X0) :- object(X0),not inter_opencell_er_left_sokoban(X0).
inter_opencell_er_overlap_sokoban(X0) :- opencell(X0),er_overlap_sokoban(X0).
-inter_opencell_er_overlap_sokoban(X0) :- object(X0),not inter_opencell_er_overlap_sokoban(X0).
inter_opencell_er_shape_sokoban(X0) :- opencell(X0),er_shape_sokoban(X0).
-inter_opencell_er_shape_sokoban(X0) :- object(X0),not inter_opencell_er_shape_sokoban(X0).
inter_opencell_er_smaller_crate(X0) :- opencell(X0),er_smaller_crate(X0).
-inter_opencell_er_smaller_crate(X0) :- object(X0),not inter_opencell_er_smaller_crate(X0).
inter_opencell_er_below_crate(X0) :- opencell(X0),er_below_crate(X0).
-inter_opencell_er_below_crate(X0) :- object(X0),not inter_opencell_er_below_crate(X0).
inter_opencell_er_left_crate(X0) :- opencell(X0),er_left_crate(X0).
-inter_opencell_er_left_crate(X0) :- object(X0),not inter_opencell_er_left_crate(X0).
inter_opencell_er_overlap_crate(X0) :- opencell(X0),er_overlap_crate(X0).
-inter_opencell_er_overlap_crate(X0) :- object(X0),not inter_opencell_er_overlap_crate(X0).
inter_opencell_er_shape_crate(X0) :- opencell(X0),er_shape_crate(X0).
-inter_opencell_er_shape_crate(X0) :- object(X0),not inter_opencell_er_shape_crate(X0).
inter_opencell_er_smaller_key(X0) :- opencell(X0),er_smaller_key(X0).
-inter_opencell_er_smaller_key(X0) :- object(X0),not inter_opencell_er_smaller_key(X0).
inter_opencell_er_below_key(X0) :- opencell(X0),er_below_key(X0).
-inter_opencell_er_below_key(X0) :- object(X0),not inter_opencell_er_below_key(X0).
inter_opencell_er_left_key(X0) :- opencell(X0),er_left_key(X0).
-inter_opencell_er_left_key(X0) :- object(X0),not inter_opencell_er_left_key(X0).
inter_opencell_er_overlap_key(X0) :- opencell(X0),er_overlap_key(X0).
-inter_opencell_er_overlap_key(X0) :- object(X0),not inter_opencell_er_overlap_key(X0).
inter_opencell_er_shape_key(X0) :- opencell(X0),er_shape_key(X0).
-inter_opencell_er_shape_key(X0) :- object(X0),not inter_opencell_er_shape_key(X0).
inter_opencell_er_smaller_peg(X0) :- opencell(X0),er_smaller_peg(X0).
-inter_opencell_er_smaller_peg(X0) :- object(X0),not inter_opencell_er_smaller_peg(X0).
inter_opencell_er_below_peg(X0) :- opencell(X0),er_below_peg(X0).
-inter_opencell_er_below_peg(X0) :- object(X0),not inter_opencell_er_below_peg(X0).
inter_opencell_er_left_peg(X0) :- opencell(X0),er_left_peg(X0).
-inter_opencell_er_left_peg(X0) :- object(X0),not inter_opencell_er_left_peg(X0).
inter_opencell_er_overlap_peg(X0) :- opencell(X0),er_overlap_peg(X0).
-inter_opencell_er_overlap_peg(X0) :- object(X0),not inter_opencell_er_overlap_peg(X0).
inter_opencell_er_shape_peg(X0) :- opencell(X0),er_shape_peg(X0).
-inter_opencell_er_shape_peg(X0) :- object(X0),not inter_opencell_er_shape_peg(X0).
inter_opencell_er_smaller_disk(X0) :- opencell(X0),er_smaller_disk(X0).
-inter_opencell_er_smaller_disk(X0) :- object(X0),not inter_opencell_er_smaller_disk(X0).
inter_opencell_er_below_disk(X0) :- opencell(X0),er_below_disk(X0).
-inter_opencell_er_below_disk(X0) :- object(X0),not inter_opencell_er_below_disk(X0).
inter_opencell_er_left_disk(X0) :- opencell(X0),er_left_disk(X0).
-inter_opencell_er_left_disk(X0) :- object(X0),not inter_opencell_er_left_disk(X0).
inter_opencell_er_overlap_disk(X0) :- opencell(X0),er_overlap_disk(X0).
-inter_opencell_er_overlap_disk(X0) :- object(X0),not inter_opencell_er_overlap_disk(X0).
inter_opencell_er_shape_disk(X0) :- opencell(X0),er_shape_disk(X0).
-inter_opencell_er_shape_disk(X0) :- object(X0),not inter_opencell_er_shape_disk(X0).
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
inter_lockedcell_sokoban(X0) :- lockedcell(X0),sokoban(X0).
-inter_lockedcell_sokoban(X0) :- object(X0),not inter_lockedcell_sokoban(X0).
inter_lockedcell_crate(X0) :- lockedcell(X0),crate(X0).
-inter_lockedcell_crate(X0) :- object(X0),not inter_lockedcell_crate(X0).
inter_lockedcell_key(X0) :- lockedcell(X0),key(X0).
-inter_lockedcell_key(X0) :- object(X0),not inter_lockedcell_key(X0).
inter_lockedcell_peg(X0) :- lockedcell(X0),peg(X0).
-inter_lockedcell_peg(X0) :- object(X0),not inter_lockedcell_peg(X0).
inter_lockedcell_disk(X0) :- lockedcell(X0),disk(X0).
-inter_lockedcell_disk(X0) :- object(X0),not inter_lockedcell_disk(X0).
inter_lockedcell_tile(X0) :- lockedcell(X0),tile(X0).
-inter_lockedcell_tile(X0) :- object(X0),not inter_lockedcell_tile(X0).
inter_lockedcell_er_smaller_verum(X0) :- lockedcell(X0),er_smaller_verum(X0).
-inter_lockedcell_er_smaller_verum(X0) :- object(X0),not inter_lockedcell_er_smaller_verum(X0).
inter_lockedcell_er_below_verum(X0) :- lockedcell(X0),er_below_verum(X0).
-inter_lockedcell_er_below_verum(X0) :- object(X0),not inter_lockedcell_er_below_verum(X0).
inter_lockedcell_er_left_verum(X0) :- lockedcell(X0),er_left_verum(X0).
-inter_lockedcell_er_left_verum(X0) :- object(X0),not inter_lockedcell_er_left_verum(X0).
inter_lockedcell_er_overlap_verum(X0) :- lockedcell(X0),er_overlap_verum(X0).
-inter_lockedcell_er_overlap_verum(X0) :- object(X0),not inter_lockedcell_er_overlap_verum(X0).
inter_lockedcell_er_shape_verum(X0) :- lockedcell(X0),er_shape_verum(X0).
-inter_lockedcell_er_shape_verum(X0) :- object(X0),not inter_lockedcell_er_shape_verum(X0).
inter_lockedcell_er_smaller_falsum(X0) :- lockedcell(X0),er_smaller_falsum(X0).
-inter_lockedcell_er_smaller_falsum(X0) :- object(X0),not inter_lockedcell_er_smaller_falsum(X0).
inter_lockedcell_er_below_falsum(X0) :- lockedcell(X0),er_below_falsum(X0).
-inter_lockedcell_er_below_falsum(X0) :- object(X0),not inter_lockedcell_er_below_falsum(X0).
inter_lockedcell_er_left_falsum(X0) :- lockedcell(X0),er_left_falsum(X0).
-inter_lockedcell_er_left_falsum(X0) :- object(X0),not inter_lockedcell_er_left_falsum(X0).
inter_lockedcell_er_overlap_falsum(X0) :- lockedcell(X0),er_overlap_falsum(X0).
-inter_lockedcell_er_overlap_falsum(X0) :- object(X0),not inter_lockedcell_er_overlap_falsum(X0).
inter_lockedcell_er_shape_falsum(X0) :- lockedcell(X0),er_shape_falsum(X0).
-inter_lockedcell_er_shape_falsum(X0) :- object(X0),not inter_lockedcell_er_shape_falsum(X0).
inter_lockedcell_er_smaller_robot(X0) :- lockedcell(X0),er_smaller_robot(X0).
-inter_lockedcell_er_smaller_robot(X0) :- object(X0),not inter_lockedcell_er_smaller_robot(X0).
inter_lockedcell_er_below_robot(X0) :- lockedcell(X0),er_below_robot(X0).
-inter_lockedcell_er_below_robot(X0) :- object(X0),not inter_lockedcell_er_below_robot(X0).
inter_lockedcell_er_left_robot(X0) :- lockedcell(X0),er_left_robot(X0).
-inter_lockedcell_er_left_robot(X0) :- object(X0),not inter_lockedcell_er_left_robot(X0).
inter_lockedcell_er_overlap_robot(X0) :- lockedcell(X0),er_overlap_robot(X0).
-inter_lockedcell_er_overlap_robot(X0) :- object(X0),not inter_lockedcell_er_overlap_robot(X0).
inter_lockedcell_er_shape_robot(X0) :- lockedcell(X0),er_shape_robot(X0).
-inter_lockedcell_er_shape_robot(X0) :- object(X0),not inter_lockedcell_er_shape_robot(X0).
inter_lockedcell_er_smaller_block(X0) :- lockedcell(X0),er_smaller_block(X0).
-inter_lockedcell_er_smaller_block(X0) :- object(X0),not inter_lockedcell_er_smaller_block(X0).
inter_lockedcell_er_below_block(X0) :- lockedcell(X0),er_below_block(X0).
-inter_lockedcell_er_below_block(X0) :- object(X0),not inter_lockedcell_er_below_block(X0).
inter_lockedcell_er_left_block(X0) :- lockedcell(X0),er_left_block(X0).
-inter_lockedcell_er_left_block(X0) :- object(X0),not inter_lockedcell_er_left_block(X0).
inter_lockedcell_er_overlap_block(X0) :- lockedcell(X0),er_overlap_block(X0).
-inter_lockedcell_er_overlap_block(X0) :- object(X0),not inter_lockedcell_er_overlap_block(X0).
inter_lockedcell_er_shape_block(X0) :- lockedcell(X0),er_shape_block(X0).
-inter_lockedcell_er_shape_block(X0) :- object(X0),not inter_lockedcell_er_shape_block(X0).
inter_lockedcell_er_smaller_table(X0) :- lockedcell(X0),er_smaller_table(X0).
-inter_lockedcell_er_smaller_table(X0) :- object(X0),not inter_lockedcell_er_smaller_table(X0).
inter_lockedcell_er_below_table(X0) :- lockedcell(X0),er_below_table(X0).
-inter_lockedcell_er_below_table(X0) :- object(X0),not inter_lockedcell_er_below_table(X0).
inter_lockedcell_er_left_table(X0) :- lockedcell(X0),er_left_table(X0).
-inter_lockedcell_er_left_table(X0) :- object(X0),not inter_lockedcell_er_left_table(X0).
inter_lockedcell_er_overlap_table(X0) :- lockedcell(X0),er_overlap_table(X0).
-inter_lockedcell_er_overlap_table(X0) :- object(X0),not inter_lockedcell_er_overlap_table(X0).
inter_lockedcell_er_shape_table(X0) :- lockedcell(X0),er_shape_table(X0).
-inter_lockedcell_er_shape_table(X0) :- object(X0),not inter_lockedcell_er_shape_table(X0).
inter_lockedcell_er_smaller_opencell(X0) :- lockedcell(X0),er_smaller_opencell(X0).
-inter_lockedcell_er_smaller_opencell(X0) :- object(X0),not inter_lockedcell_er_smaller_opencell(X0).
inter_lockedcell_er_below_opencell(X0) :- lockedcell(X0),er_below_opencell(X0).
-inter_lockedcell_er_below_opencell(X0) :- object(X0),not inter_lockedcell_er_below_opencell(X0).
inter_lockedcell_er_left_opencell(X0) :- lockedcell(X0),er_left_opencell(X0).
-inter_lockedcell_er_left_opencell(X0) :- object(X0),not inter_lockedcell_er_left_opencell(X0).
inter_lockedcell_er_overlap_opencell(X0) :- lockedcell(X0),er_overlap_opencell(X0).
-inter_lockedcell_er_overlap_opencell(X0) :- object(X0),not inter_lockedcell_er_overlap_opencell(X0).
inter_lockedcell_er_shape_opencell(X0) :- lockedcell(X0),er_shape_opencell(X0).
-inter_lockedcell_er_shape_opencell(X0) :- object(X0),not inter_lockedcell_er_shape_opencell(X0).
inter_lockedcell_er_smaller_lockedcell(X0) :- lockedcell(X0),er_smaller_lockedcell(X0).
-inter_lockedcell_er_smaller_lockedcell(X0) :- object(X0),not inter_lockedcell_er_smaller_lockedcell(X0).
inter_lockedcell_er_below_lockedcell(X0) :- lockedcell(X0),er_below_lockedcell(X0).
-inter_lockedcell_er_below_lockedcell(X0) :- object(X0),not inter_lockedcell_er_below_lockedcell(X0).
inter_lockedcell_er_left_lockedcell(X0) :- lockedcell(X0),er_left_lockedcell(X0).
-inter_lockedcell_er_left_lockedcell(X0) :- object(X0),not inter_lockedcell_er_left_lockedcell(X0).
inter_lockedcell_er_overlap_lockedcell(X0) :- lockedcell(X0),er_overlap_lockedcell(X0).
-inter_lockedcell_er_overlap_lockedcell(X0) :- object(X0),not inter_lockedcell_er_overlap_lockedcell(X0).
inter_lockedcell_er_shape_lockedcell(X0) :- lockedcell(X0),er_shape_lockedcell(X0).
-inter_lockedcell_er_shape_lockedcell(X0) :- object(X0),not inter_lockedcell_er_shape_lockedcell(X0).
inter_lockedcell_er_smaller_sokoban(X0) :- lockedcell(X0),er_smaller_sokoban(X0).
-inter_lockedcell_er_smaller_sokoban(X0) :- object(X0),not inter_lockedcell_er_smaller_sokoban(X0).
inter_lockedcell_er_below_sokoban(X0) :- lockedcell(X0),er_below_sokoban(X0).
-inter_lockedcell_er_below_sokoban(X0) :- object(X0),not inter_lockedcell_er_below_sokoban(X0).
inter_lockedcell_er_left_sokoban(X0) :- lockedcell(X0),er_left_sokoban(X0).
-inter_lockedcell_er_left_sokoban(X0) :- object(X0),not inter_lockedcell_er_left_sokoban(X0).
inter_lockedcell_er_overlap_sokoban(X0) :- lockedcell(X0),er_overlap_sokoban(X0).
-inter_lockedcell_er_overlap_sokoban(X0) :- object(X0),not inter_lockedcell_er_overlap_sokoban(X0).
inter_lockedcell_er_shape_sokoban(X0) :- lockedcell(X0),er_shape_sokoban(X0).
-inter_lockedcell_er_shape_sokoban(X0) :- object(X0),not inter_lockedcell_er_shape_sokoban(X0).
inter_lockedcell_er_smaller_crate(X0) :- lockedcell(X0),er_smaller_crate(X0).
-inter_lockedcell_er_smaller_crate(X0) :- object(X0),not inter_lockedcell_er_smaller_crate(X0).
inter_lockedcell_er_below_crate(X0) :- lockedcell(X0),er_below_crate(X0).
-inter_lockedcell_er_below_crate(X0) :- object(X0),not inter_lockedcell_er_below_crate(X0).
inter_lockedcell_er_left_crate(X0) :- lockedcell(X0),er_left_crate(X0).
-inter_lockedcell_er_left_crate(X0) :- object(X0),not inter_lockedcell_er_left_crate(X0).
inter_lockedcell_er_overlap_crate(X0) :- lockedcell(X0),er_overlap_crate(X0).
-inter_lockedcell_er_overlap_crate(X0) :- object(X0),not inter_lockedcell_er_overlap_crate(X0).
inter_lockedcell_er_shape_crate(X0) :- lockedcell(X0),er_shape_crate(X0).
-inter_lockedcell_er_shape_crate(X0) :- object(X0),not inter_lockedcell_er_shape_crate(X0).
inter_lockedcell_er_smaller_key(X0) :- lockedcell(X0),er_smaller_key(X0).
-inter_lockedcell_er_smaller_key(X0) :- object(X0),not inter_lockedcell_er_smaller_key(X0).
inter_lockedcell_er_below_key(X0) :- lockedcell(X0),er_below_key(X0).
-inter_lockedcell_er_below_key(X0) :- object(X0),not inter_lockedcell_er_below_key(X0).
inter_lockedcell_er_left_key(X0) :- lockedcell(X0),er_left_key(X0).
-inter_lockedcell_er_left_key(X0) :- object(X0),not inter_lockedcell_er_left_key(X0).
inter_lockedcell_er_overlap_key(X0) :- lockedcell(X0),er_overlap_key(X0).
-inter_lockedcell_er_overlap_key(X0) :- object(X0),not inter_lockedcell_er_overlap_key(X0).
inter_lockedcell_er_shape_key(X0) :- lockedcell(X0),er_shape_key(X0).
-inter_lockedcell_er_shape_key(X0) :- object(X0),not inter_lockedcell_er_shape_key(X0).
inter_lockedcell_er_smaller_peg(X0) :- lockedcell(X0),er_smaller_peg(X0).
-inter_lockedcell_er_smaller_peg(X0) :- object(X0),not inter_lockedcell_er_smaller_peg(X0).
inter_lockedcell_er_below_peg(X0) :- lockedcell(X0),er_below_peg(X0).
-inter_lockedcell_er_below_peg(X0) :- object(X0),not inter_lockedcell_er_below_peg(X0).
inter_lockedcell_er_left_peg(X0) :- lockedcell(X0),er_left_peg(X0).
-inter_lockedcell_er_left_peg(X0) :- object(X0),not inter_lockedcell_er_left_peg(X0).
inter_lockedcell_er_overlap_peg(X0) :- lockedcell(X0),er_overlap_peg(X0).
-inter_lockedcell_er_overlap_peg(X0) :- object(X0),not inter_lockedcell_er_overlap_peg(X0).
inter_lockedcell_er_shape_peg(X0) :- lockedcell(X0),er_shape_peg(X0).
-inter_lockedcell_er_shape_peg(X0) :- object(X0),not inter_lockedcell_er_shape_peg(X0).
inter_lockedcell_er_smaller_disk(X0) :- lockedcell(X0),er_smaller_disk(X0).
-inter_lockedcell_er_smaller_disk(X0) :- object(X0),not inter_lockedcell_er_smaller_disk(X0).
inter_lockedcell_er_below_disk(X0) :- lockedcell(X0),er_below_disk(X0).
-inter_lockedcell_er_below_disk(X0) :- object(X0),not inter_lockedcell_er_below_disk(X0).
inter_lockedcell_er_left_disk(X0) :- lockedcell(X0),er_left_disk(X0).
-inter_lockedcell_er_left_disk(X0) :- object(X0),not inter_lockedcell_er_left_disk(X0).
inter_lockedcell_er_overlap_disk(X0) :- lockedcell(X0),er_overlap_disk(X0).
-inter_lockedcell_er_overlap_disk(X0) :- object(X0),not inter_lockedcell_er_overlap_disk(X0).
inter_lockedcell_er_shape_disk(X0) :- lockedcell(X0),er_shape_disk(X0).
-inter_lockedcell_er_shape_disk(X0) :- object(X0),not inter_lockedcell_er_shape_disk(X0).
inter_lockedcell_er_smaller_tile(X0) :- lockedcell(X0),er_smaller_tile(X0).
-inter_lockedcell_er_smaller_tile(X0) :- object(X0),not inter_lockedcell_er_smaller_tile(X0).
inter_lockedcell_er_below_tile(X0) :- lockedcell(X0),er_below_tile(X0).
-inter_lockedcell_er_below_tile(X0) :- object(X0),not inter_lockedcell_er_below_tile(X0).
inter_lockedcell_er_left_tile(X0) :- lockedcell(X0),er_left_tile(X0).
-inter_lockedcell_er_left_tile(X0) :- object(X0),not inter_lockedcell_er_left_tile(X0).
inter_lockedcell_er_overlap_tile(X0) :- lockedcell(X0),er_overlap_tile(X0).
-inter_lockedcell_er_overlap_tile(X0) :- object(X0),not inter_lockedcell_er_overlap_tile(X0).
inter_lockedcell_er_shape_tile(X0) :- lockedcell(X0),er_shape_tile(X0).
-inter_lockedcell_er_shape_tile(X0) :- object(X0),not inter_lockedcell_er_shape_tile(X0).
inter_sokoban_crate(X0) :- sokoban(X0),crate(X0).
-inter_sokoban_crate(X0) :- object(X0),not inter_sokoban_crate(X0).
inter_sokoban_key(X0) :- sokoban(X0),key(X0).
-inter_sokoban_key(X0) :- object(X0),not inter_sokoban_key(X0).
inter_sokoban_peg(X0) :- sokoban(X0),peg(X0).
-inter_sokoban_peg(X0) :- object(X0),not inter_sokoban_peg(X0).
inter_sokoban_disk(X0) :- sokoban(X0),disk(X0).
-inter_sokoban_disk(X0) :- object(X0),not inter_sokoban_disk(X0).
inter_sokoban_tile(X0) :- sokoban(X0),tile(X0).
-inter_sokoban_tile(X0) :- object(X0),not inter_sokoban_tile(X0).
inter_sokoban_er_smaller_verum(X0) :- sokoban(X0),er_smaller_verum(X0).
-inter_sokoban_er_smaller_verum(X0) :- object(X0),not inter_sokoban_er_smaller_verum(X0).
inter_sokoban_er_below_verum(X0) :- sokoban(X0),er_below_verum(X0).
-inter_sokoban_er_below_verum(X0) :- object(X0),not inter_sokoban_er_below_verum(X0).
inter_sokoban_er_left_verum(X0) :- sokoban(X0),er_left_verum(X0).
-inter_sokoban_er_left_verum(X0) :- object(X0),not inter_sokoban_er_left_verum(X0).
inter_sokoban_er_overlap_verum(X0) :- sokoban(X0),er_overlap_verum(X0).
-inter_sokoban_er_overlap_verum(X0) :- object(X0),not inter_sokoban_er_overlap_verum(X0).
inter_sokoban_er_shape_verum(X0) :- sokoban(X0),er_shape_verum(X0).
-inter_sokoban_er_shape_verum(X0) :- object(X0),not inter_sokoban_er_shape_verum(X0).
inter_sokoban_er_smaller_falsum(X0) :- sokoban(X0),er_smaller_falsum(X0).
-inter_sokoban_er_smaller_falsum(X0) :- object(X0),not inter_sokoban_er_smaller_falsum(X0).
inter_sokoban_er_below_falsum(X0) :- sokoban(X0),er_below_falsum(X0).
-inter_sokoban_er_below_falsum(X0) :- object(X0),not inter_sokoban_er_below_falsum(X0).
inter_sokoban_er_left_falsum(X0) :- sokoban(X0),er_left_falsum(X0).
-inter_sokoban_er_left_falsum(X0) :- object(X0),not inter_sokoban_er_left_falsum(X0).
inter_sokoban_er_overlap_falsum(X0) :- sokoban(X0),er_overlap_falsum(X0).
-inter_sokoban_er_overlap_falsum(X0) :- object(X0),not inter_sokoban_er_overlap_falsum(X0).
inter_sokoban_er_shape_falsum(X0) :- sokoban(X0),er_shape_falsum(X0).
-inter_sokoban_er_shape_falsum(X0) :- object(X0),not inter_sokoban_er_shape_falsum(X0).
inter_sokoban_er_smaller_robot(X0) :- sokoban(X0),er_smaller_robot(X0).
-inter_sokoban_er_smaller_robot(X0) :- object(X0),not inter_sokoban_er_smaller_robot(X0).
inter_sokoban_er_below_robot(X0) :- sokoban(X0),er_below_robot(X0).
-inter_sokoban_er_below_robot(X0) :- object(X0),not inter_sokoban_er_below_robot(X0).
inter_sokoban_er_left_robot(X0) :- sokoban(X0),er_left_robot(X0).
-inter_sokoban_er_left_robot(X0) :- object(X0),not inter_sokoban_er_left_robot(X0).
inter_sokoban_er_overlap_robot(X0) :- sokoban(X0),er_overlap_robot(X0).
-inter_sokoban_er_overlap_robot(X0) :- object(X0),not inter_sokoban_er_overlap_robot(X0).
inter_sokoban_er_shape_robot(X0) :- sokoban(X0),er_shape_robot(X0).
-inter_sokoban_er_shape_robot(X0) :- object(X0),not inter_sokoban_er_shape_robot(X0).
inter_sokoban_er_smaller_block(X0) :- sokoban(X0),er_smaller_block(X0).
-inter_sokoban_er_smaller_block(X0) :- object(X0),not inter_sokoban_er_smaller_block(X0).
inter_sokoban_er_below_block(X0) :- sokoban(X0),er_below_block(X0).
-inter_sokoban_er_below_block(X0) :- object(X0),not inter_sokoban_er_below_block(X0).
inter_sokoban_er_left_block(X0) :- sokoban(X0),er_left_block(X0).
-inter_sokoban_er_left_block(X0) :- object(X0),not inter_sokoban_er_left_block(X0).
inter_sokoban_er_overlap_block(X0) :- sokoban(X0),er_overlap_block(X0).
-inter_sokoban_er_overlap_block(X0) :- object(X0),not inter_sokoban_er_overlap_block(X0).
inter_sokoban_er_shape_block(X0) :- sokoban(X0),er_shape_block(X0).
-inter_sokoban_er_shape_block(X0) :- object(X0),not inter_sokoban_er_shape_block(X0).
inter_sokoban_er_smaller_table(X0) :- sokoban(X0),er_smaller_table(X0).
-inter_sokoban_er_smaller_table(X0) :- object(X0),not inter_sokoban_er_smaller_table(X0).
inter_sokoban_er_below_table(X0) :- sokoban(X0),er_below_table(X0).
-inter_sokoban_er_below_table(X0) :- object(X0),not inter_sokoban_er_below_table(X0).
inter_sokoban_er_left_table(X0) :- sokoban(X0),er_left_table(X0).
-inter_sokoban_er_left_table(X0) :- object(X0),not inter_sokoban_er_left_table(X0).
inter_sokoban_er_overlap_table(X0) :- sokoban(X0),er_overlap_table(X0).
-inter_sokoban_er_overlap_table(X0) :- object(X0),not inter_sokoban_er_overlap_table(X0).
inter_sokoban_er_shape_table(X0) :- sokoban(X0),er_shape_table(X0).
-inter_sokoban_er_shape_table(X0) :- object(X0),not inter_sokoban_er_shape_table(X0).
inter_sokoban_er_smaller_opencell(X0) :- sokoban(X0),er_smaller_opencell(X0).
-inter_sokoban_er_smaller_opencell(X0) :- object(X0),not inter_sokoban_er_smaller_opencell(X0).
inter_sokoban_er_below_opencell(X0) :- sokoban(X0),er_below_opencell(X0).
-inter_sokoban_er_below_opencell(X0) :- object(X0),not inter_sokoban_er_below_opencell(X0).
inter_sokoban_er_left_opencell(X0) :- sokoban(X0),er_left_opencell(X0).
-inter_sokoban_er_left_opencell(X0) :- object(X0),not inter_sokoban_er_left_opencell(X0).
inter_sokoban_er_overlap_opencell(X0) :- sokoban(X0),er_overlap_opencell(X0).
-inter_sokoban_er_overlap_opencell(X0) :- object(X0),not inter_sokoban_er_overlap_opencell(X0).
inter_sokoban_er_shape_opencell(X0) :- sokoban(X0),er_shape_opencell(X0).
-inter_sokoban_er_shape_opencell(X0) :- object(X0),not inter_sokoban_er_shape_opencell(X0).
inter_sokoban_er_smaller_lockedcell(X0) :- sokoban(X0),er_smaller_lockedcell(X0).
-inter_sokoban_er_smaller_lockedcell(X0) :- object(X0),not inter_sokoban_er_smaller_lockedcell(X0).
inter_sokoban_er_below_lockedcell(X0) :- sokoban(X0),er_below_lockedcell(X0).
-inter_sokoban_er_below_lockedcell(X0) :- object(X0),not inter_sokoban_er_below_lockedcell(X0).
inter_sokoban_er_left_lockedcell(X0) :- sokoban(X0),er_left_lockedcell(X0).
-inter_sokoban_er_left_lockedcell(X0) :- object(X0),not inter_sokoban_er_left_lockedcell(X0).
inter_sokoban_er_overlap_lockedcell(X0) :- sokoban(X0),er_overlap_lockedcell(X0).
-inter_sokoban_er_overlap_lockedcell(X0) :- object(X0),not inter_sokoban_er_overlap_lockedcell(X0).
inter_sokoban_er_shape_lockedcell(X0) :- sokoban(X0),er_shape_lockedcell(X0).
-inter_sokoban_er_shape_lockedcell(X0) :- object(X0),not inter_sokoban_er_shape_lockedcell(X0).
inter_sokoban_er_smaller_sokoban(X0) :- sokoban(X0),er_smaller_sokoban(X0).
-inter_sokoban_er_smaller_sokoban(X0) :- object(X0),not inter_sokoban_er_smaller_sokoban(X0).
inter_sokoban_er_below_sokoban(X0) :- sokoban(X0),er_below_sokoban(X0).
-inter_sokoban_er_below_sokoban(X0) :- object(X0),not inter_sokoban_er_below_sokoban(X0).
inter_sokoban_er_left_sokoban(X0) :- sokoban(X0),er_left_sokoban(X0).
-inter_sokoban_er_left_sokoban(X0) :- object(X0),not inter_sokoban_er_left_sokoban(X0).
inter_sokoban_er_overlap_sokoban(X0) :- sokoban(X0),er_overlap_sokoban(X0).
-inter_sokoban_er_overlap_sokoban(X0) :- object(X0),not inter_sokoban_er_overlap_sokoban(X0).
inter_sokoban_er_shape_sokoban(X0) :- sokoban(X0),er_shape_sokoban(X0).
-inter_sokoban_er_shape_sokoban(X0) :- object(X0),not inter_sokoban_er_shape_sokoban(X0).
inter_sokoban_er_smaller_crate(X0) :- sokoban(X0),er_smaller_crate(X0).
-inter_sokoban_er_smaller_crate(X0) :- object(X0),not inter_sokoban_er_smaller_crate(X0).
inter_sokoban_er_below_crate(X0) :- sokoban(X0),er_below_crate(X0).
-inter_sokoban_er_below_crate(X0) :- object(X0),not inter_sokoban_er_below_crate(X0).
inter_sokoban_er_left_crate(X0) :- sokoban(X0),er_left_crate(X0).
-inter_sokoban_er_left_crate(X0) :- object(X0),not inter_sokoban_er_left_crate(X0).
inter_sokoban_er_overlap_crate(X0) :- sokoban(X0),er_overlap_crate(X0).
-inter_sokoban_er_overlap_crate(X0) :- object(X0),not inter_sokoban_er_overlap_crate(X0).
inter_sokoban_er_shape_crate(X0) :- sokoban(X0),er_shape_crate(X0).
-inter_sokoban_er_shape_crate(X0) :- object(X0),not inter_sokoban_er_shape_crate(X0).
inter_sokoban_er_smaller_key(X0) :- sokoban(X0),er_smaller_key(X0).
-inter_sokoban_er_smaller_key(X0) :- object(X0),not inter_sokoban_er_smaller_key(X0).
inter_sokoban_er_below_key(X0) :- sokoban(X0),er_below_key(X0).
-inter_sokoban_er_below_key(X0) :- object(X0),not inter_sokoban_er_below_key(X0).
inter_sokoban_er_left_key(X0) :- sokoban(X0),er_left_key(X0).
-inter_sokoban_er_left_key(X0) :- object(X0),not inter_sokoban_er_left_key(X0).
inter_sokoban_er_overlap_key(X0) :- sokoban(X0),er_overlap_key(X0).
-inter_sokoban_er_overlap_key(X0) :- object(X0),not inter_sokoban_er_overlap_key(X0).
inter_sokoban_er_shape_key(X0) :- sokoban(X0),er_shape_key(X0).
-inter_sokoban_er_shape_key(X0) :- object(X0),not inter_sokoban_er_shape_key(X0).
inter_sokoban_er_smaller_peg(X0) :- sokoban(X0),er_smaller_peg(X0).
-inter_sokoban_er_smaller_peg(X0) :- object(X0),not inter_sokoban_er_smaller_peg(X0).
inter_sokoban_er_below_peg(X0) :- sokoban(X0),er_below_peg(X0).
-inter_sokoban_er_below_peg(X0) :- object(X0),not inter_sokoban_er_below_peg(X0).
inter_sokoban_er_left_peg(X0) :- sokoban(X0),er_left_peg(X0).
-inter_sokoban_er_left_peg(X0) :- object(X0),not inter_sokoban_er_left_peg(X0).
inter_sokoban_er_overlap_peg(X0) :- sokoban(X0),er_overlap_peg(X0).
-inter_sokoban_er_overlap_peg(X0) :- object(X0),not inter_sokoban_er_overlap_peg(X0).
inter_sokoban_er_shape_peg(X0) :- sokoban(X0),er_shape_peg(X0).
-inter_sokoban_er_shape_peg(X0) :- object(X0),not inter_sokoban_er_shape_peg(X0).
inter_sokoban_er_smaller_disk(X0) :- sokoban(X0),er_smaller_disk(X0).
-inter_sokoban_er_smaller_disk(X0) :- object(X0),not inter_sokoban_er_smaller_disk(X0).
inter_sokoban_er_below_disk(X0) :- sokoban(X0),er_below_disk(X0).
-inter_sokoban_er_below_disk(X0) :- object(X0),not inter_sokoban_er_below_disk(X0).
inter_sokoban_er_left_disk(X0) :- sokoban(X0),er_left_disk(X0).
-inter_sokoban_er_left_disk(X0) :- object(X0),not inter_sokoban_er_left_disk(X0).
inter_sokoban_er_overlap_disk(X0) :- sokoban(X0),er_overlap_disk(X0).
-inter_sokoban_er_overlap_disk(X0) :- object(X0),not inter_sokoban_er_overlap_disk(X0).
inter_sokoban_er_shape_disk(X0) :- sokoban(X0),er_shape_disk(X0).
-inter_sokoban_er_shape_disk(X0) :- object(X0),not inter_sokoban_er_shape_disk(X0).
inter_sokoban_er_smaller_tile(X0) :- sokoban(X0),er_smaller_tile(X0).
-inter_sokoban_er_smaller_tile(X0) :- object(X0),not inter_sokoban_er_smaller_tile(X0).
inter_sokoban_er_below_tile(X0) :- sokoban(X0),er_below_tile(X0).
-inter_sokoban_er_below_tile(X0) :- object(X0),not inter_sokoban_er_below_tile(X0).
inter_sokoban_er_left_tile(X0) :- sokoban(X0),er_left_tile(X0).
-inter_sokoban_er_left_tile(X0) :- object(X0),not inter_sokoban_er_left_tile(X0).
inter_sokoban_er_overlap_tile(X0) :- sokoban(X0),er_overlap_tile(X0).
-inter_sokoban_er_overlap_tile(X0) :- object(X0),not inter_sokoban_er_overlap_tile(X0).
inter_sokoban_er_shape_tile(X0) :- sokoban(X0),er_shape_tile(X0).
-inter_sokoban_er_shape_tile(X0) :- object(X0),not inter_sokoban_er_shape_tile(X0).
inter_crate_key(X0) :- crate(X0),key(X0).
-inter_crate_key(X0) :- object(X0),not inter_crate_key(X0).
inter_crate_peg(X0) :- crate(X0),peg(X0).
-inter_crate_peg(X0) :- object(X0),not inter_crate_peg(X0).
inter_crate_disk(X0) :- crate(X0),disk(X0).
-inter_crate_disk(X0) :- object(X0),not inter_crate_disk(X0).
inter_crate_tile(X0) :- crate(X0),tile(X0).
-inter_crate_tile(X0) :- object(X0),not inter_crate_tile(X0).
inter_crate_er_smaller_verum(X0) :- crate(X0),er_smaller_verum(X0).
-inter_crate_er_smaller_verum(X0) :- object(X0),not inter_crate_er_smaller_verum(X0).
inter_crate_er_below_verum(X0) :- crate(X0),er_below_verum(X0).
-inter_crate_er_below_verum(X0) :- object(X0),not inter_crate_er_below_verum(X0).
inter_crate_er_left_verum(X0) :- crate(X0),er_left_verum(X0).
-inter_crate_er_left_verum(X0) :- object(X0),not inter_crate_er_left_verum(X0).
inter_crate_er_overlap_verum(X0) :- crate(X0),er_overlap_verum(X0).
-inter_crate_er_overlap_verum(X0) :- object(X0),not inter_crate_er_overlap_verum(X0).
inter_crate_er_shape_verum(X0) :- crate(X0),er_shape_verum(X0).
-inter_crate_er_shape_verum(X0) :- object(X0),not inter_crate_er_shape_verum(X0).
inter_crate_er_smaller_falsum(X0) :- crate(X0),er_smaller_falsum(X0).
-inter_crate_er_smaller_falsum(X0) :- object(X0),not inter_crate_er_smaller_falsum(X0).
inter_crate_er_below_falsum(X0) :- crate(X0),er_below_falsum(X0).
-inter_crate_er_below_falsum(X0) :- object(X0),not inter_crate_er_below_falsum(X0).
inter_crate_er_left_falsum(X0) :- crate(X0),er_left_falsum(X0).
-inter_crate_er_left_falsum(X0) :- object(X0),not inter_crate_er_left_falsum(X0).
inter_crate_er_overlap_falsum(X0) :- crate(X0),er_overlap_falsum(X0).
-inter_crate_er_overlap_falsum(X0) :- object(X0),not inter_crate_er_overlap_falsum(X0).
inter_crate_er_shape_falsum(X0) :- crate(X0),er_shape_falsum(X0).
-inter_crate_er_shape_falsum(X0) :- object(X0),not inter_crate_er_shape_falsum(X0).
inter_crate_er_smaller_robot(X0) :- crate(X0),er_smaller_robot(X0).
-inter_crate_er_smaller_robot(X0) :- object(X0),not inter_crate_er_smaller_robot(X0).
inter_crate_er_below_robot(X0) :- crate(X0),er_below_robot(X0).
-inter_crate_er_below_robot(X0) :- object(X0),not inter_crate_er_below_robot(X0).
inter_crate_er_left_robot(X0) :- crate(X0),er_left_robot(X0).
-inter_crate_er_left_robot(X0) :- object(X0),not inter_crate_er_left_robot(X0).
inter_crate_er_overlap_robot(X0) :- crate(X0),er_overlap_robot(X0).
-inter_crate_er_overlap_robot(X0) :- object(X0),not inter_crate_er_overlap_robot(X0).
inter_crate_er_shape_robot(X0) :- crate(X0),er_shape_robot(X0).
-inter_crate_er_shape_robot(X0) :- object(X0),not inter_crate_er_shape_robot(X0).
inter_crate_er_smaller_block(X0) :- crate(X0),er_smaller_block(X0).
-inter_crate_er_smaller_block(X0) :- object(X0),not inter_crate_er_smaller_block(X0).
inter_crate_er_below_block(X0) :- crate(X0),er_below_block(X0).
-inter_crate_er_below_block(X0) :- object(X0),not inter_crate_er_below_block(X0).
inter_crate_er_left_block(X0) :- crate(X0),er_left_block(X0).
-inter_crate_er_left_block(X0) :- object(X0),not inter_crate_er_left_block(X0).
inter_crate_er_overlap_block(X0) :- crate(X0),er_overlap_block(X0).
-inter_crate_er_overlap_block(X0) :- object(X0),not inter_crate_er_overlap_block(X0).
inter_crate_er_shape_block(X0) :- crate(X0),er_shape_block(X0).
-inter_crate_er_shape_block(X0) :- object(X0),not inter_crate_er_shape_block(X0).
inter_crate_er_smaller_table(X0) :- crate(X0),er_smaller_table(X0).
-inter_crate_er_smaller_table(X0) :- object(X0),not inter_crate_er_smaller_table(X0).
inter_crate_er_below_table(X0) :- crate(X0),er_below_table(X0).
-inter_crate_er_below_table(X0) :- object(X0),not inter_crate_er_below_table(X0).
inter_crate_er_left_table(X0) :- crate(X0),er_left_table(X0).
-inter_crate_er_left_table(X0) :- object(X0),not inter_crate_er_left_table(X0).
inter_crate_er_overlap_table(X0) :- crate(X0),er_overlap_table(X0).
-inter_crate_er_overlap_table(X0) :- object(X0),not inter_crate_er_overlap_table(X0).
inter_crate_er_shape_table(X0) :- crate(X0),er_shape_table(X0).
-inter_crate_er_shape_table(X0) :- object(X0),not inter_crate_er_shape_table(X0).
inter_crate_er_smaller_opencell(X0) :- crate(X0),er_smaller_opencell(X0).
-inter_crate_er_smaller_opencell(X0) :- object(X0),not inter_crate_er_smaller_opencell(X0).
inter_crate_er_below_opencell(X0) :- crate(X0),er_below_opencell(X0).
-inter_crate_er_below_opencell(X0) :- object(X0),not inter_crate_er_below_opencell(X0).
inter_crate_er_left_opencell(X0) :- crate(X0),er_left_opencell(X0).
-inter_crate_er_left_opencell(X0) :- object(X0),not inter_crate_er_left_opencell(X0).
inter_crate_er_overlap_opencell(X0) :- crate(X0),er_overlap_opencell(X0).
-inter_crate_er_overlap_opencell(X0) :- object(X0),not inter_crate_er_overlap_opencell(X0).
inter_crate_er_shape_opencell(X0) :- crate(X0),er_shape_opencell(X0).
-inter_crate_er_shape_opencell(X0) :- object(X0),not inter_crate_er_shape_opencell(X0).
inter_crate_er_smaller_lockedcell(X0) :- crate(X0),er_smaller_lockedcell(X0).
-inter_crate_er_smaller_lockedcell(X0) :- object(X0),not inter_crate_er_smaller_lockedcell(X0).
inter_crate_er_below_lockedcell(X0) :- crate(X0),er_below_lockedcell(X0).
-inter_crate_er_below_lockedcell(X0) :- object(X0),not inter_crate_er_below_lockedcell(X0).
inter_crate_er_left_lockedcell(X0) :- crate(X0),er_left_lockedcell(X0).
-inter_crate_er_left_lockedcell(X0) :- object(X0),not inter_crate_er_left_lockedcell(X0).
inter_crate_er_overlap_lockedcell(X0) :- crate(X0),er_overlap_lockedcell(X0).
-inter_crate_er_overlap_lockedcell(X0) :- object(X0),not inter_crate_er_overlap_lockedcell(X0).
inter_crate_er_shape_lockedcell(X0) :- crate(X0),er_shape_lockedcell(X0).
-inter_crate_er_shape_lockedcell(X0) :- object(X0),not inter_crate_er_shape_lockedcell(X0).
inter_crate_er_smaller_sokoban(X0) :- crate(X0),er_smaller_sokoban(X0).
-inter_crate_er_smaller_sokoban(X0) :- object(X0),not inter_crate_er_smaller_sokoban(X0).
inter_crate_er_below_sokoban(X0) :- crate(X0),er_below_sokoban(X0).
-inter_crate_er_below_sokoban(X0) :- object(X0),not inter_crate_er_below_sokoban(X0).
inter_crate_er_left_sokoban(X0) :- crate(X0),er_left_sokoban(X0).
-inter_crate_er_left_sokoban(X0) :- object(X0),not inter_crate_er_left_sokoban(X0).
inter_crate_er_overlap_sokoban(X0) :- crate(X0),er_overlap_sokoban(X0).
-inter_crate_er_overlap_sokoban(X0) :- object(X0),not inter_crate_er_overlap_sokoban(X0).
inter_crate_er_shape_sokoban(X0) :- crate(X0),er_shape_sokoban(X0).
-inter_crate_er_shape_sokoban(X0) :- object(X0),not inter_crate_er_shape_sokoban(X0).
inter_crate_er_smaller_crate(X0) :- crate(X0),er_smaller_crate(X0).
-inter_crate_er_smaller_crate(X0) :- object(X0),not inter_crate_er_smaller_crate(X0).
inter_crate_er_below_crate(X0) :- crate(X0),er_below_crate(X0).
-inter_crate_er_below_crate(X0) :- object(X0),not inter_crate_er_below_crate(X0).
inter_crate_er_left_crate(X0) :- crate(X0),er_left_crate(X0).
-inter_crate_er_left_crate(X0) :- object(X0),not inter_crate_er_left_crate(X0).
inter_crate_er_overlap_crate(X0) :- crate(X0),er_overlap_crate(X0).
-inter_crate_er_overlap_crate(X0) :- object(X0),not inter_crate_er_overlap_crate(X0).
inter_crate_er_shape_crate(X0) :- crate(X0),er_shape_crate(X0).
-inter_crate_er_shape_crate(X0) :- object(X0),not inter_crate_er_shape_crate(X0).
inter_crate_er_smaller_key(X0) :- crate(X0),er_smaller_key(X0).
-inter_crate_er_smaller_key(X0) :- object(X0),not inter_crate_er_smaller_key(X0).
inter_crate_er_below_key(X0) :- crate(X0),er_below_key(X0).
-inter_crate_er_below_key(X0) :- object(X0),not inter_crate_er_below_key(X0).
inter_crate_er_left_key(X0) :- crate(X0),er_left_key(X0).
-inter_crate_er_left_key(X0) :- object(X0),not inter_crate_er_left_key(X0).
inter_crate_er_overlap_key(X0) :- crate(X0),er_overlap_key(X0).
-inter_crate_er_overlap_key(X0) :- object(X0),not inter_crate_er_overlap_key(X0).
inter_crate_er_shape_key(X0) :- crate(X0),er_shape_key(X0).
-inter_crate_er_shape_key(X0) :- object(X0),not inter_crate_er_shape_key(X0).
inter_crate_er_smaller_peg(X0) :- crate(X0),er_smaller_peg(X0).
-inter_crate_er_smaller_peg(X0) :- object(X0),not inter_crate_er_smaller_peg(X0).
inter_crate_er_below_peg(X0) :- crate(X0),er_below_peg(X0).
-inter_crate_er_below_peg(X0) :- object(X0),not inter_crate_er_below_peg(X0).
inter_crate_er_left_peg(X0) :- crate(X0),er_left_peg(X0).
-inter_crate_er_left_peg(X0) :- object(X0),not inter_crate_er_left_peg(X0).
inter_crate_er_overlap_peg(X0) :- crate(X0),er_overlap_peg(X0).
-inter_crate_er_overlap_peg(X0) :- object(X0),not inter_crate_er_overlap_peg(X0).
inter_crate_er_shape_peg(X0) :- crate(X0),er_shape_peg(X0).
-inter_crate_er_shape_peg(X0) :- object(X0),not inter_crate_er_shape_peg(X0).
inter_crate_er_smaller_disk(X0) :- crate(X0),er_smaller_disk(X0).
-inter_crate_er_smaller_disk(X0) :- object(X0),not inter_crate_er_smaller_disk(X0).
inter_crate_er_below_disk(X0) :- crate(X0),er_below_disk(X0).
-inter_crate_er_below_disk(X0) :- object(X0),not inter_crate_er_below_disk(X0).
inter_crate_er_left_disk(X0) :- crate(X0),er_left_disk(X0).
-inter_crate_er_left_disk(X0) :- object(X0),not inter_crate_er_left_disk(X0).
inter_crate_er_overlap_disk(X0) :- crate(X0),er_overlap_disk(X0).
-inter_crate_er_overlap_disk(X0) :- object(X0),not inter_crate_er_overlap_disk(X0).
inter_crate_er_shape_disk(X0) :- crate(X0),er_shape_disk(X0).
-inter_crate_er_shape_disk(X0) :- object(X0),not inter_crate_er_shape_disk(X0).
inter_crate_er_smaller_tile(X0) :- crate(X0),er_smaller_tile(X0).
-inter_crate_er_smaller_tile(X0) :- object(X0),not inter_crate_er_smaller_tile(X0).
inter_crate_er_below_tile(X0) :- crate(X0),er_below_tile(X0).
-inter_crate_er_below_tile(X0) :- object(X0),not inter_crate_er_below_tile(X0).
inter_crate_er_left_tile(X0) :- crate(X0),er_left_tile(X0).
-inter_crate_er_left_tile(X0) :- object(X0),not inter_crate_er_left_tile(X0).
inter_crate_er_overlap_tile(X0) :- crate(X0),er_overlap_tile(X0).
-inter_crate_er_overlap_tile(X0) :- object(X0),not inter_crate_er_overlap_tile(X0).
inter_crate_er_shape_tile(X0) :- crate(X0),er_shape_tile(X0).
-inter_crate_er_shape_tile(X0) :- object(X0),not inter_crate_er_shape_tile(X0).
inter_key_peg(X0) :- key(X0),peg(X0).
-inter_key_peg(X0) :- object(X0),not inter_key_peg(X0).
inter_key_disk(X0) :- key(X0),disk(X0).
-inter_key_disk(X0) :- object(X0),not inter_key_disk(X0).
inter_key_tile(X0) :- key(X0),tile(X0).
-inter_key_tile(X0) :- object(X0),not inter_key_tile(X0).
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
inter_key_er_smaller_robot(X0) :- key(X0),er_smaller_robot(X0).
-inter_key_er_smaller_robot(X0) :- object(X0),not inter_key_er_smaller_robot(X0).
inter_key_er_below_robot(X0) :- key(X0),er_below_robot(X0).
-inter_key_er_below_robot(X0) :- object(X0),not inter_key_er_below_robot(X0).
inter_key_er_left_robot(X0) :- key(X0),er_left_robot(X0).
-inter_key_er_left_robot(X0) :- object(X0),not inter_key_er_left_robot(X0).
inter_key_er_overlap_robot(X0) :- key(X0),er_overlap_robot(X0).
-inter_key_er_overlap_robot(X0) :- object(X0),not inter_key_er_overlap_robot(X0).
inter_key_er_shape_robot(X0) :- key(X0),er_shape_robot(X0).
-inter_key_er_shape_robot(X0) :- object(X0),not inter_key_er_shape_robot(X0).
inter_key_er_smaller_block(X0) :- key(X0),er_smaller_block(X0).
-inter_key_er_smaller_block(X0) :- object(X0),not inter_key_er_smaller_block(X0).
inter_key_er_below_block(X0) :- key(X0),er_below_block(X0).
-inter_key_er_below_block(X0) :- object(X0),not inter_key_er_below_block(X0).
inter_key_er_left_block(X0) :- key(X0),er_left_block(X0).
-inter_key_er_left_block(X0) :- object(X0),not inter_key_er_left_block(X0).
inter_key_er_overlap_block(X0) :- key(X0),er_overlap_block(X0).
-inter_key_er_overlap_block(X0) :- object(X0),not inter_key_er_overlap_block(X0).
inter_key_er_shape_block(X0) :- key(X0),er_shape_block(X0).
-inter_key_er_shape_block(X0) :- object(X0),not inter_key_er_shape_block(X0).
inter_key_er_smaller_table(X0) :- key(X0),er_smaller_table(X0).
-inter_key_er_smaller_table(X0) :- object(X0),not inter_key_er_smaller_table(X0).
inter_key_er_below_table(X0) :- key(X0),er_below_table(X0).
-inter_key_er_below_table(X0) :- object(X0),not inter_key_er_below_table(X0).
inter_key_er_left_table(X0) :- key(X0),er_left_table(X0).
-inter_key_er_left_table(X0) :- object(X0),not inter_key_er_left_table(X0).
inter_key_er_overlap_table(X0) :- key(X0),er_overlap_table(X0).
-inter_key_er_overlap_table(X0) :- object(X0),not inter_key_er_overlap_table(X0).
inter_key_er_shape_table(X0) :- key(X0),er_shape_table(X0).
-inter_key_er_shape_table(X0) :- object(X0),not inter_key_er_shape_table(X0).
inter_key_er_smaller_opencell(X0) :- key(X0),er_smaller_opencell(X0).
-inter_key_er_smaller_opencell(X0) :- object(X0),not inter_key_er_smaller_opencell(X0).
inter_key_er_below_opencell(X0) :- key(X0),er_below_opencell(X0).
-inter_key_er_below_opencell(X0) :- object(X0),not inter_key_er_below_opencell(X0).
inter_key_er_left_opencell(X0) :- key(X0),er_left_opencell(X0).
-inter_key_er_left_opencell(X0) :- object(X0),not inter_key_er_left_opencell(X0).
inter_key_er_overlap_opencell(X0) :- key(X0),er_overlap_opencell(X0).
-inter_key_er_overlap_opencell(X0) :- object(X0),not inter_key_er_overlap_opencell(X0).
inter_key_er_shape_opencell(X0) :- key(X0),er_shape_opencell(X0).
-inter_key_er_shape_opencell(X0) :- object(X0),not inter_key_er_shape_opencell(X0).
inter_key_er_smaller_lockedcell(X0) :- key(X0),er_smaller_lockedcell(X0).
-inter_key_er_smaller_lockedcell(X0) :- object(X0),not inter_key_er_smaller_lockedcell(X0).
inter_key_er_below_lockedcell(X0) :- key(X0),er_below_lockedcell(X0).
-inter_key_er_below_lockedcell(X0) :- object(X0),not inter_key_er_below_lockedcell(X0).
inter_key_er_left_lockedcell(X0) :- key(X0),er_left_lockedcell(X0).
-inter_key_er_left_lockedcell(X0) :- object(X0),not inter_key_er_left_lockedcell(X0).
inter_key_er_overlap_lockedcell(X0) :- key(X0),er_overlap_lockedcell(X0).
-inter_key_er_overlap_lockedcell(X0) :- object(X0),not inter_key_er_overlap_lockedcell(X0).
inter_key_er_shape_lockedcell(X0) :- key(X0),er_shape_lockedcell(X0).
-inter_key_er_shape_lockedcell(X0) :- object(X0),not inter_key_er_shape_lockedcell(X0).
inter_key_er_smaller_sokoban(X0) :- key(X0),er_smaller_sokoban(X0).
-inter_key_er_smaller_sokoban(X0) :- object(X0),not inter_key_er_smaller_sokoban(X0).
inter_key_er_below_sokoban(X0) :- key(X0),er_below_sokoban(X0).
-inter_key_er_below_sokoban(X0) :- object(X0),not inter_key_er_below_sokoban(X0).
inter_key_er_left_sokoban(X0) :- key(X0),er_left_sokoban(X0).
-inter_key_er_left_sokoban(X0) :- object(X0),not inter_key_er_left_sokoban(X0).
inter_key_er_overlap_sokoban(X0) :- key(X0),er_overlap_sokoban(X0).
-inter_key_er_overlap_sokoban(X0) :- object(X0),not inter_key_er_overlap_sokoban(X0).
inter_key_er_shape_sokoban(X0) :- key(X0),er_shape_sokoban(X0).
-inter_key_er_shape_sokoban(X0) :- object(X0),not inter_key_er_shape_sokoban(X0).
inter_key_er_smaller_crate(X0) :- key(X0),er_smaller_crate(X0).
-inter_key_er_smaller_crate(X0) :- object(X0),not inter_key_er_smaller_crate(X0).
inter_key_er_below_crate(X0) :- key(X0),er_below_crate(X0).
-inter_key_er_below_crate(X0) :- object(X0),not inter_key_er_below_crate(X0).
inter_key_er_left_crate(X0) :- key(X0),er_left_crate(X0).
-inter_key_er_left_crate(X0) :- object(X0),not inter_key_er_left_crate(X0).
inter_key_er_overlap_crate(X0) :- key(X0),er_overlap_crate(X0).
-inter_key_er_overlap_crate(X0) :- object(X0),not inter_key_er_overlap_crate(X0).
inter_key_er_shape_crate(X0) :- key(X0),er_shape_crate(X0).
-inter_key_er_shape_crate(X0) :- object(X0),not inter_key_er_shape_crate(X0).
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
inter_key_er_smaller_tile(X0) :- key(X0),er_smaller_tile(X0).
-inter_key_er_smaller_tile(X0) :- object(X0),not inter_key_er_smaller_tile(X0).
inter_key_er_below_tile(X0) :- key(X0),er_below_tile(X0).
-inter_key_er_below_tile(X0) :- object(X0),not inter_key_er_below_tile(X0).
inter_key_er_left_tile(X0) :- key(X0),er_left_tile(X0).
-inter_key_er_left_tile(X0) :- object(X0),not inter_key_er_left_tile(X0).
inter_key_er_overlap_tile(X0) :- key(X0),er_overlap_tile(X0).
-inter_key_er_overlap_tile(X0) :- object(X0),not inter_key_er_overlap_tile(X0).
inter_key_er_shape_tile(X0) :- key(X0),er_shape_tile(X0).
-inter_key_er_shape_tile(X0) :- object(X0),not inter_key_er_shape_tile(X0).
inter_peg_disk(X0) :- peg(X0),disk(X0).
-inter_peg_disk(X0) :- object(X0),not inter_peg_disk(X0).
inter_peg_tile(X0) :- peg(X0),tile(X0).
-inter_peg_tile(X0) :- object(X0),not inter_peg_tile(X0).
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
inter_peg_er_smaller_robot(X0) :- peg(X0),er_smaller_robot(X0).
-inter_peg_er_smaller_robot(X0) :- object(X0),not inter_peg_er_smaller_robot(X0).
inter_peg_er_below_robot(X0) :- peg(X0),er_below_robot(X0).
-inter_peg_er_below_robot(X0) :- object(X0),not inter_peg_er_below_robot(X0).
inter_peg_er_left_robot(X0) :- peg(X0),er_left_robot(X0).
-inter_peg_er_left_robot(X0) :- object(X0),not inter_peg_er_left_robot(X0).
inter_peg_er_overlap_robot(X0) :- peg(X0),er_overlap_robot(X0).
-inter_peg_er_overlap_robot(X0) :- object(X0),not inter_peg_er_overlap_robot(X0).
inter_peg_er_shape_robot(X0) :- peg(X0),er_shape_robot(X0).
-inter_peg_er_shape_robot(X0) :- object(X0),not inter_peg_er_shape_robot(X0).
inter_peg_er_smaller_block(X0) :- peg(X0),er_smaller_block(X0).
-inter_peg_er_smaller_block(X0) :- object(X0),not inter_peg_er_smaller_block(X0).
inter_peg_er_below_block(X0) :- peg(X0),er_below_block(X0).
-inter_peg_er_below_block(X0) :- object(X0),not inter_peg_er_below_block(X0).
inter_peg_er_left_block(X0) :- peg(X0),er_left_block(X0).
-inter_peg_er_left_block(X0) :- object(X0),not inter_peg_er_left_block(X0).
inter_peg_er_overlap_block(X0) :- peg(X0),er_overlap_block(X0).
-inter_peg_er_overlap_block(X0) :- object(X0),not inter_peg_er_overlap_block(X0).
inter_peg_er_shape_block(X0) :- peg(X0),er_shape_block(X0).
-inter_peg_er_shape_block(X0) :- object(X0),not inter_peg_er_shape_block(X0).
inter_peg_er_smaller_table(X0) :- peg(X0),er_smaller_table(X0).
-inter_peg_er_smaller_table(X0) :- object(X0),not inter_peg_er_smaller_table(X0).
inter_peg_er_below_table(X0) :- peg(X0),er_below_table(X0).
-inter_peg_er_below_table(X0) :- object(X0),not inter_peg_er_below_table(X0).
inter_peg_er_left_table(X0) :- peg(X0),er_left_table(X0).
-inter_peg_er_left_table(X0) :- object(X0),not inter_peg_er_left_table(X0).
inter_peg_er_overlap_table(X0) :- peg(X0),er_overlap_table(X0).
-inter_peg_er_overlap_table(X0) :- object(X0),not inter_peg_er_overlap_table(X0).
inter_peg_er_shape_table(X0) :- peg(X0),er_shape_table(X0).
-inter_peg_er_shape_table(X0) :- object(X0),not inter_peg_er_shape_table(X0).
inter_peg_er_smaller_opencell(X0) :- peg(X0),er_smaller_opencell(X0).
-inter_peg_er_smaller_opencell(X0) :- object(X0),not inter_peg_er_smaller_opencell(X0).
inter_peg_er_below_opencell(X0) :- peg(X0),er_below_opencell(X0).
-inter_peg_er_below_opencell(X0) :- object(X0),not inter_peg_er_below_opencell(X0).
inter_peg_er_left_opencell(X0) :- peg(X0),er_left_opencell(X0).
-inter_peg_er_left_opencell(X0) :- object(X0),not inter_peg_er_left_opencell(X0).
inter_peg_er_overlap_opencell(X0) :- peg(X0),er_overlap_opencell(X0).
-inter_peg_er_overlap_opencell(X0) :- object(X0),not inter_peg_er_overlap_opencell(X0).
inter_peg_er_shape_opencell(X0) :- peg(X0),er_shape_opencell(X0).
-inter_peg_er_shape_opencell(X0) :- object(X0),not inter_peg_er_shape_opencell(X0).
inter_peg_er_smaller_lockedcell(X0) :- peg(X0),er_smaller_lockedcell(X0).
-inter_peg_er_smaller_lockedcell(X0) :- object(X0),not inter_peg_er_smaller_lockedcell(X0).
inter_peg_er_below_lockedcell(X0) :- peg(X0),er_below_lockedcell(X0).
-inter_peg_er_below_lockedcell(X0) :- object(X0),not inter_peg_er_below_lockedcell(X0).
inter_peg_er_left_lockedcell(X0) :- peg(X0),er_left_lockedcell(X0).
-inter_peg_er_left_lockedcell(X0) :- object(X0),not inter_peg_er_left_lockedcell(X0).
inter_peg_er_overlap_lockedcell(X0) :- peg(X0),er_overlap_lockedcell(X0).
-inter_peg_er_overlap_lockedcell(X0) :- object(X0),not inter_peg_er_overlap_lockedcell(X0).
inter_peg_er_shape_lockedcell(X0) :- peg(X0),er_shape_lockedcell(X0).
-inter_peg_er_shape_lockedcell(X0) :- object(X0),not inter_peg_er_shape_lockedcell(X0).
inter_peg_er_smaller_sokoban(X0) :- peg(X0),er_smaller_sokoban(X0).
-inter_peg_er_smaller_sokoban(X0) :- object(X0),not inter_peg_er_smaller_sokoban(X0).
inter_peg_er_below_sokoban(X0) :- peg(X0),er_below_sokoban(X0).
-inter_peg_er_below_sokoban(X0) :- object(X0),not inter_peg_er_below_sokoban(X0).
inter_peg_er_left_sokoban(X0) :- peg(X0),er_left_sokoban(X0).
-inter_peg_er_left_sokoban(X0) :- object(X0),not inter_peg_er_left_sokoban(X0).
inter_peg_er_overlap_sokoban(X0) :- peg(X0),er_overlap_sokoban(X0).
-inter_peg_er_overlap_sokoban(X0) :- object(X0),not inter_peg_er_overlap_sokoban(X0).
inter_peg_er_shape_sokoban(X0) :- peg(X0),er_shape_sokoban(X0).
-inter_peg_er_shape_sokoban(X0) :- object(X0),not inter_peg_er_shape_sokoban(X0).
inter_peg_er_smaller_crate(X0) :- peg(X0),er_smaller_crate(X0).
-inter_peg_er_smaller_crate(X0) :- object(X0),not inter_peg_er_smaller_crate(X0).
inter_peg_er_below_crate(X0) :- peg(X0),er_below_crate(X0).
-inter_peg_er_below_crate(X0) :- object(X0),not inter_peg_er_below_crate(X0).
inter_peg_er_left_crate(X0) :- peg(X0),er_left_crate(X0).
-inter_peg_er_left_crate(X0) :- object(X0),not inter_peg_er_left_crate(X0).
inter_peg_er_overlap_crate(X0) :- peg(X0),er_overlap_crate(X0).
-inter_peg_er_overlap_crate(X0) :- object(X0),not inter_peg_er_overlap_crate(X0).
inter_peg_er_shape_crate(X0) :- peg(X0),er_shape_crate(X0).
-inter_peg_er_shape_crate(X0) :- object(X0),not inter_peg_er_shape_crate(X0).
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
inter_peg_er_smaller_tile(X0) :- peg(X0),er_smaller_tile(X0).
-inter_peg_er_smaller_tile(X0) :- object(X0),not inter_peg_er_smaller_tile(X0).
inter_peg_er_below_tile(X0) :- peg(X0),er_below_tile(X0).
-inter_peg_er_below_tile(X0) :- object(X0),not inter_peg_er_below_tile(X0).
inter_peg_er_left_tile(X0) :- peg(X0),er_left_tile(X0).
-inter_peg_er_left_tile(X0) :- object(X0),not inter_peg_er_left_tile(X0).
inter_peg_er_overlap_tile(X0) :- peg(X0),er_overlap_tile(X0).
-inter_peg_er_overlap_tile(X0) :- object(X0),not inter_peg_er_overlap_tile(X0).
inter_peg_er_shape_tile(X0) :- peg(X0),er_shape_tile(X0).
-inter_peg_er_shape_tile(X0) :- object(X0),not inter_peg_er_shape_tile(X0).
inter_disk_tile(X0) :- disk(X0),tile(X0).
-inter_disk_tile(X0) :- object(X0),not inter_disk_tile(X0).
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
inter_disk_er_smaller_robot(X0) :- disk(X0),er_smaller_robot(X0).
-inter_disk_er_smaller_robot(X0) :- object(X0),not inter_disk_er_smaller_robot(X0).
inter_disk_er_below_robot(X0) :- disk(X0),er_below_robot(X0).
-inter_disk_er_below_robot(X0) :- object(X0),not inter_disk_er_below_robot(X0).
inter_disk_er_left_robot(X0) :- disk(X0),er_left_robot(X0).
-inter_disk_er_left_robot(X0) :- object(X0),not inter_disk_er_left_robot(X0).
inter_disk_er_overlap_robot(X0) :- disk(X0),er_overlap_robot(X0).
-inter_disk_er_overlap_robot(X0) :- object(X0),not inter_disk_er_overlap_robot(X0).
inter_disk_er_shape_robot(X0) :- disk(X0),er_shape_robot(X0).
-inter_disk_er_shape_robot(X0) :- object(X0),not inter_disk_er_shape_robot(X0).
inter_disk_er_smaller_block(X0) :- disk(X0),er_smaller_block(X0).
-inter_disk_er_smaller_block(X0) :- object(X0),not inter_disk_er_smaller_block(X0).
inter_disk_er_below_block(X0) :- disk(X0),er_below_block(X0).
-inter_disk_er_below_block(X0) :- object(X0),not inter_disk_er_below_block(X0).
inter_disk_er_left_block(X0) :- disk(X0),er_left_block(X0).
-inter_disk_er_left_block(X0) :- object(X0),not inter_disk_er_left_block(X0).
inter_disk_er_overlap_block(X0) :- disk(X0),er_overlap_block(X0).
-inter_disk_er_overlap_block(X0) :- object(X0),not inter_disk_er_overlap_block(X0).
inter_disk_er_shape_block(X0) :- disk(X0),er_shape_block(X0).
-inter_disk_er_shape_block(X0) :- object(X0),not inter_disk_er_shape_block(X0).
inter_disk_er_smaller_table(X0) :- disk(X0),er_smaller_table(X0).
-inter_disk_er_smaller_table(X0) :- object(X0),not inter_disk_er_smaller_table(X0).
inter_disk_er_below_table(X0) :- disk(X0),er_below_table(X0).
-inter_disk_er_below_table(X0) :- object(X0),not inter_disk_er_below_table(X0).
inter_disk_er_left_table(X0) :- disk(X0),er_left_table(X0).
-inter_disk_er_left_table(X0) :- object(X0),not inter_disk_er_left_table(X0).
inter_disk_er_overlap_table(X0) :- disk(X0),er_overlap_table(X0).
-inter_disk_er_overlap_table(X0) :- object(X0),not inter_disk_er_overlap_table(X0).
inter_disk_er_shape_table(X0) :- disk(X0),er_shape_table(X0).
-inter_disk_er_shape_table(X0) :- object(X0),not inter_disk_er_shape_table(X0).
inter_disk_er_smaller_opencell(X0) :- disk(X0),er_smaller_opencell(X0).
-inter_disk_er_smaller_opencell(X0) :- object(X0),not inter_disk_er_smaller_opencell(X0).
inter_disk_er_below_opencell(X0) :- disk(X0),er_below_opencell(X0).
-inter_disk_er_below_opencell(X0) :- object(X0),not inter_disk_er_below_opencell(X0).
inter_disk_er_left_opencell(X0) :- disk(X0),er_left_opencell(X0).
-inter_disk_er_left_opencell(X0) :- object(X0),not inter_disk_er_left_opencell(X0).
inter_disk_er_overlap_opencell(X0) :- disk(X0),er_overlap_opencell(X0).
-inter_disk_er_overlap_opencell(X0) :- object(X0),not inter_disk_er_overlap_opencell(X0).
inter_disk_er_shape_opencell(X0) :- disk(X0),er_shape_opencell(X0).
-inter_disk_er_shape_opencell(X0) :- object(X0),not inter_disk_er_shape_opencell(X0).
inter_disk_er_smaller_lockedcell(X0) :- disk(X0),er_smaller_lockedcell(X0).
-inter_disk_er_smaller_lockedcell(X0) :- object(X0),not inter_disk_er_smaller_lockedcell(X0).
inter_disk_er_below_lockedcell(X0) :- disk(X0),er_below_lockedcell(X0).
-inter_disk_er_below_lockedcell(X0) :- object(X0),not inter_disk_er_below_lockedcell(X0).
inter_disk_er_left_lockedcell(X0) :- disk(X0),er_left_lockedcell(X0).
-inter_disk_er_left_lockedcell(X0) :- object(X0),not inter_disk_er_left_lockedcell(X0).
inter_disk_er_overlap_lockedcell(X0) :- disk(X0),er_overlap_lockedcell(X0).
-inter_disk_er_overlap_lockedcell(X0) :- object(X0),not inter_disk_er_overlap_lockedcell(X0).
inter_disk_er_shape_lockedcell(X0) :- disk(X0),er_shape_lockedcell(X0).
-inter_disk_er_shape_lockedcell(X0) :- object(X0),not inter_disk_er_shape_lockedcell(X0).
inter_disk_er_smaller_sokoban(X0) :- disk(X0),er_smaller_sokoban(X0).
-inter_disk_er_smaller_sokoban(X0) :- object(X0),not inter_disk_er_smaller_sokoban(X0).
inter_disk_er_below_sokoban(X0) :- disk(X0),er_below_sokoban(X0).
-inter_disk_er_below_sokoban(X0) :- object(X0),not inter_disk_er_below_sokoban(X0).
inter_disk_er_left_sokoban(X0) :- disk(X0),er_left_sokoban(X0).
-inter_disk_er_left_sokoban(X0) :- object(X0),not inter_disk_er_left_sokoban(X0).
inter_disk_er_overlap_sokoban(X0) :- disk(X0),er_overlap_sokoban(X0).
-inter_disk_er_overlap_sokoban(X0) :- object(X0),not inter_disk_er_overlap_sokoban(X0).
inter_disk_er_shape_sokoban(X0) :- disk(X0),er_shape_sokoban(X0).
-inter_disk_er_shape_sokoban(X0) :- object(X0),not inter_disk_er_shape_sokoban(X0).
inter_disk_er_smaller_crate(X0) :- disk(X0),er_smaller_crate(X0).
-inter_disk_er_smaller_crate(X0) :- object(X0),not inter_disk_er_smaller_crate(X0).
inter_disk_er_below_crate(X0) :- disk(X0),er_below_crate(X0).
-inter_disk_er_below_crate(X0) :- object(X0),not inter_disk_er_below_crate(X0).
inter_disk_er_left_crate(X0) :- disk(X0),er_left_crate(X0).
-inter_disk_er_left_crate(X0) :- object(X0),not inter_disk_er_left_crate(X0).
inter_disk_er_overlap_crate(X0) :- disk(X0),er_overlap_crate(X0).
-inter_disk_er_overlap_crate(X0) :- object(X0),not inter_disk_er_overlap_crate(X0).
inter_disk_er_shape_crate(X0) :- disk(X0),er_shape_crate(X0).
-inter_disk_er_shape_crate(X0) :- object(X0),not inter_disk_er_shape_crate(X0).
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
inter_disk_er_smaller_tile(X0) :- disk(X0),er_smaller_tile(X0).
-inter_disk_er_smaller_tile(X0) :- object(X0),not inter_disk_er_smaller_tile(X0).
inter_disk_er_below_tile(X0) :- disk(X0),er_below_tile(X0).
-inter_disk_er_below_tile(X0) :- object(X0),not inter_disk_er_below_tile(X0).
inter_disk_er_left_tile(X0) :- disk(X0),er_left_tile(X0).
-inter_disk_er_left_tile(X0) :- object(X0),not inter_disk_er_left_tile(X0).
inter_disk_er_overlap_tile(X0) :- disk(X0),er_overlap_tile(X0).
-inter_disk_er_overlap_tile(X0) :- object(X0),not inter_disk_er_overlap_tile(X0).
inter_disk_er_shape_tile(X0) :- disk(X0),er_shape_tile(X0).
-inter_disk_er_shape_tile(X0) :- object(X0),not inter_disk_er_shape_tile(X0).
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
inter_tile_er_smaller_robot(X0) :- tile(X0),er_smaller_robot(X0).
-inter_tile_er_smaller_robot(X0) :- object(X0),not inter_tile_er_smaller_robot(X0).
inter_tile_er_below_robot(X0) :- tile(X0),er_below_robot(X0).
-inter_tile_er_below_robot(X0) :- object(X0),not inter_tile_er_below_robot(X0).
inter_tile_er_left_robot(X0) :- tile(X0),er_left_robot(X0).
-inter_tile_er_left_robot(X0) :- object(X0),not inter_tile_er_left_robot(X0).
inter_tile_er_overlap_robot(X0) :- tile(X0),er_overlap_robot(X0).
-inter_tile_er_overlap_robot(X0) :- object(X0),not inter_tile_er_overlap_robot(X0).
inter_tile_er_shape_robot(X0) :- tile(X0),er_shape_robot(X0).
-inter_tile_er_shape_robot(X0) :- object(X0),not inter_tile_er_shape_robot(X0).
inter_tile_er_smaller_block(X0) :- tile(X0),er_smaller_block(X0).
-inter_tile_er_smaller_block(X0) :- object(X0),not inter_tile_er_smaller_block(X0).
inter_tile_er_below_block(X0) :- tile(X0),er_below_block(X0).
-inter_tile_er_below_block(X0) :- object(X0),not inter_tile_er_below_block(X0).
inter_tile_er_left_block(X0) :- tile(X0),er_left_block(X0).
-inter_tile_er_left_block(X0) :- object(X0),not inter_tile_er_left_block(X0).
inter_tile_er_overlap_block(X0) :- tile(X0),er_overlap_block(X0).
-inter_tile_er_overlap_block(X0) :- object(X0),not inter_tile_er_overlap_block(X0).
inter_tile_er_shape_block(X0) :- tile(X0),er_shape_block(X0).
-inter_tile_er_shape_block(X0) :- object(X0),not inter_tile_er_shape_block(X0).
inter_tile_er_smaller_table(X0) :- tile(X0),er_smaller_table(X0).
-inter_tile_er_smaller_table(X0) :- object(X0),not inter_tile_er_smaller_table(X0).
inter_tile_er_below_table(X0) :- tile(X0),er_below_table(X0).
-inter_tile_er_below_table(X0) :- object(X0),not inter_tile_er_below_table(X0).
inter_tile_er_left_table(X0) :- tile(X0),er_left_table(X0).
-inter_tile_er_left_table(X0) :- object(X0),not inter_tile_er_left_table(X0).
inter_tile_er_overlap_table(X0) :- tile(X0),er_overlap_table(X0).
-inter_tile_er_overlap_table(X0) :- object(X0),not inter_tile_er_overlap_table(X0).
inter_tile_er_shape_table(X0) :- tile(X0),er_shape_table(X0).
-inter_tile_er_shape_table(X0) :- object(X0),not inter_tile_er_shape_table(X0).
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
inter_tile_er_smaller_lockedcell(X0) :- tile(X0),er_smaller_lockedcell(X0).
-inter_tile_er_smaller_lockedcell(X0) :- object(X0),not inter_tile_er_smaller_lockedcell(X0).
inter_tile_er_below_lockedcell(X0) :- tile(X0),er_below_lockedcell(X0).
-inter_tile_er_below_lockedcell(X0) :- object(X0),not inter_tile_er_below_lockedcell(X0).
inter_tile_er_left_lockedcell(X0) :- tile(X0),er_left_lockedcell(X0).
-inter_tile_er_left_lockedcell(X0) :- object(X0),not inter_tile_er_left_lockedcell(X0).
inter_tile_er_overlap_lockedcell(X0) :- tile(X0),er_overlap_lockedcell(X0).
-inter_tile_er_overlap_lockedcell(X0) :- object(X0),not inter_tile_er_overlap_lockedcell(X0).
inter_tile_er_shape_lockedcell(X0) :- tile(X0),er_shape_lockedcell(X0).
-inter_tile_er_shape_lockedcell(X0) :- object(X0),not inter_tile_er_shape_lockedcell(X0).
inter_tile_er_smaller_sokoban(X0) :- tile(X0),er_smaller_sokoban(X0).
-inter_tile_er_smaller_sokoban(X0) :- object(X0),not inter_tile_er_smaller_sokoban(X0).
inter_tile_er_below_sokoban(X0) :- tile(X0),er_below_sokoban(X0).
-inter_tile_er_below_sokoban(X0) :- object(X0),not inter_tile_er_below_sokoban(X0).
inter_tile_er_left_sokoban(X0) :- tile(X0),er_left_sokoban(X0).
-inter_tile_er_left_sokoban(X0) :- object(X0),not inter_tile_er_left_sokoban(X0).
inter_tile_er_overlap_sokoban(X0) :- tile(X0),er_overlap_sokoban(X0).
-inter_tile_er_overlap_sokoban(X0) :- object(X0),not inter_tile_er_overlap_sokoban(X0).
inter_tile_er_shape_sokoban(X0) :- tile(X0),er_shape_sokoban(X0).
-inter_tile_er_shape_sokoban(X0) :- object(X0),not inter_tile_er_shape_sokoban(X0).
inter_tile_er_smaller_crate(X0) :- tile(X0),er_smaller_crate(X0).
-inter_tile_er_smaller_crate(X0) :- object(X0),not inter_tile_er_smaller_crate(X0).
inter_tile_er_below_crate(X0) :- tile(X0),er_below_crate(X0).
-inter_tile_er_below_crate(X0) :- object(X0),not inter_tile_er_below_crate(X0).
inter_tile_er_left_crate(X0) :- tile(X0),er_left_crate(X0).
-inter_tile_er_left_crate(X0) :- object(X0),not inter_tile_er_left_crate(X0).
inter_tile_er_overlap_crate(X0) :- tile(X0),er_overlap_crate(X0).
-inter_tile_er_overlap_crate(X0) :- object(X0),not inter_tile_er_overlap_crate(X0).
inter_tile_er_shape_crate(X0) :- tile(X0),er_shape_crate(X0).
-inter_tile_er_shape_crate(X0) :- object(X0),not inter_tile_er_shape_crate(X0).
inter_tile_er_smaller_key(X0) :- tile(X0),er_smaller_key(X0).
-inter_tile_er_smaller_key(X0) :- object(X0),not inter_tile_er_smaller_key(X0).
inter_tile_er_below_key(X0) :- tile(X0),er_below_key(X0).
-inter_tile_er_below_key(X0) :- object(X0),not inter_tile_er_below_key(X0).
inter_tile_er_left_key(X0) :- tile(X0),er_left_key(X0).
-inter_tile_er_left_key(X0) :- object(X0),not inter_tile_er_left_key(X0).
inter_tile_er_overlap_key(X0) :- tile(X0),er_overlap_key(X0).
-inter_tile_er_overlap_key(X0) :- object(X0),not inter_tile_er_overlap_key(X0).
inter_tile_er_shape_key(X0) :- tile(X0),er_shape_key(X0).
-inter_tile_er_shape_key(X0) :- object(X0),not inter_tile_er_shape_key(X0).
inter_tile_er_smaller_peg(X0) :- tile(X0),er_smaller_peg(X0).
-inter_tile_er_smaller_peg(X0) :- object(X0),not inter_tile_er_smaller_peg(X0).
inter_tile_er_below_peg(X0) :- tile(X0),er_below_peg(X0).
-inter_tile_er_below_peg(X0) :- object(X0),not inter_tile_er_below_peg(X0).
inter_tile_er_left_peg(X0) :- tile(X0),er_left_peg(X0).
-inter_tile_er_left_peg(X0) :- object(X0),not inter_tile_er_left_peg(X0).
inter_tile_er_overlap_peg(X0) :- tile(X0),er_overlap_peg(X0).
-inter_tile_er_overlap_peg(X0) :- object(X0),not inter_tile_er_overlap_peg(X0).
inter_tile_er_shape_peg(X0) :- tile(X0),er_shape_peg(X0).
-inter_tile_er_shape_peg(X0) :- object(X0),not inter_tile_er_shape_peg(X0).
inter_tile_er_smaller_disk(X0) :- tile(X0),er_smaller_disk(X0).
-inter_tile_er_smaller_disk(X0) :- object(X0),not inter_tile_er_smaller_disk(X0).
inter_tile_er_below_disk(X0) :- tile(X0),er_below_disk(X0).
-inter_tile_er_below_disk(X0) :- object(X0),not inter_tile_er_below_disk(X0).
inter_tile_er_left_disk(X0) :- tile(X0),er_left_disk(X0).
-inter_tile_er_left_disk(X0) :- object(X0),not inter_tile_er_left_disk(X0).
inter_tile_er_overlap_disk(X0) :- tile(X0),er_overlap_disk(X0).
-inter_tile_er_overlap_disk(X0) :- object(X0),not inter_tile_er_overlap_disk(X0).
inter_tile_er_shape_disk(X0) :- tile(X0),er_shape_disk(X0).
-inter_tile_er_shape_disk(X0) :- object(X0),not inter_tile_er_shape_disk(X0).
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
inter_er_smaller_verum_er_smaller_lockedcell(X0) :- er_smaller_verum(X0),er_smaller_lockedcell(X0).
-inter_er_smaller_verum_er_smaller_lockedcell(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_lockedcell(X0).
inter_er_smaller_verum_er_below_lockedcell(X0) :- er_smaller_verum(X0),er_below_lockedcell(X0).
-inter_er_smaller_verum_er_below_lockedcell(X0) :- object(X0),not inter_er_smaller_verum_er_below_lockedcell(X0).
inter_er_smaller_verum_er_left_lockedcell(X0) :- er_smaller_verum(X0),er_left_lockedcell(X0).
-inter_er_smaller_verum_er_left_lockedcell(X0) :- object(X0),not inter_er_smaller_verum_er_left_lockedcell(X0).
inter_er_smaller_verum_er_overlap_lockedcell(X0) :- er_smaller_verum(X0),er_overlap_lockedcell(X0).
-inter_er_smaller_verum_er_overlap_lockedcell(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_lockedcell(X0).
inter_er_smaller_verum_er_shape_lockedcell(X0) :- er_smaller_verum(X0),er_shape_lockedcell(X0).
-inter_er_smaller_verum_er_shape_lockedcell(X0) :- object(X0),not inter_er_smaller_verum_er_shape_lockedcell(X0).
inter_er_smaller_verum_er_smaller_sokoban(X0) :- er_smaller_verum(X0),er_smaller_sokoban(X0).
-inter_er_smaller_verum_er_smaller_sokoban(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_sokoban(X0).
inter_er_smaller_verum_er_below_sokoban(X0) :- er_smaller_verum(X0),er_below_sokoban(X0).
-inter_er_smaller_verum_er_below_sokoban(X0) :- object(X0),not inter_er_smaller_verum_er_below_sokoban(X0).
inter_er_smaller_verum_er_left_sokoban(X0) :- er_smaller_verum(X0),er_left_sokoban(X0).
-inter_er_smaller_verum_er_left_sokoban(X0) :- object(X0),not inter_er_smaller_verum_er_left_sokoban(X0).
inter_er_smaller_verum_er_overlap_sokoban(X0) :- er_smaller_verum(X0),er_overlap_sokoban(X0).
-inter_er_smaller_verum_er_overlap_sokoban(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_sokoban(X0).
inter_er_smaller_verum_er_shape_sokoban(X0) :- er_smaller_verum(X0),er_shape_sokoban(X0).
-inter_er_smaller_verum_er_shape_sokoban(X0) :- object(X0),not inter_er_smaller_verum_er_shape_sokoban(X0).
inter_er_smaller_verum_er_smaller_crate(X0) :- er_smaller_verum(X0),er_smaller_crate(X0).
-inter_er_smaller_verum_er_smaller_crate(X0) :- object(X0),not inter_er_smaller_verum_er_smaller_crate(X0).
inter_er_smaller_verum_er_below_crate(X0) :- er_smaller_verum(X0),er_below_crate(X0).
-inter_er_smaller_verum_er_below_crate(X0) :- object(X0),not inter_er_smaller_verum_er_below_crate(X0).
inter_er_smaller_verum_er_left_crate(X0) :- er_smaller_verum(X0),er_left_crate(X0).
-inter_er_smaller_verum_er_left_crate(X0) :- object(X0),not inter_er_smaller_verum_er_left_crate(X0).
inter_er_smaller_verum_er_overlap_crate(X0) :- er_smaller_verum(X0),er_overlap_crate(X0).
-inter_er_smaller_verum_er_overlap_crate(X0) :- object(X0),not inter_er_smaller_verum_er_overlap_crate(X0).
inter_er_smaller_verum_er_shape_crate(X0) :- er_smaller_verum(X0),er_shape_crate(X0).
-inter_er_smaller_verum_er_shape_crate(X0) :- object(X0),not inter_er_smaller_verum_er_shape_crate(X0).
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
inter_er_below_verum_er_smaller_lockedcell(X0) :- er_below_verum(X0),er_smaller_lockedcell(X0).
-inter_er_below_verum_er_smaller_lockedcell(X0) :- object(X0),not inter_er_below_verum_er_smaller_lockedcell(X0).
inter_er_below_verum_er_below_lockedcell(X0) :- er_below_verum(X0),er_below_lockedcell(X0).
-inter_er_below_verum_er_below_lockedcell(X0) :- object(X0),not inter_er_below_verum_er_below_lockedcell(X0).
inter_er_below_verum_er_left_lockedcell(X0) :- er_below_verum(X0),er_left_lockedcell(X0).
-inter_er_below_verum_er_left_lockedcell(X0) :- object(X0),not inter_er_below_verum_er_left_lockedcell(X0).
inter_er_below_verum_er_overlap_lockedcell(X0) :- er_below_verum(X0),er_overlap_lockedcell(X0).
-inter_er_below_verum_er_overlap_lockedcell(X0) :- object(X0),not inter_er_below_verum_er_overlap_lockedcell(X0).
inter_er_below_verum_er_shape_lockedcell(X0) :- er_below_verum(X0),er_shape_lockedcell(X0).
-inter_er_below_verum_er_shape_lockedcell(X0) :- object(X0),not inter_er_below_verum_er_shape_lockedcell(X0).
inter_er_below_verum_er_smaller_sokoban(X0) :- er_below_verum(X0),er_smaller_sokoban(X0).
-inter_er_below_verum_er_smaller_sokoban(X0) :- object(X0),not inter_er_below_verum_er_smaller_sokoban(X0).
inter_er_below_verum_er_below_sokoban(X0) :- er_below_verum(X0),er_below_sokoban(X0).
-inter_er_below_verum_er_below_sokoban(X0) :- object(X0),not inter_er_below_verum_er_below_sokoban(X0).
inter_er_below_verum_er_left_sokoban(X0) :- er_below_verum(X0),er_left_sokoban(X0).
-inter_er_below_verum_er_left_sokoban(X0) :- object(X0),not inter_er_below_verum_er_left_sokoban(X0).
inter_er_below_verum_er_overlap_sokoban(X0) :- er_below_verum(X0),er_overlap_sokoban(X0).
-inter_er_below_verum_er_overlap_sokoban(X0) :- object(X0),not inter_er_below_verum_er_overlap_sokoban(X0).
inter_er_below_verum_er_shape_sokoban(X0) :- er_below_verum(X0),er_shape_sokoban(X0).
-inter_er_below_verum_er_shape_sokoban(X0) :- object(X0),not inter_er_below_verum_er_shape_sokoban(X0).
inter_er_below_verum_er_smaller_crate(X0) :- er_below_verum(X0),er_smaller_crate(X0).
-inter_er_below_verum_er_smaller_crate(X0) :- object(X0),not inter_er_below_verum_er_smaller_crate(X0).
inter_er_below_verum_er_below_crate(X0) :- er_below_verum(X0),er_below_crate(X0).
-inter_er_below_verum_er_below_crate(X0) :- object(X0),not inter_er_below_verum_er_below_crate(X0).
inter_er_below_verum_er_left_crate(X0) :- er_below_verum(X0),er_left_crate(X0).
-inter_er_below_verum_er_left_crate(X0) :- object(X0),not inter_er_below_verum_er_left_crate(X0).
inter_er_below_verum_er_overlap_crate(X0) :- er_below_verum(X0),er_overlap_crate(X0).
-inter_er_below_verum_er_overlap_crate(X0) :- object(X0),not inter_er_below_verum_er_overlap_crate(X0).
inter_er_below_verum_er_shape_crate(X0) :- er_below_verum(X0),er_shape_crate(X0).
-inter_er_below_verum_er_shape_crate(X0) :- object(X0),not inter_er_below_verum_er_shape_crate(X0).
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
inter_er_left_verum_er_smaller_lockedcell(X0) :- er_left_verum(X0),er_smaller_lockedcell(X0).
-inter_er_left_verum_er_smaller_lockedcell(X0) :- object(X0),not inter_er_left_verum_er_smaller_lockedcell(X0).
inter_er_left_verum_er_below_lockedcell(X0) :- er_left_verum(X0),er_below_lockedcell(X0).
-inter_er_left_verum_er_below_lockedcell(X0) :- object(X0),not inter_er_left_verum_er_below_lockedcell(X0).
inter_er_left_verum_er_left_lockedcell(X0) :- er_left_verum(X0),er_left_lockedcell(X0).
-inter_er_left_verum_er_left_lockedcell(X0) :- object(X0),not inter_er_left_verum_er_left_lockedcell(X0).
inter_er_left_verum_er_overlap_lockedcell(X0) :- er_left_verum(X0),er_overlap_lockedcell(X0).
-inter_er_left_verum_er_overlap_lockedcell(X0) :- object(X0),not inter_er_left_verum_er_overlap_lockedcell(X0).
inter_er_left_verum_er_shape_lockedcell(X0) :- er_left_verum(X0),er_shape_lockedcell(X0).
-inter_er_left_verum_er_shape_lockedcell(X0) :- object(X0),not inter_er_left_verum_er_shape_lockedcell(X0).
inter_er_left_verum_er_smaller_sokoban(X0) :- er_left_verum(X0),er_smaller_sokoban(X0).
-inter_er_left_verum_er_smaller_sokoban(X0) :- object(X0),not inter_er_left_verum_er_smaller_sokoban(X0).
inter_er_left_verum_er_below_sokoban(X0) :- er_left_verum(X0),er_below_sokoban(X0).
-inter_er_left_verum_er_below_sokoban(X0) :- object(X0),not inter_er_left_verum_er_below_sokoban(X0).
inter_er_left_verum_er_left_sokoban(X0) :- er_left_verum(X0),er_left_sokoban(X0).
-inter_er_left_verum_er_left_sokoban(X0) :- object(X0),not inter_er_left_verum_er_left_sokoban(X0).
inter_er_left_verum_er_overlap_sokoban(X0) :- er_left_verum(X0),er_overlap_sokoban(X0).
-inter_er_left_verum_er_overlap_sokoban(X0) :- object(X0),not inter_er_left_verum_er_overlap_sokoban(X0).
inter_er_left_verum_er_shape_sokoban(X0) :- er_left_verum(X0),er_shape_sokoban(X0).
-inter_er_left_verum_er_shape_sokoban(X0) :- object(X0),not inter_er_left_verum_er_shape_sokoban(X0).
inter_er_left_verum_er_smaller_crate(X0) :- er_left_verum(X0),er_smaller_crate(X0).
-inter_er_left_verum_er_smaller_crate(X0) :- object(X0),not inter_er_left_verum_er_smaller_crate(X0).
inter_er_left_verum_er_below_crate(X0) :- er_left_verum(X0),er_below_crate(X0).
-inter_er_left_verum_er_below_crate(X0) :- object(X0),not inter_er_left_verum_er_below_crate(X0).
inter_er_left_verum_er_left_crate(X0) :- er_left_verum(X0),er_left_crate(X0).
-inter_er_left_verum_er_left_crate(X0) :- object(X0),not inter_er_left_verum_er_left_crate(X0).
inter_er_left_verum_er_overlap_crate(X0) :- er_left_verum(X0),er_overlap_crate(X0).
-inter_er_left_verum_er_overlap_crate(X0) :- object(X0),not inter_er_left_verum_er_overlap_crate(X0).
inter_er_left_verum_er_shape_crate(X0) :- er_left_verum(X0),er_shape_crate(X0).
-inter_er_left_verum_er_shape_crate(X0) :- object(X0),not inter_er_left_verum_er_shape_crate(X0).
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
inter_er_overlap_verum_er_smaller_lockedcell(X0) :- er_overlap_verum(X0),er_smaller_lockedcell(X0).
-inter_er_overlap_verum_er_smaller_lockedcell(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_lockedcell(X0).
inter_er_overlap_verum_er_below_lockedcell(X0) :- er_overlap_verum(X0),er_below_lockedcell(X0).
-inter_er_overlap_verum_er_below_lockedcell(X0) :- object(X0),not inter_er_overlap_verum_er_below_lockedcell(X0).
inter_er_overlap_verum_er_left_lockedcell(X0) :- er_overlap_verum(X0),er_left_lockedcell(X0).
-inter_er_overlap_verum_er_left_lockedcell(X0) :- object(X0),not inter_er_overlap_verum_er_left_lockedcell(X0).
inter_er_overlap_verum_er_overlap_lockedcell(X0) :- er_overlap_verum(X0),er_overlap_lockedcell(X0).
-inter_er_overlap_verum_er_overlap_lockedcell(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_lockedcell(X0).
inter_er_overlap_verum_er_shape_lockedcell(X0) :- er_overlap_verum(X0),er_shape_lockedcell(X0).
-inter_er_overlap_verum_er_shape_lockedcell(X0) :- object(X0),not inter_er_overlap_verum_er_shape_lockedcell(X0).
inter_er_overlap_verum_er_smaller_sokoban(X0) :- er_overlap_verum(X0),er_smaller_sokoban(X0).
-inter_er_overlap_verum_er_smaller_sokoban(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_sokoban(X0).
inter_er_overlap_verum_er_below_sokoban(X0) :- er_overlap_verum(X0),er_below_sokoban(X0).
-inter_er_overlap_verum_er_below_sokoban(X0) :- object(X0),not inter_er_overlap_verum_er_below_sokoban(X0).
inter_er_overlap_verum_er_left_sokoban(X0) :- er_overlap_verum(X0),er_left_sokoban(X0).
-inter_er_overlap_verum_er_left_sokoban(X0) :- object(X0),not inter_er_overlap_verum_er_left_sokoban(X0).
inter_er_overlap_verum_er_overlap_sokoban(X0) :- er_overlap_verum(X0),er_overlap_sokoban(X0).
-inter_er_overlap_verum_er_overlap_sokoban(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_sokoban(X0).
inter_er_overlap_verum_er_shape_sokoban(X0) :- er_overlap_verum(X0),er_shape_sokoban(X0).
-inter_er_overlap_verum_er_shape_sokoban(X0) :- object(X0),not inter_er_overlap_verum_er_shape_sokoban(X0).
inter_er_overlap_verum_er_smaller_crate(X0) :- er_overlap_verum(X0),er_smaller_crate(X0).
-inter_er_overlap_verum_er_smaller_crate(X0) :- object(X0),not inter_er_overlap_verum_er_smaller_crate(X0).
inter_er_overlap_verum_er_below_crate(X0) :- er_overlap_verum(X0),er_below_crate(X0).
-inter_er_overlap_verum_er_below_crate(X0) :- object(X0),not inter_er_overlap_verum_er_below_crate(X0).
inter_er_overlap_verum_er_left_crate(X0) :- er_overlap_verum(X0),er_left_crate(X0).
-inter_er_overlap_verum_er_left_crate(X0) :- object(X0),not inter_er_overlap_verum_er_left_crate(X0).
inter_er_overlap_verum_er_overlap_crate(X0) :- er_overlap_verum(X0),er_overlap_crate(X0).
-inter_er_overlap_verum_er_overlap_crate(X0) :- object(X0),not inter_er_overlap_verum_er_overlap_crate(X0).
inter_er_overlap_verum_er_shape_crate(X0) :- er_overlap_verum(X0),er_shape_crate(X0).
-inter_er_overlap_verum_er_shape_crate(X0) :- object(X0),not inter_er_overlap_verum_er_shape_crate(X0).
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
inter_er_shape_verum_er_smaller_lockedcell(X0) :- er_shape_verum(X0),er_smaller_lockedcell(X0).
-inter_er_shape_verum_er_smaller_lockedcell(X0) :- object(X0),not inter_er_shape_verum_er_smaller_lockedcell(X0).
inter_er_shape_verum_er_below_lockedcell(X0) :- er_shape_verum(X0),er_below_lockedcell(X0).
-inter_er_shape_verum_er_below_lockedcell(X0) :- object(X0),not inter_er_shape_verum_er_below_lockedcell(X0).
inter_er_shape_verum_er_left_lockedcell(X0) :- er_shape_verum(X0),er_left_lockedcell(X0).
-inter_er_shape_verum_er_left_lockedcell(X0) :- object(X0),not inter_er_shape_verum_er_left_lockedcell(X0).
inter_er_shape_verum_er_overlap_lockedcell(X0) :- er_shape_verum(X0),er_overlap_lockedcell(X0).
-inter_er_shape_verum_er_overlap_lockedcell(X0) :- object(X0),not inter_er_shape_verum_er_overlap_lockedcell(X0).
inter_er_shape_verum_er_shape_lockedcell(X0) :- er_shape_verum(X0),er_shape_lockedcell(X0).
-inter_er_shape_verum_er_shape_lockedcell(X0) :- object(X0),not inter_er_shape_verum_er_shape_lockedcell(X0).
inter_er_shape_verum_er_smaller_sokoban(X0) :- er_shape_verum(X0),er_smaller_sokoban(X0).
-inter_er_shape_verum_er_smaller_sokoban(X0) :- object(X0),not inter_er_shape_verum_er_smaller_sokoban(X0).
inter_er_shape_verum_er_below_sokoban(X0) :- er_shape_verum(X0),er_below_sokoban(X0).
-inter_er_shape_verum_er_below_sokoban(X0) :- object(X0),not inter_er_shape_verum_er_below_sokoban(X0).
inter_er_shape_verum_er_left_sokoban(X0) :- er_shape_verum(X0),er_left_sokoban(X0).
-inter_er_shape_verum_er_left_sokoban(X0) :- object(X0),not inter_er_shape_verum_er_left_sokoban(X0).
inter_er_shape_verum_er_overlap_sokoban(X0) :- er_shape_verum(X0),er_overlap_sokoban(X0).
-inter_er_shape_verum_er_overlap_sokoban(X0) :- object(X0),not inter_er_shape_verum_er_overlap_sokoban(X0).
inter_er_shape_verum_er_shape_sokoban(X0) :- er_shape_verum(X0),er_shape_sokoban(X0).
-inter_er_shape_verum_er_shape_sokoban(X0) :- object(X0),not inter_er_shape_verum_er_shape_sokoban(X0).
inter_er_shape_verum_er_smaller_crate(X0) :- er_shape_verum(X0),er_smaller_crate(X0).
-inter_er_shape_verum_er_smaller_crate(X0) :- object(X0),not inter_er_shape_verum_er_smaller_crate(X0).
inter_er_shape_verum_er_below_crate(X0) :- er_shape_verum(X0),er_below_crate(X0).
-inter_er_shape_verum_er_below_crate(X0) :- object(X0),not inter_er_shape_verum_er_below_crate(X0).
inter_er_shape_verum_er_left_crate(X0) :- er_shape_verum(X0),er_left_crate(X0).
-inter_er_shape_verum_er_left_crate(X0) :- object(X0),not inter_er_shape_verum_er_left_crate(X0).
inter_er_shape_verum_er_overlap_crate(X0) :- er_shape_verum(X0),er_overlap_crate(X0).
-inter_er_shape_verum_er_overlap_crate(X0) :- object(X0),not inter_er_shape_verum_er_overlap_crate(X0).
inter_er_shape_verum_er_shape_crate(X0) :- er_shape_verum(X0),er_shape_crate(X0).
-inter_er_shape_verum_er_shape_crate(X0) :- object(X0),not inter_er_shape_verum_er_shape_crate(X0).
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
inter_er_smaller_falsum_er_smaller_lockedcell(X0) :- er_smaller_falsum(X0),er_smaller_lockedcell(X0).
-inter_er_smaller_falsum_er_smaller_lockedcell(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_lockedcell(X0).
inter_er_smaller_falsum_er_below_lockedcell(X0) :- er_smaller_falsum(X0),er_below_lockedcell(X0).
-inter_er_smaller_falsum_er_below_lockedcell(X0) :- object(X0),not inter_er_smaller_falsum_er_below_lockedcell(X0).
inter_er_smaller_falsum_er_left_lockedcell(X0) :- er_smaller_falsum(X0),er_left_lockedcell(X0).
-inter_er_smaller_falsum_er_left_lockedcell(X0) :- object(X0),not inter_er_smaller_falsum_er_left_lockedcell(X0).
inter_er_smaller_falsum_er_overlap_lockedcell(X0) :- er_smaller_falsum(X0),er_overlap_lockedcell(X0).
-inter_er_smaller_falsum_er_overlap_lockedcell(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_lockedcell(X0).
inter_er_smaller_falsum_er_shape_lockedcell(X0) :- er_smaller_falsum(X0),er_shape_lockedcell(X0).
-inter_er_smaller_falsum_er_shape_lockedcell(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_lockedcell(X0).
inter_er_smaller_falsum_er_smaller_sokoban(X0) :- er_smaller_falsum(X0),er_smaller_sokoban(X0).
-inter_er_smaller_falsum_er_smaller_sokoban(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_sokoban(X0).
inter_er_smaller_falsum_er_below_sokoban(X0) :- er_smaller_falsum(X0),er_below_sokoban(X0).
-inter_er_smaller_falsum_er_below_sokoban(X0) :- object(X0),not inter_er_smaller_falsum_er_below_sokoban(X0).
inter_er_smaller_falsum_er_left_sokoban(X0) :- er_smaller_falsum(X0),er_left_sokoban(X0).
-inter_er_smaller_falsum_er_left_sokoban(X0) :- object(X0),not inter_er_smaller_falsum_er_left_sokoban(X0).
inter_er_smaller_falsum_er_overlap_sokoban(X0) :- er_smaller_falsum(X0),er_overlap_sokoban(X0).
-inter_er_smaller_falsum_er_overlap_sokoban(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_sokoban(X0).
inter_er_smaller_falsum_er_shape_sokoban(X0) :- er_smaller_falsum(X0),er_shape_sokoban(X0).
-inter_er_smaller_falsum_er_shape_sokoban(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_sokoban(X0).
inter_er_smaller_falsum_er_smaller_crate(X0) :- er_smaller_falsum(X0),er_smaller_crate(X0).
-inter_er_smaller_falsum_er_smaller_crate(X0) :- object(X0),not inter_er_smaller_falsum_er_smaller_crate(X0).
inter_er_smaller_falsum_er_below_crate(X0) :- er_smaller_falsum(X0),er_below_crate(X0).
-inter_er_smaller_falsum_er_below_crate(X0) :- object(X0),not inter_er_smaller_falsum_er_below_crate(X0).
inter_er_smaller_falsum_er_left_crate(X0) :- er_smaller_falsum(X0),er_left_crate(X0).
-inter_er_smaller_falsum_er_left_crate(X0) :- object(X0),not inter_er_smaller_falsum_er_left_crate(X0).
inter_er_smaller_falsum_er_overlap_crate(X0) :- er_smaller_falsum(X0),er_overlap_crate(X0).
-inter_er_smaller_falsum_er_overlap_crate(X0) :- object(X0),not inter_er_smaller_falsum_er_overlap_crate(X0).
inter_er_smaller_falsum_er_shape_crate(X0) :- er_smaller_falsum(X0),er_shape_crate(X0).
-inter_er_smaller_falsum_er_shape_crate(X0) :- object(X0),not inter_er_smaller_falsum_er_shape_crate(X0).
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
inter_er_below_falsum_er_smaller_lockedcell(X0) :- er_below_falsum(X0),er_smaller_lockedcell(X0).
-inter_er_below_falsum_er_smaller_lockedcell(X0) :- object(X0),not inter_er_below_falsum_er_smaller_lockedcell(X0).
inter_er_below_falsum_er_below_lockedcell(X0) :- er_below_falsum(X0),er_below_lockedcell(X0).
-inter_er_below_falsum_er_below_lockedcell(X0) :- object(X0),not inter_er_below_falsum_er_below_lockedcell(X0).
inter_er_below_falsum_er_left_lockedcell(X0) :- er_below_falsum(X0),er_left_lockedcell(X0).
-inter_er_below_falsum_er_left_lockedcell(X0) :- object(X0),not inter_er_below_falsum_er_left_lockedcell(X0).
inter_er_below_falsum_er_overlap_lockedcell(X0) :- er_below_falsum(X0),er_overlap_lockedcell(X0).
-inter_er_below_falsum_er_overlap_lockedcell(X0) :- object(X0),not inter_er_below_falsum_er_overlap_lockedcell(X0).
inter_er_below_falsum_er_shape_lockedcell(X0) :- er_below_falsum(X0),er_shape_lockedcell(X0).
-inter_er_below_falsum_er_shape_lockedcell(X0) :- object(X0),not inter_er_below_falsum_er_shape_lockedcell(X0).
inter_er_below_falsum_er_smaller_sokoban(X0) :- er_below_falsum(X0),er_smaller_sokoban(X0).
-inter_er_below_falsum_er_smaller_sokoban(X0) :- object(X0),not inter_er_below_falsum_er_smaller_sokoban(X0).
inter_er_below_falsum_er_below_sokoban(X0) :- er_below_falsum(X0),er_below_sokoban(X0).
-inter_er_below_falsum_er_below_sokoban(X0) :- object(X0),not inter_er_below_falsum_er_below_sokoban(X0).
inter_er_below_falsum_er_left_sokoban(X0) :- er_below_falsum(X0),er_left_sokoban(X0).
-inter_er_below_falsum_er_left_sokoban(X0) :- object(X0),not inter_er_below_falsum_er_left_sokoban(X0).
inter_er_below_falsum_er_overlap_sokoban(X0) :- er_below_falsum(X0),er_overlap_sokoban(X0).
-inter_er_below_falsum_er_overlap_sokoban(X0) :- object(X0),not inter_er_below_falsum_er_overlap_sokoban(X0).
inter_er_below_falsum_er_shape_sokoban(X0) :- er_below_falsum(X0),er_shape_sokoban(X0).
-inter_er_below_falsum_er_shape_sokoban(X0) :- object(X0),not inter_er_below_falsum_er_shape_sokoban(X0).
inter_er_below_falsum_er_smaller_crate(X0) :- er_below_falsum(X0),er_smaller_crate(X0).
-inter_er_below_falsum_er_smaller_crate(X0) :- object(X0),not inter_er_below_falsum_er_smaller_crate(X0).
inter_er_below_falsum_er_below_crate(X0) :- er_below_falsum(X0),er_below_crate(X0).
-inter_er_below_falsum_er_below_crate(X0) :- object(X0),not inter_er_below_falsum_er_below_crate(X0).
inter_er_below_falsum_er_left_crate(X0) :- er_below_falsum(X0),er_left_crate(X0).
-inter_er_below_falsum_er_left_crate(X0) :- object(X0),not inter_er_below_falsum_er_left_crate(X0).
inter_er_below_falsum_er_overlap_crate(X0) :- er_below_falsum(X0),er_overlap_crate(X0).
-inter_er_below_falsum_er_overlap_crate(X0) :- object(X0),not inter_er_below_falsum_er_overlap_crate(X0).
inter_er_below_falsum_er_shape_crate(X0) :- er_below_falsum(X0),er_shape_crate(X0).
-inter_er_below_falsum_er_shape_crate(X0) :- object(X0),not inter_er_below_falsum_er_shape_crate(X0).
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
inter_er_left_falsum_er_smaller_lockedcell(X0) :- er_left_falsum(X0),er_smaller_lockedcell(X0).
-inter_er_left_falsum_er_smaller_lockedcell(X0) :- object(X0),not inter_er_left_falsum_er_smaller_lockedcell(X0).
inter_er_left_falsum_er_below_lockedcell(X0) :- er_left_falsum(X0),er_below_lockedcell(X0).
-inter_er_left_falsum_er_below_lockedcell(X0) :- object(X0),not inter_er_left_falsum_er_below_lockedcell(X0).
inter_er_left_falsum_er_left_lockedcell(X0) :- er_left_falsum(X0),er_left_lockedcell(X0).
-inter_er_left_falsum_er_left_lockedcell(X0) :- object(X0),not inter_er_left_falsum_er_left_lockedcell(X0).
inter_er_left_falsum_er_overlap_lockedcell(X0) :- er_left_falsum(X0),er_overlap_lockedcell(X0).
-inter_er_left_falsum_er_overlap_lockedcell(X0) :- object(X0),not inter_er_left_falsum_er_overlap_lockedcell(X0).
inter_er_left_falsum_er_shape_lockedcell(X0) :- er_left_falsum(X0),er_shape_lockedcell(X0).
-inter_er_left_falsum_er_shape_lockedcell(X0) :- object(X0),not inter_er_left_falsum_er_shape_lockedcell(X0).
inter_er_left_falsum_er_smaller_sokoban(X0) :- er_left_falsum(X0),er_smaller_sokoban(X0).
-inter_er_left_falsum_er_smaller_sokoban(X0) :- object(X0),not inter_er_left_falsum_er_smaller_sokoban(X0).
inter_er_left_falsum_er_below_sokoban(X0) :- er_left_falsum(X0),er_below_sokoban(X0).
-inter_er_left_falsum_er_below_sokoban(X0) :- object(X0),not inter_er_left_falsum_er_below_sokoban(X0).
inter_er_left_falsum_er_left_sokoban(X0) :- er_left_falsum(X0),er_left_sokoban(X0).
-inter_er_left_falsum_er_left_sokoban(X0) :- object(X0),not inter_er_left_falsum_er_left_sokoban(X0).
inter_er_left_falsum_er_overlap_sokoban(X0) :- er_left_falsum(X0),er_overlap_sokoban(X0).
-inter_er_left_falsum_er_overlap_sokoban(X0) :- object(X0),not inter_er_left_falsum_er_overlap_sokoban(X0).
inter_er_left_falsum_er_shape_sokoban(X0) :- er_left_falsum(X0),er_shape_sokoban(X0).
-inter_er_left_falsum_er_shape_sokoban(X0) :- object(X0),not inter_er_left_falsum_er_shape_sokoban(X0).
inter_er_left_falsum_er_smaller_crate(X0) :- er_left_falsum(X0),er_smaller_crate(X0).
-inter_er_left_falsum_er_smaller_crate(X0) :- object(X0),not inter_er_left_falsum_er_smaller_crate(X0).
inter_er_left_falsum_er_below_crate(X0) :- er_left_falsum(X0),er_below_crate(X0).
-inter_er_left_falsum_er_below_crate(X0) :- object(X0),not inter_er_left_falsum_er_below_crate(X0).
inter_er_left_falsum_er_left_crate(X0) :- er_left_falsum(X0),er_left_crate(X0).
-inter_er_left_falsum_er_left_crate(X0) :- object(X0),not inter_er_left_falsum_er_left_crate(X0).
inter_er_left_falsum_er_overlap_crate(X0) :- er_left_falsum(X0),er_overlap_crate(X0).
-inter_er_left_falsum_er_overlap_crate(X0) :- object(X0),not inter_er_left_falsum_er_overlap_crate(X0).
inter_er_left_falsum_er_shape_crate(X0) :- er_left_falsum(X0),er_shape_crate(X0).
-inter_er_left_falsum_er_shape_crate(X0) :- object(X0),not inter_er_left_falsum_er_shape_crate(X0).
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
inter_er_overlap_falsum_er_smaller_lockedcell(X0) :- er_overlap_falsum(X0),er_smaller_lockedcell(X0).
-inter_er_overlap_falsum_er_smaller_lockedcell(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_lockedcell(X0).
inter_er_overlap_falsum_er_below_lockedcell(X0) :- er_overlap_falsum(X0),er_below_lockedcell(X0).
-inter_er_overlap_falsum_er_below_lockedcell(X0) :- object(X0),not inter_er_overlap_falsum_er_below_lockedcell(X0).
inter_er_overlap_falsum_er_left_lockedcell(X0) :- er_overlap_falsum(X0),er_left_lockedcell(X0).
-inter_er_overlap_falsum_er_left_lockedcell(X0) :- object(X0),not inter_er_overlap_falsum_er_left_lockedcell(X0).
inter_er_overlap_falsum_er_overlap_lockedcell(X0) :- er_overlap_falsum(X0),er_overlap_lockedcell(X0).
-inter_er_overlap_falsum_er_overlap_lockedcell(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_lockedcell(X0).
inter_er_overlap_falsum_er_shape_lockedcell(X0) :- er_overlap_falsum(X0),er_shape_lockedcell(X0).
-inter_er_overlap_falsum_er_shape_lockedcell(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_lockedcell(X0).
inter_er_overlap_falsum_er_smaller_sokoban(X0) :- er_overlap_falsum(X0),er_smaller_sokoban(X0).
-inter_er_overlap_falsum_er_smaller_sokoban(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_sokoban(X0).
inter_er_overlap_falsum_er_below_sokoban(X0) :- er_overlap_falsum(X0),er_below_sokoban(X0).
-inter_er_overlap_falsum_er_below_sokoban(X0) :- object(X0),not inter_er_overlap_falsum_er_below_sokoban(X0).
inter_er_overlap_falsum_er_left_sokoban(X0) :- er_overlap_falsum(X0),er_left_sokoban(X0).
-inter_er_overlap_falsum_er_left_sokoban(X0) :- object(X0),not inter_er_overlap_falsum_er_left_sokoban(X0).
inter_er_overlap_falsum_er_overlap_sokoban(X0) :- er_overlap_falsum(X0),er_overlap_sokoban(X0).
-inter_er_overlap_falsum_er_overlap_sokoban(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_sokoban(X0).
inter_er_overlap_falsum_er_shape_sokoban(X0) :- er_overlap_falsum(X0),er_shape_sokoban(X0).
-inter_er_overlap_falsum_er_shape_sokoban(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_sokoban(X0).
inter_er_overlap_falsum_er_smaller_crate(X0) :- er_overlap_falsum(X0),er_smaller_crate(X0).
-inter_er_overlap_falsum_er_smaller_crate(X0) :- object(X0),not inter_er_overlap_falsum_er_smaller_crate(X0).
inter_er_overlap_falsum_er_below_crate(X0) :- er_overlap_falsum(X0),er_below_crate(X0).
-inter_er_overlap_falsum_er_below_crate(X0) :- object(X0),not inter_er_overlap_falsum_er_below_crate(X0).
inter_er_overlap_falsum_er_left_crate(X0) :- er_overlap_falsum(X0),er_left_crate(X0).
-inter_er_overlap_falsum_er_left_crate(X0) :- object(X0),not inter_er_overlap_falsum_er_left_crate(X0).
inter_er_overlap_falsum_er_overlap_crate(X0) :- er_overlap_falsum(X0),er_overlap_crate(X0).
-inter_er_overlap_falsum_er_overlap_crate(X0) :- object(X0),not inter_er_overlap_falsum_er_overlap_crate(X0).
inter_er_overlap_falsum_er_shape_crate(X0) :- er_overlap_falsum(X0),er_shape_crate(X0).
-inter_er_overlap_falsum_er_shape_crate(X0) :- object(X0),not inter_er_overlap_falsum_er_shape_crate(X0).
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
inter_er_shape_falsum_er_smaller_lockedcell(X0) :- er_shape_falsum(X0),er_smaller_lockedcell(X0).
-inter_er_shape_falsum_er_smaller_lockedcell(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_lockedcell(X0).
inter_er_shape_falsum_er_below_lockedcell(X0) :- er_shape_falsum(X0),er_below_lockedcell(X0).
-inter_er_shape_falsum_er_below_lockedcell(X0) :- object(X0),not inter_er_shape_falsum_er_below_lockedcell(X0).
inter_er_shape_falsum_er_left_lockedcell(X0) :- er_shape_falsum(X0),er_left_lockedcell(X0).
-inter_er_shape_falsum_er_left_lockedcell(X0) :- object(X0),not inter_er_shape_falsum_er_left_lockedcell(X0).
inter_er_shape_falsum_er_overlap_lockedcell(X0) :- er_shape_falsum(X0),er_overlap_lockedcell(X0).
-inter_er_shape_falsum_er_overlap_lockedcell(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_lockedcell(X0).
inter_er_shape_falsum_er_shape_lockedcell(X0) :- er_shape_falsum(X0),er_shape_lockedcell(X0).
-inter_er_shape_falsum_er_shape_lockedcell(X0) :- object(X0),not inter_er_shape_falsum_er_shape_lockedcell(X0).
inter_er_shape_falsum_er_smaller_sokoban(X0) :- er_shape_falsum(X0),er_smaller_sokoban(X0).
-inter_er_shape_falsum_er_smaller_sokoban(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_sokoban(X0).
inter_er_shape_falsum_er_below_sokoban(X0) :- er_shape_falsum(X0),er_below_sokoban(X0).
-inter_er_shape_falsum_er_below_sokoban(X0) :- object(X0),not inter_er_shape_falsum_er_below_sokoban(X0).
inter_er_shape_falsum_er_left_sokoban(X0) :- er_shape_falsum(X0),er_left_sokoban(X0).
-inter_er_shape_falsum_er_left_sokoban(X0) :- object(X0),not inter_er_shape_falsum_er_left_sokoban(X0).
inter_er_shape_falsum_er_overlap_sokoban(X0) :- er_shape_falsum(X0),er_overlap_sokoban(X0).
-inter_er_shape_falsum_er_overlap_sokoban(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_sokoban(X0).
inter_er_shape_falsum_er_shape_sokoban(X0) :- er_shape_falsum(X0),er_shape_sokoban(X0).
-inter_er_shape_falsum_er_shape_sokoban(X0) :- object(X0),not inter_er_shape_falsum_er_shape_sokoban(X0).
inter_er_shape_falsum_er_smaller_crate(X0) :- er_shape_falsum(X0),er_smaller_crate(X0).
-inter_er_shape_falsum_er_smaller_crate(X0) :- object(X0),not inter_er_shape_falsum_er_smaller_crate(X0).
inter_er_shape_falsum_er_below_crate(X0) :- er_shape_falsum(X0),er_below_crate(X0).
-inter_er_shape_falsum_er_below_crate(X0) :- object(X0),not inter_er_shape_falsum_er_below_crate(X0).
inter_er_shape_falsum_er_left_crate(X0) :- er_shape_falsum(X0),er_left_crate(X0).
-inter_er_shape_falsum_er_left_crate(X0) :- object(X0),not inter_er_shape_falsum_er_left_crate(X0).
inter_er_shape_falsum_er_overlap_crate(X0) :- er_shape_falsum(X0),er_overlap_crate(X0).
-inter_er_shape_falsum_er_overlap_crate(X0) :- object(X0),not inter_er_shape_falsum_er_overlap_crate(X0).
inter_er_shape_falsum_er_shape_crate(X0) :- er_shape_falsum(X0),er_shape_crate(X0).
-inter_er_shape_falsum_er_shape_crate(X0) :- object(X0),not inter_er_shape_falsum_er_shape_crate(X0).
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
inter_er_smaller_robot_er_smaller_opencell(X0) :- er_smaller_robot(X0),er_smaller_opencell(X0).
-inter_er_smaller_robot_er_smaller_opencell(X0) :- object(X0),not inter_er_smaller_robot_er_smaller_opencell(X0).
inter_er_smaller_robot_er_below_opencell(X0) :- er_smaller_robot(X0),er_below_opencell(X0).
-inter_er_smaller_robot_er_below_opencell(X0) :- object(X0),not inter_er_smaller_robot_er_below_opencell(X0).
inter_er_smaller_robot_er_left_opencell(X0) :- er_smaller_robot(X0),er_left_opencell(X0).
-inter_er_smaller_robot_er_left_opencell(X0) :- object(X0),not inter_er_smaller_robot_er_left_opencell(X0).
inter_er_smaller_robot_er_overlap_opencell(X0) :- er_smaller_robot(X0),er_overlap_opencell(X0).
-inter_er_smaller_robot_er_overlap_opencell(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_opencell(X0).
inter_er_smaller_robot_er_shape_opencell(X0) :- er_smaller_robot(X0),er_shape_opencell(X0).
-inter_er_smaller_robot_er_shape_opencell(X0) :- object(X0),not inter_er_smaller_robot_er_shape_opencell(X0).
inter_er_smaller_robot_er_smaller_lockedcell(X0) :- er_smaller_robot(X0),er_smaller_lockedcell(X0).
-inter_er_smaller_robot_er_smaller_lockedcell(X0) :- object(X0),not inter_er_smaller_robot_er_smaller_lockedcell(X0).
inter_er_smaller_robot_er_below_lockedcell(X0) :- er_smaller_robot(X0),er_below_lockedcell(X0).
-inter_er_smaller_robot_er_below_lockedcell(X0) :- object(X0),not inter_er_smaller_robot_er_below_lockedcell(X0).
inter_er_smaller_robot_er_left_lockedcell(X0) :- er_smaller_robot(X0),er_left_lockedcell(X0).
-inter_er_smaller_robot_er_left_lockedcell(X0) :- object(X0),not inter_er_smaller_robot_er_left_lockedcell(X0).
inter_er_smaller_robot_er_overlap_lockedcell(X0) :- er_smaller_robot(X0),er_overlap_lockedcell(X0).
-inter_er_smaller_robot_er_overlap_lockedcell(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_lockedcell(X0).
inter_er_smaller_robot_er_shape_lockedcell(X0) :- er_smaller_robot(X0),er_shape_lockedcell(X0).
-inter_er_smaller_robot_er_shape_lockedcell(X0) :- object(X0),not inter_er_smaller_robot_er_shape_lockedcell(X0).
inter_er_smaller_robot_er_smaller_sokoban(X0) :- er_smaller_robot(X0),er_smaller_sokoban(X0).
-inter_er_smaller_robot_er_smaller_sokoban(X0) :- object(X0),not inter_er_smaller_robot_er_smaller_sokoban(X0).
inter_er_smaller_robot_er_below_sokoban(X0) :- er_smaller_robot(X0),er_below_sokoban(X0).
-inter_er_smaller_robot_er_below_sokoban(X0) :- object(X0),not inter_er_smaller_robot_er_below_sokoban(X0).
inter_er_smaller_robot_er_left_sokoban(X0) :- er_smaller_robot(X0),er_left_sokoban(X0).
-inter_er_smaller_robot_er_left_sokoban(X0) :- object(X0),not inter_er_smaller_robot_er_left_sokoban(X0).
inter_er_smaller_robot_er_overlap_sokoban(X0) :- er_smaller_robot(X0),er_overlap_sokoban(X0).
-inter_er_smaller_robot_er_overlap_sokoban(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_sokoban(X0).
inter_er_smaller_robot_er_shape_sokoban(X0) :- er_smaller_robot(X0),er_shape_sokoban(X0).
-inter_er_smaller_robot_er_shape_sokoban(X0) :- object(X0),not inter_er_smaller_robot_er_shape_sokoban(X0).
inter_er_smaller_robot_er_smaller_crate(X0) :- er_smaller_robot(X0),er_smaller_crate(X0).
-inter_er_smaller_robot_er_smaller_crate(X0) :- object(X0),not inter_er_smaller_robot_er_smaller_crate(X0).
inter_er_smaller_robot_er_below_crate(X0) :- er_smaller_robot(X0),er_below_crate(X0).
-inter_er_smaller_robot_er_below_crate(X0) :- object(X0),not inter_er_smaller_robot_er_below_crate(X0).
inter_er_smaller_robot_er_left_crate(X0) :- er_smaller_robot(X0),er_left_crate(X0).
-inter_er_smaller_robot_er_left_crate(X0) :- object(X0),not inter_er_smaller_robot_er_left_crate(X0).
inter_er_smaller_robot_er_overlap_crate(X0) :- er_smaller_robot(X0),er_overlap_crate(X0).
-inter_er_smaller_robot_er_overlap_crate(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_crate(X0).
inter_er_smaller_robot_er_shape_crate(X0) :- er_smaller_robot(X0),er_shape_crate(X0).
-inter_er_smaller_robot_er_shape_crate(X0) :- object(X0),not inter_er_smaller_robot_er_shape_crate(X0).
inter_er_smaller_robot_er_smaller_key(X0) :- er_smaller_robot(X0),er_smaller_key(X0).
-inter_er_smaller_robot_er_smaller_key(X0) :- object(X0),not inter_er_smaller_robot_er_smaller_key(X0).
inter_er_smaller_robot_er_below_key(X0) :- er_smaller_robot(X0),er_below_key(X0).
-inter_er_smaller_robot_er_below_key(X0) :- object(X0),not inter_er_smaller_robot_er_below_key(X0).
inter_er_smaller_robot_er_left_key(X0) :- er_smaller_robot(X0),er_left_key(X0).
-inter_er_smaller_robot_er_left_key(X0) :- object(X0),not inter_er_smaller_robot_er_left_key(X0).
inter_er_smaller_robot_er_overlap_key(X0) :- er_smaller_robot(X0),er_overlap_key(X0).
-inter_er_smaller_robot_er_overlap_key(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_key(X0).
inter_er_smaller_robot_er_shape_key(X0) :- er_smaller_robot(X0),er_shape_key(X0).
-inter_er_smaller_robot_er_shape_key(X0) :- object(X0),not inter_er_smaller_robot_er_shape_key(X0).
inter_er_smaller_robot_er_smaller_peg(X0) :- er_smaller_robot(X0),er_smaller_peg(X0).
-inter_er_smaller_robot_er_smaller_peg(X0) :- object(X0),not inter_er_smaller_robot_er_smaller_peg(X0).
inter_er_smaller_robot_er_below_peg(X0) :- er_smaller_robot(X0),er_below_peg(X0).
-inter_er_smaller_robot_er_below_peg(X0) :- object(X0),not inter_er_smaller_robot_er_below_peg(X0).
inter_er_smaller_robot_er_left_peg(X0) :- er_smaller_robot(X0),er_left_peg(X0).
-inter_er_smaller_robot_er_left_peg(X0) :- object(X0),not inter_er_smaller_robot_er_left_peg(X0).
inter_er_smaller_robot_er_overlap_peg(X0) :- er_smaller_robot(X0),er_overlap_peg(X0).
-inter_er_smaller_robot_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_peg(X0).
inter_er_smaller_robot_er_shape_peg(X0) :- er_smaller_robot(X0),er_shape_peg(X0).
-inter_er_smaller_robot_er_shape_peg(X0) :- object(X0),not inter_er_smaller_robot_er_shape_peg(X0).
inter_er_smaller_robot_er_smaller_disk(X0) :- er_smaller_robot(X0),er_smaller_disk(X0).
-inter_er_smaller_robot_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_robot_er_smaller_disk(X0).
inter_er_smaller_robot_er_below_disk(X0) :- er_smaller_robot(X0),er_below_disk(X0).
-inter_er_smaller_robot_er_below_disk(X0) :- object(X0),not inter_er_smaller_robot_er_below_disk(X0).
inter_er_smaller_robot_er_left_disk(X0) :- er_smaller_robot(X0),er_left_disk(X0).
-inter_er_smaller_robot_er_left_disk(X0) :- object(X0),not inter_er_smaller_robot_er_left_disk(X0).
inter_er_smaller_robot_er_overlap_disk(X0) :- er_smaller_robot(X0),er_overlap_disk(X0).
-inter_er_smaller_robot_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_disk(X0).
inter_er_smaller_robot_er_shape_disk(X0) :- er_smaller_robot(X0),er_shape_disk(X0).
-inter_er_smaller_robot_er_shape_disk(X0) :- object(X0),not inter_er_smaller_robot_er_shape_disk(X0).
inter_er_smaller_robot_er_smaller_tile(X0) :- er_smaller_robot(X0),er_smaller_tile(X0).
-inter_er_smaller_robot_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_robot_er_smaller_tile(X0).
inter_er_smaller_robot_er_below_tile(X0) :- er_smaller_robot(X0),er_below_tile(X0).
-inter_er_smaller_robot_er_below_tile(X0) :- object(X0),not inter_er_smaller_robot_er_below_tile(X0).
inter_er_smaller_robot_er_left_tile(X0) :- er_smaller_robot(X0),er_left_tile(X0).
-inter_er_smaller_robot_er_left_tile(X0) :- object(X0),not inter_er_smaller_robot_er_left_tile(X0).
inter_er_smaller_robot_er_overlap_tile(X0) :- er_smaller_robot(X0),er_overlap_tile(X0).
-inter_er_smaller_robot_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_robot_er_overlap_tile(X0).
inter_er_smaller_robot_er_shape_tile(X0) :- er_smaller_robot(X0),er_shape_tile(X0).
-inter_er_smaller_robot_er_shape_tile(X0) :- object(X0),not inter_er_smaller_robot_er_shape_tile(X0).
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
inter_er_below_robot_er_smaller_opencell(X0) :- er_below_robot(X0),er_smaller_opencell(X0).
-inter_er_below_robot_er_smaller_opencell(X0) :- object(X0),not inter_er_below_robot_er_smaller_opencell(X0).
inter_er_below_robot_er_below_opencell(X0) :- er_below_robot(X0),er_below_opencell(X0).
-inter_er_below_robot_er_below_opencell(X0) :- object(X0),not inter_er_below_robot_er_below_opencell(X0).
inter_er_below_robot_er_left_opencell(X0) :- er_below_robot(X0),er_left_opencell(X0).
-inter_er_below_robot_er_left_opencell(X0) :- object(X0),not inter_er_below_robot_er_left_opencell(X0).
inter_er_below_robot_er_overlap_opencell(X0) :- er_below_robot(X0),er_overlap_opencell(X0).
-inter_er_below_robot_er_overlap_opencell(X0) :- object(X0),not inter_er_below_robot_er_overlap_opencell(X0).
inter_er_below_robot_er_shape_opencell(X0) :- er_below_robot(X0),er_shape_opencell(X0).
-inter_er_below_robot_er_shape_opencell(X0) :- object(X0),not inter_er_below_robot_er_shape_opencell(X0).
inter_er_below_robot_er_smaller_lockedcell(X0) :- er_below_robot(X0),er_smaller_lockedcell(X0).
-inter_er_below_robot_er_smaller_lockedcell(X0) :- object(X0),not inter_er_below_robot_er_smaller_lockedcell(X0).
inter_er_below_robot_er_below_lockedcell(X0) :- er_below_robot(X0),er_below_lockedcell(X0).
-inter_er_below_robot_er_below_lockedcell(X0) :- object(X0),not inter_er_below_robot_er_below_lockedcell(X0).
inter_er_below_robot_er_left_lockedcell(X0) :- er_below_robot(X0),er_left_lockedcell(X0).
-inter_er_below_robot_er_left_lockedcell(X0) :- object(X0),not inter_er_below_robot_er_left_lockedcell(X0).
inter_er_below_robot_er_overlap_lockedcell(X0) :- er_below_robot(X0),er_overlap_lockedcell(X0).
-inter_er_below_robot_er_overlap_lockedcell(X0) :- object(X0),not inter_er_below_robot_er_overlap_lockedcell(X0).
inter_er_below_robot_er_shape_lockedcell(X0) :- er_below_robot(X0),er_shape_lockedcell(X0).
-inter_er_below_robot_er_shape_lockedcell(X0) :- object(X0),not inter_er_below_robot_er_shape_lockedcell(X0).
inter_er_below_robot_er_smaller_sokoban(X0) :- er_below_robot(X0),er_smaller_sokoban(X0).
-inter_er_below_robot_er_smaller_sokoban(X0) :- object(X0),not inter_er_below_robot_er_smaller_sokoban(X0).
inter_er_below_robot_er_below_sokoban(X0) :- er_below_robot(X0),er_below_sokoban(X0).
-inter_er_below_robot_er_below_sokoban(X0) :- object(X0),not inter_er_below_robot_er_below_sokoban(X0).
inter_er_below_robot_er_left_sokoban(X0) :- er_below_robot(X0),er_left_sokoban(X0).
-inter_er_below_robot_er_left_sokoban(X0) :- object(X0),not inter_er_below_robot_er_left_sokoban(X0).
inter_er_below_robot_er_overlap_sokoban(X0) :- er_below_robot(X0),er_overlap_sokoban(X0).
-inter_er_below_robot_er_overlap_sokoban(X0) :- object(X0),not inter_er_below_robot_er_overlap_sokoban(X0).
inter_er_below_robot_er_shape_sokoban(X0) :- er_below_robot(X0),er_shape_sokoban(X0).
-inter_er_below_robot_er_shape_sokoban(X0) :- object(X0),not inter_er_below_robot_er_shape_sokoban(X0).
inter_er_below_robot_er_smaller_crate(X0) :- er_below_robot(X0),er_smaller_crate(X0).
-inter_er_below_robot_er_smaller_crate(X0) :- object(X0),not inter_er_below_robot_er_smaller_crate(X0).
inter_er_below_robot_er_below_crate(X0) :- er_below_robot(X0),er_below_crate(X0).
-inter_er_below_robot_er_below_crate(X0) :- object(X0),not inter_er_below_robot_er_below_crate(X0).
inter_er_below_robot_er_left_crate(X0) :- er_below_robot(X0),er_left_crate(X0).
-inter_er_below_robot_er_left_crate(X0) :- object(X0),not inter_er_below_robot_er_left_crate(X0).
inter_er_below_robot_er_overlap_crate(X0) :- er_below_robot(X0),er_overlap_crate(X0).
-inter_er_below_robot_er_overlap_crate(X0) :- object(X0),not inter_er_below_robot_er_overlap_crate(X0).
inter_er_below_robot_er_shape_crate(X0) :- er_below_robot(X0),er_shape_crate(X0).
-inter_er_below_robot_er_shape_crate(X0) :- object(X0),not inter_er_below_robot_er_shape_crate(X0).
inter_er_below_robot_er_smaller_key(X0) :- er_below_robot(X0),er_smaller_key(X0).
-inter_er_below_robot_er_smaller_key(X0) :- object(X0),not inter_er_below_robot_er_smaller_key(X0).
inter_er_below_robot_er_below_key(X0) :- er_below_robot(X0),er_below_key(X0).
-inter_er_below_robot_er_below_key(X0) :- object(X0),not inter_er_below_robot_er_below_key(X0).
inter_er_below_robot_er_left_key(X0) :- er_below_robot(X0),er_left_key(X0).
-inter_er_below_robot_er_left_key(X0) :- object(X0),not inter_er_below_robot_er_left_key(X0).
inter_er_below_robot_er_overlap_key(X0) :- er_below_robot(X0),er_overlap_key(X0).
-inter_er_below_robot_er_overlap_key(X0) :- object(X0),not inter_er_below_robot_er_overlap_key(X0).
inter_er_below_robot_er_shape_key(X0) :- er_below_robot(X0),er_shape_key(X0).
-inter_er_below_robot_er_shape_key(X0) :- object(X0),not inter_er_below_robot_er_shape_key(X0).
inter_er_below_robot_er_smaller_peg(X0) :- er_below_robot(X0),er_smaller_peg(X0).
-inter_er_below_robot_er_smaller_peg(X0) :- object(X0),not inter_er_below_robot_er_smaller_peg(X0).
inter_er_below_robot_er_below_peg(X0) :- er_below_robot(X0),er_below_peg(X0).
-inter_er_below_robot_er_below_peg(X0) :- object(X0),not inter_er_below_robot_er_below_peg(X0).
inter_er_below_robot_er_left_peg(X0) :- er_below_robot(X0),er_left_peg(X0).
-inter_er_below_robot_er_left_peg(X0) :- object(X0),not inter_er_below_robot_er_left_peg(X0).
inter_er_below_robot_er_overlap_peg(X0) :- er_below_robot(X0),er_overlap_peg(X0).
-inter_er_below_robot_er_overlap_peg(X0) :- object(X0),not inter_er_below_robot_er_overlap_peg(X0).
inter_er_below_robot_er_shape_peg(X0) :- er_below_robot(X0),er_shape_peg(X0).
-inter_er_below_robot_er_shape_peg(X0) :- object(X0),not inter_er_below_robot_er_shape_peg(X0).
inter_er_below_robot_er_smaller_disk(X0) :- er_below_robot(X0),er_smaller_disk(X0).
-inter_er_below_robot_er_smaller_disk(X0) :- object(X0),not inter_er_below_robot_er_smaller_disk(X0).
inter_er_below_robot_er_below_disk(X0) :- er_below_robot(X0),er_below_disk(X0).
-inter_er_below_robot_er_below_disk(X0) :- object(X0),not inter_er_below_robot_er_below_disk(X0).
inter_er_below_robot_er_left_disk(X0) :- er_below_robot(X0),er_left_disk(X0).
-inter_er_below_robot_er_left_disk(X0) :- object(X0),not inter_er_below_robot_er_left_disk(X0).
inter_er_below_robot_er_overlap_disk(X0) :- er_below_robot(X0),er_overlap_disk(X0).
-inter_er_below_robot_er_overlap_disk(X0) :- object(X0),not inter_er_below_robot_er_overlap_disk(X0).
inter_er_below_robot_er_shape_disk(X0) :- er_below_robot(X0),er_shape_disk(X0).
-inter_er_below_robot_er_shape_disk(X0) :- object(X0),not inter_er_below_robot_er_shape_disk(X0).
inter_er_below_robot_er_smaller_tile(X0) :- er_below_robot(X0),er_smaller_tile(X0).
-inter_er_below_robot_er_smaller_tile(X0) :- object(X0),not inter_er_below_robot_er_smaller_tile(X0).
inter_er_below_robot_er_below_tile(X0) :- er_below_robot(X0),er_below_tile(X0).
-inter_er_below_robot_er_below_tile(X0) :- object(X0),not inter_er_below_robot_er_below_tile(X0).
inter_er_below_robot_er_left_tile(X0) :- er_below_robot(X0),er_left_tile(X0).
-inter_er_below_robot_er_left_tile(X0) :- object(X0),not inter_er_below_robot_er_left_tile(X0).
inter_er_below_robot_er_overlap_tile(X0) :- er_below_robot(X0),er_overlap_tile(X0).
-inter_er_below_robot_er_overlap_tile(X0) :- object(X0),not inter_er_below_robot_er_overlap_tile(X0).
inter_er_below_robot_er_shape_tile(X0) :- er_below_robot(X0),er_shape_tile(X0).
-inter_er_below_robot_er_shape_tile(X0) :- object(X0),not inter_er_below_robot_er_shape_tile(X0).
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
inter_er_left_robot_er_smaller_opencell(X0) :- er_left_robot(X0),er_smaller_opencell(X0).
-inter_er_left_robot_er_smaller_opencell(X0) :- object(X0),not inter_er_left_robot_er_smaller_opencell(X0).
inter_er_left_robot_er_below_opencell(X0) :- er_left_robot(X0),er_below_opencell(X0).
-inter_er_left_robot_er_below_opencell(X0) :- object(X0),not inter_er_left_robot_er_below_opencell(X0).
inter_er_left_robot_er_left_opencell(X0) :- er_left_robot(X0),er_left_opencell(X0).
-inter_er_left_robot_er_left_opencell(X0) :- object(X0),not inter_er_left_robot_er_left_opencell(X0).
inter_er_left_robot_er_overlap_opencell(X0) :- er_left_robot(X0),er_overlap_opencell(X0).
-inter_er_left_robot_er_overlap_opencell(X0) :- object(X0),not inter_er_left_robot_er_overlap_opencell(X0).
inter_er_left_robot_er_shape_opencell(X0) :- er_left_robot(X0),er_shape_opencell(X0).
-inter_er_left_robot_er_shape_opencell(X0) :- object(X0),not inter_er_left_robot_er_shape_opencell(X0).
inter_er_left_robot_er_smaller_lockedcell(X0) :- er_left_robot(X0),er_smaller_lockedcell(X0).
-inter_er_left_robot_er_smaller_lockedcell(X0) :- object(X0),not inter_er_left_robot_er_smaller_lockedcell(X0).
inter_er_left_robot_er_below_lockedcell(X0) :- er_left_robot(X0),er_below_lockedcell(X0).
-inter_er_left_robot_er_below_lockedcell(X0) :- object(X0),not inter_er_left_robot_er_below_lockedcell(X0).
inter_er_left_robot_er_left_lockedcell(X0) :- er_left_robot(X0),er_left_lockedcell(X0).
-inter_er_left_robot_er_left_lockedcell(X0) :- object(X0),not inter_er_left_robot_er_left_lockedcell(X0).
inter_er_left_robot_er_overlap_lockedcell(X0) :- er_left_robot(X0),er_overlap_lockedcell(X0).
-inter_er_left_robot_er_overlap_lockedcell(X0) :- object(X0),not inter_er_left_robot_er_overlap_lockedcell(X0).
inter_er_left_robot_er_shape_lockedcell(X0) :- er_left_robot(X0),er_shape_lockedcell(X0).
-inter_er_left_robot_er_shape_lockedcell(X0) :- object(X0),not inter_er_left_robot_er_shape_lockedcell(X0).
inter_er_left_robot_er_smaller_sokoban(X0) :- er_left_robot(X0),er_smaller_sokoban(X0).
-inter_er_left_robot_er_smaller_sokoban(X0) :- object(X0),not inter_er_left_robot_er_smaller_sokoban(X0).
inter_er_left_robot_er_below_sokoban(X0) :- er_left_robot(X0),er_below_sokoban(X0).
-inter_er_left_robot_er_below_sokoban(X0) :- object(X0),not inter_er_left_robot_er_below_sokoban(X0).
inter_er_left_robot_er_left_sokoban(X0) :- er_left_robot(X0),er_left_sokoban(X0).
-inter_er_left_robot_er_left_sokoban(X0) :- object(X0),not inter_er_left_robot_er_left_sokoban(X0).
inter_er_left_robot_er_overlap_sokoban(X0) :- er_left_robot(X0),er_overlap_sokoban(X0).
-inter_er_left_robot_er_overlap_sokoban(X0) :- object(X0),not inter_er_left_robot_er_overlap_sokoban(X0).
inter_er_left_robot_er_shape_sokoban(X0) :- er_left_robot(X0),er_shape_sokoban(X0).
-inter_er_left_robot_er_shape_sokoban(X0) :- object(X0),not inter_er_left_robot_er_shape_sokoban(X0).
inter_er_left_robot_er_smaller_crate(X0) :- er_left_robot(X0),er_smaller_crate(X0).
-inter_er_left_robot_er_smaller_crate(X0) :- object(X0),not inter_er_left_robot_er_smaller_crate(X0).
inter_er_left_robot_er_below_crate(X0) :- er_left_robot(X0),er_below_crate(X0).
-inter_er_left_robot_er_below_crate(X0) :- object(X0),not inter_er_left_robot_er_below_crate(X0).
inter_er_left_robot_er_left_crate(X0) :- er_left_robot(X0),er_left_crate(X0).
-inter_er_left_robot_er_left_crate(X0) :- object(X0),not inter_er_left_robot_er_left_crate(X0).
inter_er_left_robot_er_overlap_crate(X0) :- er_left_robot(X0),er_overlap_crate(X0).
-inter_er_left_robot_er_overlap_crate(X0) :- object(X0),not inter_er_left_robot_er_overlap_crate(X0).
inter_er_left_robot_er_shape_crate(X0) :- er_left_robot(X0),er_shape_crate(X0).
-inter_er_left_robot_er_shape_crate(X0) :- object(X0),not inter_er_left_robot_er_shape_crate(X0).
inter_er_left_robot_er_smaller_key(X0) :- er_left_robot(X0),er_smaller_key(X0).
-inter_er_left_robot_er_smaller_key(X0) :- object(X0),not inter_er_left_robot_er_smaller_key(X0).
inter_er_left_robot_er_below_key(X0) :- er_left_robot(X0),er_below_key(X0).
-inter_er_left_robot_er_below_key(X0) :- object(X0),not inter_er_left_robot_er_below_key(X0).
inter_er_left_robot_er_left_key(X0) :- er_left_robot(X0),er_left_key(X0).
-inter_er_left_robot_er_left_key(X0) :- object(X0),not inter_er_left_robot_er_left_key(X0).
inter_er_left_robot_er_overlap_key(X0) :- er_left_robot(X0),er_overlap_key(X0).
-inter_er_left_robot_er_overlap_key(X0) :- object(X0),not inter_er_left_robot_er_overlap_key(X0).
inter_er_left_robot_er_shape_key(X0) :- er_left_robot(X0),er_shape_key(X0).
-inter_er_left_robot_er_shape_key(X0) :- object(X0),not inter_er_left_robot_er_shape_key(X0).
inter_er_left_robot_er_smaller_peg(X0) :- er_left_robot(X0),er_smaller_peg(X0).
-inter_er_left_robot_er_smaller_peg(X0) :- object(X0),not inter_er_left_robot_er_smaller_peg(X0).
inter_er_left_robot_er_below_peg(X0) :- er_left_robot(X0),er_below_peg(X0).
-inter_er_left_robot_er_below_peg(X0) :- object(X0),not inter_er_left_robot_er_below_peg(X0).
inter_er_left_robot_er_left_peg(X0) :- er_left_robot(X0),er_left_peg(X0).
-inter_er_left_robot_er_left_peg(X0) :- object(X0),not inter_er_left_robot_er_left_peg(X0).
inter_er_left_robot_er_overlap_peg(X0) :- er_left_robot(X0),er_overlap_peg(X0).
-inter_er_left_robot_er_overlap_peg(X0) :- object(X0),not inter_er_left_robot_er_overlap_peg(X0).
inter_er_left_robot_er_shape_peg(X0) :- er_left_robot(X0),er_shape_peg(X0).
-inter_er_left_robot_er_shape_peg(X0) :- object(X0),not inter_er_left_robot_er_shape_peg(X0).
inter_er_left_robot_er_smaller_disk(X0) :- er_left_robot(X0),er_smaller_disk(X0).
-inter_er_left_robot_er_smaller_disk(X0) :- object(X0),not inter_er_left_robot_er_smaller_disk(X0).
inter_er_left_robot_er_below_disk(X0) :- er_left_robot(X0),er_below_disk(X0).
-inter_er_left_robot_er_below_disk(X0) :- object(X0),not inter_er_left_robot_er_below_disk(X0).
inter_er_left_robot_er_left_disk(X0) :- er_left_robot(X0),er_left_disk(X0).
-inter_er_left_robot_er_left_disk(X0) :- object(X0),not inter_er_left_robot_er_left_disk(X0).
inter_er_left_robot_er_overlap_disk(X0) :- er_left_robot(X0),er_overlap_disk(X0).
-inter_er_left_robot_er_overlap_disk(X0) :- object(X0),not inter_er_left_robot_er_overlap_disk(X0).
inter_er_left_robot_er_shape_disk(X0) :- er_left_robot(X0),er_shape_disk(X0).
-inter_er_left_robot_er_shape_disk(X0) :- object(X0),not inter_er_left_robot_er_shape_disk(X0).
inter_er_left_robot_er_smaller_tile(X0) :- er_left_robot(X0),er_smaller_tile(X0).
-inter_er_left_robot_er_smaller_tile(X0) :- object(X0),not inter_er_left_robot_er_smaller_tile(X0).
inter_er_left_robot_er_below_tile(X0) :- er_left_robot(X0),er_below_tile(X0).
-inter_er_left_robot_er_below_tile(X0) :- object(X0),not inter_er_left_robot_er_below_tile(X0).
inter_er_left_robot_er_left_tile(X0) :- er_left_robot(X0),er_left_tile(X0).
-inter_er_left_robot_er_left_tile(X0) :- object(X0),not inter_er_left_robot_er_left_tile(X0).
inter_er_left_robot_er_overlap_tile(X0) :- er_left_robot(X0),er_overlap_tile(X0).
-inter_er_left_robot_er_overlap_tile(X0) :- object(X0),not inter_er_left_robot_er_overlap_tile(X0).
inter_er_left_robot_er_shape_tile(X0) :- er_left_robot(X0),er_shape_tile(X0).
-inter_er_left_robot_er_shape_tile(X0) :- object(X0),not inter_er_left_robot_er_shape_tile(X0).
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
inter_er_overlap_robot_er_smaller_opencell(X0) :- er_overlap_robot(X0),er_smaller_opencell(X0).
-inter_er_overlap_robot_er_smaller_opencell(X0) :- object(X0),not inter_er_overlap_robot_er_smaller_opencell(X0).
inter_er_overlap_robot_er_below_opencell(X0) :- er_overlap_robot(X0),er_below_opencell(X0).
-inter_er_overlap_robot_er_below_opencell(X0) :- object(X0),not inter_er_overlap_robot_er_below_opencell(X0).
inter_er_overlap_robot_er_left_opencell(X0) :- er_overlap_robot(X0),er_left_opencell(X0).
-inter_er_overlap_robot_er_left_opencell(X0) :- object(X0),not inter_er_overlap_robot_er_left_opencell(X0).
inter_er_overlap_robot_er_overlap_opencell(X0) :- er_overlap_robot(X0),er_overlap_opencell(X0).
-inter_er_overlap_robot_er_overlap_opencell(X0) :- object(X0),not inter_er_overlap_robot_er_overlap_opencell(X0).
inter_er_overlap_robot_er_shape_opencell(X0) :- er_overlap_robot(X0),er_shape_opencell(X0).
-inter_er_overlap_robot_er_shape_opencell(X0) :- object(X0),not inter_er_overlap_robot_er_shape_opencell(X0).
inter_er_overlap_robot_er_smaller_lockedcell(X0) :- er_overlap_robot(X0),er_smaller_lockedcell(X0).
-inter_er_overlap_robot_er_smaller_lockedcell(X0) :- object(X0),not inter_er_overlap_robot_er_smaller_lockedcell(X0).
inter_er_overlap_robot_er_below_lockedcell(X0) :- er_overlap_robot(X0),er_below_lockedcell(X0).
-inter_er_overlap_robot_er_below_lockedcell(X0) :- object(X0),not inter_er_overlap_robot_er_below_lockedcell(X0).
inter_er_overlap_robot_er_left_lockedcell(X0) :- er_overlap_robot(X0),er_left_lockedcell(X0).
-inter_er_overlap_robot_er_left_lockedcell(X0) :- object(X0),not inter_er_overlap_robot_er_left_lockedcell(X0).
inter_er_overlap_robot_er_overlap_lockedcell(X0) :- er_overlap_robot(X0),er_overlap_lockedcell(X0).
-inter_er_overlap_robot_er_overlap_lockedcell(X0) :- object(X0),not inter_er_overlap_robot_er_overlap_lockedcell(X0).
inter_er_overlap_robot_er_shape_lockedcell(X0) :- er_overlap_robot(X0),er_shape_lockedcell(X0).
-inter_er_overlap_robot_er_shape_lockedcell(X0) :- object(X0),not inter_er_overlap_robot_er_shape_lockedcell(X0).
inter_er_overlap_robot_er_smaller_sokoban(X0) :- er_overlap_robot(X0),er_smaller_sokoban(X0).
-inter_er_overlap_robot_er_smaller_sokoban(X0) :- object(X0),not inter_er_overlap_robot_er_smaller_sokoban(X0).
inter_er_overlap_robot_er_below_sokoban(X0) :- er_overlap_robot(X0),er_below_sokoban(X0).
-inter_er_overlap_robot_er_below_sokoban(X0) :- object(X0),not inter_er_overlap_robot_er_below_sokoban(X0).
inter_er_overlap_robot_er_left_sokoban(X0) :- er_overlap_robot(X0),er_left_sokoban(X0).
-inter_er_overlap_robot_er_left_sokoban(X0) :- object(X0),not inter_er_overlap_robot_er_left_sokoban(X0).
inter_er_overlap_robot_er_overlap_sokoban(X0) :- er_overlap_robot(X0),er_overlap_sokoban(X0).
-inter_er_overlap_robot_er_overlap_sokoban(X0) :- object(X0),not inter_er_overlap_robot_er_overlap_sokoban(X0).
inter_er_overlap_robot_er_shape_sokoban(X0) :- er_overlap_robot(X0),er_shape_sokoban(X0).
-inter_er_overlap_robot_er_shape_sokoban(X0) :- object(X0),not inter_er_overlap_robot_er_shape_sokoban(X0).
inter_er_overlap_robot_er_smaller_crate(X0) :- er_overlap_robot(X0),er_smaller_crate(X0).
-inter_er_overlap_robot_er_smaller_crate(X0) :- object(X0),not inter_er_overlap_robot_er_smaller_crate(X0).
inter_er_overlap_robot_er_below_crate(X0) :- er_overlap_robot(X0),er_below_crate(X0).
-inter_er_overlap_robot_er_below_crate(X0) :- object(X0),not inter_er_overlap_robot_er_below_crate(X0).
inter_er_overlap_robot_er_left_crate(X0) :- er_overlap_robot(X0),er_left_crate(X0).
-inter_er_overlap_robot_er_left_crate(X0) :- object(X0),not inter_er_overlap_robot_er_left_crate(X0).
inter_er_overlap_robot_er_overlap_crate(X0) :- er_overlap_robot(X0),er_overlap_crate(X0).
-inter_er_overlap_robot_er_overlap_crate(X0) :- object(X0),not inter_er_overlap_robot_er_overlap_crate(X0).
inter_er_overlap_robot_er_shape_crate(X0) :- er_overlap_robot(X0),er_shape_crate(X0).
-inter_er_overlap_robot_er_shape_crate(X0) :- object(X0),not inter_er_overlap_robot_er_shape_crate(X0).
inter_er_overlap_robot_er_smaller_key(X0) :- er_overlap_robot(X0),er_smaller_key(X0).
-inter_er_overlap_robot_er_smaller_key(X0) :- object(X0),not inter_er_overlap_robot_er_smaller_key(X0).
inter_er_overlap_robot_er_below_key(X0) :- er_overlap_robot(X0),er_below_key(X0).
-inter_er_overlap_robot_er_below_key(X0) :- object(X0),not inter_er_overlap_robot_er_below_key(X0).
inter_er_overlap_robot_er_left_key(X0) :- er_overlap_robot(X0),er_left_key(X0).
-inter_er_overlap_robot_er_left_key(X0) :- object(X0),not inter_er_overlap_robot_er_left_key(X0).
inter_er_overlap_robot_er_overlap_key(X0) :- er_overlap_robot(X0),er_overlap_key(X0).
-inter_er_overlap_robot_er_overlap_key(X0) :- object(X0),not inter_er_overlap_robot_er_overlap_key(X0).
inter_er_overlap_robot_er_shape_key(X0) :- er_overlap_robot(X0),er_shape_key(X0).
-inter_er_overlap_robot_er_shape_key(X0) :- object(X0),not inter_er_overlap_robot_er_shape_key(X0).
inter_er_overlap_robot_er_smaller_peg(X0) :- er_overlap_robot(X0),er_smaller_peg(X0).
-inter_er_overlap_robot_er_smaller_peg(X0) :- object(X0),not inter_er_overlap_robot_er_smaller_peg(X0).
inter_er_overlap_robot_er_below_peg(X0) :- er_overlap_robot(X0),er_below_peg(X0).
-inter_er_overlap_robot_er_below_peg(X0) :- object(X0),not inter_er_overlap_robot_er_below_peg(X0).
inter_er_overlap_robot_er_left_peg(X0) :- er_overlap_robot(X0),er_left_peg(X0).
-inter_er_overlap_robot_er_left_peg(X0) :- object(X0),not inter_er_overlap_robot_er_left_peg(X0).
inter_er_overlap_robot_er_overlap_peg(X0) :- er_overlap_robot(X0),er_overlap_peg(X0).
-inter_er_overlap_robot_er_overlap_peg(X0) :- object(X0),not inter_er_overlap_robot_er_overlap_peg(X0).
inter_er_overlap_robot_er_shape_peg(X0) :- er_overlap_robot(X0),er_shape_peg(X0).
-inter_er_overlap_robot_er_shape_peg(X0) :- object(X0),not inter_er_overlap_robot_er_shape_peg(X0).
inter_er_overlap_robot_er_smaller_disk(X0) :- er_overlap_robot(X0),er_smaller_disk(X0).
-inter_er_overlap_robot_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_robot_er_smaller_disk(X0).
inter_er_overlap_robot_er_below_disk(X0) :- er_overlap_robot(X0),er_below_disk(X0).
-inter_er_overlap_robot_er_below_disk(X0) :- object(X0),not inter_er_overlap_robot_er_below_disk(X0).
inter_er_overlap_robot_er_left_disk(X0) :- er_overlap_robot(X0),er_left_disk(X0).
-inter_er_overlap_robot_er_left_disk(X0) :- object(X0),not inter_er_overlap_robot_er_left_disk(X0).
inter_er_overlap_robot_er_overlap_disk(X0) :- er_overlap_robot(X0),er_overlap_disk(X0).
-inter_er_overlap_robot_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_robot_er_overlap_disk(X0).
inter_er_overlap_robot_er_shape_disk(X0) :- er_overlap_robot(X0),er_shape_disk(X0).
-inter_er_overlap_robot_er_shape_disk(X0) :- object(X0),not inter_er_overlap_robot_er_shape_disk(X0).
inter_er_overlap_robot_er_smaller_tile(X0) :- er_overlap_robot(X0),er_smaller_tile(X0).
-inter_er_overlap_robot_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_robot_er_smaller_tile(X0).
inter_er_overlap_robot_er_below_tile(X0) :- er_overlap_robot(X0),er_below_tile(X0).
-inter_er_overlap_robot_er_below_tile(X0) :- object(X0),not inter_er_overlap_robot_er_below_tile(X0).
inter_er_overlap_robot_er_left_tile(X0) :- er_overlap_robot(X0),er_left_tile(X0).
-inter_er_overlap_robot_er_left_tile(X0) :- object(X0),not inter_er_overlap_robot_er_left_tile(X0).
inter_er_overlap_robot_er_overlap_tile(X0) :- er_overlap_robot(X0),er_overlap_tile(X0).
-inter_er_overlap_robot_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_robot_er_overlap_tile(X0).
inter_er_overlap_robot_er_shape_tile(X0) :- er_overlap_robot(X0),er_shape_tile(X0).
-inter_er_overlap_robot_er_shape_tile(X0) :- object(X0),not inter_er_overlap_robot_er_shape_tile(X0).
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
inter_er_shape_robot_er_smaller_opencell(X0) :- er_shape_robot(X0),er_smaller_opencell(X0).
-inter_er_shape_robot_er_smaller_opencell(X0) :- object(X0),not inter_er_shape_robot_er_smaller_opencell(X0).
inter_er_shape_robot_er_below_opencell(X0) :- er_shape_robot(X0),er_below_opencell(X0).
-inter_er_shape_robot_er_below_opencell(X0) :- object(X0),not inter_er_shape_robot_er_below_opencell(X0).
inter_er_shape_robot_er_left_opencell(X0) :- er_shape_robot(X0),er_left_opencell(X0).
-inter_er_shape_robot_er_left_opencell(X0) :- object(X0),not inter_er_shape_robot_er_left_opencell(X0).
inter_er_shape_robot_er_overlap_opencell(X0) :- er_shape_robot(X0),er_overlap_opencell(X0).
-inter_er_shape_robot_er_overlap_opencell(X0) :- object(X0),not inter_er_shape_robot_er_overlap_opencell(X0).
inter_er_shape_robot_er_shape_opencell(X0) :- er_shape_robot(X0),er_shape_opencell(X0).
-inter_er_shape_robot_er_shape_opencell(X0) :- object(X0),not inter_er_shape_robot_er_shape_opencell(X0).
inter_er_shape_robot_er_smaller_lockedcell(X0) :- er_shape_robot(X0),er_smaller_lockedcell(X0).
-inter_er_shape_robot_er_smaller_lockedcell(X0) :- object(X0),not inter_er_shape_robot_er_smaller_lockedcell(X0).
inter_er_shape_robot_er_below_lockedcell(X0) :- er_shape_robot(X0),er_below_lockedcell(X0).
-inter_er_shape_robot_er_below_lockedcell(X0) :- object(X0),not inter_er_shape_robot_er_below_lockedcell(X0).
inter_er_shape_robot_er_left_lockedcell(X0) :- er_shape_robot(X0),er_left_lockedcell(X0).
-inter_er_shape_robot_er_left_lockedcell(X0) :- object(X0),not inter_er_shape_robot_er_left_lockedcell(X0).
inter_er_shape_robot_er_overlap_lockedcell(X0) :- er_shape_robot(X0),er_overlap_lockedcell(X0).
-inter_er_shape_robot_er_overlap_lockedcell(X0) :- object(X0),not inter_er_shape_robot_er_overlap_lockedcell(X0).
inter_er_shape_robot_er_shape_lockedcell(X0) :- er_shape_robot(X0),er_shape_lockedcell(X0).
-inter_er_shape_robot_er_shape_lockedcell(X0) :- object(X0),not inter_er_shape_robot_er_shape_lockedcell(X0).
inter_er_shape_robot_er_smaller_sokoban(X0) :- er_shape_robot(X0),er_smaller_sokoban(X0).
-inter_er_shape_robot_er_smaller_sokoban(X0) :- object(X0),not inter_er_shape_robot_er_smaller_sokoban(X0).
inter_er_shape_robot_er_below_sokoban(X0) :- er_shape_robot(X0),er_below_sokoban(X0).
-inter_er_shape_robot_er_below_sokoban(X0) :- object(X0),not inter_er_shape_robot_er_below_sokoban(X0).
inter_er_shape_robot_er_left_sokoban(X0) :- er_shape_robot(X0),er_left_sokoban(X0).
-inter_er_shape_robot_er_left_sokoban(X0) :- object(X0),not inter_er_shape_robot_er_left_sokoban(X0).
inter_er_shape_robot_er_overlap_sokoban(X0) :- er_shape_robot(X0),er_overlap_sokoban(X0).
-inter_er_shape_robot_er_overlap_sokoban(X0) :- object(X0),not inter_er_shape_robot_er_overlap_sokoban(X0).
inter_er_shape_robot_er_shape_sokoban(X0) :- er_shape_robot(X0),er_shape_sokoban(X0).
-inter_er_shape_robot_er_shape_sokoban(X0) :- object(X0),not inter_er_shape_robot_er_shape_sokoban(X0).
inter_er_shape_robot_er_smaller_crate(X0) :- er_shape_robot(X0),er_smaller_crate(X0).
-inter_er_shape_robot_er_smaller_crate(X0) :- object(X0),not inter_er_shape_robot_er_smaller_crate(X0).
inter_er_shape_robot_er_below_crate(X0) :- er_shape_robot(X0),er_below_crate(X0).
-inter_er_shape_robot_er_below_crate(X0) :- object(X0),not inter_er_shape_robot_er_below_crate(X0).
inter_er_shape_robot_er_left_crate(X0) :- er_shape_robot(X0),er_left_crate(X0).
-inter_er_shape_robot_er_left_crate(X0) :- object(X0),not inter_er_shape_robot_er_left_crate(X0).
inter_er_shape_robot_er_overlap_crate(X0) :- er_shape_robot(X0),er_overlap_crate(X0).
-inter_er_shape_robot_er_overlap_crate(X0) :- object(X0),not inter_er_shape_robot_er_overlap_crate(X0).
inter_er_shape_robot_er_shape_crate(X0) :- er_shape_robot(X0),er_shape_crate(X0).
-inter_er_shape_robot_er_shape_crate(X0) :- object(X0),not inter_er_shape_robot_er_shape_crate(X0).
inter_er_shape_robot_er_smaller_key(X0) :- er_shape_robot(X0),er_smaller_key(X0).
-inter_er_shape_robot_er_smaller_key(X0) :- object(X0),not inter_er_shape_robot_er_smaller_key(X0).
inter_er_shape_robot_er_below_key(X0) :- er_shape_robot(X0),er_below_key(X0).
-inter_er_shape_robot_er_below_key(X0) :- object(X0),not inter_er_shape_robot_er_below_key(X0).
inter_er_shape_robot_er_left_key(X0) :- er_shape_robot(X0),er_left_key(X0).
-inter_er_shape_robot_er_left_key(X0) :- object(X0),not inter_er_shape_robot_er_left_key(X0).
inter_er_shape_robot_er_overlap_key(X0) :- er_shape_robot(X0),er_overlap_key(X0).
-inter_er_shape_robot_er_overlap_key(X0) :- object(X0),not inter_er_shape_robot_er_overlap_key(X0).
inter_er_shape_robot_er_shape_key(X0) :- er_shape_robot(X0),er_shape_key(X0).
-inter_er_shape_robot_er_shape_key(X0) :- object(X0),not inter_er_shape_robot_er_shape_key(X0).
inter_er_shape_robot_er_smaller_peg(X0) :- er_shape_robot(X0),er_smaller_peg(X0).
-inter_er_shape_robot_er_smaller_peg(X0) :- object(X0),not inter_er_shape_robot_er_smaller_peg(X0).
inter_er_shape_robot_er_below_peg(X0) :- er_shape_robot(X0),er_below_peg(X0).
-inter_er_shape_robot_er_below_peg(X0) :- object(X0),not inter_er_shape_robot_er_below_peg(X0).
inter_er_shape_robot_er_left_peg(X0) :- er_shape_robot(X0),er_left_peg(X0).
-inter_er_shape_robot_er_left_peg(X0) :- object(X0),not inter_er_shape_robot_er_left_peg(X0).
inter_er_shape_robot_er_overlap_peg(X0) :- er_shape_robot(X0),er_overlap_peg(X0).
-inter_er_shape_robot_er_overlap_peg(X0) :- object(X0),not inter_er_shape_robot_er_overlap_peg(X0).
inter_er_shape_robot_er_shape_peg(X0) :- er_shape_robot(X0),er_shape_peg(X0).
-inter_er_shape_robot_er_shape_peg(X0) :- object(X0),not inter_er_shape_robot_er_shape_peg(X0).
inter_er_shape_robot_er_smaller_disk(X0) :- er_shape_robot(X0),er_smaller_disk(X0).
-inter_er_shape_robot_er_smaller_disk(X0) :- object(X0),not inter_er_shape_robot_er_smaller_disk(X0).
inter_er_shape_robot_er_below_disk(X0) :- er_shape_robot(X0),er_below_disk(X0).
-inter_er_shape_robot_er_below_disk(X0) :- object(X0),not inter_er_shape_robot_er_below_disk(X0).
inter_er_shape_robot_er_left_disk(X0) :- er_shape_robot(X0),er_left_disk(X0).
-inter_er_shape_robot_er_left_disk(X0) :- object(X0),not inter_er_shape_robot_er_left_disk(X0).
inter_er_shape_robot_er_overlap_disk(X0) :- er_shape_robot(X0),er_overlap_disk(X0).
-inter_er_shape_robot_er_overlap_disk(X0) :- object(X0),not inter_er_shape_robot_er_overlap_disk(X0).
inter_er_shape_robot_er_shape_disk(X0) :- er_shape_robot(X0),er_shape_disk(X0).
-inter_er_shape_robot_er_shape_disk(X0) :- object(X0),not inter_er_shape_robot_er_shape_disk(X0).
inter_er_shape_robot_er_smaller_tile(X0) :- er_shape_robot(X0),er_smaller_tile(X0).
-inter_er_shape_robot_er_smaller_tile(X0) :- object(X0),not inter_er_shape_robot_er_smaller_tile(X0).
inter_er_shape_robot_er_below_tile(X0) :- er_shape_robot(X0),er_below_tile(X0).
-inter_er_shape_robot_er_below_tile(X0) :- object(X0),not inter_er_shape_robot_er_below_tile(X0).
inter_er_shape_robot_er_left_tile(X0) :- er_shape_robot(X0),er_left_tile(X0).
-inter_er_shape_robot_er_left_tile(X0) :- object(X0),not inter_er_shape_robot_er_left_tile(X0).
inter_er_shape_robot_er_overlap_tile(X0) :- er_shape_robot(X0),er_overlap_tile(X0).
-inter_er_shape_robot_er_overlap_tile(X0) :- object(X0),not inter_er_shape_robot_er_overlap_tile(X0).
inter_er_shape_robot_er_shape_tile(X0) :- er_shape_robot(X0),er_shape_tile(X0).
-inter_er_shape_robot_er_shape_tile(X0) :- object(X0),not inter_er_shape_robot_er_shape_tile(X0).
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
inter_er_smaller_block_er_smaller_opencell(X0) :- er_smaller_block(X0),er_smaller_opencell(X0).
-inter_er_smaller_block_er_smaller_opencell(X0) :- object(X0),not inter_er_smaller_block_er_smaller_opencell(X0).
inter_er_smaller_block_er_below_opencell(X0) :- er_smaller_block(X0),er_below_opencell(X0).
-inter_er_smaller_block_er_below_opencell(X0) :- object(X0),not inter_er_smaller_block_er_below_opencell(X0).
inter_er_smaller_block_er_left_opencell(X0) :- er_smaller_block(X0),er_left_opencell(X0).
-inter_er_smaller_block_er_left_opencell(X0) :- object(X0),not inter_er_smaller_block_er_left_opencell(X0).
inter_er_smaller_block_er_overlap_opencell(X0) :- er_smaller_block(X0),er_overlap_opencell(X0).
-inter_er_smaller_block_er_overlap_opencell(X0) :- object(X0),not inter_er_smaller_block_er_overlap_opencell(X0).
inter_er_smaller_block_er_shape_opencell(X0) :- er_smaller_block(X0),er_shape_opencell(X0).
-inter_er_smaller_block_er_shape_opencell(X0) :- object(X0),not inter_er_smaller_block_er_shape_opencell(X0).
inter_er_smaller_block_er_smaller_lockedcell(X0) :- er_smaller_block(X0),er_smaller_lockedcell(X0).
-inter_er_smaller_block_er_smaller_lockedcell(X0) :- object(X0),not inter_er_smaller_block_er_smaller_lockedcell(X0).
inter_er_smaller_block_er_below_lockedcell(X0) :- er_smaller_block(X0),er_below_lockedcell(X0).
-inter_er_smaller_block_er_below_lockedcell(X0) :- object(X0),not inter_er_smaller_block_er_below_lockedcell(X0).
inter_er_smaller_block_er_left_lockedcell(X0) :- er_smaller_block(X0),er_left_lockedcell(X0).
-inter_er_smaller_block_er_left_lockedcell(X0) :- object(X0),not inter_er_smaller_block_er_left_lockedcell(X0).
inter_er_smaller_block_er_overlap_lockedcell(X0) :- er_smaller_block(X0),er_overlap_lockedcell(X0).
-inter_er_smaller_block_er_overlap_lockedcell(X0) :- object(X0),not inter_er_smaller_block_er_overlap_lockedcell(X0).
inter_er_smaller_block_er_shape_lockedcell(X0) :- er_smaller_block(X0),er_shape_lockedcell(X0).
-inter_er_smaller_block_er_shape_lockedcell(X0) :- object(X0),not inter_er_smaller_block_er_shape_lockedcell(X0).
inter_er_smaller_block_er_smaller_sokoban(X0) :- er_smaller_block(X0),er_smaller_sokoban(X0).
-inter_er_smaller_block_er_smaller_sokoban(X0) :- object(X0),not inter_er_smaller_block_er_smaller_sokoban(X0).
inter_er_smaller_block_er_below_sokoban(X0) :- er_smaller_block(X0),er_below_sokoban(X0).
-inter_er_smaller_block_er_below_sokoban(X0) :- object(X0),not inter_er_smaller_block_er_below_sokoban(X0).
inter_er_smaller_block_er_left_sokoban(X0) :- er_smaller_block(X0),er_left_sokoban(X0).
-inter_er_smaller_block_er_left_sokoban(X0) :- object(X0),not inter_er_smaller_block_er_left_sokoban(X0).
inter_er_smaller_block_er_overlap_sokoban(X0) :- er_smaller_block(X0),er_overlap_sokoban(X0).
-inter_er_smaller_block_er_overlap_sokoban(X0) :- object(X0),not inter_er_smaller_block_er_overlap_sokoban(X0).
inter_er_smaller_block_er_shape_sokoban(X0) :- er_smaller_block(X0),er_shape_sokoban(X0).
-inter_er_smaller_block_er_shape_sokoban(X0) :- object(X0),not inter_er_smaller_block_er_shape_sokoban(X0).
inter_er_smaller_block_er_smaller_crate(X0) :- er_smaller_block(X0),er_smaller_crate(X0).
-inter_er_smaller_block_er_smaller_crate(X0) :- object(X0),not inter_er_smaller_block_er_smaller_crate(X0).
inter_er_smaller_block_er_below_crate(X0) :- er_smaller_block(X0),er_below_crate(X0).
-inter_er_smaller_block_er_below_crate(X0) :- object(X0),not inter_er_smaller_block_er_below_crate(X0).
inter_er_smaller_block_er_left_crate(X0) :- er_smaller_block(X0),er_left_crate(X0).
-inter_er_smaller_block_er_left_crate(X0) :- object(X0),not inter_er_smaller_block_er_left_crate(X0).
inter_er_smaller_block_er_overlap_crate(X0) :- er_smaller_block(X0),er_overlap_crate(X0).
-inter_er_smaller_block_er_overlap_crate(X0) :- object(X0),not inter_er_smaller_block_er_overlap_crate(X0).
inter_er_smaller_block_er_shape_crate(X0) :- er_smaller_block(X0),er_shape_crate(X0).
-inter_er_smaller_block_er_shape_crate(X0) :- object(X0),not inter_er_smaller_block_er_shape_crate(X0).
inter_er_smaller_block_er_smaller_key(X0) :- er_smaller_block(X0),er_smaller_key(X0).
-inter_er_smaller_block_er_smaller_key(X0) :- object(X0),not inter_er_smaller_block_er_smaller_key(X0).
inter_er_smaller_block_er_below_key(X0) :- er_smaller_block(X0),er_below_key(X0).
-inter_er_smaller_block_er_below_key(X0) :- object(X0),not inter_er_smaller_block_er_below_key(X0).
inter_er_smaller_block_er_left_key(X0) :- er_smaller_block(X0),er_left_key(X0).
-inter_er_smaller_block_er_left_key(X0) :- object(X0),not inter_er_smaller_block_er_left_key(X0).
inter_er_smaller_block_er_overlap_key(X0) :- er_smaller_block(X0),er_overlap_key(X0).
-inter_er_smaller_block_er_overlap_key(X0) :- object(X0),not inter_er_smaller_block_er_overlap_key(X0).
inter_er_smaller_block_er_shape_key(X0) :- er_smaller_block(X0),er_shape_key(X0).
-inter_er_smaller_block_er_shape_key(X0) :- object(X0),not inter_er_smaller_block_er_shape_key(X0).
inter_er_smaller_block_er_smaller_peg(X0) :- er_smaller_block(X0),er_smaller_peg(X0).
-inter_er_smaller_block_er_smaller_peg(X0) :- object(X0),not inter_er_smaller_block_er_smaller_peg(X0).
inter_er_smaller_block_er_below_peg(X0) :- er_smaller_block(X0),er_below_peg(X0).
-inter_er_smaller_block_er_below_peg(X0) :- object(X0),not inter_er_smaller_block_er_below_peg(X0).
inter_er_smaller_block_er_left_peg(X0) :- er_smaller_block(X0),er_left_peg(X0).
-inter_er_smaller_block_er_left_peg(X0) :- object(X0),not inter_er_smaller_block_er_left_peg(X0).
inter_er_smaller_block_er_overlap_peg(X0) :- er_smaller_block(X0),er_overlap_peg(X0).
-inter_er_smaller_block_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_block_er_overlap_peg(X0).
inter_er_smaller_block_er_shape_peg(X0) :- er_smaller_block(X0),er_shape_peg(X0).
-inter_er_smaller_block_er_shape_peg(X0) :- object(X0),not inter_er_smaller_block_er_shape_peg(X0).
inter_er_smaller_block_er_smaller_disk(X0) :- er_smaller_block(X0),er_smaller_disk(X0).
-inter_er_smaller_block_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_block_er_smaller_disk(X0).
inter_er_smaller_block_er_below_disk(X0) :- er_smaller_block(X0),er_below_disk(X0).
-inter_er_smaller_block_er_below_disk(X0) :- object(X0),not inter_er_smaller_block_er_below_disk(X0).
inter_er_smaller_block_er_left_disk(X0) :- er_smaller_block(X0),er_left_disk(X0).
-inter_er_smaller_block_er_left_disk(X0) :- object(X0),not inter_er_smaller_block_er_left_disk(X0).
inter_er_smaller_block_er_overlap_disk(X0) :- er_smaller_block(X0),er_overlap_disk(X0).
-inter_er_smaller_block_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_block_er_overlap_disk(X0).
inter_er_smaller_block_er_shape_disk(X0) :- er_smaller_block(X0),er_shape_disk(X0).
-inter_er_smaller_block_er_shape_disk(X0) :- object(X0),not inter_er_smaller_block_er_shape_disk(X0).
inter_er_smaller_block_er_smaller_tile(X0) :- er_smaller_block(X0),er_smaller_tile(X0).
-inter_er_smaller_block_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_block_er_smaller_tile(X0).
inter_er_smaller_block_er_below_tile(X0) :- er_smaller_block(X0),er_below_tile(X0).
-inter_er_smaller_block_er_below_tile(X0) :- object(X0),not inter_er_smaller_block_er_below_tile(X0).
inter_er_smaller_block_er_left_tile(X0) :- er_smaller_block(X0),er_left_tile(X0).
-inter_er_smaller_block_er_left_tile(X0) :- object(X0),not inter_er_smaller_block_er_left_tile(X0).
inter_er_smaller_block_er_overlap_tile(X0) :- er_smaller_block(X0),er_overlap_tile(X0).
-inter_er_smaller_block_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_block_er_overlap_tile(X0).
inter_er_smaller_block_er_shape_tile(X0) :- er_smaller_block(X0),er_shape_tile(X0).
-inter_er_smaller_block_er_shape_tile(X0) :- object(X0),not inter_er_smaller_block_er_shape_tile(X0).
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
inter_er_below_block_er_smaller_opencell(X0) :- er_below_block(X0),er_smaller_opencell(X0).
-inter_er_below_block_er_smaller_opencell(X0) :- object(X0),not inter_er_below_block_er_smaller_opencell(X0).
inter_er_below_block_er_below_opencell(X0) :- er_below_block(X0),er_below_opencell(X0).
-inter_er_below_block_er_below_opencell(X0) :- object(X0),not inter_er_below_block_er_below_opencell(X0).
inter_er_below_block_er_left_opencell(X0) :- er_below_block(X0),er_left_opencell(X0).
-inter_er_below_block_er_left_opencell(X0) :- object(X0),not inter_er_below_block_er_left_opencell(X0).
inter_er_below_block_er_overlap_opencell(X0) :- er_below_block(X0),er_overlap_opencell(X0).
-inter_er_below_block_er_overlap_opencell(X0) :- object(X0),not inter_er_below_block_er_overlap_opencell(X0).
inter_er_below_block_er_shape_opencell(X0) :- er_below_block(X0),er_shape_opencell(X0).
-inter_er_below_block_er_shape_opencell(X0) :- object(X0),not inter_er_below_block_er_shape_opencell(X0).
inter_er_below_block_er_smaller_lockedcell(X0) :- er_below_block(X0),er_smaller_lockedcell(X0).
-inter_er_below_block_er_smaller_lockedcell(X0) :- object(X0),not inter_er_below_block_er_smaller_lockedcell(X0).
inter_er_below_block_er_below_lockedcell(X0) :- er_below_block(X0),er_below_lockedcell(X0).
-inter_er_below_block_er_below_lockedcell(X0) :- object(X0),not inter_er_below_block_er_below_lockedcell(X0).
inter_er_below_block_er_left_lockedcell(X0) :- er_below_block(X0),er_left_lockedcell(X0).
-inter_er_below_block_er_left_lockedcell(X0) :- object(X0),not inter_er_below_block_er_left_lockedcell(X0).
inter_er_below_block_er_overlap_lockedcell(X0) :- er_below_block(X0),er_overlap_lockedcell(X0).
-inter_er_below_block_er_overlap_lockedcell(X0) :- object(X0),not inter_er_below_block_er_overlap_lockedcell(X0).
inter_er_below_block_er_shape_lockedcell(X0) :- er_below_block(X0),er_shape_lockedcell(X0).
-inter_er_below_block_er_shape_lockedcell(X0) :- object(X0),not inter_er_below_block_er_shape_lockedcell(X0).
inter_er_below_block_er_smaller_sokoban(X0) :- er_below_block(X0),er_smaller_sokoban(X0).
-inter_er_below_block_er_smaller_sokoban(X0) :- object(X0),not inter_er_below_block_er_smaller_sokoban(X0).
inter_er_below_block_er_below_sokoban(X0) :- er_below_block(X0),er_below_sokoban(X0).
-inter_er_below_block_er_below_sokoban(X0) :- object(X0),not inter_er_below_block_er_below_sokoban(X0).
inter_er_below_block_er_left_sokoban(X0) :- er_below_block(X0),er_left_sokoban(X0).
-inter_er_below_block_er_left_sokoban(X0) :- object(X0),not inter_er_below_block_er_left_sokoban(X0).
inter_er_below_block_er_overlap_sokoban(X0) :- er_below_block(X0),er_overlap_sokoban(X0).
-inter_er_below_block_er_overlap_sokoban(X0) :- object(X0),not inter_er_below_block_er_overlap_sokoban(X0).
inter_er_below_block_er_shape_sokoban(X0) :- er_below_block(X0),er_shape_sokoban(X0).
-inter_er_below_block_er_shape_sokoban(X0) :- object(X0),not inter_er_below_block_er_shape_sokoban(X0).
inter_er_below_block_er_smaller_crate(X0) :- er_below_block(X0),er_smaller_crate(X0).
-inter_er_below_block_er_smaller_crate(X0) :- object(X0),not inter_er_below_block_er_smaller_crate(X0).
inter_er_below_block_er_below_crate(X0) :- er_below_block(X0),er_below_crate(X0).
-inter_er_below_block_er_below_crate(X0) :- object(X0),not inter_er_below_block_er_below_crate(X0).
inter_er_below_block_er_left_crate(X0) :- er_below_block(X0),er_left_crate(X0).
-inter_er_below_block_er_left_crate(X0) :- object(X0),not inter_er_below_block_er_left_crate(X0).
inter_er_below_block_er_overlap_crate(X0) :- er_below_block(X0),er_overlap_crate(X0).
-inter_er_below_block_er_overlap_crate(X0) :- object(X0),not inter_er_below_block_er_overlap_crate(X0).
inter_er_below_block_er_shape_crate(X0) :- er_below_block(X0),er_shape_crate(X0).
-inter_er_below_block_er_shape_crate(X0) :- object(X0),not inter_er_below_block_er_shape_crate(X0).
inter_er_below_block_er_smaller_key(X0) :- er_below_block(X0),er_smaller_key(X0).
-inter_er_below_block_er_smaller_key(X0) :- object(X0),not inter_er_below_block_er_smaller_key(X0).
inter_er_below_block_er_below_key(X0) :- er_below_block(X0),er_below_key(X0).
-inter_er_below_block_er_below_key(X0) :- object(X0),not inter_er_below_block_er_below_key(X0).
inter_er_below_block_er_left_key(X0) :- er_below_block(X0),er_left_key(X0).
-inter_er_below_block_er_left_key(X0) :- object(X0),not inter_er_below_block_er_left_key(X0).
inter_er_below_block_er_overlap_key(X0) :- er_below_block(X0),er_overlap_key(X0).
-inter_er_below_block_er_overlap_key(X0) :- object(X0),not inter_er_below_block_er_overlap_key(X0).
inter_er_below_block_er_shape_key(X0) :- er_below_block(X0),er_shape_key(X0).
-inter_er_below_block_er_shape_key(X0) :- object(X0),not inter_er_below_block_er_shape_key(X0).
inter_er_below_block_er_smaller_peg(X0) :- er_below_block(X0),er_smaller_peg(X0).
-inter_er_below_block_er_smaller_peg(X0) :- object(X0),not inter_er_below_block_er_smaller_peg(X0).
inter_er_below_block_er_below_peg(X0) :- er_below_block(X0),er_below_peg(X0).
-inter_er_below_block_er_below_peg(X0) :- object(X0),not inter_er_below_block_er_below_peg(X0).
inter_er_below_block_er_left_peg(X0) :- er_below_block(X0),er_left_peg(X0).
-inter_er_below_block_er_left_peg(X0) :- object(X0),not inter_er_below_block_er_left_peg(X0).
inter_er_below_block_er_overlap_peg(X0) :- er_below_block(X0),er_overlap_peg(X0).
-inter_er_below_block_er_overlap_peg(X0) :- object(X0),not inter_er_below_block_er_overlap_peg(X0).
inter_er_below_block_er_shape_peg(X0) :- er_below_block(X0),er_shape_peg(X0).
-inter_er_below_block_er_shape_peg(X0) :- object(X0),not inter_er_below_block_er_shape_peg(X0).
inter_er_below_block_er_smaller_disk(X0) :- er_below_block(X0),er_smaller_disk(X0).
-inter_er_below_block_er_smaller_disk(X0) :- object(X0),not inter_er_below_block_er_smaller_disk(X0).
inter_er_below_block_er_below_disk(X0) :- er_below_block(X0),er_below_disk(X0).
-inter_er_below_block_er_below_disk(X0) :- object(X0),not inter_er_below_block_er_below_disk(X0).
inter_er_below_block_er_left_disk(X0) :- er_below_block(X0),er_left_disk(X0).
-inter_er_below_block_er_left_disk(X0) :- object(X0),not inter_er_below_block_er_left_disk(X0).
inter_er_below_block_er_overlap_disk(X0) :- er_below_block(X0),er_overlap_disk(X0).
-inter_er_below_block_er_overlap_disk(X0) :- object(X0),not inter_er_below_block_er_overlap_disk(X0).
inter_er_below_block_er_shape_disk(X0) :- er_below_block(X0),er_shape_disk(X0).
-inter_er_below_block_er_shape_disk(X0) :- object(X0),not inter_er_below_block_er_shape_disk(X0).
inter_er_below_block_er_smaller_tile(X0) :- er_below_block(X0),er_smaller_tile(X0).
-inter_er_below_block_er_smaller_tile(X0) :- object(X0),not inter_er_below_block_er_smaller_tile(X0).
inter_er_below_block_er_below_tile(X0) :- er_below_block(X0),er_below_tile(X0).
-inter_er_below_block_er_below_tile(X0) :- object(X0),not inter_er_below_block_er_below_tile(X0).
inter_er_below_block_er_left_tile(X0) :- er_below_block(X0),er_left_tile(X0).
-inter_er_below_block_er_left_tile(X0) :- object(X0),not inter_er_below_block_er_left_tile(X0).
inter_er_below_block_er_overlap_tile(X0) :- er_below_block(X0),er_overlap_tile(X0).
-inter_er_below_block_er_overlap_tile(X0) :- object(X0),not inter_er_below_block_er_overlap_tile(X0).
inter_er_below_block_er_shape_tile(X0) :- er_below_block(X0),er_shape_tile(X0).
-inter_er_below_block_er_shape_tile(X0) :- object(X0),not inter_er_below_block_er_shape_tile(X0).
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
inter_er_left_block_er_smaller_opencell(X0) :- er_left_block(X0),er_smaller_opencell(X0).
-inter_er_left_block_er_smaller_opencell(X0) :- object(X0),not inter_er_left_block_er_smaller_opencell(X0).
inter_er_left_block_er_below_opencell(X0) :- er_left_block(X0),er_below_opencell(X0).
-inter_er_left_block_er_below_opencell(X0) :- object(X0),not inter_er_left_block_er_below_opencell(X0).
inter_er_left_block_er_left_opencell(X0) :- er_left_block(X0),er_left_opencell(X0).
-inter_er_left_block_er_left_opencell(X0) :- object(X0),not inter_er_left_block_er_left_opencell(X0).
inter_er_left_block_er_overlap_opencell(X0) :- er_left_block(X0),er_overlap_opencell(X0).
-inter_er_left_block_er_overlap_opencell(X0) :- object(X0),not inter_er_left_block_er_overlap_opencell(X0).
inter_er_left_block_er_shape_opencell(X0) :- er_left_block(X0),er_shape_opencell(X0).
-inter_er_left_block_er_shape_opencell(X0) :- object(X0),not inter_er_left_block_er_shape_opencell(X0).
inter_er_left_block_er_smaller_lockedcell(X0) :- er_left_block(X0),er_smaller_lockedcell(X0).
-inter_er_left_block_er_smaller_lockedcell(X0) :- object(X0),not inter_er_left_block_er_smaller_lockedcell(X0).
inter_er_left_block_er_below_lockedcell(X0) :- er_left_block(X0),er_below_lockedcell(X0).
-inter_er_left_block_er_below_lockedcell(X0) :- object(X0),not inter_er_left_block_er_below_lockedcell(X0).
inter_er_left_block_er_left_lockedcell(X0) :- er_left_block(X0),er_left_lockedcell(X0).
-inter_er_left_block_er_left_lockedcell(X0) :- object(X0),not inter_er_left_block_er_left_lockedcell(X0).
inter_er_left_block_er_overlap_lockedcell(X0) :- er_left_block(X0),er_overlap_lockedcell(X0).
-inter_er_left_block_er_overlap_lockedcell(X0) :- object(X0),not inter_er_left_block_er_overlap_lockedcell(X0).
inter_er_left_block_er_shape_lockedcell(X0) :- er_left_block(X0),er_shape_lockedcell(X0).
-inter_er_left_block_er_shape_lockedcell(X0) :- object(X0),not inter_er_left_block_er_shape_lockedcell(X0).
inter_er_left_block_er_smaller_sokoban(X0) :- er_left_block(X0),er_smaller_sokoban(X0).
-inter_er_left_block_er_smaller_sokoban(X0) :- object(X0),not inter_er_left_block_er_smaller_sokoban(X0).
inter_er_left_block_er_below_sokoban(X0) :- er_left_block(X0),er_below_sokoban(X0).
-inter_er_left_block_er_below_sokoban(X0) :- object(X0),not inter_er_left_block_er_below_sokoban(X0).
inter_er_left_block_er_left_sokoban(X0) :- er_left_block(X0),er_left_sokoban(X0).
-inter_er_left_block_er_left_sokoban(X0) :- object(X0),not inter_er_left_block_er_left_sokoban(X0).
inter_er_left_block_er_overlap_sokoban(X0) :- er_left_block(X0),er_overlap_sokoban(X0).
-inter_er_left_block_er_overlap_sokoban(X0) :- object(X0),not inter_er_left_block_er_overlap_sokoban(X0).
inter_er_left_block_er_shape_sokoban(X0) :- er_left_block(X0),er_shape_sokoban(X0).
-inter_er_left_block_er_shape_sokoban(X0) :- object(X0),not inter_er_left_block_er_shape_sokoban(X0).
inter_er_left_block_er_smaller_crate(X0) :- er_left_block(X0),er_smaller_crate(X0).
-inter_er_left_block_er_smaller_crate(X0) :- object(X0),not inter_er_left_block_er_smaller_crate(X0).
inter_er_left_block_er_below_crate(X0) :- er_left_block(X0),er_below_crate(X0).
-inter_er_left_block_er_below_crate(X0) :- object(X0),not inter_er_left_block_er_below_crate(X0).
inter_er_left_block_er_left_crate(X0) :- er_left_block(X0),er_left_crate(X0).
-inter_er_left_block_er_left_crate(X0) :- object(X0),not inter_er_left_block_er_left_crate(X0).
inter_er_left_block_er_overlap_crate(X0) :- er_left_block(X0),er_overlap_crate(X0).
-inter_er_left_block_er_overlap_crate(X0) :- object(X0),not inter_er_left_block_er_overlap_crate(X0).
inter_er_left_block_er_shape_crate(X0) :- er_left_block(X0),er_shape_crate(X0).
-inter_er_left_block_er_shape_crate(X0) :- object(X0),not inter_er_left_block_er_shape_crate(X0).
inter_er_left_block_er_smaller_key(X0) :- er_left_block(X0),er_smaller_key(X0).
-inter_er_left_block_er_smaller_key(X0) :- object(X0),not inter_er_left_block_er_smaller_key(X0).
inter_er_left_block_er_below_key(X0) :- er_left_block(X0),er_below_key(X0).
-inter_er_left_block_er_below_key(X0) :- object(X0),not inter_er_left_block_er_below_key(X0).
inter_er_left_block_er_left_key(X0) :- er_left_block(X0),er_left_key(X0).
-inter_er_left_block_er_left_key(X0) :- object(X0),not inter_er_left_block_er_left_key(X0).
inter_er_left_block_er_overlap_key(X0) :- er_left_block(X0),er_overlap_key(X0).
-inter_er_left_block_er_overlap_key(X0) :- object(X0),not inter_er_left_block_er_overlap_key(X0).
inter_er_left_block_er_shape_key(X0) :- er_left_block(X0),er_shape_key(X0).
-inter_er_left_block_er_shape_key(X0) :- object(X0),not inter_er_left_block_er_shape_key(X0).
inter_er_left_block_er_smaller_peg(X0) :- er_left_block(X0),er_smaller_peg(X0).
-inter_er_left_block_er_smaller_peg(X0) :- object(X0),not inter_er_left_block_er_smaller_peg(X0).
inter_er_left_block_er_below_peg(X0) :- er_left_block(X0),er_below_peg(X0).
-inter_er_left_block_er_below_peg(X0) :- object(X0),not inter_er_left_block_er_below_peg(X0).
inter_er_left_block_er_left_peg(X0) :- er_left_block(X0),er_left_peg(X0).
-inter_er_left_block_er_left_peg(X0) :- object(X0),not inter_er_left_block_er_left_peg(X0).
inter_er_left_block_er_overlap_peg(X0) :- er_left_block(X0),er_overlap_peg(X0).
-inter_er_left_block_er_overlap_peg(X0) :- object(X0),not inter_er_left_block_er_overlap_peg(X0).
inter_er_left_block_er_shape_peg(X0) :- er_left_block(X0),er_shape_peg(X0).
-inter_er_left_block_er_shape_peg(X0) :- object(X0),not inter_er_left_block_er_shape_peg(X0).
inter_er_left_block_er_smaller_disk(X0) :- er_left_block(X0),er_smaller_disk(X0).
-inter_er_left_block_er_smaller_disk(X0) :- object(X0),not inter_er_left_block_er_smaller_disk(X0).
inter_er_left_block_er_below_disk(X0) :- er_left_block(X0),er_below_disk(X0).
-inter_er_left_block_er_below_disk(X0) :- object(X0),not inter_er_left_block_er_below_disk(X0).
inter_er_left_block_er_left_disk(X0) :- er_left_block(X0),er_left_disk(X0).
-inter_er_left_block_er_left_disk(X0) :- object(X0),not inter_er_left_block_er_left_disk(X0).
inter_er_left_block_er_overlap_disk(X0) :- er_left_block(X0),er_overlap_disk(X0).
-inter_er_left_block_er_overlap_disk(X0) :- object(X0),not inter_er_left_block_er_overlap_disk(X0).
inter_er_left_block_er_shape_disk(X0) :- er_left_block(X0),er_shape_disk(X0).
-inter_er_left_block_er_shape_disk(X0) :- object(X0),not inter_er_left_block_er_shape_disk(X0).
inter_er_left_block_er_smaller_tile(X0) :- er_left_block(X0),er_smaller_tile(X0).
-inter_er_left_block_er_smaller_tile(X0) :- object(X0),not inter_er_left_block_er_smaller_tile(X0).
inter_er_left_block_er_below_tile(X0) :- er_left_block(X0),er_below_tile(X0).
-inter_er_left_block_er_below_tile(X0) :- object(X0),not inter_er_left_block_er_below_tile(X0).
inter_er_left_block_er_left_tile(X0) :- er_left_block(X0),er_left_tile(X0).
-inter_er_left_block_er_left_tile(X0) :- object(X0),not inter_er_left_block_er_left_tile(X0).
inter_er_left_block_er_overlap_tile(X0) :- er_left_block(X0),er_overlap_tile(X0).
-inter_er_left_block_er_overlap_tile(X0) :- object(X0),not inter_er_left_block_er_overlap_tile(X0).
inter_er_left_block_er_shape_tile(X0) :- er_left_block(X0),er_shape_tile(X0).
-inter_er_left_block_er_shape_tile(X0) :- object(X0),not inter_er_left_block_er_shape_tile(X0).
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
inter_er_overlap_block_er_smaller_opencell(X0) :- er_overlap_block(X0),er_smaller_opencell(X0).
-inter_er_overlap_block_er_smaller_opencell(X0) :- object(X0),not inter_er_overlap_block_er_smaller_opencell(X0).
inter_er_overlap_block_er_below_opencell(X0) :- er_overlap_block(X0),er_below_opencell(X0).
-inter_er_overlap_block_er_below_opencell(X0) :- object(X0),not inter_er_overlap_block_er_below_opencell(X0).
inter_er_overlap_block_er_left_opencell(X0) :- er_overlap_block(X0),er_left_opencell(X0).
-inter_er_overlap_block_er_left_opencell(X0) :- object(X0),not inter_er_overlap_block_er_left_opencell(X0).
inter_er_overlap_block_er_overlap_opencell(X0) :- er_overlap_block(X0),er_overlap_opencell(X0).
-inter_er_overlap_block_er_overlap_opencell(X0) :- object(X0),not inter_er_overlap_block_er_overlap_opencell(X0).
inter_er_overlap_block_er_shape_opencell(X0) :- er_overlap_block(X0),er_shape_opencell(X0).
-inter_er_overlap_block_er_shape_opencell(X0) :- object(X0),not inter_er_overlap_block_er_shape_opencell(X0).
inter_er_overlap_block_er_smaller_lockedcell(X0) :- er_overlap_block(X0),er_smaller_lockedcell(X0).
-inter_er_overlap_block_er_smaller_lockedcell(X0) :- object(X0),not inter_er_overlap_block_er_smaller_lockedcell(X0).
inter_er_overlap_block_er_below_lockedcell(X0) :- er_overlap_block(X0),er_below_lockedcell(X0).
-inter_er_overlap_block_er_below_lockedcell(X0) :- object(X0),not inter_er_overlap_block_er_below_lockedcell(X0).
inter_er_overlap_block_er_left_lockedcell(X0) :- er_overlap_block(X0),er_left_lockedcell(X0).
-inter_er_overlap_block_er_left_lockedcell(X0) :- object(X0),not inter_er_overlap_block_er_left_lockedcell(X0).
inter_er_overlap_block_er_overlap_lockedcell(X0) :- er_overlap_block(X0),er_overlap_lockedcell(X0).
-inter_er_overlap_block_er_overlap_lockedcell(X0) :- object(X0),not inter_er_overlap_block_er_overlap_lockedcell(X0).
inter_er_overlap_block_er_shape_lockedcell(X0) :- er_overlap_block(X0),er_shape_lockedcell(X0).
-inter_er_overlap_block_er_shape_lockedcell(X0) :- object(X0),not inter_er_overlap_block_er_shape_lockedcell(X0).
inter_er_overlap_block_er_smaller_sokoban(X0) :- er_overlap_block(X0),er_smaller_sokoban(X0).
-inter_er_overlap_block_er_smaller_sokoban(X0) :- object(X0),not inter_er_overlap_block_er_smaller_sokoban(X0).
inter_er_overlap_block_er_below_sokoban(X0) :- er_overlap_block(X0),er_below_sokoban(X0).
-inter_er_overlap_block_er_below_sokoban(X0) :- object(X0),not inter_er_overlap_block_er_below_sokoban(X0).
inter_er_overlap_block_er_left_sokoban(X0) :- er_overlap_block(X0),er_left_sokoban(X0).
-inter_er_overlap_block_er_left_sokoban(X0) :- object(X0),not inter_er_overlap_block_er_left_sokoban(X0).
inter_er_overlap_block_er_overlap_sokoban(X0) :- er_overlap_block(X0),er_overlap_sokoban(X0).
-inter_er_overlap_block_er_overlap_sokoban(X0) :- object(X0),not inter_er_overlap_block_er_overlap_sokoban(X0).
inter_er_overlap_block_er_shape_sokoban(X0) :- er_overlap_block(X0),er_shape_sokoban(X0).
-inter_er_overlap_block_er_shape_sokoban(X0) :- object(X0),not inter_er_overlap_block_er_shape_sokoban(X0).
inter_er_overlap_block_er_smaller_crate(X0) :- er_overlap_block(X0),er_smaller_crate(X0).
-inter_er_overlap_block_er_smaller_crate(X0) :- object(X0),not inter_er_overlap_block_er_smaller_crate(X0).
inter_er_overlap_block_er_below_crate(X0) :- er_overlap_block(X0),er_below_crate(X0).
-inter_er_overlap_block_er_below_crate(X0) :- object(X0),not inter_er_overlap_block_er_below_crate(X0).
inter_er_overlap_block_er_left_crate(X0) :- er_overlap_block(X0),er_left_crate(X0).
-inter_er_overlap_block_er_left_crate(X0) :- object(X0),not inter_er_overlap_block_er_left_crate(X0).
inter_er_overlap_block_er_overlap_crate(X0) :- er_overlap_block(X0),er_overlap_crate(X0).
-inter_er_overlap_block_er_overlap_crate(X0) :- object(X0),not inter_er_overlap_block_er_overlap_crate(X0).
inter_er_overlap_block_er_shape_crate(X0) :- er_overlap_block(X0),er_shape_crate(X0).
-inter_er_overlap_block_er_shape_crate(X0) :- object(X0),not inter_er_overlap_block_er_shape_crate(X0).
inter_er_overlap_block_er_smaller_key(X0) :- er_overlap_block(X0),er_smaller_key(X0).
-inter_er_overlap_block_er_smaller_key(X0) :- object(X0),not inter_er_overlap_block_er_smaller_key(X0).
inter_er_overlap_block_er_below_key(X0) :- er_overlap_block(X0),er_below_key(X0).
-inter_er_overlap_block_er_below_key(X0) :- object(X0),not inter_er_overlap_block_er_below_key(X0).
inter_er_overlap_block_er_left_key(X0) :- er_overlap_block(X0),er_left_key(X0).
-inter_er_overlap_block_er_left_key(X0) :- object(X0),not inter_er_overlap_block_er_left_key(X0).
inter_er_overlap_block_er_overlap_key(X0) :- er_overlap_block(X0),er_overlap_key(X0).
-inter_er_overlap_block_er_overlap_key(X0) :- object(X0),not inter_er_overlap_block_er_overlap_key(X0).
inter_er_overlap_block_er_shape_key(X0) :- er_overlap_block(X0),er_shape_key(X0).
-inter_er_overlap_block_er_shape_key(X0) :- object(X0),not inter_er_overlap_block_er_shape_key(X0).
inter_er_overlap_block_er_smaller_peg(X0) :- er_overlap_block(X0),er_smaller_peg(X0).
-inter_er_overlap_block_er_smaller_peg(X0) :- object(X0),not inter_er_overlap_block_er_smaller_peg(X0).
inter_er_overlap_block_er_below_peg(X0) :- er_overlap_block(X0),er_below_peg(X0).
-inter_er_overlap_block_er_below_peg(X0) :- object(X0),not inter_er_overlap_block_er_below_peg(X0).
inter_er_overlap_block_er_left_peg(X0) :- er_overlap_block(X0),er_left_peg(X0).
-inter_er_overlap_block_er_left_peg(X0) :- object(X0),not inter_er_overlap_block_er_left_peg(X0).
inter_er_overlap_block_er_overlap_peg(X0) :- er_overlap_block(X0),er_overlap_peg(X0).
-inter_er_overlap_block_er_overlap_peg(X0) :- object(X0),not inter_er_overlap_block_er_overlap_peg(X0).
inter_er_overlap_block_er_shape_peg(X0) :- er_overlap_block(X0),er_shape_peg(X0).
-inter_er_overlap_block_er_shape_peg(X0) :- object(X0),not inter_er_overlap_block_er_shape_peg(X0).
inter_er_overlap_block_er_smaller_disk(X0) :- er_overlap_block(X0),er_smaller_disk(X0).
-inter_er_overlap_block_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_block_er_smaller_disk(X0).
inter_er_overlap_block_er_below_disk(X0) :- er_overlap_block(X0),er_below_disk(X0).
-inter_er_overlap_block_er_below_disk(X0) :- object(X0),not inter_er_overlap_block_er_below_disk(X0).
inter_er_overlap_block_er_left_disk(X0) :- er_overlap_block(X0),er_left_disk(X0).
-inter_er_overlap_block_er_left_disk(X0) :- object(X0),not inter_er_overlap_block_er_left_disk(X0).
inter_er_overlap_block_er_overlap_disk(X0) :- er_overlap_block(X0),er_overlap_disk(X0).
-inter_er_overlap_block_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_block_er_overlap_disk(X0).
inter_er_overlap_block_er_shape_disk(X0) :- er_overlap_block(X0),er_shape_disk(X0).
-inter_er_overlap_block_er_shape_disk(X0) :- object(X0),not inter_er_overlap_block_er_shape_disk(X0).
inter_er_overlap_block_er_smaller_tile(X0) :- er_overlap_block(X0),er_smaller_tile(X0).
-inter_er_overlap_block_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_block_er_smaller_tile(X0).
inter_er_overlap_block_er_below_tile(X0) :- er_overlap_block(X0),er_below_tile(X0).
-inter_er_overlap_block_er_below_tile(X0) :- object(X0),not inter_er_overlap_block_er_below_tile(X0).
inter_er_overlap_block_er_left_tile(X0) :- er_overlap_block(X0),er_left_tile(X0).
-inter_er_overlap_block_er_left_tile(X0) :- object(X0),not inter_er_overlap_block_er_left_tile(X0).
inter_er_overlap_block_er_overlap_tile(X0) :- er_overlap_block(X0),er_overlap_tile(X0).
-inter_er_overlap_block_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_block_er_overlap_tile(X0).
inter_er_overlap_block_er_shape_tile(X0) :- er_overlap_block(X0),er_shape_tile(X0).
-inter_er_overlap_block_er_shape_tile(X0) :- object(X0),not inter_er_overlap_block_er_shape_tile(X0).
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
inter_er_shape_block_er_smaller_opencell(X0) :- er_shape_block(X0),er_smaller_opencell(X0).
-inter_er_shape_block_er_smaller_opencell(X0) :- object(X0),not inter_er_shape_block_er_smaller_opencell(X0).
inter_er_shape_block_er_below_opencell(X0) :- er_shape_block(X0),er_below_opencell(X0).
-inter_er_shape_block_er_below_opencell(X0) :- object(X0),not inter_er_shape_block_er_below_opencell(X0).
inter_er_shape_block_er_left_opencell(X0) :- er_shape_block(X0),er_left_opencell(X0).
-inter_er_shape_block_er_left_opencell(X0) :- object(X0),not inter_er_shape_block_er_left_opencell(X0).
inter_er_shape_block_er_overlap_opencell(X0) :- er_shape_block(X0),er_overlap_opencell(X0).
-inter_er_shape_block_er_overlap_opencell(X0) :- object(X0),not inter_er_shape_block_er_overlap_opencell(X0).
inter_er_shape_block_er_shape_opencell(X0) :- er_shape_block(X0),er_shape_opencell(X0).
-inter_er_shape_block_er_shape_opencell(X0) :- object(X0),not inter_er_shape_block_er_shape_opencell(X0).
inter_er_shape_block_er_smaller_lockedcell(X0) :- er_shape_block(X0),er_smaller_lockedcell(X0).
-inter_er_shape_block_er_smaller_lockedcell(X0) :- object(X0),not inter_er_shape_block_er_smaller_lockedcell(X0).
inter_er_shape_block_er_below_lockedcell(X0) :- er_shape_block(X0),er_below_lockedcell(X0).
-inter_er_shape_block_er_below_lockedcell(X0) :- object(X0),not inter_er_shape_block_er_below_lockedcell(X0).
inter_er_shape_block_er_left_lockedcell(X0) :- er_shape_block(X0),er_left_lockedcell(X0).
-inter_er_shape_block_er_left_lockedcell(X0) :- object(X0),not inter_er_shape_block_er_left_lockedcell(X0).
inter_er_shape_block_er_overlap_lockedcell(X0) :- er_shape_block(X0),er_overlap_lockedcell(X0).
-inter_er_shape_block_er_overlap_lockedcell(X0) :- object(X0),not inter_er_shape_block_er_overlap_lockedcell(X0).
inter_er_shape_block_er_shape_lockedcell(X0) :- er_shape_block(X0),er_shape_lockedcell(X0).
-inter_er_shape_block_er_shape_lockedcell(X0) :- object(X0),not inter_er_shape_block_er_shape_lockedcell(X0).
inter_er_shape_block_er_smaller_sokoban(X0) :- er_shape_block(X0),er_smaller_sokoban(X0).
-inter_er_shape_block_er_smaller_sokoban(X0) :- object(X0),not inter_er_shape_block_er_smaller_sokoban(X0).
inter_er_shape_block_er_below_sokoban(X0) :- er_shape_block(X0),er_below_sokoban(X0).
-inter_er_shape_block_er_below_sokoban(X0) :- object(X0),not inter_er_shape_block_er_below_sokoban(X0).
inter_er_shape_block_er_left_sokoban(X0) :- er_shape_block(X0),er_left_sokoban(X0).
-inter_er_shape_block_er_left_sokoban(X0) :- object(X0),not inter_er_shape_block_er_left_sokoban(X0).
inter_er_shape_block_er_overlap_sokoban(X0) :- er_shape_block(X0),er_overlap_sokoban(X0).
-inter_er_shape_block_er_overlap_sokoban(X0) :- object(X0),not inter_er_shape_block_er_overlap_sokoban(X0).
inter_er_shape_block_er_shape_sokoban(X0) :- er_shape_block(X0),er_shape_sokoban(X0).
-inter_er_shape_block_er_shape_sokoban(X0) :- object(X0),not inter_er_shape_block_er_shape_sokoban(X0).
inter_er_shape_block_er_smaller_crate(X0) :- er_shape_block(X0),er_smaller_crate(X0).
-inter_er_shape_block_er_smaller_crate(X0) :- object(X0),not inter_er_shape_block_er_smaller_crate(X0).
inter_er_shape_block_er_below_crate(X0) :- er_shape_block(X0),er_below_crate(X0).
-inter_er_shape_block_er_below_crate(X0) :- object(X0),not inter_er_shape_block_er_below_crate(X0).
inter_er_shape_block_er_left_crate(X0) :- er_shape_block(X0),er_left_crate(X0).
-inter_er_shape_block_er_left_crate(X0) :- object(X0),not inter_er_shape_block_er_left_crate(X0).
inter_er_shape_block_er_overlap_crate(X0) :- er_shape_block(X0),er_overlap_crate(X0).
-inter_er_shape_block_er_overlap_crate(X0) :- object(X0),not inter_er_shape_block_er_overlap_crate(X0).
inter_er_shape_block_er_shape_crate(X0) :- er_shape_block(X0),er_shape_crate(X0).
-inter_er_shape_block_er_shape_crate(X0) :- object(X0),not inter_er_shape_block_er_shape_crate(X0).
inter_er_shape_block_er_smaller_key(X0) :- er_shape_block(X0),er_smaller_key(X0).
-inter_er_shape_block_er_smaller_key(X0) :- object(X0),not inter_er_shape_block_er_smaller_key(X0).
inter_er_shape_block_er_below_key(X0) :- er_shape_block(X0),er_below_key(X0).
-inter_er_shape_block_er_below_key(X0) :- object(X0),not inter_er_shape_block_er_below_key(X0).
inter_er_shape_block_er_left_key(X0) :- er_shape_block(X0),er_left_key(X0).
-inter_er_shape_block_er_left_key(X0) :- object(X0),not inter_er_shape_block_er_left_key(X0).
inter_er_shape_block_er_overlap_key(X0) :- er_shape_block(X0),er_overlap_key(X0).
-inter_er_shape_block_er_overlap_key(X0) :- object(X0),not inter_er_shape_block_er_overlap_key(X0).
inter_er_shape_block_er_shape_key(X0) :- er_shape_block(X0),er_shape_key(X0).
-inter_er_shape_block_er_shape_key(X0) :- object(X0),not inter_er_shape_block_er_shape_key(X0).
inter_er_shape_block_er_smaller_peg(X0) :- er_shape_block(X0),er_smaller_peg(X0).
-inter_er_shape_block_er_smaller_peg(X0) :- object(X0),not inter_er_shape_block_er_smaller_peg(X0).
inter_er_shape_block_er_below_peg(X0) :- er_shape_block(X0),er_below_peg(X0).
-inter_er_shape_block_er_below_peg(X0) :- object(X0),not inter_er_shape_block_er_below_peg(X0).
inter_er_shape_block_er_left_peg(X0) :- er_shape_block(X0),er_left_peg(X0).
-inter_er_shape_block_er_left_peg(X0) :- object(X0),not inter_er_shape_block_er_left_peg(X0).
inter_er_shape_block_er_overlap_peg(X0) :- er_shape_block(X0),er_overlap_peg(X0).
-inter_er_shape_block_er_overlap_peg(X0) :- object(X0),not inter_er_shape_block_er_overlap_peg(X0).
inter_er_shape_block_er_shape_peg(X0) :- er_shape_block(X0),er_shape_peg(X0).
-inter_er_shape_block_er_shape_peg(X0) :- object(X0),not inter_er_shape_block_er_shape_peg(X0).
inter_er_shape_block_er_smaller_disk(X0) :- er_shape_block(X0),er_smaller_disk(X0).
-inter_er_shape_block_er_smaller_disk(X0) :- object(X0),not inter_er_shape_block_er_smaller_disk(X0).
inter_er_shape_block_er_below_disk(X0) :- er_shape_block(X0),er_below_disk(X0).
-inter_er_shape_block_er_below_disk(X0) :- object(X0),not inter_er_shape_block_er_below_disk(X0).
inter_er_shape_block_er_left_disk(X0) :- er_shape_block(X0),er_left_disk(X0).
-inter_er_shape_block_er_left_disk(X0) :- object(X0),not inter_er_shape_block_er_left_disk(X0).
inter_er_shape_block_er_overlap_disk(X0) :- er_shape_block(X0),er_overlap_disk(X0).
-inter_er_shape_block_er_overlap_disk(X0) :- object(X0),not inter_er_shape_block_er_overlap_disk(X0).
inter_er_shape_block_er_shape_disk(X0) :- er_shape_block(X0),er_shape_disk(X0).
-inter_er_shape_block_er_shape_disk(X0) :- object(X0),not inter_er_shape_block_er_shape_disk(X0).
inter_er_shape_block_er_smaller_tile(X0) :- er_shape_block(X0),er_smaller_tile(X0).
-inter_er_shape_block_er_smaller_tile(X0) :- object(X0),not inter_er_shape_block_er_smaller_tile(X0).
inter_er_shape_block_er_below_tile(X0) :- er_shape_block(X0),er_below_tile(X0).
-inter_er_shape_block_er_below_tile(X0) :- object(X0),not inter_er_shape_block_er_below_tile(X0).
inter_er_shape_block_er_left_tile(X0) :- er_shape_block(X0),er_left_tile(X0).
-inter_er_shape_block_er_left_tile(X0) :- object(X0),not inter_er_shape_block_er_left_tile(X0).
inter_er_shape_block_er_overlap_tile(X0) :- er_shape_block(X0),er_overlap_tile(X0).
-inter_er_shape_block_er_overlap_tile(X0) :- object(X0),not inter_er_shape_block_er_overlap_tile(X0).
inter_er_shape_block_er_shape_tile(X0) :- er_shape_block(X0),er_shape_tile(X0).
-inter_er_shape_block_er_shape_tile(X0) :- object(X0),not inter_er_shape_block_er_shape_tile(X0).
inter_er_smaller_table_er_below_table(X0) :- er_smaller_table(X0),er_below_table(X0).
-inter_er_smaller_table_er_below_table(X0) :- object(X0),not inter_er_smaller_table_er_below_table(X0).
inter_er_smaller_table_er_left_table(X0) :- er_smaller_table(X0),er_left_table(X0).
-inter_er_smaller_table_er_left_table(X0) :- object(X0),not inter_er_smaller_table_er_left_table(X0).
inter_er_smaller_table_er_overlap_table(X0) :- er_smaller_table(X0),er_overlap_table(X0).
-inter_er_smaller_table_er_overlap_table(X0) :- object(X0),not inter_er_smaller_table_er_overlap_table(X0).
inter_er_smaller_table_er_shape_table(X0) :- er_smaller_table(X0),er_shape_table(X0).
-inter_er_smaller_table_er_shape_table(X0) :- object(X0),not inter_er_smaller_table_er_shape_table(X0).
inter_er_smaller_table_er_smaller_opencell(X0) :- er_smaller_table(X0),er_smaller_opencell(X0).
-inter_er_smaller_table_er_smaller_opencell(X0) :- object(X0),not inter_er_smaller_table_er_smaller_opencell(X0).
inter_er_smaller_table_er_below_opencell(X0) :- er_smaller_table(X0),er_below_opencell(X0).
-inter_er_smaller_table_er_below_opencell(X0) :- object(X0),not inter_er_smaller_table_er_below_opencell(X0).
inter_er_smaller_table_er_left_opencell(X0) :- er_smaller_table(X0),er_left_opencell(X0).
-inter_er_smaller_table_er_left_opencell(X0) :- object(X0),not inter_er_smaller_table_er_left_opencell(X0).
inter_er_smaller_table_er_overlap_opencell(X0) :- er_smaller_table(X0),er_overlap_opencell(X0).
-inter_er_smaller_table_er_overlap_opencell(X0) :- object(X0),not inter_er_smaller_table_er_overlap_opencell(X0).
inter_er_smaller_table_er_shape_opencell(X0) :- er_smaller_table(X0),er_shape_opencell(X0).
-inter_er_smaller_table_er_shape_opencell(X0) :- object(X0),not inter_er_smaller_table_er_shape_opencell(X0).
inter_er_smaller_table_er_smaller_lockedcell(X0) :- er_smaller_table(X0),er_smaller_lockedcell(X0).
-inter_er_smaller_table_er_smaller_lockedcell(X0) :- object(X0),not inter_er_smaller_table_er_smaller_lockedcell(X0).
inter_er_smaller_table_er_below_lockedcell(X0) :- er_smaller_table(X0),er_below_lockedcell(X0).
-inter_er_smaller_table_er_below_lockedcell(X0) :- object(X0),not inter_er_smaller_table_er_below_lockedcell(X0).
inter_er_smaller_table_er_left_lockedcell(X0) :- er_smaller_table(X0),er_left_lockedcell(X0).
-inter_er_smaller_table_er_left_lockedcell(X0) :- object(X0),not inter_er_smaller_table_er_left_lockedcell(X0).
inter_er_smaller_table_er_overlap_lockedcell(X0) :- er_smaller_table(X0),er_overlap_lockedcell(X0).
-inter_er_smaller_table_er_overlap_lockedcell(X0) :- object(X0),not inter_er_smaller_table_er_overlap_lockedcell(X0).
inter_er_smaller_table_er_shape_lockedcell(X0) :- er_smaller_table(X0),er_shape_lockedcell(X0).
-inter_er_smaller_table_er_shape_lockedcell(X0) :- object(X0),not inter_er_smaller_table_er_shape_lockedcell(X0).
inter_er_smaller_table_er_smaller_sokoban(X0) :- er_smaller_table(X0),er_smaller_sokoban(X0).
-inter_er_smaller_table_er_smaller_sokoban(X0) :- object(X0),not inter_er_smaller_table_er_smaller_sokoban(X0).
inter_er_smaller_table_er_below_sokoban(X0) :- er_smaller_table(X0),er_below_sokoban(X0).
-inter_er_smaller_table_er_below_sokoban(X0) :- object(X0),not inter_er_smaller_table_er_below_sokoban(X0).
inter_er_smaller_table_er_left_sokoban(X0) :- er_smaller_table(X0),er_left_sokoban(X0).
-inter_er_smaller_table_er_left_sokoban(X0) :- object(X0),not inter_er_smaller_table_er_left_sokoban(X0).
inter_er_smaller_table_er_overlap_sokoban(X0) :- er_smaller_table(X0),er_overlap_sokoban(X0).
-inter_er_smaller_table_er_overlap_sokoban(X0) :- object(X0),not inter_er_smaller_table_er_overlap_sokoban(X0).
inter_er_smaller_table_er_shape_sokoban(X0) :- er_smaller_table(X0),er_shape_sokoban(X0).
-inter_er_smaller_table_er_shape_sokoban(X0) :- object(X0),not inter_er_smaller_table_er_shape_sokoban(X0).
inter_er_smaller_table_er_smaller_crate(X0) :- er_smaller_table(X0),er_smaller_crate(X0).
-inter_er_smaller_table_er_smaller_crate(X0) :- object(X0),not inter_er_smaller_table_er_smaller_crate(X0).
inter_er_smaller_table_er_below_crate(X0) :- er_smaller_table(X0),er_below_crate(X0).
-inter_er_smaller_table_er_below_crate(X0) :- object(X0),not inter_er_smaller_table_er_below_crate(X0).
inter_er_smaller_table_er_left_crate(X0) :- er_smaller_table(X0),er_left_crate(X0).
-inter_er_smaller_table_er_left_crate(X0) :- object(X0),not inter_er_smaller_table_er_left_crate(X0).
inter_er_smaller_table_er_overlap_crate(X0) :- er_smaller_table(X0),er_overlap_crate(X0).
-inter_er_smaller_table_er_overlap_crate(X0) :- object(X0),not inter_er_smaller_table_er_overlap_crate(X0).
inter_er_smaller_table_er_shape_crate(X0) :- er_smaller_table(X0),er_shape_crate(X0).
-inter_er_smaller_table_er_shape_crate(X0) :- object(X0),not inter_er_smaller_table_er_shape_crate(X0).
inter_er_smaller_table_er_smaller_key(X0) :- er_smaller_table(X0),er_smaller_key(X0).
-inter_er_smaller_table_er_smaller_key(X0) :- object(X0),not inter_er_smaller_table_er_smaller_key(X0).
inter_er_smaller_table_er_below_key(X0) :- er_smaller_table(X0),er_below_key(X0).
-inter_er_smaller_table_er_below_key(X0) :- object(X0),not inter_er_smaller_table_er_below_key(X0).
inter_er_smaller_table_er_left_key(X0) :- er_smaller_table(X0),er_left_key(X0).
-inter_er_smaller_table_er_left_key(X0) :- object(X0),not inter_er_smaller_table_er_left_key(X0).
inter_er_smaller_table_er_overlap_key(X0) :- er_smaller_table(X0),er_overlap_key(X0).
-inter_er_smaller_table_er_overlap_key(X0) :- object(X0),not inter_er_smaller_table_er_overlap_key(X0).
inter_er_smaller_table_er_shape_key(X0) :- er_smaller_table(X0),er_shape_key(X0).
-inter_er_smaller_table_er_shape_key(X0) :- object(X0),not inter_er_smaller_table_er_shape_key(X0).
inter_er_smaller_table_er_smaller_peg(X0) :- er_smaller_table(X0),er_smaller_peg(X0).
-inter_er_smaller_table_er_smaller_peg(X0) :- object(X0),not inter_er_smaller_table_er_smaller_peg(X0).
inter_er_smaller_table_er_below_peg(X0) :- er_smaller_table(X0),er_below_peg(X0).
-inter_er_smaller_table_er_below_peg(X0) :- object(X0),not inter_er_smaller_table_er_below_peg(X0).
inter_er_smaller_table_er_left_peg(X0) :- er_smaller_table(X0),er_left_peg(X0).
-inter_er_smaller_table_er_left_peg(X0) :- object(X0),not inter_er_smaller_table_er_left_peg(X0).
inter_er_smaller_table_er_overlap_peg(X0) :- er_smaller_table(X0),er_overlap_peg(X0).
-inter_er_smaller_table_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_table_er_overlap_peg(X0).
inter_er_smaller_table_er_shape_peg(X0) :- er_smaller_table(X0),er_shape_peg(X0).
-inter_er_smaller_table_er_shape_peg(X0) :- object(X0),not inter_er_smaller_table_er_shape_peg(X0).
inter_er_smaller_table_er_smaller_disk(X0) :- er_smaller_table(X0),er_smaller_disk(X0).
-inter_er_smaller_table_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_table_er_smaller_disk(X0).
inter_er_smaller_table_er_below_disk(X0) :- er_smaller_table(X0),er_below_disk(X0).
-inter_er_smaller_table_er_below_disk(X0) :- object(X0),not inter_er_smaller_table_er_below_disk(X0).
inter_er_smaller_table_er_left_disk(X0) :- er_smaller_table(X0),er_left_disk(X0).
-inter_er_smaller_table_er_left_disk(X0) :- object(X0),not inter_er_smaller_table_er_left_disk(X0).
inter_er_smaller_table_er_overlap_disk(X0) :- er_smaller_table(X0),er_overlap_disk(X0).
-inter_er_smaller_table_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_table_er_overlap_disk(X0).
inter_er_smaller_table_er_shape_disk(X0) :- er_smaller_table(X0),er_shape_disk(X0).
-inter_er_smaller_table_er_shape_disk(X0) :- object(X0),not inter_er_smaller_table_er_shape_disk(X0).
inter_er_smaller_table_er_smaller_tile(X0) :- er_smaller_table(X0),er_smaller_tile(X0).
-inter_er_smaller_table_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_table_er_smaller_tile(X0).
inter_er_smaller_table_er_below_tile(X0) :- er_smaller_table(X0),er_below_tile(X0).
-inter_er_smaller_table_er_below_tile(X0) :- object(X0),not inter_er_smaller_table_er_below_tile(X0).
inter_er_smaller_table_er_left_tile(X0) :- er_smaller_table(X0),er_left_tile(X0).
-inter_er_smaller_table_er_left_tile(X0) :- object(X0),not inter_er_smaller_table_er_left_tile(X0).
inter_er_smaller_table_er_overlap_tile(X0) :- er_smaller_table(X0),er_overlap_tile(X0).
-inter_er_smaller_table_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_table_er_overlap_tile(X0).
inter_er_smaller_table_er_shape_tile(X0) :- er_smaller_table(X0),er_shape_tile(X0).
-inter_er_smaller_table_er_shape_tile(X0) :- object(X0),not inter_er_smaller_table_er_shape_tile(X0).
inter_er_below_table_er_left_table(X0) :- er_below_table(X0),er_left_table(X0).
-inter_er_below_table_er_left_table(X0) :- object(X0),not inter_er_below_table_er_left_table(X0).
inter_er_below_table_er_overlap_table(X0) :- er_below_table(X0),er_overlap_table(X0).
-inter_er_below_table_er_overlap_table(X0) :- object(X0),not inter_er_below_table_er_overlap_table(X0).
inter_er_below_table_er_shape_table(X0) :- er_below_table(X0),er_shape_table(X0).
-inter_er_below_table_er_shape_table(X0) :- object(X0),not inter_er_below_table_er_shape_table(X0).
inter_er_below_table_er_smaller_opencell(X0) :- er_below_table(X0),er_smaller_opencell(X0).
-inter_er_below_table_er_smaller_opencell(X0) :- object(X0),not inter_er_below_table_er_smaller_opencell(X0).
inter_er_below_table_er_below_opencell(X0) :- er_below_table(X0),er_below_opencell(X0).
-inter_er_below_table_er_below_opencell(X0) :- object(X0),not inter_er_below_table_er_below_opencell(X0).
inter_er_below_table_er_left_opencell(X0) :- er_below_table(X0),er_left_opencell(X0).
-inter_er_below_table_er_left_opencell(X0) :- object(X0),not inter_er_below_table_er_left_opencell(X0).
inter_er_below_table_er_overlap_opencell(X0) :- er_below_table(X0),er_overlap_opencell(X0).
-inter_er_below_table_er_overlap_opencell(X0) :- object(X0),not inter_er_below_table_er_overlap_opencell(X0).
inter_er_below_table_er_shape_opencell(X0) :- er_below_table(X0),er_shape_opencell(X0).
-inter_er_below_table_er_shape_opencell(X0) :- object(X0),not inter_er_below_table_er_shape_opencell(X0).
inter_er_below_table_er_smaller_lockedcell(X0) :- er_below_table(X0),er_smaller_lockedcell(X0).
-inter_er_below_table_er_smaller_lockedcell(X0) :- object(X0),not inter_er_below_table_er_smaller_lockedcell(X0).
inter_er_below_table_er_below_lockedcell(X0) :- er_below_table(X0),er_below_lockedcell(X0).
-inter_er_below_table_er_below_lockedcell(X0) :- object(X0),not inter_er_below_table_er_below_lockedcell(X0).
inter_er_below_table_er_left_lockedcell(X0) :- er_below_table(X0),er_left_lockedcell(X0).
-inter_er_below_table_er_left_lockedcell(X0) :- object(X0),not inter_er_below_table_er_left_lockedcell(X0).
inter_er_below_table_er_overlap_lockedcell(X0) :- er_below_table(X0),er_overlap_lockedcell(X0).
-inter_er_below_table_er_overlap_lockedcell(X0) :- object(X0),not inter_er_below_table_er_overlap_lockedcell(X0).
inter_er_below_table_er_shape_lockedcell(X0) :- er_below_table(X0),er_shape_lockedcell(X0).
-inter_er_below_table_er_shape_lockedcell(X0) :- object(X0),not inter_er_below_table_er_shape_lockedcell(X0).
inter_er_below_table_er_smaller_sokoban(X0) :- er_below_table(X0),er_smaller_sokoban(X0).
-inter_er_below_table_er_smaller_sokoban(X0) :- object(X0),not inter_er_below_table_er_smaller_sokoban(X0).
inter_er_below_table_er_below_sokoban(X0) :- er_below_table(X0),er_below_sokoban(X0).
-inter_er_below_table_er_below_sokoban(X0) :- object(X0),not inter_er_below_table_er_below_sokoban(X0).
inter_er_below_table_er_left_sokoban(X0) :- er_below_table(X0),er_left_sokoban(X0).
-inter_er_below_table_er_left_sokoban(X0) :- object(X0),not inter_er_below_table_er_left_sokoban(X0).
inter_er_below_table_er_overlap_sokoban(X0) :- er_below_table(X0),er_overlap_sokoban(X0).
-inter_er_below_table_er_overlap_sokoban(X0) :- object(X0),not inter_er_below_table_er_overlap_sokoban(X0).
inter_er_below_table_er_shape_sokoban(X0) :- er_below_table(X0),er_shape_sokoban(X0).
-inter_er_below_table_er_shape_sokoban(X0) :- object(X0),not inter_er_below_table_er_shape_sokoban(X0).
inter_er_below_table_er_smaller_crate(X0) :- er_below_table(X0),er_smaller_crate(X0).
-inter_er_below_table_er_smaller_crate(X0) :- object(X0),not inter_er_below_table_er_smaller_crate(X0).
inter_er_below_table_er_below_crate(X0) :- er_below_table(X0),er_below_crate(X0).
-inter_er_below_table_er_below_crate(X0) :- object(X0),not inter_er_below_table_er_below_crate(X0).
inter_er_below_table_er_left_crate(X0) :- er_below_table(X0),er_left_crate(X0).
-inter_er_below_table_er_left_crate(X0) :- object(X0),not inter_er_below_table_er_left_crate(X0).
inter_er_below_table_er_overlap_crate(X0) :- er_below_table(X0),er_overlap_crate(X0).
-inter_er_below_table_er_overlap_crate(X0) :- object(X0),not inter_er_below_table_er_overlap_crate(X0).
inter_er_below_table_er_shape_crate(X0) :- er_below_table(X0),er_shape_crate(X0).
-inter_er_below_table_er_shape_crate(X0) :- object(X0),not inter_er_below_table_er_shape_crate(X0).
inter_er_below_table_er_smaller_key(X0) :- er_below_table(X0),er_smaller_key(X0).
-inter_er_below_table_er_smaller_key(X0) :- object(X0),not inter_er_below_table_er_smaller_key(X0).
inter_er_below_table_er_below_key(X0) :- er_below_table(X0),er_below_key(X0).
-inter_er_below_table_er_below_key(X0) :- object(X0),not inter_er_below_table_er_below_key(X0).
inter_er_below_table_er_left_key(X0) :- er_below_table(X0),er_left_key(X0).
-inter_er_below_table_er_left_key(X0) :- object(X0),not inter_er_below_table_er_left_key(X0).
inter_er_below_table_er_overlap_key(X0) :- er_below_table(X0),er_overlap_key(X0).
-inter_er_below_table_er_overlap_key(X0) :- object(X0),not inter_er_below_table_er_overlap_key(X0).
inter_er_below_table_er_shape_key(X0) :- er_below_table(X0),er_shape_key(X0).
-inter_er_below_table_er_shape_key(X0) :- object(X0),not inter_er_below_table_er_shape_key(X0).
inter_er_below_table_er_smaller_peg(X0) :- er_below_table(X0),er_smaller_peg(X0).
-inter_er_below_table_er_smaller_peg(X0) :- object(X0),not inter_er_below_table_er_smaller_peg(X0).
inter_er_below_table_er_below_peg(X0) :- er_below_table(X0),er_below_peg(X0).
-inter_er_below_table_er_below_peg(X0) :- object(X0),not inter_er_below_table_er_below_peg(X0).
inter_er_below_table_er_left_peg(X0) :- er_below_table(X0),er_left_peg(X0).
-inter_er_below_table_er_left_peg(X0) :- object(X0),not inter_er_below_table_er_left_peg(X0).
inter_er_below_table_er_overlap_peg(X0) :- er_below_table(X0),er_overlap_peg(X0).
-inter_er_below_table_er_overlap_peg(X0) :- object(X0),not inter_er_below_table_er_overlap_peg(X0).
inter_er_below_table_er_shape_peg(X0) :- er_below_table(X0),er_shape_peg(X0).
-inter_er_below_table_er_shape_peg(X0) :- object(X0),not inter_er_below_table_er_shape_peg(X0).
inter_er_below_table_er_smaller_disk(X0) :- er_below_table(X0),er_smaller_disk(X0).
-inter_er_below_table_er_smaller_disk(X0) :- object(X0),not inter_er_below_table_er_smaller_disk(X0).
inter_er_below_table_er_below_disk(X0) :- er_below_table(X0),er_below_disk(X0).
-inter_er_below_table_er_below_disk(X0) :- object(X0),not inter_er_below_table_er_below_disk(X0).
inter_er_below_table_er_left_disk(X0) :- er_below_table(X0),er_left_disk(X0).
-inter_er_below_table_er_left_disk(X0) :- object(X0),not inter_er_below_table_er_left_disk(X0).
inter_er_below_table_er_overlap_disk(X0) :- er_below_table(X0),er_overlap_disk(X0).
-inter_er_below_table_er_overlap_disk(X0) :- object(X0),not inter_er_below_table_er_overlap_disk(X0).
inter_er_below_table_er_shape_disk(X0) :- er_below_table(X0),er_shape_disk(X0).
-inter_er_below_table_er_shape_disk(X0) :- object(X0),not inter_er_below_table_er_shape_disk(X0).
inter_er_below_table_er_smaller_tile(X0) :- er_below_table(X0),er_smaller_tile(X0).
-inter_er_below_table_er_smaller_tile(X0) :- object(X0),not inter_er_below_table_er_smaller_tile(X0).
inter_er_below_table_er_below_tile(X0) :- er_below_table(X0),er_below_tile(X0).
-inter_er_below_table_er_below_tile(X0) :- object(X0),not inter_er_below_table_er_below_tile(X0).
inter_er_below_table_er_left_tile(X0) :- er_below_table(X0),er_left_tile(X0).
-inter_er_below_table_er_left_tile(X0) :- object(X0),not inter_er_below_table_er_left_tile(X0).
inter_er_below_table_er_overlap_tile(X0) :- er_below_table(X0),er_overlap_tile(X0).
-inter_er_below_table_er_overlap_tile(X0) :- object(X0),not inter_er_below_table_er_overlap_tile(X0).
inter_er_below_table_er_shape_tile(X0) :- er_below_table(X0),er_shape_tile(X0).
-inter_er_below_table_er_shape_tile(X0) :- object(X0),not inter_er_below_table_er_shape_tile(X0).
inter_er_left_table_er_overlap_table(X0) :- er_left_table(X0),er_overlap_table(X0).
-inter_er_left_table_er_overlap_table(X0) :- object(X0),not inter_er_left_table_er_overlap_table(X0).
inter_er_left_table_er_shape_table(X0) :- er_left_table(X0),er_shape_table(X0).
-inter_er_left_table_er_shape_table(X0) :- object(X0),not inter_er_left_table_er_shape_table(X0).
inter_er_left_table_er_smaller_opencell(X0) :- er_left_table(X0),er_smaller_opencell(X0).
-inter_er_left_table_er_smaller_opencell(X0) :- object(X0),not inter_er_left_table_er_smaller_opencell(X0).
inter_er_left_table_er_below_opencell(X0) :- er_left_table(X0),er_below_opencell(X0).
-inter_er_left_table_er_below_opencell(X0) :- object(X0),not inter_er_left_table_er_below_opencell(X0).
inter_er_left_table_er_left_opencell(X0) :- er_left_table(X0),er_left_opencell(X0).
-inter_er_left_table_er_left_opencell(X0) :- object(X0),not inter_er_left_table_er_left_opencell(X0).
inter_er_left_table_er_overlap_opencell(X0) :- er_left_table(X0),er_overlap_opencell(X0).
-inter_er_left_table_er_overlap_opencell(X0) :- object(X0),not inter_er_left_table_er_overlap_opencell(X0).
inter_er_left_table_er_shape_opencell(X0) :- er_left_table(X0),er_shape_opencell(X0).
-inter_er_left_table_er_shape_opencell(X0) :- object(X0),not inter_er_left_table_er_shape_opencell(X0).
inter_er_left_table_er_smaller_lockedcell(X0) :- er_left_table(X0),er_smaller_lockedcell(X0).
-inter_er_left_table_er_smaller_lockedcell(X0) :- object(X0),not inter_er_left_table_er_smaller_lockedcell(X0).
inter_er_left_table_er_below_lockedcell(X0) :- er_left_table(X0),er_below_lockedcell(X0).
-inter_er_left_table_er_below_lockedcell(X0) :- object(X0),not inter_er_left_table_er_below_lockedcell(X0).
inter_er_left_table_er_left_lockedcell(X0) :- er_left_table(X0),er_left_lockedcell(X0).
-inter_er_left_table_er_left_lockedcell(X0) :- object(X0),not inter_er_left_table_er_left_lockedcell(X0).
inter_er_left_table_er_overlap_lockedcell(X0) :- er_left_table(X0),er_overlap_lockedcell(X0).
-inter_er_left_table_er_overlap_lockedcell(X0) :- object(X0),not inter_er_left_table_er_overlap_lockedcell(X0).
inter_er_left_table_er_shape_lockedcell(X0) :- er_left_table(X0),er_shape_lockedcell(X0).
-inter_er_left_table_er_shape_lockedcell(X0) :- object(X0),not inter_er_left_table_er_shape_lockedcell(X0).
inter_er_left_table_er_smaller_sokoban(X0) :- er_left_table(X0),er_smaller_sokoban(X0).
-inter_er_left_table_er_smaller_sokoban(X0) :- object(X0),not inter_er_left_table_er_smaller_sokoban(X0).
inter_er_left_table_er_below_sokoban(X0) :- er_left_table(X0),er_below_sokoban(X0).
-inter_er_left_table_er_below_sokoban(X0) :- object(X0),not inter_er_left_table_er_below_sokoban(X0).
inter_er_left_table_er_left_sokoban(X0) :- er_left_table(X0),er_left_sokoban(X0).
-inter_er_left_table_er_left_sokoban(X0) :- object(X0),not inter_er_left_table_er_left_sokoban(X0).
inter_er_left_table_er_overlap_sokoban(X0) :- er_left_table(X0),er_overlap_sokoban(X0).
-inter_er_left_table_er_overlap_sokoban(X0) :- object(X0),not inter_er_left_table_er_overlap_sokoban(X0).
inter_er_left_table_er_shape_sokoban(X0) :- er_left_table(X0),er_shape_sokoban(X0).
-inter_er_left_table_er_shape_sokoban(X0) :- object(X0),not inter_er_left_table_er_shape_sokoban(X0).
inter_er_left_table_er_smaller_crate(X0) :- er_left_table(X0),er_smaller_crate(X0).
-inter_er_left_table_er_smaller_crate(X0) :- object(X0),not inter_er_left_table_er_smaller_crate(X0).
inter_er_left_table_er_below_crate(X0) :- er_left_table(X0),er_below_crate(X0).
-inter_er_left_table_er_below_crate(X0) :- object(X0),not inter_er_left_table_er_below_crate(X0).
inter_er_left_table_er_left_crate(X0) :- er_left_table(X0),er_left_crate(X0).
-inter_er_left_table_er_left_crate(X0) :- object(X0),not inter_er_left_table_er_left_crate(X0).
inter_er_left_table_er_overlap_crate(X0) :- er_left_table(X0),er_overlap_crate(X0).
-inter_er_left_table_er_overlap_crate(X0) :- object(X0),not inter_er_left_table_er_overlap_crate(X0).
inter_er_left_table_er_shape_crate(X0) :- er_left_table(X0),er_shape_crate(X0).
-inter_er_left_table_er_shape_crate(X0) :- object(X0),not inter_er_left_table_er_shape_crate(X0).
inter_er_left_table_er_smaller_key(X0) :- er_left_table(X0),er_smaller_key(X0).
-inter_er_left_table_er_smaller_key(X0) :- object(X0),not inter_er_left_table_er_smaller_key(X0).
inter_er_left_table_er_below_key(X0) :- er_left_table(X0),er_below_key(X0).
-inter_er_left_table_er_below_key(X0) :- object(X0),not inter_er_left_table_er_below_key(X0).
inter_er_left_table_er_left_key(X0) :- er_left_table(X0),er_left_key(X0).
-inter_er_left_table_er_left_key(X0) :- object(X0),not inter_er_left_table_er_left_key(X0).
inter_er_left_table_er_overlap_key(X0) :- er_left_table(X0),er_overlap_key(X0).
-inter_er_left_table_er_overlap_key(X0) :- object(X0),not inter_er_left_table_er_overlap_key(X0).
inter_er_left_table_er_shape_key(X0) :- er_left_table(X0),er_shape_key(X0).
-inter_er_left_table_er_shape_key(X0) :- object(X0),not inter_er_left_table_er_shape_key(X0).
inter_er_left_table_er_smaller_peg(X0) :- er_left_table(X0),er_smaller_peg(X0).
-inter_er_left_table_er_smaller_peg(X0) :- object(X0),not inter_er_left_table_er_smaller_peg(X0).
inter_er_left_table_er_below_peg(X0) :- er_left_table(X0),er_below_peg(X0).
-inter_er_left_table_er_below_peg(X0) :- object(X0),not inter_er_left_table_er_below_peg(X0).
inter_er_left_table_er_left_peg(X0) :- er_left_table(X0),er_left_peg(X0).
-inter_er_left_table_er_left_peg(X0) :- object(X0),not inter_er_left_table_er_left_peg(X0).
inter_er_left_table_er_overlap_peg(X0) :- er_left_table(X0),er_overlap_peg(X0).
-inter_er_left_table_er_overlap_peg(X0) :- object(X0),not inter_er_left_table_er_overlap_peg(X0).
inter_er_left_table_er_shape_peg(X0) :- er_left_table(X0),er_shape_peg(X0).
-inter_er_left_table_er_shape_peg(X0) :- object(X0),not inter_er_left_table_er_shape_peg(X0).
inter_er_left_table_er_smaller_disk(X0) :- er_left_table(X0),er_smaller_disk(X0).
-inter_er_left_table_er_smaller_disk(X0) :- object(X0),not inter_er_left_table_er_smaller_disk(X0).
inter_er_left_table_er_below_disk(X0) :- er_left_table(X0),er_below_disk(X0).
-inter_er_left_table_er_below_disk(X0) :- object(X0),not inter_er_left_table_er_below_disk(X0).
inter_er_left_table_er_left_disk(X0) :- er_left_table(X0),er_left_disk(X0).
-inter_er_left_table_er_left_disk(X0) :- object(X0),not inter_er_left_table_er_left_disk(X0).
inter_er_left_table_er_overlap_disk(X0) :- er_left_table(X0),er_overlap_disk(X0).
-inter_er_left_table_er_overlap_disk(X0) :- object(X0),not inter_er_left_table_er_overlap_disk(X0).
inter_er_left_table_er_shape_disk(X0) :- er_left_table(X0),er_shape_disk(X0).
-inter_er_left_table_er_shape_disk(X0) :- object(X0),not inter_er_left_table_er_shape_disk(X0).
inter_er_left_table_er_smaller_tile(X0) :- er_left_table(X0),er_smaller_tile(X0).
-inter_er_left_table_er_smaller_tile(X0) :- object(X0),not inter_er_left_table_er_smaller_tile(X0).
inter_er_left_table_er_below_tile(X0) :- er_left_table(X0),er_below_tile(X0).
-inter_er_left_table_er_below_tile(X0) :- object(X0),not inter_er_left_table_er_below_tile(X0).
inter_er_left_table_er_left_tile(X0) :- er_left_table(X0),er_left_tile(X0).
-inter_er_left_table_er_left_tile(X0) :- object(X0),not inter_er_left_table_er_left_tile(X0).
inter_er_left_table_er_overlap_tile(X0) :- er_left_table(X0),er_overlap_tile(X0).
-inter_er_left_table_er_overlap_tile(X0) :- object(X0),not inter_er_left_table_er_overlap_tile(X0).
inter_er_left_table_er_shape_tile(X0) :- er_left_table(X0),er_shape_tile(X0).
-inter_er_left_table_er_shape_tile(X0) :- object(X0),not inter_er_left_table_er_shape_tile(X0).
inter_er_overlap_table_er_shape_table(X0) :- er_overlap_table(X0),er_shape_table(X0).
-inter_er_overlap_table_er_shape_table(X0) :- object(X0),not inter_er_overlap_table_er_shape_table(X0).
inter_er_overlap_table_er_smaller_opencell(X0) :- er_overlap_table(X0),er_smaller_opencell(X0).
-inter_er_overlap_table_er_smaller_opencell(X0) :- object(X0),not inter_er_overlap_table_er_smaller_opencell(X0).
inter_er_overlap_table_er_below_opencell(X0) :- er_overlap_table(X0),er_below_opencell(X0).
-inter_er_overlap_table_er_below_opencell(X0) :- object(X0),not inter_er_overlap_table_er_below_opencell(X0).
inter_er_overlap_table_er_left_opencell(X0) :- er_overlap_table(X0),er_left_opencell(X0).
-inter_er_overlap_table_er_left_opencell(X0) :- object(X0),not inter_er_overlap_table_er_left_opencell(X0).
inter_er_overlap_table_er_overlap_opencell(X0) :- er_overlap_table(X0),er_overlap_opencell(X0).
-inter_er_overlap_table_er_overlap_opencell(X0) :- object(X0),not inter_er_overlap_table_er_overlap_opencell(X0).
inter_er_overlap_table_er_shape_opencell(X0) :- er_overlap_table(X0),er_shape_opencell(X0).
-inter_er_overlap_table_er_shape_opencell(X0) :- object(X0),not inter_er_overlap_table_er_shape_opencell(X0).
inter_er_overlap_table_er_smaller_lockedcell(X0) :- er_overlap_table(X0),er_smaller_lockedcell(X0).
-inter_er_overlap_table_er_smaller_lockedcell(X0) :- object(X0),not inter_er_overlap_table_er_smaller_lockedcell(X0).
inter_er_overlap_table_er_below_lockedcell(X0) :- er_overlap_table(X0),er_below_lockedcell(X0).
-inter_er_overlap_table_er_below_lockedcell(X0) :- object(X0),not inter_er_overlap_table_er_below_lockedcell(X0).
inter_er_overlap_table_er_left_lockedcell(X0) :- er_overlap_table(X0),er_left_lockedcell(X0).
-inter_er_overlap_table_er_left_lockedcell(X0) :- object(X0),not inter_er_overlap_table_er_left_lockedcell(X0).
inter_er_overlap_table_er_overlap_lockedcell(X0) :- er_overlap_table(X0),er_overlap_lockedcell(X0).
-inter_er_overlap_table_er_overlap_lockedcell(X0) :- object(X0),not inter_er_overlap_table_er_overlap_lockedcell(X0).
inter_er_overlap_table_er_shape_lockedcell(X0) :- er_overlap_table(X0),er_shape_lockedcell(X0).
-inter_er_overlap_table_er_shape_lockedcell(X0) :- object(X0),not inter_er_overlap_table_er_shape_lockedcell(X0).
inter_er_overlap_table_er_smaller_sokoban(X0) :- er_overlap_table(X0),er_smaller_sokoban(X0).
-inter_er_overlap_table_er_smaller_sokoban(X0) :- object(X0),not inter_er_overlap_table_er_smaller_sokoban(X0).
inter_er_overlap_table_er_below_sokoban(X0) :- er_overlap_table(X0),er_below_sokoban(X0).
-inter_er_overlap_table_er_below_sokoban(X0) :- object(X0),not inter_er_overlap_table_er_below_sokoban(X0).
inter_er_overlap_table_er_left_sokoban(X0) :- er_overlap_table(X0),er_left_sokoban(X0).
-inter_er_overlap_table_er_left_sokoban(X0) :- object(X0),not inter_er_overlap_table_er_left_sokoban(X0).
inter_er_overlap_table_er_overlap_sokoban(X0) :- er_overlap_table(X0),er_overlap_sokoban(X0).
-inter_er_overlap_table_er_overlap_sokoban(X0) :- object(X0),not inter_er_overlap_table_er_overlap_sokoban(X0).
inter_er_overlap_table_er_shape_sokoban(X0) :- er_overlap_table(X0),er_shape_sokoban(X0).
-inter_er_overlap_table_er_shape_sokoban(X0) :- object(X0),not inter_er_overlap_table_er_shape_sokoban(X0).
inter_er_overlap_table_er_smaller_crate(X0) :- er_overlap_table(X0),er_smaller_crate(X0).
-inter_er_overlap_table_er_smaller_crate(X0) :- object(X0),not inter_er_overlap_table_er_smaller_crate(X0).
inter_er_overlap_table_er_below_crate(X0) :- er_overlap_table(X0),er_below_crate(X0).
-inter_er_overlap_table_er_below_crate(X0) :- object(X0),not inter_er_overlap_table_er_below_crate(X0).
inter_er_overlap_table_er_left_crate(X0) :- er_overlap_table(X0),er_left_crate(X0).
-inter_er_overlap_table_er_left_crate(X0) :- object(X0),not inter_er_overlap_table_er_left_crate(X0).
inter_er_overlap_table_er_overlap_crate(X0) :- er_overlap_table(X0),er_overlap_crate(X0).
-inter_er_overlap_table_er_overlap_crate(X0) :- object(X0),not inter_er_overlap_table_er_overlap_crate(X0).
inter_er_overlap_table_er_shape_crate(X0) :- er_overlap_table(X0),er_shape_crate(X0).
-inter_er_overlap_table_er_shape_crate(X0) :- object(X0),not inter_er_overlap_table_er_shape_crate(X0).
inter_er_overlap_table_er_smaller_key(X0) :- er_overlap_table(X0),er_smaller_key(X0).
-inter_er_overlap_table_er_smaller_key(X0) :- object(X0),not inter_er_overlap_table_er_smaller_key(X0).
inter_er_overlap_table_er_below_key(X0) :- er_overlap_table(X0),er_below_key(X0).
-inter_er_overlap_table_er_below_key(X0) :- object(X0),not inter_er_overlap_table_er_below_key(X0).
inter_er_overlap_table_er_left_key(X0) :- er_overlap_table(X0),er_left_key(X0).
-inter_er_overlap_table_er_left_key(X0) :- object(X0),not inter_er_overlap_table_er_left_key(X0).
inter_er_overlap_table_er_overlap_key(X0) :- er_overlap_table(X0),er_overlap_key(X0).
-inter_er_overlap_table_er_overlap_key(X0) :- object(X0),not inter_er_overlap_table_er_overlap_key(X0).
inter_er_overlap_table_er_shape_key(X0) :- er_overlap_table(X0),er_shape_key(X0).
-inter_er_overlap_table_er_shape_key(X0) :- object(X0),not inter_er_overlap_table_er_shape_key(X0).
inter_er_overlap_table_er_smaller_peg(X0) :- er_overlap_table(X0),er_smaller_peg(X0).
-inter_er_overlap_table_er_smaller_peg(X0) :- object(X0),not inter_er_overlap_table_er_smaller_peg(X0).
inter_er_overlap_table_er_below_peg(X0) :- er_overlap_table(X0),er_below_peg(X0).
-inter_er_overlap_table_er_below_peg(X0) :- object(X0),not inter_er_overlap_table_er_below_peg(X0).
inter_er_overlap_table_er_left_peg(X0) :- er_overlap_table(X0),er_left_peg(X0).
-inter_er_overlap_table_er_left_peg(X0) :- object(X0),not inter_er_overlap_table_er_left_peg(X0).
inter_er_overlap_table_er_overlap_peg(X0) :- er_overlap_table(X0),er_overlap_peg(X0).
-inter_er_overlap_table_er_overlap_peg(X0) :- object(X0),not inter_er_overlap_table_er_overlap_peg(X0).
inter_er_overlap_table_er_shape_peg(X0) :- er_overlap_table(X0),er_shape_peg(X0).
-inter_er_overlap_table_er_shape_peg(X0) :- object(X0),not inter_er_overlap_table_er_shape_peg(X0).
inter_er_overlap_table_er_smaller_disk(X0) :- er_overlap_table(X0),er_smaller_disk(X0).
-inter_er_overlap_table_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_table_er_smaller_disk(X0).
inter_er_overlap_table_er_below_disk(X0) :- er_overlap_table(X0),er_below_disk(X0).
-inter_er_overlap_table_er_below_disk(X0) :- object(X0),not inter_er_overlap_table_er_below_disk(X0).
inter_er_overlap_table_er_left_disk(X0) :- er_overlap_table(X0),er_left_disk(X0).
-inter_er_overlap_table_er_left_disk(X0) :- object(X0),not inter_er_overlap_table_er_left_disk(X0).
inter_er_overlap_table_er_overlap_disk(X0) :- er_overlap_table(X0),er_overlap_disk(X0).
-inter_er_overlap_table_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_table_er_overlap_disk(X0).
inter_er_overlap_table_er_shape_disk(X0) :- er_overlap_table(X0),er_shape_disk(X0).
-inter_er_overlap_table_er_shape_disk(X0) :- object(X0),not inter_er_overlap_table_er_shape_disk(X0).
inter_er_overlap_table_er_smaller_tile(X0) :- er_overlap_table(X0),er_smaller_tile(X0).
-inter_er_overlap_table_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_table_er_smaller_tile(X0).
inter_er_overlap_table_er_below_tile(X0) :- er_overlap_table(X0),er_below_tile(X0).
-inter_er_overlap_table_er_below_tile(X0) :- object(X0),not inter_er_overlap_table_er_below_tile(X0).
inter_er_overlap_table_er_left_tile(X0) :- er_overlap_table(X0),er_left_tile(X0).
-inter_er_overlap_table_er_left_tile(X0) :- object(X0),not inter_er_overlap_table_er_left_tile(X0).
inter_er_overlap_table_er_overlap_tile(X0) :- er_overlap_table(X0),er_overlap_tile(X0).
-inter_er_overlap_table_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_table_er_overlap_tile(X0).
inter_er_overlap_table_er_shape_tile(X0) :- er_overlap_table(X0),er_shape_tile(X0).
-inter_er_overlap_table_er_shape_tile(X0) :- object(X0),not inter_er_overlap_table_er_shape_tile(X0).
inter_er_shape_table_er_smaller_opencell(X0) :- er_shape_table(X0),er_smaller_opencell(X0).
-inter_er_shape_table_er_smaller_opencell(X0) :- object(X0),not inter_er_shape_table_er_smaller_opencell(X0).
inter_er_shape_table_er_below_opencell(X0) :- er_shape_table(X0),er_below_opencell(X0).
-inter_er_shape_table_er_below_opencell(X0) :- object(X0),not inter_er_shape_table_er_below_opencell(X0).
inter_er_shape_table_er_left_opencell(X0) :- er_shape_table(X0),er_left_opencell(X0).
-inter_er_shape_table_er_left_opencell(X0) :- object(X0),not inter_er_shape_table_er_left_opencell(X0).
inter_er_shape_table_er_overlap_opencell(X0) :- er_shape_table(X0),er_overlap_opencell(X0).
-inter_er_shape_table_er_overlap_opencell(X0) :- object(X0),not inter_er_shape_table_er_overlap_opencell(X0).
inter_er_shape_table_er_shape_opencell(X0) :- er_shape_table(X0),er_shape_opencell(X0).
-inter_er_shape_table_er_shape_opencell(X0) :- object(X0),not inter_er_shape_table_er_shape_opencell(X0).
inter_er_shape_table_er_smaller_lockedcell(X0) :- er_shape_table(X0),er_smaller_lockedcell(X0).
-inter_er_shape_table_er_smaller_lockedcell(X0) :- object(X0),not inter_er_shape_table_er_smaller_lockedcell(X0).
inter_er_shape_table_er_below_lockedcell(X0) :- er_shape_table(X0),er_below_lockedcell(X0).
-inter_er_shape_table_er_below_lockedcell(X0) :- object(X0),not inter_er_shape_table_er_below_lockedcell(X0).
inter_er_shape_table_er_left_lockedcell(X0) :- er_shape_table(X0),er_left_lockedcell(X0).
-inter_er_shape_table_er_left_lockedcell(X0) :- object(X0),not inter_er_shape_table_er_left_lockedcell(X0).
inter_er_shape_table_er_overlap_lockedcell(X0) :- er_shape_table(X0),er_overlap_lockedcell(X0).
-inter_er_shape_table_er_overlap_lockedcell(X0) :- object(X0),not inter_er_shape_table_er_overlap_lockedcell(X0).
inter_er_shape_table_er_shape_lockedcell(X0) :- er_shape_table(X0),er_shape_lockedcell(X0).
-inter_er_shape_table_er_shape_lockedcell(X0) :- object(X0),not inter_er_shape_table_er_shape_lockedcell(X0).
inter_er_shape_table_er_smaller_sokoban(X0) :- er_shape_table(X0),er_smaller_sokoban(X0).
-inter_er_shape_table_er_smaller_sokoban(X0) :- object(X0),not inter_er_shape_table_er_smaller_sokoban(X0).
inter_er_shape_table_er_below_sokoban(X0) :- er_shape_table(X0),er_below_sokoban(X0).
-inter_er_shape_table_er_below_sokoban(X0) :- object(X0),not inter_er_shape_table_er_below_sokoban(X0).
inter_er_shape_table_er_left_sokoban(X0) :- er_shape_table(X0),er_left_sokoban(X0).
-inter_er_shape_table_er_left_sokoban(X0) :- object(X0),not inter_er_shape_table_er_left_sokoban(X0).
inter_er_shape_table_er_overlap_sokoban(X0) :- er_shape_table(X0),er_overlap_sokoban(X0).
-inter_er_shape_table_er_overlap_sokoban(X0) :- object(X0),not inter_er_shape_table_er_overlap_sokoban(X0).
inter_er_shape_table_er_shape_sokoban(X0) :- er_shape_table(X0),er_shape_sokoban(X0).
-inter_er_shape_table_er_shape_sokoban(X0) :- object(X0),not inter_er_shape_table_er_shape_sokoban(X0).
inter_er_shape_table_er_smaller_crate(X0) :- er_shape_table(X0),er_smaller_crate(X0).
-inter_er_shape_table_er_smaller_crate(X0) :- object(X0),not inter_er_shape_table_er_smaller_crate(X0).
inter_er_shape_table_er_below_crate(X0) :- er_shape_table(X0),er_below_crate(X0).
-inter_er_shape_table_er_below_crate(X0) :- object(X0),not inter_er_shape_table_er_below_crate(X0).
inter_er_shape_table_er_left_crate(X0) :- er_shape_table(X0),er_left_crate(X0).
-inter_er_shape_table_er_left_crate(X0) :- object(X0),not inter_er_shape_table_er_left_crate(X0).
inter_er_shape_table_er_overlap_crate(X0) :- er_shape_table(X0),er_overlap_crate(X0).
-inter_er_shape_table_er_overlap_crate(X0) :- object(X0),not inter_er_shape_table_er_overlap_crate(X0).
inter_er_shape_table_er_shape_crate(X0) :- er_shape_table(X0),er_shape_crate(X0).
-inter_er_shape_table_er_shape_crate(X0) :- object(X0),not inter_er_shape_table_er_shape_crate(X0).
inter_er_shape_table_er_smaller_key(X0) :- er_shape_table(X0),er_smaller_key(X0).
-inter_er_shape_table_er_smaller_key(X0) :- object(X0),not inter_er_shape_table_er_smaller_key(X0).
inter_er_shape_table_er_below_key(X0) :- er_shape_table(X0),er_below_key(X0).
-inter_er_shape_table_er_below_key(X0) :- object(X0),not inter_er_shape_table_er_below_key(X0).
inter_er_shape_table_er_left_key(X0) :- er_shape_table(X0),er_left_key(X0).
-inter_er_shape_table_er_left_key(X0) :- object(X0),not inter_er_shape_table_er_left_key(X0).
inter_er_shape_table_er_overlap_key(X0) :- er_shape_table(X0),er_overlap_key(X0).
-inter_er_shape_table_er_overlap_key(X0) :- object(X0),not inter_er_shape_table_er_overlap_key(X0).
inter_er_shape_table_er_shape_key(X0) :- er_shape_table(X0),er_shape_key(X0).
-inter_er_shape_table_er_shape_key(X0) :- object(X0),not inter_er_shape_table_er_shape_key(X0).
inter_er_shape_table_er_smaller_peg(X0) :- er_shape_table(X0),er_smaller_peg(X0).
-inter_er_shape_table_er_smaller_peg(X0) :- object(X0),not inter_er_shape_table_er_smaller_peg(X0).
inter_er_shape_table_er_below_peg(X0) :- er_shape_table(X0),er_below_peg(X0).
-inter_er_shape_table_er_below_peg(X0) :- object(X0),not inter_er_shape_table_er_below_peg(X0).
inter_er_shape_table_er_left_peg(X0) :- er_shape_table(X0),er_left_peg(X0).
-inter_er_shape_table_er_left_peg(X0) :- object(X0),not inter_er_shape_table_er_left_peg(X0).
inter_er_shape_table_er_overlap_peg(X0) :- er_shape_table(X0),er_overlap_peg(X0).
-inter_er_shape_table_er_overlap_peg(X0) :- object(X0),not inter_er_shape_table_er_overlap_peg(X0).
inter_er_shape_table_er_shape_peg(X0) :- er_shape_table(X0),er_shape_peg(X0).
-inter_er_shape_table_er_shape_peg(X0) :- object(X0),not inter_er_shape_table_er_shape_peg(X0).
inter_er_shape_table_er_smaller_disk(X0) :- er_shape_table(X0),er_smaller_disk(X0).
-inter_er_shape_table_er_smaller_disk(X0) :- object(X0),not inter_er_shape_table_er_smaller_disk(X0).
inter_er_shape_table_er_below_disk(X0) :- er_shape_table(X0),er_below_disk(X0).
-inter_er_shape_table_er_below_disk(X0) :- object(X0),not inter_er_shape_table_er_below_disk(X0).
inter_er_shape_table_er_left_disk(X0) :- er_shape_table(X0),er_left_disk(X0).
-inter_er_shape_table_er_left_disk(X0) :- object(X0),not inter_er_shape_table_er_left_disk(X0).
inter_er_shape_table_er_overlap_disk(X0) :- er_shape_table(X0),er_overlap_disk(X0).
-inter_er_shape_table_er_overlap_disk(X0) :- object(X0),not inter_er_shape_table_er_overlap_disk(X0).
inter_er_shape_table_er_shape_disk(X0) :- er_shape_table(X0),er_shape_disk(X0).
-inter_er_shape_table_er_shape_disk(X0) :- object(X0),not inter_er_shape_table_er_shape_disk(X0).
inter_er_shape_table_er_smaller_tile(X0) :- er_shape_table(X0),er_smaller_tile(X0).
-inter_er_shape_table_er_smaller_tile(X0) :- object(X0),not inter_er_shape_table_er_smaller_tile(X0).
inter_er_shape_table_er_below_tile(X0) :- er_shape_table(X0),er_below_tile(X0).
-inter_er_shape_table_er_below_tile(X0) :- object(X0),not inter_er_shape_table_er_below_tile(X0).
inter_er_shape_table_er_left_tile(X0) :- er_shape_table(X0),er_left_tile(X0).
-inter_er_shape_table_er_left_tile(X0) :- object(X0),not inter_er_shape_table_er_left_tile(X0).
inter_er_shape_table_er_overlap_tile(X0) :- er_shape_table(X0),er_overlap_tile(X0).
-inter_er_shape_table_er_overlap_tile(X0) :- object(X0),not inter_er_shape_table_er_overlap_tile(X0).
inter_er_shape_table_er_shape_tile(X0) :- er_shape_table(X0),er_shape_tile(X0).
-inter_er_shape_table_er_shape_tile(X0) :- object(X0),not inter_er_shape_table_er_shape_tile(X0).
inter_er_smaller_opencell_er_below_opencell(X0) :- er_smaller_opencell(X0),er_below_opencell(X0).
-inter_er_smaller_opencell_er_below_opencell(X0) :- object(X0),not inter_er_smaller_opencell_er_below_opencell(X0).
inter_er_smaller_opencell_er_left_opencell(X0) :- er_smaller_opencell(X0),er_left_opencell(X0).
-inter_er_smaller_opencell_er_left_opencell(X0) :- object(X0),not inter_er_smaller_opencell_er_left_opencell(X0).
inter_er_smaller_opencell_er_overlap_opencell(X0) :- er_smaller_opencell(X0),er_overlap_opencell(X0).
-inter_er_smaller_opencell_er_overlap_opencell(X0) :- object(X0),not inter_er_smaller_opencell_er_overlap_opencell(X0).
inter_er_smaller_opencell_er_shape_opencell(X0) :- er_smaller_opencell(X0),er_shape_opencell(X0).
-inter_er_smaller_opencell_er_shape_opencell(X0) :- object(X0),not inter_er_smaller_opencell_er_shape_opencell(X0).
inter_er_smaller_opencell_er_smaller_lockedcell(X0) :- er_smaller_opencell(X0),er_smaller_lockedcell(X0).
-inter_er_smaller_opencell_er_smaller_lockedcell(X0) :- object(X0),not inter_er_smaller_opencell_er_smaller_lockedcell(X0).
inter_er_smaller_opencell_er_below_lockedcell(X0) :- er_smaller_opencell(X0),er_below_lockedcell(X0).
-inter_er_smaller_opencell_er_below_lockedcell(X0) :- object(X0),not inter_er_smaller_opencell_er_below_lockedcell(X0).
inter_er_smaller_opencell_er_left_lockedcell(X0) :- er_smaller_opencell(X0),er_left_lockedcell(X0).
-inter_er_smaller_opencell_er_left_lockedcell(X0) :- object(X0),not inter_er_smaller_opencell_er_left_lockedcell(X0).
inter_er_smaller_opencell_er_overlap_lockedcell(X0) :- er_smaller_opencell(X0),er_overlap_lockedcell(X0).
-inter_er_smaller_opencell_er_overlap_lockedcell(X0) :- object(X0),not inter_er_smaller_opencell_er_overlap_lockedcell(X0).
inter_er_smaller_opencell_er_shape_lockedcell(X0) :- er_smaller_opencell(X0),er_shape_lockedcell(X0).
-inter_er_smaller_opencell_er_shape_lockedcell(X0) :- object(X0),not inter_er_smaller_opencell_er_shape_lockedcell(X0).
inter_er_smaller_opencell_er_smaller_sokoban(X0) :- er_smaller_opencell(X0),er_smaller_sokoban(X0).
-inter_er_smaller_opencell_er_smaller_sokoban(X0) :- object(X0),not inter_er_smaller_opencell_er_smaller_sokoban(X0).
inter_er_smaller_opencell_er_below_sokoban(X0) :- er_smaller_opencell(X0),er_below_sokoban(X0).
-inter_er_smaller_opencell_er_below_sokoban(X0) :- object(X0),not inter_er_smaller_opencell_er_below_sokoban(X0).
inter_er_smaller_opencell_er_left_sokoban(X0) :- er_smaller_opencell(X0),er_left_sokoban(X0).
-inter_er_smaller_opencell_er_left_sokoban(X0) :- object(X0),not inter_er_smaller_opencell_er_left_sokoban(X0).
inter_er_smaller_opencell_er_overlap_sokoban(X0) :- er_smaller_opencell(X0),er_overlap_sokoban(X0).
-inter_er_smaller_opencell_er_overlap_sokoban(X0) :- object(X0),not inter_er_smaller_opencell_er_overlap_sokoban(X0).
inter_er_smaller_opencell_er_shape_sokoban(X0) :- er_smaller_opencell(X0),er_shape_sokoban(X0).
-inter_er_smaller_opencell_er_shape_sokoban(X0) :- object(X0),not inter_er_smaller_opencell_er_shape_sokoban(X0).
inter_er_smaller_opencell_er_smaller_crate(X0) :- er_smaller_opencell(X0),er_smaller_crate(X0).
-inter_er_smaller_opencell_er_smaller_crate(X0) :- object(X0),not inter_er_smaller_opencell_er_smaller_crate(X0).
inter_er_smaller_opencell_er_below_crate(X0) :- er_smaller_opencell(X0),er_below_crate(X0).
-inter_er_smaller_opencell_er_below_crate(X0) :- object(X0),not inter_er_smaller_opencell_er_below_crate(X0).
inter_er_smaller_opencell_er_left_crate(X0) :- er_smaller_opencell(X0),er_left_crate(X0).
-inter_er_smaller_opencell_er_left_crate(X0) :- object(X0),not inter_er_smaller_opencell_er_left_crate(X0).
inter_er_smaller_opencell_er_overlap_crate(X0) :- er_smaller_opencell(X0),er_overlap_crate(X0).
-inter_er_smaller_opencell_er_overlap_crate(X0) :- object(X0),not inter_er_smaller_opencell_er_overlap_crate(X0).
inter_er_smaller_opencell_er_shape_crate(X0) :- er_smaller_opencell(X0),er_shape_crate(X0).
-inter_er_smaller_opencell_er_shape_crate(X0) :- object(X0),not inter_er_smaller_opencell_er_shape_crate(X0).
inter_er_smaller_opencell_er_smaller_key(X0) :- er_smaller_opencell(X0),er_smaller_key(X0).
-inter_er_smaller_opencell_er_smaller_key(X0) :- object(X0),not inter_er_smaller_opencell_er_smaller_key(X0).
inter_er_smaller_opencell_er_below_key(X0) :- er_smaller_opencell(X0),er_below_key(X0).
-inter_er_smaller_opencell_er_below_key(X0) :- object(X0),not inter_er_smaller_opencell_er_below_key(X0).
inter_er_smaller_opencell_er_left_key(X0) :- er_smaller_opencell(X0),er_left_key(X0).
-inter_er_smaller_opencell_er_left_key(X0) :- object(X0),not inter_er_smaller_opencell_er_left_key(X0).
inter_er_smaller_opencell_er_overlap_key(X0) :- er_smaller_opencell(X0),er_overlap_key(X0).
-inter_er_smaller_opencell_er_overlap_key(X0) :- object(X0),not inter_er_smaller_opencell_er_overlap_key(X0).
inter_er_smaller_opencell_er_shape_key(X0) :- er_smaller_opencell(X0),er_shape_key(X0).
-inter_er_smaller_opencell_er_shape_key(X0) :- object(X0),not inter_er_smaller_opencell_er_shape_key(X0).
inter_er_smaller_opencell_er_smaller_peg(X0) :- er_smaller_opencell(X0),er_smaller_peg(X0).
-inter_er_smaller_opencell_er_smaller_peg(X0) :- object(X0),not inter_er_smaller_opencell_er_smaller_peg(X0).
inter_er_smaller_opencell_er_below_peg(X0) :- er_smaller_opencell(X0),er_below_peg(X0).
-inter_er_smaller_opencell_er_below_peg(X0) :- object(X0),not inter_er_smaller_opencell_er_below_peg(X0).
inter_er_smaller_opencell_er_left_peg(X0) :- er_smaller_opencell(X0),er_left_peg(X0).
-inter_er_smaller_opencell_er_left_peg(X0) :- object(X0),not inter_er_smaller_opencell_er_left_peg(X0).
inter_er_smaller_opencell_er_overlap_peg(X0) :- er_smaller_opencell(X0),er_overlap_peg(X0).
-inter_er_smaller_opencell_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_opencell_er_overlap_peg(X0).
inter_er_smaller_opencell_er_shape_peg(X0) :- er_smaller_opencell(X0),er_shape_peg(X0).
-inter_er_smaller_opencell_er_shape_peg(X0) :- object(X0),not inter_er_smaller_opencell_er_shape_peg(X0).
inter_er_smaller_opencell_er_smaller_disk(X0) :- er_smaller_opencell(X0),er_smaller_disk(X0).
-inter_er_smaller_opencell_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_opencell_er_smaller_disk(X0).
inter_er_smaller_opencell_er_below_disk(X0) :- er_smaller_opencell(X0),er_below_disk(X0).
-inter_er_smaller_opencell_er_below_disk(X0) :- object(X0),not inter_er_smaller_opencell_er_below_disk(X0).
inter_er_smaller_opencell_er_left_disk(X0) :- er_smaller_opencell(X0),er_left_disk(X0).
-inter_er_smaller_opencell_er_left_disk(X0) :- object(X0),not inter_er_smaller_opencell_er_left_disk(X0).
inter_er_smaller_opencell_er_overlap_disk(X0) :- er_smaller_opencell(X0),er_overlap_disk(X0).
-inter_er_smaller_opencell_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_opencell_er_overlap_disk(X0).
inter_er_smaller_opencell_er_shape_disk(X0) :- er_smaller_opencell(X0),er_shape_disk(X0).
-inter_er_smaller_opencell_er_shape_disk(X0) :- object(X0),not inter_er_smaller_opencell_er_shape_disk(X0).
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
inter_er_below_opencell_er_left_opencell(X0) :- er_below_opencell(X0),er_left_opencell(X0).
-inter_er_below_opencell_er_left_opencell(X0) :- object(X0),not inter_er_below_opencell_er_left_opencell(X0).
inter_er_below_opencell_er_overlap_opencell(X0) :- er_below_opencell(X0),er_overlap_opencell(X0).
-inter_er_below_opencell_er_overlap_opencell(X0) :- object(X0),not inter_er_below_opencell_er_overlap_opencell(X0).
inter_er_below_opencell_er_shape_opencell(X0) :- er_below_opencell(X0),er_shape_opencell(X0).
-inter_er_below_opencell_er_shape_opencell(X0) :- object(X0),not inter_er_below_opencell_er_shape_opencell(X0).
inter_er_below_opencell_er_smaller_lockedcell(X0) :- er_below_opencell(X0),er_smaller_lockedcell(X0).
-inter_er_below_opencell_er_smaller_lockedcell(X0) :- object(X0),not inter_er_below_opencell_er_smaller_lockedcell(X0).
inter_er_below_opencell_er_below_lockedcell(X0) :- er_below_opencell(X0),er_below_lockedcell(X0).
-inter_er_below_opencell_er_below_lockedcell(X0) :- object(X0),not inter_er_below_opencell_er_below_lockedcell(X0).
inter_er_below_opencell_er_left_lockedcell(X0) :- er_below_opencell(X0),er_left_lockedcell(X0).
-inter_er_below_opencell_er_left_lockedcell(X0) :- object(X0),not inter_er_below_opencell_er_left_lockedcell(X0).
inter_er_below_opencell_er_overlap_lockedcell(X0) :- er_below_opencell(X0),er_overlap_lockedcell(X0).
-inter_er_below_opencell_er_overlap_lockedcell(X0) :- object(X0),not inter_er_below_opencell_er_overlap_lockedcell(X0).
inter_er_below_opencell_er_shape_lockedcell(X0) :- er_below_opencell(X0),er_shape_lockedcell(X0).
-inter_er_below_opencell_er_shape_lockedcell(X0) :- object(X0),not inter_er_below_opencell_er_shape_lockedcell(X0).
inter_er_below_opencell_er_smaller_sokoban(X0) :- er_below_opencell(X0),er_smaller_sokoban(X0).
-inter_er_below_opencell_er_smaller_sokoban(X0) :- object(X0),not inter_er_below_opencell_er_smaller_sokoban(X0).
inter_er_below_opencell_er_below_sokoban(X0) :- er_below_opencell(X0),er_below_sokoban(X0).
-inter_er_below_opencell_er_below_sokoban(X0) :- object(X0),not inter_er_below_opencell_er_below_sokoban(X0).
inter_er_below_opencell_er_left_sokoban(X0) :- er_below_opencell(X0),er_left_sokoban(X0).
-inter_er_below_opencell_er_left_sokoban(X0) :- object(X0),not inter_er_below_opencell_er_left_sokoban(X0).
inter_er_below_opencell_er_overlap_sokoban(X0) :- er_below_opencell(X0),er_overlap_sokoban(X0).
-inter_er_below_opencell_er_overlap_sokoban(X0) :- object(X0),not inter_er_below_opencell_er_overlap_sokoban(X0).
inter_er_below_opencell_er_shape_sokoban(X0) :- er_below_opencell(X0),er_shape_sokoban(X0).
-inter_er_below_opencell_er_shape_sokoban(X0) :- object(X0),not inter_er_below_opencell_er_shape_sokoban(X0).
inter_er_below_opencell_er_smaller_crate(X0) :- er_below_opencell(X0),er_smaller_crate(X0).
-inter_er_below_opencell_er_smaller_crate(X0) :- object(X0),not inter_er_below_opencell_er_smaller_crate(X0).
inter_er_below_opencell_er_below_crate(X0) :- er_below_opencell(X0),er_below_crate(X0).
-inter_er_below_opencell_er_below_crate(X0) :- object(X0),not inter_er_below_opencell_er_below_crate(X0).
inter_er_below_opencell_er_left_crate(X0) :- er_below_opencell(X0),er_left_crate(X0).
-inter_er_below_opencell_er_left_crate(X0) :- object(X0),not inter_er_below_opencell_er_left_crate(X0).
inter_er_below_opencell_er_overlap_crate(X0) :- er_below_opencell(X0),er_overlap_crate(X0).
-inter_er_below_opencell_er_overlap_crate(X0) :- object(X0),not inter_er_below_opencell_er_overlap_crate(X0).
inter_er_below_opencell_er_shape_crate(X0) :- er_below_opencell(X0),er_shape_crate(X0).
-inter_er_below_opencell_er_shape_crate(X0) :- object(X0),not inter_er_below_opencell_er_shape_crate(X0).
inter_er_below_opencell_er_smaller_key(X0) :- er_below_opencell(X0),er_smaller_key(X0).
-inter_er_below_opencell_er_smaller_key(X0) :- object(X0),not inter_er_below_opencell_er_smaller_key(X0).
inter_er_below_opencell_er_below_key(X0) :- er_below_opencell(X0),er_below_key(X0).
-inter_er_below_opencell_er_below_key(X0) :- object(X0),not inter_er_below_opencell_er_below_key(X0).
inter_er_below_opencell_er_left_key(X0) :- er_below_opencell(X0),er_left_key(X0).
-inter_er_below_opencell_er_left_key(X0) :- object(X0),not inter_er_below_opencell_er_left_key(X0).
inter_er_below_opencell_er_overlap_key(X0) :- er_below_opencell(X0),er_overlap_key(X0).
-inter_er_below_opencell_er_overlap_key(X0) :- object(X0),not inter_er_below_opencell_er_overlap_key(X0).
inter_er_below_opencell_er_shape_key(X0) :- er_below_opencell(X0),er_shape_key(X0).
-inter_er_below_opencell_er_shape_key(X0) :- object(X0),not inter_er_below_opencell_er_shape_key(X0).
inter_er_below_opencell_er_smaller_peg(X0) :- er_below_opencell(X0),er_smaller_peg(X0).
-inter_er_below_opencell_er_smaller_peg(X0) :- object(X0),not inter_er_below_opencell_er_smaller_peg(X0).
inter_er_below_opencell_er_below_peg(X0) :- er_below_opencell(X0),er_below_peg(X0).
-inter_er_below_opencell_er_below_peg(X0) :- object(X0),not inter_er_below_opencell_er_below_peg(X0).
inter_er_below_opencell_er_left_peg(X0) :- er_below_opencell(X0),er_left_peg(X0).
-inter_er_below_opencell_er_left_peg(X0) :- object(X0),not inter_er_below_opencell_er_left_peg(X0).
inter_er_below_opencell_er_overlap_peg(X0) :- er_below_opencell(X0),er_overlap_peg(X0).
-inter_er_below_opencell_er_overlap_peg(X0) :- object(X0),not inter_er_below_opencell_er_overlap_peg(X0).
inter_er_below_opencell_er_shape_peg(X0) :- er_below_opencell(X0),er_shape_peg(X0).
-inter_er_below_opencell_er_shape_peg(X0) :- object(X0),not inter_er_below_opencell_er_shape_peg(X0).
inter_er_below_opencell_er_smaller_disk(X0) :- er_below_opencell(X0),er_smaller_disk(X0).
-inter_er_below_opencell_er_smaller_disk(X0) :- object(X0),not inter_er_below_opencell_er_smaller_disk(X0).
inter_er_below_opencell_er_below_disk(X0) :- er_below_opencell(X0),er_below_disk(X0).
-inter_er_below_opencell_er_below_disk(X0) :- object(X0),not inter_er_below_opencell_er_below_disk(X0).
inter_er_below_opencell_er_left_disk(X0) :- er_below_opencell(X0),er_left_disk(X0).
-inter_er_below_opencell_er_left_disk(X0) :- object(X0),not inter_er_below_opencell_er_left_disk(X0).
inter_er_below_opencell_er_overlap_disk(X0) :- er_below_opencell(X0),er_overlap_disk(X0).
-inter_er_below_opencell_er_overlap_disk(X0) :- object(X0),not inter_er_below_opencell_er_overlap_disk(X0).
inter_er_below_opencell_er_shape_disk(X0) :- er_below_opencell(X0),er_shape_disk(X0).
-inter_er_below_opencell_er_shape_disk(X0) :- object(X0),not inter_er_below_opencell_er_shape_disk(X0).
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
inter_er_left_opencell_er_overlap_opencell(X0) :- er_left_opencell(X0),er_overlap_opencell(X0).
-inter_er_left_opencell_er_overlap_opencell(X0) :- object(X0),not inter_er_left_opencell_er_overlap_opencell(X0).
inter_er_left_opencell_er_shape_opencell(X0) :- er_left_opencell(X0),er_shape_opencell(X0).
-inter_er_left_opencell_er_shape_opencell(X0) :- object(X0),not inter_er_left_opencell_er_shape_opencell(X0).
inter_er_left_opencell_er_smaller_lockedcell(X0) :- er_left_opencell(X0),er_smaller_lockedcell(X0).
-inter_er_left_opencell_er_smaller_lockedcell(X0) :- object(X0),not inter_er_left_opencell_er_smaller_lockedcell(X0).
inter_er_left_opencell_er_below_lockedcell(X0) :- er_left_opencell(X0),er_below_lockedcell(X0).
-inter_er_left_opencell_er_below_lockedcell(X0) :- object(X0),not inter_er_left_opencell_er_below_lockedcell(X0).
inter_er_left_opencell_er_left_lockedcell(X0) :- er_left_opencell(X0),er_left_lockedcell(X0).
-inter_er_left_opencell_er_left_lockedcell(X0) :- object(X0),not inter_er_left_opencell_er_left_lockedcell(X0).
inter_er_left_opencell_er_overlap_lockedcell(X0) :- er_left_opencell(X0),er_overlap_lockedcell(X0).
-inter_er_left_opencell_er_overlap_lockedcell(X0) :- object(X0),not inter_er_left_opencell_er_overlap_lockedcell(X0).
inter_er_left_opencell_er_shape_lockedcell(X0) :- er_left_opencell(X0),er_shape_lockedcell(X0).
-inter_er_left_opencell_er_shape_lockedcell(X0) :- object(X0),not inter_er_left_opencell_er_shape_lockedcell(X0).
inter_er_left_opencell_er_smaller_sokoban(X0) :- er_left_opencell(X0),er_smaller_sokoban(X0).
-inter_er_left_opencell_er_smaller_sokoban(X0) :- object(X0),not inter_er_left_opencell_er_smaller_sokoban(X0).
inter_er_left_opencell_er_below_sokoban(X0) :- er_left_opencell(X0),er_below_sokoban(X0).
-inter_er_left_opencell_er_below_sokoban(X0) :- object(X0),not inter_er_left_opencell_er_below_sokoban(X0).
inter_er_left_opencell_er_left_sokoban(X0) :- er_left_opencell(X0),er_left_sokoban(X0).
-inter_er_left_opencell_er_left_sokoban(X0) :- object(X0),not inter_er_left_opencell_er_left_sokoban(X0).
inter_er_left_opencell_er_overlap_sokoban(X0) :- er_left_opencell(X0),er_overlap_sokoban(X0).
-inter_er_left_opencell_er_overlap_sokoban(X0) :- object(X0),not inter_er_left_opencell_er_overlap_sokoban(X0).
inter_er_left_opencell_er_shape_sokoban(X0) :- er_left_opencell(X0),er_shape_sokoban(X0).
-inter_er_left_opencell_er_shape_sokoban(X0) :- object(X0),not inter_er_left_opencell_er_shape_sokoban(X0).
inter_er_left_opencell_er_smaller_crate(X0) :- er_left_opencell(X0),er_smaller_crate(X0).
-inter_er_left_opencell_er_smaller_crate(X0) :- object(X0),not inter_er_left_opencell_er_smaller_crate(X0).
inter_er_left_opencell_er_below_crate(X0) :- er_left_opencell(X0),er_below_crate(X0).
-inter_er_left_opencell_er_below_crate(X0) :- object(X0),not inter_er_left_opencell_er_below_crate(X0).
inter_er_left_opencell_er_left_crate(X0) :- er_left_opencell(X0),er_left_crate(X0).
-inter_er_left_opencell_er_left_crate(X0) :- object(X0),not inter_er_left_opencell_er_left_crate(X0).
inter_er_left_opencell_er_overlap_crate(X0) :- er_left_opencell(X0),er_overlap_crate(X0).
-inter_er_left_opencell_er_overlap_crate(X0) :- object(X0),not inter_er_left_opencell_er_overlap_crate(X0).
inter_er_left_opencell_er_shape_crate(X0) :- er_left_opencell(X0),er_shape_crate(X0).
-inter_er_left_opencell_er_shape_crate(X0) :- object(X0),not inter_er_left_opencell_er_shape_crate(X0).
inter_er_left_opencell_er_smaller_key(X0) :- er_left_opencell(X0),er_smaller_key(X0).
-inter_er_left_opencell_er_smaller_key(X0) :- object(X0),not inter_er_left_opencell_er_smaller_key(X0).
inter_er_left_opencell_er_below_key(X0) :- er_left_opencell(X0),er_below_key(X0).
-inter_er_left_opencell_er_below_key(X0) :- object(X0),not inter_er_left_opencell_er_below_key(X0).
inter_er_left_opencell_er_left_key(X0) :- er_left_opencell(X0),er_left_key(X0).
-inter_er_left_opencell_er_left_key(X0) :- object(X0),not inter_er_left_opencell_er_left_key(X0).
inter_er_left_opencell_er_overlap_key(X0) :- er_left_opencell(X0),er_overlap_key(X0).
-inter_er_left_opencell_er_overlap_key(X0) :- object(X0),not inter_er_left_opencell_er_overlap_key(X0).
inter_er_left_opencell_er_shape_key(X0) :- er_left_opencell(X0),er_shape_key(X0).
-inter_er_left_opencell_er_shape_key(X0) :- object(X0),not inter_er_left_opencell_er_shape_key(X0).
inter_er_left_opencell_er_smaller_peg(X0) :- er_left_opencell(X0),er_smaller_peg(X0).
-inter_er_left_opencell_er_smaller_peg(X0) :- object(X0),not inter_er_left_opencell_er_smaller_peg(X0).
inter_er_left_opencell_er_below_peg(X0) :- er_left_opencell(X0),er_below_peg(X0).
-inter_er_left_opencell_er_below_peg(X0) :- object(X0),not inter_er_left_opencell_er_below_peg(X0).
inter_er_left_opencell_er_left_peg(X0) :- er_left_opencell(X0),er_left_peg(X0).
-inter_er_left_opencell_er_left_peg(X0) :- object(X0),not inter_er_left_opencell_er_left_peg(X0).
inter_er_left_opencell_er_overlap_peg(X0) :- er_left_opencell(X0),er_overlap_peg(X0).
-inter_er_left_opencell_er_overlap_peg(X0) :- object(X0),not inter_er_left_opencell_er_overlap_peg(X0).
inter_er_left_opencell_er_shape_peg(X0) :- er_left_opencell(X0),er_shape_peg(X0).
-inter_er_left_opencell_er_shape_peg(X0) :- object(X0),not inter_er_left_opencell_er_shape_peg(X0).
inter_er_left_opencell_er_smaller_disk(X0) :- er_left_opencell(X0),er_smaller_disk(X0).
-inter_er_left_opencell_er_smaller_disk(X0) :- object(X0),not inter_er_left_opencell_er_smaller_disk(X0).
inter_er_left_opencell_er_below_disk(X0) :- er_left_opencell(X0),er_below_disk(X0).
-inter_er_left_opencell_er_below_disk(X0) :- object(X0),not inter_er_left_opencell_er_below_disk(X0).
inter_er_left_opencell_er_left_disk(X0) :- er_left_opencell(X0),er_left_disk(X0).
-inter_er_left_opencell_er_left_disk(X0) :- object(X0),not inter_er_left_opencell_er_left_disk(X0).
inter_er_left_opencell_er_overlap_disk(X0) :- er_left_opencell(X0),er_overlap_disk(X0).
-inter_er_left_opencell_er_overlap_disk(X0) :- object(X0),not inter_er_left_opencell_er_overlap_disk(X0).
inter_er_left_opencell_er_shape_disk(X0) :- er_left_opencell(X0),er_shape_disk(X0).
-inter_er_left_opencell_er_shape_disk(X0) :- object(X0),not inter_er_left_opencell_er_shape_disk(X0).
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
inter_er_overlap_opencell_er_shape_opencell(X0) :- er_overlap_opencell(X0),er_shape_opencell(X0).
-inter_er_overlap_opencell_er_shape_opencell(X0) :- object(X0),not inter_er_overlap_opencell_er_shape_opencell(X0).
inter_er_overlap_opencell_er_smaller_lockedcell(X0) :- er_overlap_opencell(X0),er_smaller_lockedcell(X0).
-inter_er_overlap_opencell_er_smaller_lockedcell(X0) :- object(X0),not inter_er_overlap_opencell_er_smaller_lockedcell(X0).
inter_er_overlap_opencell_er_below_lockedcell(X0) :- er_overlap_opencell(X0),er_below_lockedcell(X0).
-inter_er_overlap_opencell_er_below_lockedcell(X0) :- object(X0),not inter_er_overlap_opencell_er_below_lockedcell(X0).
inter_er_overlap_opencell_er_left_lockedcell(X0) :- er_overlap_opencell(X0),er_left_lockedcell(X0).
-inter_er_overlap_opencell_er_left_lockedcell(X0) :- object(X0),not inter_er_overlap_opencell_er_left_lockedcell(X0).
inter_er_overlap_opencell_er_overlap_lockedcell(X0) :- er_overlap_opencell(X0),er_overlap_lockedcell(X0).
-inter_er_overlap_opencell_er_overlap_lockedcell(X0) :- object(X0),not inter_er_overlap_opencell_er_overlap_lockedcell(X0).
inter_er_overlap_opencell_er_shape_lockedcell(X0) :- er_overlap_opencell(X0),er_shape_lockedcell(X0).
-inter_er_overlap_opencell_er_shape_lockedcell(X0) :- object(X0),not inter_er_overlap_opencell_er_shape_lockedcell(X0).
inter_er_overlap_opencell_er_smaller_sokoban(X0) :- er_overlap_opencell(X0),er_smaller_sokoban(X0).
-inter_er_overlap_opencell_er_smaller_sokoban(X0) :- object(X0),not inter_er_overlap_opencell_er_smaller_sokoban(X0).
inter_er_overlap_opencell_er_below_sokoban(X0) :- er_overlap_opencell(X0),er_below_sokoban(X0).
-inter_er_overlap_opencell_er_below_sokoban(X0) :- object(X0),not inter_er_overlap_opencell_er_below_sokoban(X0).
inter_er_overlap_opencell_er_left_sokoban(X0) :- er_overlap_opencell(X0),er_left_sokoban(X0).
-inter_er_overlap_opencell_er_left_sokoban(X0) :- object(X0),not inter_er_overlap_opencell_er_left_sokoban(X0).
inter_er_overlap_opencell_er_overlap_sokoban(X0) :- er_overlap_opencell(X0),er_overlap_sokoban(X0).
-inter_er_overlap_opencell_er_overlap_sokoban(X0) :- object(X0),not inter_er_overlap_opencell_er_overlap_sokoban(X0).
inter_er_overlap_opencell_er_shape_sokoban(X0) :- er_overlap_opencell(X0),er_shape_sokoban(X0).
-inter_er_overlap_opencell_er_shape_sokoban(X0) :- object(X0),not inter_er_overlap_opencell_er_shape_sokoban(X0).
inter_er_overlap_opencell_er_smaller_crate(X0) :- er_overlap_opencell(X0),er_smaller_crate(X0).
-inter_er_overlap_opencell_er_smaller_crate(X0) :- object(X0),not inter_er_overlap_opencell_er_smaller_crate(X0).
inter_er_overlap_opencell_er_below_crate(X0) :- er_overlap_opencell(X0),er_below_crate(X0).
-inter_er_overlap_opencell_er_below_crate(X0) :- object(X0),not inter_er_overlap_opencell_er_below_crate(X0).
inter_er_overlap_opencell_er_left_crate(X0) :- er_overlap_opencell(X0),er_left_crate(X0).
-inter_er_overlap_opencell_er_left_crate(X0) :- object(X0),not inter_er_overlap_opencell_er_left_crate(X0).
inter_er_overlap_opencell_er_overlap_crate(X0) :- er_overlap_opencell(X0),er_overlap_crate(X0).
-inter_er_overlap_opencell_er_overlap_crate(X0) :- object(X0),not inter_er_overlap_opencell_er_overlap_crate(X0).
inter_er_overlap_opencell_er_shape_crate(X0) :- er_overlap_opencell(X0),er_shape_crate(X0).
-inter_er_overlap_opencell_er_shape_crate(X0) :- object(X0),not inter_er_overlap_opencell_er_shape_crate(X0).
inter_er_overlap_opencell_er_smaller_key(X0) :- er_overlap_opencell(X0),er_smaller_key(X0).
-inter_er_overlap_opencell_er_smaller_key(X0) :- object(X0),not inter_er_overlap_opencell_er_smaller_key(X0).
inter_er_overlap_opencell_er_below_key(X0) :- er_overlap_opencell(X0),er_below_key(X0).
-inter_er_overlap_opencell_er_below_key(X0) :- object(X0),not inter_er_overlap_opencell_er_below_key(X0).
inter_er_overlap_opencell_er_left_key(X0) :- er_overlap_opencell(X0),er_left_key(X0).
-inter_er_overlap_opencell_er_left_key(X0) :- object(X0),not inter_er_overlap_opencell_er_left_key(X0).
inter_er_overlap_opencell_er_overlap_key(X0) :- er_overlap_opencell(X0),er_overlap_key(X0).
-inter_er_overlap_opencell_er_overlap_key(X0) :- object(X0),not inter_er_overlap_opencell_er_overlap_key(X0).
inter_er_overlap_opencell_er_shape_key(X0) :- er_overlap_opencell(X0),er_shape_key(X0).
-inter_er_overlap_opencell_er_shape_key(X0) :- object(X0),not inter_er_overlap_opencell_er_shape_key(X0).
inter_er_overlap_opencell_er_smaller_peg(X0) :- er_overlap_opencell(X0),er_smaller_peg(X0).
-inter_er_overlap_opencell_er_smaller_peg(X0) :- object(X0),not inter_er_overlap_opencell_er_smaller_peg(X0).
inter_er_overlap_opencell_er_below_peg(X0) :- er_overlap_opencell(X0),er_below_peg(X0).
-inter_er_overlap_opencell_er_below_peg(X0) :- object(X0),not inter_er_overlap_opencell_er_below_peg(X0).
inter_er_overlap_opencell_er_left_peg(X0) :- er_overlap_opencell(X0),er_left_peg(X0).
-inter_er_overlap_opencell_er_left_peg(X0) :- object(X0),not inter_er_overlap_opencell_er_left_peg(X0).
inter_er_overlap_opencell_er_overlap_peg(X0) :- er_overlap_opencell(X0),er_overlap_peg(X0).
-inter_er_overlap_opencell_er_overlap_peg(X0) :- object(X0),not inter_er_overlap_opencell_er_overlap_peg(X0).
inter_er_overlap_opencell_er_shape_peg(X0) :- er_overlap_opencell(X0),er_shape_peg(X0).
-inter_er_overlap_opencell_er_shape_peg(X0) :- object(X0),not inter_er_overlap_opencell_er_shape_peg(X0).
inter_er_overlap_opencell_er_smaller_disk(X0) :- er_overlap_opencell(X0),er_smaller_disk(X0).
-inter_er_overlap_opencell_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_opencell_er_smaller_disk(X0).
inter_er_overlap_opencell_er_below_disk(X0) :- er_overlap_opencell(X0),er_below_disk(X0).
-inter_er_overlap_opencell_er_below_disk(X0) :- object(X0),not inter_er_overlap_opencell_er_below_disk(X0).
inter_er_overlap_opencell_er_left_disk(X0) :- er_overlap_opencell(X0),er_left_disk(X0).
-inter_er_overlap_opencell_er_left_disk(X0) :- object(X0),not inter_er_overlap_opencell_er_left_disk(X0).
inter_er_overlap_opencell_er_overlap_disk(X0) :- er_overlap_opencell(X0),er_overlap_disk(X0).
-inter_er_overlap_opencell_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_opencell_er_overlap_disk(X0).
inter_er_overlap_opencell_er_shape_disk(X0) :- er_overlap_opencell(X0),er_shape_disk(X0).
-inter_er_overlap_opencell_er_shape_disk(X0) :- object(X0),not inter_er_overlap_opencell_er_shape_disk(X0).
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
inter_er_shape_opencell_er_smaller_lockedcell(X0) :- er_shape_opencell(X0),er_smaller_lockedcell(X0).
-inter_er_shape_opencell_er_smaller_lockedcell(X0) :- object(X0),not inter_er_shape_opencell_er_smaller_lockedcell(X0).
inter_er_shape_opencell_er_below_lockedcell(X0) :- er_shape_opencell(X0),er_below_lockedcell(X0).
-inter_er_shape_opencell_er_below_lockedcell(X0) :- object(X0),not inter_er_shape_opencell_er_below_lockedcell(X0).
inter_er_shape_opencell_er_left_lockedcell(X0) :- er_shape_opencell(X0),er_left_lockedcell(X0).
-inter_er_shape_opencell_er_left_lockedcell(X0) :- object(X0),not inter_er_shape_opencell_er_left_lockedcell(X0).
inter_er_shape_opencell_er_overlap_lockedcell(X0) :- er_shape_opencell(X0),er_overlap_lockedcell(X0).
-inter_er_shape_opencell_er_overlap_lockedcell(X0) :- object(X0),not inter_er_shape_opencell_er_overlap_lockedcell(X0).
inter_er_shape_opencell_er_shape_lockedcell(X0) :- er_shape_opencell(X0),er_shape_lockedcell(X0).
-inter_er_shape_opencell_er_shape_lockedcell(X0) :- object(X0),not inter_er_shape_opencell_er_shape_lockedcell(X0).
inter_er_shape_opencell_er_smaller_sokoban(X0) :- er_shape_opencell(X0),er_smaller_sokoban(X0).
-inter_er_shape_opencell_er_smaller_sokoban(X0) :- object(X0),not inter_er_shape_opencell_er_smaller_sokoban(X0).
inter_er_shape_opencell_er_below_sokoban(X0) :- er_shape_opencell(X0),er_below_sokoban(X0).
-inter_er_shape_opencell_er_below_sokoban(X0) :- object(X0),not inter_er_shape_opencell_er_below_sokoban(X0).
inter_er_shape_opencell_er_left_sokoban(X0) :- er_shape_opencell(X0),er_left_sokoban(X0).
-inter_er_shape_opencell_er_left_sokoban(X0) :- object(X0),not inter_er_shape_opencell_er_left_sokoban(X0).
inter_er_shape_opencell_er_overlap_sokoban(X0) :- er_shape_opencell(X0),er_overlap_sokoban(X0).
-inter_er_shape_opencell_er_overlap_sokoban(X0) :- object(X0),not inter_er_shape_opencell_er_overlap_sokoban(X0).
inter_er_shape_opencell_er_shape_sokoban(X0) :- er_shape_opencell(X0),er_shape_sokoban(X0).
-inter_er_shape_opencell_er_shape_sokoban(X0) :- object(X0),not inter_er_shape_opencell_er_shape_sokoban(X0).
inter_er_shape_opencell_er_smaller_crate(X0) :- er_shape_opencell(X0),er_smaller_crate(X0).
-inter_er_shape_opencell_er_smaller_crate(X0) :- object(X0),not inter_er_shape_opencell_er_smaller_crate(X0).
inter_er_shape_opencell_er_below_crate(X0) :- er_shape_opencell(X0),er_below_crate(X0).
-inter_er_shape_opencell_er_below_crate(X0) :- object(X0),not inter_er_shape_opencell_er_below_crate(X0).
inter_er_shape_opencell_er_left_crate(X0) :- er_shape_opencell(X0),er_left_crate(X0).
-inter_er_shape_opencell_er_left_crate(X0) :- object(X0),not inter_er_shape_opencell_er_left_crate(X0).
inter_er_shape_opencell_er_overlap_crate(X0) :- er_shape_opencell(X0),er_overlap_crate(X0).
-inter_er_shape_opencell_er_overlap_crate(X0) :- object(X0),not inter_er_shape_opencell_er_overlap_crate(X0).
inter_er_shape_opencell_er_shape_crate(X0) :- er_shape_opencell(X0),er_shape_crate(X0).
-inter_er_shape_opencell_er_shape_crate(X0) :- object(X0),not inter_er_shape_opencell_er_shape_crate(X0).
inter_er_shape_opencell_er_smaller_key(X0) :- er_shape_opencell(X0),er_smaller_key(X0).
-inter_er_shape_opencell_er_smaller_key(X0) :- object(X0),not inter_er_shape_opencell_er_smaller_key(X0).
inter_er_shape_opencell_er_below_key(X0) :- er_shape_opencell(X0),er_below_key(X0).
-inter_er_shape_opencell_er_below_key(X0) :- object(X0),not inter_er_shape_opencell_er_below_key(X0).
inter_er_shape_opencell_er_left_key(X0) :- er_shape_opencell(X0),er_left_key(X0).
-inter_er_shape_opencell_er_left_key(X0) :- object(X0),not inter_er_shape_opencell_er_left_key(X0).
inter_er_shape_opencell_er_overlap_key(X0) :- er_shape_opencell(X0),er_overlap_key(X0).
-inter_er_shape_opencell_er_overlap_key(X0) :- object(X0),not inter_er_shape_opencell_er_overlap_key(X0).
inter_er_shape_opencell_er_shape_key(X0) :- er_shape_opencell(X0),er_shape_key(X0).
-inter_er_shape_opencell_er_shape_key(X0) :- object(X0),not inter_er_shape_opencell_er_shape_key(X0).
inter_er_shape_opencell_er_smaller_peg(X0) :- er_shape_opencell(X0),er_smaller_peg(X0).
-inter_er_shape_opencell_er_smaller_peg(X0) :- object(X0),not inter_er_shape_opencell_er_smaller_peg(X0).
inter_er_shape_opencell_er_below_peg(X0) :- er_shape_opencell(X0),er_below_peg(X0).
-inter_er_shape_opencell_er_below_peg(X0) :- object(X0),not inter_er_shape_opencell_er_below_peg(X0).
inter_er_shape_opencell_er_left_peg(X0) :- er_shape_opencell(X0),er_left_peg(X0).
-inter_er_shape_opencell_er_left_peg(X0) :- object(X0),not inter_er_shape_opencell_er_left_peg(X0).
inter_er_shape_opencell_er_overlap_peg(X0) :- er_shape_opencell(X0),er_overlap_peg(X0).
-inter_er_shape_opencell_er_overlap_peg(X0) :- object(X0),not inter_er_shape_opencell_er_overlap_peg(X0).
inter_er_shape_opencell_er_shape_peg(X0) :- er_shape_opencell(X0),er_shape_peg(X0).
-inter_er_shape_opencell_er_shape_peg(X0) :- object(X0),not inter_er_shape_opencell_er_shape_peg(X0).
inter_er_shape_opencell_er_smaller_disk(X0) :- er_shape_opencell(X0),er_smaller_disk(X0).
-inter_er_shape_opencell_er_smaller_disk(X0) :- object(X0),not inter_er_shape_opencell_er_smaller_disk(X0).
inter_er_shape_opencell_er_below_disk(X0) :- er_shape_opencell(X0),er_below_disk(X0).
-inter_er_shape_opencell_er_below_disk(X0) :- object(X0),not inter_er_shape_opencell_er_below_disk(X0).
inter_er_shape_opencell_er_left_disk(X0) :- er_shape_opencell(X0),er_left_disk(X0).
-inter_er_shape_opencell_er_left_disk(X0) :- object(X0),not inter_er_shape_opencell_er_left_disk(X0).
inter_er_shape_opencell_er_overlap_disk(X0) :- er_shape_opencell(X0),er_overlap_disk(X0).
-inter_er_shape_opencell_er_overlap_disk(X0) :- object(X0),not inter_er_shape_opencell_er_overlap_disk(X0).
inter_er_shape_opencell_er_shape_disk(X0) :- er_shape_opencell(X0),er_shape_disk(X0).
-inter_er_shape_opencell_er_shape_disk(X0) :- object(X0),not inter_er_shape_opencell_er_shape_disk(X0).
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
inter_er_smaller_lockedcell_er_below_lockedcell(X0) :- er_smaller_lockedcell(X0),er_below_lockedcell(X0).
-inter_er_smaller_lockedcell_er_below_lockedcell(X0) :- object(X0),not inter_er_smaller_lockedcell_er_below_lockedcell(X0).
inter_er_smaller_lockedcell_er_left_lockedcell(X0) :- er_smaller_lockedcell(X0),er_left_lockedcell(X0).
-inter_er_smaller_lockedcell_er_left_lockedcell(X0) :- object(X0),not inter_er_smaller_lockedcell_er_left_lockedcell(X0).
inter_er_smaller_lockedcell_er_overlap_lockedcell(X0) :- er_smaller_lockedcell(X0),er_overlap_lockedcell(X0).
-inter_er_smaller_lockedcell_er_overlap_lockedcell(X0) :- object(X0),not inter_er_smaller_lockedcell_er_overlap_lockedcell(X0).
inter_er_smaller_lockedcell_er_shape_lockedcell(X0) :- er_smaller_lockedcell(X0),er_shape_lockedcell(X0).
-inter_er_smaller_lockedcell_er_shape_lockedcell(X0) :- object(X0),not inter_er_smaller_lockedcell_er_shape_lockedcell(X0).
inter_er_smaller_lockedcell_er_smaller_sokoban(X0) :- er_smaller_lockedcell(X0),er_smaller_sokoban(X0).
-inter_er_smaller_lockedcell_er_smaller_sokoban(X0) :- object(X0),not inter_er_smaller_lockedcell_er_smaller_sokoban(X0).
inter_er_smaller_lockedcell_er_below_sokoban(X0) :- er_smaller_lockedcell(X0),er_below_sokoban(X0).
-inter_er_smaller_lockedcell_er_below_sokoban(X0) :- object(X0),not inter_er_smaller_lockedcell_er_below_sokoban(X0).
inter_er_smaller_lockedcell_er_left_sokoban(X0) :- er_smaller_lockedcell(X0),er_left_sokoban(X0).
-inter_er_smaller_lockedcell_er_left_sokoban(X0) :- object(X0),not inter_er_smaller_lockedcell_er_left_sokoban(X0).
inter_er_smaller_lockedcell_er_overlap_sokoban(X0) :- er_smaller_lockedcell(X0),er_overlap_sokoban(X0).
-inter_er_smaller_lockedcell_er_overlap_sokoban(X0) :- object(X0),not inter_er_smaller_lockedcell_er_overlap_sokoban(X0).
inter_er_smaller_lockedcell_er_shape_sokoban(X0) :- er_smaller_lockedcell(X0),er_shape_sokoban(X0).
-inter_er_smaller_lockedcell_er_shape_sokoban(X0) :- object(X0),not inter_er_smaller_lockedcell_er_shape_sokoban(X0).
inter_er_smaller_lockedcell_er_smaller_crate(X0) :- er_smaller_lockedcell(X0),er_smaller_crate(X0).
-inter_er_smaller_lockedcell_er_smaller_crate(X0) :- object(X0),not inter_er_smaller_lockedcell_er_smaller_crate(X0).
inter_er_smaller_lockedcell_er_below_crate(X0) :- er_smaller_lockedcell(X0),er_below_crate(X0).
-inter_er_smaller_lockedcell_er_below_crate(X0) :- object(X0),not inter_er_smaller_lockedcell_er_below_crate(X0).
inter_er_smaller_lockedcell_er_left_crate(X0) :- er_smaller_lockedcell(X0),er_left_crate(X0).
-inter_er_smaller_lockedcell_er_left_crate(X0) :- object(X0),not inter_er_smaller_lockedcell_er_left_crate(X0).
inter_er_smaller_lockedcell_er_overlap_crate(X0) :- er_smaller_lockedcell(X0),er_overlap_crate(X0).
-inter_er_smaller_lockedcell_er_overlap_crate(X0) :- object(X0),not inter_er_smaller_lockedcell_er_overlap_crate(X0).
inter_er_smaller_lockedcell_er_shape_crate(X0) :- er_smaller_lockedcell(X0),er_shape_crate(X0).
-inter_er_smaller_lockedcell_er_shape_crate(X0) :- object(X0),not inter_er_smaller_lockedcell_er_shape_crate(X0).
inter_er_smaller_lockedcell_er_smaller_key(X0) :- er_smaller_lockedcell(X0),er_smaller_key(X0).
-inter_er_smaller_lockedcell_er_smaller_key(X0) :- object(X0),not inter_er_smaller_lockedcell_er_smaller_key(X0).
inter_er_smaller_lockedcell_er_below_key(X0) :- er_smaller_lockedcell(X0),er_below_key(X0).
-inter_er_smaller_lockedcell_er_below_key(X0) :- object(X0),not inter_er_smaller_lockedcell_er_below_key(X0).
inter_er_smaller_lockedcell_er_left_key(X0) :- er_smaller_lockedcell(X0),er_left_key(X0).
-inter_er_smaller_lockedcell_er_left_key(X0) :- object(X0),not inter_er_smaller_lockedcell_er_left_key(X0).
inter_er_smaller_lockedcell_er_overlap_key(X0) :- er_smaller_lockedcell(X0),er_overlap_key(X0).
-inter_er_smaller_lockedcell_er_overlap_key(X0) :- object(X0),not inter_er_smaller_lockedcell_er_overlap_key(X0).
inter_er_smaller_lockedcell_er_shape_key(X0) :- er_smaller_lockedcell(X0),er_shape_key(X0).
-inter_er_smaller_lockedcell_er_shape_key(X0) :- object(X0),not inter_er_smaller_lockedcell_er_shape_key(X0).
inter_er_smaller_lockedcell_er_smaller_peg(X0) :- er_smaller_lockedcell(X0),er_smaller_peg(X0).
-inter_er_smaller_lockedcell_er_smaller_peg(X0) :- object(X0),not inter_er_smaller_lockedcell_er_smaller_peg(X0).
inter_er_smaller_lockedcell_er_below_peg(X0) :- er_smaller_lockedcell(X0),er_below_peg(X0).
-inter_er_smaller_lockedcell_er_below_peg(X0) :- object(X0),not inter_er_smaller_lockedcell_er_below_peg(X0).
inter_er_smaller_lockedcell_er_left_peg(X0) :- er_smaller_lockedcell(X0),er_left_peg(X0).
-inter_er_smaller_lockedcell_er_left_peg(X0) :- object(X0),not inter_er_smaller_lockedcell_er_left_peg(X0).
inter_er_smaller_lockedcell_er_overlap_peg(X0) :- er_smaller_lockedcell(X0),er_overlap_peg(X0).
-inter_er_smaller_lockedcell_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_lockedcell_er_overlap_peg(X0).
inter_er_smaller_lockedcell_er_shape_peg(X0) :- er_smaller_lockedcell(X0),er_shape_peg(X0).
-inter_er_smaller_lockedcell_er_shape_peg(X0) :- object(X0),not inter_er_smaller_lockedcell_er_shape_peg(X0).
inter_er_smaller_lockedcell_er_smaller_disk(X0) :- er_smaller_lockedcell(X0),er_smaller_disk(X0).
-inter_er_smaller_lockedcell_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_lockedcell_er_smaller_disk(X0).
inter_er_smaller_lockedcell_er_below_disk(X0) :- er_smaller_lockedcell(X0),er_below_disk(X0).
-inter_er_smaller_lockedcell_er_below_disk(X0) :- object(X0),not inter_er_smaller_lockedcell_er_below_disk(X0).
inter_er_smaller_lockedcell_er_left_disk(X0) :- er_smaller_lockedcell(X0),er_left_disk(X0).
-inter_er_smaller_lockedcell_er_left_disk(X0) :- object(X0),not inter_er_smaller_lockedcell_er_left_disk(X0).
inter_er_smaller_lockedcell_er_overlap_disk(X0) :- er_smaller_lockedcell(X0),er_overlap_disk(X0).
-inter_er_smaller_lockedcell_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_lockedcell_er_overlap_disk(X0).
inter_er_smaller_lockedcell_er_shape_disk(X0) :- er_smaller_lockedcell(X0),er_shape_disk(X0).
-inter_er_smaller_lockedcell_er_shape_disk(X0) :- object(X0),not inter_er_smaller_lockedcell_er_shape_disk(X0).
inter_er_smaller_lockedcell_er_smaller_tile(X0) :- er_smaller_lockedcell(X0),er_smaller_tile(X0).
-inter_er_smaller_lockedcell_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_lockedcell_er_smaller_tile(X0).
inter_er_smaller_lockedcell_er_below_tile(X0) :- er_smaller_lockedcell(X0),er_below_tile(X0).
-inter_er_smaller_lockedcell_er_below_tile(X0) :- object(X0),not inter_er_smaller_lockedcell_er_below_tile(X0).
inter_er_smaller_lockedcell_er_left_tile(X0) :- er_smaller_lockedcell(X0),er_left_tile(X0).
-inter_er_smaller_lockedcell_er_left_tile(X0) :- object(X0),not inter_er_smaller_lockedcell_er_left_tile(X0).
inter_er_smaller_lockedcell_er_overlap_tile(X0) :- er_smaller_lockedcell(X0),er_overlap_tile(X0).
-inter_er_smaller_lockedcell_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_lockedcell_er_overlap_tile(X0).
inter_er_smaller_lockedcell_er_shape_tile(X0) :- er_smaller_lockedcell(X0),er_shape_tile(X0).
-inter_er_smaller_lockedcell_er_shape_tile(X0) :- object(X0),not inter_er_smaller_lockedcell_er_shape_tile(X0).
inter_er_below_lockedcell_er_left_lockedcell(X0) :- er_below_lockedcell(X0),er_left_lockedcell(X0).
-inter_er_below_lockedcell_er_left_lockedcell(X0) :- object(X0),not inter_er_below_lockedcell_er_left_lockedcell(X0).
inter_er_below_lockedcell_er_overlap_lockedcell(X0) :- er_below_lockedcell(X0),er_overlap_lockedcell(X0).
-inter_er_below_lockedcell_er_overlap_lockedcell(X0) :- object(X0),not inter_er_below_lockedcell_er_overlap_lockedcell(X0).
inter_er_below_lockedcell_er_shape_lockedcell(X0) :- er_below_lockedcell(X0),er_shape_lockedcell(X0).
-inter_er_below_lockedcell_er_shape_lockedcell(X0) :- object(X0),not inter_er_below_lockedcell_er_shape_lockedcell(X0).
inter_er_below_lockedcell_er_smaller_sokoban(X0) :- er_below_lockedcell(X0),er_smaller_sokoban(X0).
-inter_er_below_lockedcell_er_smaller_sokoban(X0) :- object(X0),not inter_er_below_lockedcell_er_smaller_sokoban(X0).
inter_er_below_lockedcell_er_below_sokoban(X0) :- er_below_lockedcell(X0),er_below_sokoban(X0).
-inter_er_below_lockedcell_er_below_sokoban(X0) :- object(X0),not inter_er_below_lockedcell_er_below_sokoban(X0).
inter_er_below_lockedcell_er_left_sokoban(X0) :- er_below_lockedcell(X0),er_left_sokoban(X0).
-inter_er_below_lockedcell_er_left_sokoban(X0) :- object(X0),not inter_er_below_lockedcell_er_left_sokoban(X0).
inter_er_below_lockedcell_er_overlap_sokoban(X0) :- er_below_lockedcell(X0),er_overlap_sokoban(X0).
-inter_er_below_lockedcell_er_overlap_sokoban(X0) :- object(X0),not inter_er_below_lockedcell_er_overlap_sokoban(X0).
inter_er_below_lockedcell_er_shape_sokoban(X0) :- er_below_lockedcell(X0),er_shape_sokoban(X0).
-inter_er_below_lockedcell_er_shape_sokoban(X0) :- object(X0),not inter_er_below_lockedcell_er_shape_sokoban(X0).
inter_er_below_lockedcell_er_smaller_crate(X0) :- er_below_lockedcell(X0),er_smaller_crate(X0).
-inter_er_below_lockedcell_er_smaller_crate(X0) :- object(X0),not inter_er_below_lockedcell_er_smaller_crate(X0).
inter_er_below_lockedcell_er_below_crate(X0) :- er_below_lockedcell(X0),er_below_crate(X0).
-inter_er_below_lockedcell_er_below_crate(X0) :- object(X0),not inter_er_below_lockedcell_er_below_crate(X0).
inter_er_below_lockedcell_er_left_crate(X0) :- er_below_lockedcell(X0),er_left_crate(X0).
-inter_er_below_lockedcell_er_left_crate(X0) :- object(X0),not inter_er_below_lockedcell_er_left_crate(X0).
inter_er_below_lockedcell_er_overlap_crate(X0) :- er_below_lockedcell(X0),er_overlap_crate(X0).
-inter_er_below_lockedcell_er_overlap_crate(X0) :- object(X0),not inter_er_below_lockedcell_er_overlap_crate(X0).
inter_er_below_lockedcell_er_shape_crate(X0) :- er_below_lockedcell(X0),er_shape_crate(X0).
-inter_er_below_lockedcell_er_shape_crate(X0) :- object(X0),not inter_er_below_lockedcell_er_shape_crate(X0).
inter_er_below_lockedcell_er_smaller_key(X0) :- er_below_lockedcell(X0),er_smaller_key(X0).
-inter_er_below_lockedcell_er_smaller_key(X0) :- object(X0),not inter_er_below_lockedcell_er_smaller_key(X0).
inter_er_below_lockedcell_er_below_key(X0) :- er_below_lockedcell(X0),er_below_key(X0).
-inter_er_below_lockedcell_er_below_key(X0) :- object(X0),not inter_er_below_lockedcell_er_below_key(X0).
inter_er_below_lockedcell_er_left_key(X0) :- er_below_lockedcell(X0),er_left_key(X0).
-inter_er_below_lockedcell_er_left_key(X0) :- object(X0),not inter_er_below_lockedcell_er_left_key(X0).
inter_er_below_lockedcell_er_overlap_key(X0) :- er_below_lockedcell(X0),er_overlap_key(X0).
-inter_er_below_lockedcell_er_overlap_key(X0) :- object(X0),not inter_er_below_lockedcell_er_overlap_key(X0).
inter_er_below_lockedcell_er_shape_key(X0) :- er_below_lockedcell(X0),er_shape_key(X0).
-inter_er_below_lockedcell_er_shape_key(X0) :- object(X0),not inter_er_below_lockedcell_er_shape_key(X0).
inter_er_below_lockedcell_er_smaller_peg(X0) :- er_below_lockedcell(X0),er_smaller_peg(X0).
-inter_er_below_lockedcell_er_smaller_peg(X0) :- object(X0),not inter_er_below_lockedcell_er_smaller_peg(X0).
inter_er_below_lockedcell_er_below_peg(X0) :- er_below_lockedcell(X0),er_below_peg(X0).
-inter_er_below_lockedcell_er_below_peg(X0) :- object(X0),not inter_er_below_lockedcell_er_below_peg(X0).
inter_er_below_lockedcell_er_left_peg(X0) :- er_below_lockedcell(X0),er_left_peg(X0).
-inter_er_below_lockedcell_er_left_peg(X0) :- object(X0),not inter_er_below_lockedcell_er_left_peg(X0).
inter_er_below_lockedcell_er_overlap_peg(X0) :- er_below_lockedcell(X0),er_overlap_peg(X0).
-inter_er_below_lockedcell_er_overlap_peg(X0) :- object(X0),not inter_er_below_lockedcell_er_overlap_peg(X0).
inter_er_below_lockedcell_er_shape_peg(X0) :- er_below_lockedcell(X0),er_shape_peg(X0).
-inter_er_below_lockedcell_er_shape_peg(X0) :- object(X0),not inter_er_below_lockedcell_er_shape_peg(X0).
inter_er_below_lockedcell_er_smaller_disk(X0) :- er_below_lockedcell(X0),er_smaller_disk(X0).
-inter_er_below_lockedcell_er_smaller_disk(X0) :- object(X0),not inter_er_below_lockedcell_er_smaller_disk(X0).
inter_er_below_lockedcell_er_below_disk(X0) :- er_below_lockedcell(X0),er_below_disk(X0).
-inter_er_below_lockedcell_er_below_disk(X0) :- object(X0),not inter_er_below_lockedcell_er_below_disk(X0).
inter_er_below_lockedcell_er_left_disk(X0) :- er_below_lockedcell(X0),er_left_disk(X0).
-inter_er_below_lockedcell_er_left_disk(X0) :- object(X0),not inter_er_below_lockedcell_er_left_disk(X0).
inter_er_below_lockedcell_er_overlap_disk(X0) :- er_below_lockedcell(X0),er_overlap_disk(X0).
-inter_er_below_lockedcell_er_overlap_disk(X0) :- object(X0),not inter_er_below_lockedcell_er_overlap_disk(X0).
inter_er_below_lockedcell_er_shape_disk(X0) :- er_below_lockedcell(X0),er_shape_disk(X0).
-inter_er_below_lockedcell_er_shape_disk(X0) :- object(X0),not inter_er_below_lockedcell_er_shape_disk(X0).
inter_er_below_lockedcell_er_smaller_tile(X0) :- er_below_lockedcell(X0),er_smaller_tile(X0).
-inter_er_below_lockedcell_er_smaller_tile(X0) :- object(X0),not inter_er_below_lockedcell_er_smaller_tile(X0).
inter_er_below_lockedcell_er_below_tile(X0) :- er_below_lockedcell(X0),er_below_tile(X0).
-inter_er_below_lockedcell_er_below_tile(X0) :- object(X0),not inter_er_below_lockedcell_er_below_tile(X0).
inter_er_below_lockedcell_er_left_tile(X0) :- er_below_lockedcell(X0),er_left_tile(X0).
-inter_er_below_lockedcell_er_left_tile(X0) :- object(X0),not inter_er_below_lockedcell_er_left_tile(X0).
inter_er_below_lockedcell_er_overlap_tile(X0) :- er_below_lockedcell(X0),er_overlap_tile(X0).
-inter_er_below_lockedcell_er_overlap_tile(X0) :- object(X0),not inter_er_below_lockedcell_er_overlap_tile(X0).
inter_er_below_lockedcell_er_shape_tile(X0) :- er_below_lockedcell(X0),er_shape_tile(X0).
-inter_er_below_lockedcell_er_shape_tile(X0) :- object(X0),not inter_er_below_lockedcell_er_shape_tile(X0).
inter_er_left_lockedcell_er_overlap_lockedcell(X0) :- er_left_lockedcell(X0),er_overlap_lockedcell(X0).
-inter_er_left_lockedcell_er_overlap_lockedcell(X0) :- object(X0),not inter_er_left_lockedcell_er_overlap_lockedcell(X0).
inter_er_left_lockedcell_er_shape_lockedcell(X0) :- er_left_lockedcell(X0),er_shape_lockedcell(X0).
-inter_er_left_lockedcell_er_shape_lockedcell(X0) :- object(X0),not inter_er_left_lockedcell_er_shape_lockedcell(X0).
inter_er_left_lockedcell_er_smaller_sokoban(X0) :- er_left_lockedcell(X0),er_smaller_sokoban(X0).
-inter_er_left_lockedcell_er_smaller_sokoban(X0) :- object(X0),not inter_er_left_lockedcell_er_smaller_sokoban(X0).
inter_er_left_lockedcell_er_below_sokoban(X0) :- er_left_lockedcell(X0),er_below_sokoban(X0).
-inter_er_left_lockedcell_er_below_sokoban(X0) :- object(X0),not inter_er_left_lockedcell_er_below_sokoban(X0).
inter_er_left_lockedcell_er_left_sokoban(X0) :- er_left_lockedcell(X0),er_left_sokoban(X0).
-inter_er_left_lockedcell_er_left_sokoban(X0) :- object(X0),not inter_er_left_lockedcell_er_left_sokoban(X0).
inter_er_left_lockedcell_er_overlap_sokoban(X0) :- er_left_lockedcell(X0),er_overlap_sokoban(X0).
-inter_er_left_lockedcell_er_overlap_sokoban(X0) :- object(X0),not inter_er_left_lockedcell_er_overlap_sokoban(X0).
inter_er_left_lockedcell_er_shape_sokoban(X0) :- er_left_lockedcell(X0),er_shape_sokoban(X0).
-inter_er_left_lockedcell_er_shape_sokoban(X0) :- object(X0),not inter_er_left_lockedcell_er_shape_sokoban(X0).
inter_er_left_lockedcell_er_smaller_crate(X0) :- er_left_lockedcell(X0),er_smaller_crate(X0).
-inter_er_left_lockedcell_er_smaller_crate(X0) :- object(X0),not inter_er_left_lockedcell_er_smaller_crate(X0).
inter_er_left_lockedcell_er_below_crate(X0) :- er_left_lockedcell(X0),er_below_crate(X0).
-inter_er_left_lockedcell_er_below_crate(X0) :- object(X0),not inter_er_left_lockedcell_er_below_crate(X0).
inter_er_left_lockedcell_er_left_crate(X0) :- er_left_lockedcell(X0),er_left_crate(X0).
-inter_er_left_lockedcell_er_left_crate(X0) :- object(X0),not inter_er_left_lockedcell_er_left_crate(X0).
inter_er_left_lockedcell_er_overlap_crate(X0) :- er_left_lockedcell(X0),er_overlap_crate(X0).
-inter_er_left_lockedcell_er_overlap_crate(X0) :- object(X0),not inter_er_left_lockedcell_er_overlap_crate(X0).
inter_er_left_lockedcell_er_shape_crate(X0) :- er_left_lockedcell(X0),er_shape_crate(X0).
-inter_er_left_lockedcell_er_shape_crate(X0) :- object(X0),not inter_er_left_lockedcell_er_shape_crate(X0).
inter_er_left_lockedcell_er_smaller_key(X0) :- er_left_lockedcell(X0),er_smaller_key(X0).
-inter_er_left_lockedcell_er_smaller_key(X0) :- object(X0),not inter_er_left_lockedcell_er_smaller_key(X0).
inter_er_left_lockedcell_er_below_key(X0) :- er_left_lockedcell(X0),er_below_key(X0).
-inter_er_left_lockedcell_er_below_key(X0) :- object(X0),not inter_er_left_lockedcell_er_below_key(X0).
inter_er_left_lockedcell_er_left_key(X0) :- er_left_lockedcell(X0),er_left_key(X0).
-inter_er_left_lockedcell_er_left_key(X0) :- object(X0),not inter_er_left_lockedcell_er_left_key(X0).
inter_er_left_lockedcell_er_overlap_key(X0) :- er_left_lockedcell(X0),er_overlap_key(X0).
-inter_er_left_lockedcell_er_overlap_key(X0) :- object(X0),not inter_er_left_lockedcell_er_overlap_key(X0).
inter_er_left_lockedcell_er_shape_key(X0) :- er_left_lockedcell(X0),er_shape_key(X0).
-inter_er_left_lockedcell_er_shape_key(X0) :- object(X0),not inter_er_left_lockedcell_er_shape_key(X0).
inter_er_left_lockedcell_er_smaller_peg(X0) :- er_left_lockedcell(X0),er_smaller_peg(X0).
-inter_er_left_lockedcell_er_smaller_peg(X0) :- object(X0),not inter_er_left_lockedcell_er_smaller_peg(X0).
inter_er_left_lockedcell_er_below_peg(X0) :- er_left_lockedcell(X0),er_below_peg(X0).
-inter_er_left_lockedcell_er_below_peg(X0) :- object(X0),not inter_er_left_lockedcell_er_below_peg(X0).
inter_er_left_lockedcell_er_left_peg(X0) :- er_left_lockedcell(X0),er_left_peg(X0).
-inter_er_left_lockedcell_er_left_peg(X0) :- object(X0),not inter_er_left_lockedcell_er_left_peg(X0).
inter_er_left_lockedcell_er_overlap_peg(X0) :- er_left_lockedcell(X0),er_overlap_peg(X0).
-inter_er_left_lockedcell_er_overlap_peg(X0) :- object(X0),not inter_er_left_lockedcell_er_overlap_peg(X0).
inter_er_left_lockedcell_er_shape_peg(X0) :- er_left_lockedcell(X0),er_shape_peg(X0).
-inter_er_left_lockedcell_er_shape_peg(X0) :- object(X0),not inter_er_left_lockedcell_er_shape_peg(X0).
inter_er_left_lockedcell_er_smaller_disk(X0) :- er_left_lockedcell(X0),er_smaller_disk(X0).
-inter_er_left_lockedcell_er_smaller_disk(X0) :- object(X0),not inter_er_left_lockedcell_er_smaller_disk(X0).
inter_er_left_lockedcell_er_below_disk(X0) :- er_left_lockedcell(X0),er_below_disk(X0).
-inter_er_left_lockedcell_er_below_disk(X0) :- object(X0),not inter_er_left_lockedcell_er_below_disk(X0).
inter_er_left_lockedcell_er_left_disk(X0) :- er_left_lockedcell(X0),er_left_disk(X0).
-inter_er_left_lockedcell_er_left_disk(X0) :- object(X0),not inter_er_left_lockedcell_er_left_disk(X0).
inter_er_left_lockedcell_er_overlap_disk(X0) :- er_left_lockedcell(X0),er_overlap_disk(X0).
-inter_er_left_lockedcell_er_overlap_disk(X0) :- object(X0),not inter_er_left_lockedcell_er_overlap_disk(X0).
inter_er_left_lockedcell_er_shape_disk(X0) :- er_left_lockedcell(X0),er_shape_disk(X0).
-inter_er_left_lockedcell_er_shape_disk(X0) :- object(X0),not inter_er_left_lockedcell_er_shape_disk(X0).
inter_er_left_lockedcell_er_smaller_tile(X0) :- er_left_lockedcell(X0),er_smaller_tile(X0).
-inter_er_left_lockedcell_er_smaller_tile(X0) :- object(X0),not inter_er_left_lockedcell_er_smaller_tile(X0).
inter_er_left_lockedcell_er_below_tile(X0) :- er_left_lockedcell(X0),er_below_tile(X0).
-inter_er_left_lockedcell_er_below_tile(X0) :- object(X0),not inter_er_left_lockedcell_er_below_tile(X0).
inter_er_left_lockedcell_er_left_tile(X0) :- er_left_lockedcell(X0),er_left_tile(X0).
-inter_er_left_lockedcell_er_left_tile(X0) :- object(X0),not inter_er_left_lockedcell_er_left_tile(X0).
inter_er_left_lockedcell_er_overlap_tile(X0) :- er_left_lockedcell(X0),er_overlap_tile(X0).
-inter_er_left_lockedcell_er_overlap_tile(X0) :- object(X0),not inter_er_left_lockedcell_er_overlap_tile(X0).
inter_er_left_lockedcell_er_shape_tile(X0) :- er_left_lockedcell(X0),er_shape_tile(X0).
-inter_er_left_lockedcell_er_shape_tile(X0) :- object(X0),not inter_er_left_lockedcell_er_shape_tile(X0).
inter_er_overlap_lockedcell_er_shape_lockedcell(X0) :- er_overlap_lockedcell(X0),er_shape_lockedcell(X0).
-inter_er_overlap_lockedcell_er_shape_lockedcell(X0) :- object(X0),not inter_er_overlap_lockedcell_er_shape_lockedcell(X0).
inter_er_overlap_lockedcell_er_smaller_sokoban(X0) :- er_overlap_lockedcell(X0),er_smaller_sokoban(X0).
-inter_er_overlap_lockedcell_er_smaller_sokoban(X0) :- object(X0),not inter_er_overlap_lockedcell_er_smaller_sokoban(X0).
inter_er_overlap_lockedcell_er_below_sokoban(X0) :- er_overlap_lockedcell(X0),er_below_sokoban(X0).
-inter_er_overlap_lockedcell_er_below_sokoban(X0) :- object(X0),not inter_er_overlap_lockedcell_er_below_sokoban(X0).
inter_er_overlap_lockedcell_er_left_sokoban(X0) :- er_overlap_lockedcell(X0),er_left_sokoban(X0).
-inter_er_overlap_lockedcell_er_left_sokoban(X0) :- object(X0),not inter_er_overlap_lockedcell_er_left_sokoban(X0).
inter_er_overlap_lockedcell_er_overlap_sokoban(X0) :- er_overlap_lockedcell(X0),er_overlap_sokoban(X0).
-inter_er_overlap_lockedcell_er_overlap_sokoban(X0) :- object(X0),not inter_er_overlap_lockedcell_er_overlap_sokoban(X0).
inter_er_overlap_lockedcell_er_shape_sokoban(X0) :- er_overlap_lockedcell(X0),er_shape_sokoban(X0).
-inter_er_overlap_lockedcell_er_shape_sokoban(X0) :- object(X0),not inter_er_overlap_lockedcell_er_shape_sokoban(X0).
inter_er_overlap_lockedcell_er_smaller_crate(X0) :- er_overlap_lockedcell(X0),er_smaller_crate(X0).
-inter_er_overlap_lockedcell_er_smaller_crate(X0) :- object(X0),not inter_er_overlap_lockedcell_er_smaller_crate(X0).
inter_er_overlap_lockedcell_er_below_crate(X0) :- er_overlap_lockedcell(X0),er_below_crate(X0).
-inter_er_overlap_lockedcell_er_below_crate(X0) :- object(X0),not inter_er_overlap_lockedcell_er_below_crate(X0).
inter_er_overlap_lockedcell_er_left_crate(X0) :- er_overlap_lockedcell(X0),er_left_crate(X0).
-inter_er_overlap_lockedcell_er_left_crate(X0) :- object(X0),not inter_er_overlap_lockedcell_er_left_crate(X0).
inter_er_overlap_lockedcell_er_overlap_crate(X0) :- er_overlap_lockedcell(X0),er_overlap_crate(X0).
-inter_er_overlap_lockedcell_er_overlap_crate(X0) :- object(X0),not inter_er_overlap_lockedcell_er_overlap_crate(X0).
inter_er_overlap_lockedcell_er_shape_crate(X0) :- er_overlap_lockedcell(X0),er_shape_crate(X0).
-inter_er_overlap_lockedcell_er_shape_crate(X0) :- object(X0),not inter_er_overlap_lockedcell_er_shape_crate(X0).
inter_er_overlap_lockedcell_er_smaller_key(X0) :- er_overlap_lockedcell(X0),er_smaller_key(X0).
-inter_er_overlap_lockedcell_er_smaller_key(X0) :- object(X0),not inter_er_overlap_lockedcell_er_smaller_key(X0).
inter_er_overlap_lockedcell_er_below_key(X0) :- er_overlap_lockedcell(X0),er_below_key(X0).
-inter_er_overlap_lockedcell_er_below_key(X0) :- object(X0),not inter_er_overlap_lockedcell_er_below_key(X0).
inter_er_overlap_lockedcell_er_left_key(X0) :- er_overlap_lockedcell(X0),er_left_key(X0).
-inter_er_overlap_lockedcell_er_left_key(X0) :- object(X0),not inter_er_overlap_lockedcell_er_left_key(X0).
inter_er_overlap_lockedcell_er_overlap_key(X0) :- er_overlap_lockedcell(X0),er_overlap_key(X0).
-inter_er_overlap_lockedcell_er_overlap_key(X0) :- object(X0),not inter_er_overlap_lockedcell_er_overlap_key(X0).
inter_er_overlap_lockedcell_er_shape_key(X0) :- er_overlap_lockedcell(X0),er_shape_key(X0).
-inter_er_overlap_lockedcell_er_shape_key(X0) :- object(X0),not inter_er_overlap_lockedcell_er_shape_key(X0).
inter_er_overlap_lockedcell_er_smaller_peg(X0) :- er_overlap_lockedcell(X0),er_smaller_peg(X0).
-inter_er_overlap_lockedcell_er_smaller_peg(X0) :- object(X0),not inter_er_overlap_lockedcell_er_smaller_peg(X0).
inter_er_overlap_lockedcell_er_below_peg(X0) :- er_overlap_lockedcell(X0),er_below_peg(X0).
-inter_er_overlap_lockedcell_er_below_peg(X0) :- object(X0),not inter_er_overlap_lockedcell_er_below_peg(X0).
inter_er_overlap_lockedcell_er_left_peg(X0) :- er_overlap_lockedcell(X0),er_left_peg(X0).
-inter_er_overlap_lockedcell_er_left_peg(X0) :- object(X0),not inter_er_overlap_lockedcell_er_left_peg(X0).
inter_er_overlap_lockedcell_er_overlap_peg(X0) :- er_overlap_lockedcell(X0),er_overlap_peg(X0).
-inter_er_overlap_lockedcell_er_overlap_peg(X0) :- object(X0),not inter_er_overlap_lockedcell_er_overlap_peg(X0).
inter_er_overlap_lockedcell_er_shape_peg(X0) :- er_overlap_lockedcell(X0),er_shape_peg(X0).
-inter_er_overlap_lockedcell_er_shape_peg(X0) :- object(X0),not inter_er_overlap_lockedcell_er_shape_peg(X0).
inter_er_overlap_lockedcell_er_smaller_disk(X0) :- er_overlap_lockedcell(X0),er_smaller_disk(X0).
-inter_er_overlap_lockedcell_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_lockedcell_er_smaller_disk(X0).
inter_er_overlap_lockedcell_er_below_disk(X0) :- er_overlap_lockedcell(X0),er_below_disk(X0).
-inter_er_overlap_lockedcell_er_below_disk(X0) :- object(X0),not inter_er_overlap_lockedcell_er_below_disk(X0).
inter_er_overlap_lockedcell_er_left_disk(X0) :- er_overlap_lockedcell(X0),er_left_disk(X0).
-inter_er_overlap_lockedcell_er_left_disk(X0) :- object(X0),not inter_er_overlap_lockedcell_er_left_disk(X0).
inter_er_overlap_lockedcell_er_overlap_disk(X0) :- er_overlap_lockedcell(X0),er_overlap_disk(X0).
-inter_er_overlap_lockedcell_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_lockedcell_er_overlap_disk(X0).
inter_er_overlap_lockedcell_er_shape_disk(X0) :- er_overlap_lockedcell(X0),er_shape_disk(X0).
-inter_er_overlap_lockedcell_er_shape_disk(X0) :- object(X0),not inter_er_overlap_lockedcell_er_shape_disk(X0).
inter_er_overlap_lockedcell_er_smaller_tile(X0) :- er_overlap_lockedcell(X0),er_smaller_tile(X0).
-inter_er_overlap_lockedcell_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_lockedcell_er_smaller_tile(X0).
inter_er_overlap_lockedcell_er_below_tile(X0) :- er_overlap_lockedcell(X0),er_below_tile(X0).
-inter_er_overlap_lockedcell_er_below_tile(X0) :- object(X0),not inter_er_overlap_lockedcell_er_below_tile(X0).
inter_er_overlap_lockedcell_er_left_tile(X0) :- er_overlap_lockedcell(X0),er_left_tile(X0).
-inter_er_overlap_lockedcell_er_left_tile(X0) :- object(X0),not inter_er_overlap_lockedcell_er_left_tile(X0).
inter_er_overlap_lockedcell_er_overlap_tile(X0) :- er_overlap_lockedcell(X0),er_overlap_tile(X0).
-inter_er_overlap_lockedcell_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_lockedcell_er_overlap_tile(X0).
inter_er_overlap_lockedcell_er_shape_tile(X0) :- er_overlap_lockedcell(X0),er_shape_tile(X0).
-inter_er_overlap_lockedcell_er_shape_tile(X0) :- object(X0),not inter_er_overlap_lockedcell_er_shape_tile(X0).
inter_er_shape_lockedcell_er_smaller_sokoban(X0) :- er_shape_lockedcell(X0),er_smaller_sokoban(X0).
-inter_er_shape_lockedcell_er_smaller_sokoban(X0) :- object(X0),not inter_er_shape_lockedcell_er_smaller_sokoban(X0).
inter_er_shape_lockedcell_er_below_sokoban(X0) :- er_shape_lockedcell(X0),er_below_sokoban(X0).
-inter_er_shape_lockedcell_er_below_sokoban(X0) :- object(X0),not inter_er_shape_lockedcell_er_below_sokoban(X0).
inter_er_shape_lockedcell_er_left_sokoban(X0) :- er_shape_lockedcell(X0),er_left_sokoban(X0).
-inter_er_shape_lockedcell_er_left_sokoban(X0) :- object(X0),not inter_er_shape_lockedcell_er_left_sokoban(X0).
inter_er_shape_lockedcell_er_overlap_sokoban(X0) :- er_shape_lockedcell(X0),er_overlap_sokoban(X0).
-inter_er_shape_lockedcell_er_overlap_sokoban(X0) :- object(X0),not inter_er_shape_lockedcell_er_overlap_sokoban(X0).
inter_er_shape_lockedcell_er_shape_sokoban(X0) :- er_shape_lockedcell(X0),er_shape_sokoban(X0).
-inter_er_shape_lockedcell_er_shape_sokoban(X0) :- object(X0),not inter_er_shape_lockedcell_er_shape_sokoban(X0).
inter_er_shape_lockedcell_er_smaller_crate(X0) :- er_shape_lockedcell(X0),er_smaller_crate(X0).
-inter_er_shape_lockedcell_er_smaller_crate(X0) :- object(X0),not inter_er_shape_lockedcell_er_smaller_crate(X0).
inter_er_shape_lockedcell_er_below_crate(X0) :- er_shape_lockedcell(X0),er_below_crate(X0).
-inter_er_shape_lockedcell_er_below_crate(X0) :- object(X0),not inter_er_shape_lockedcell_er_below_crate(X0).
inter_er_shape_lockedcell_er_left_crate(X0) :- er_shape_lockedcell(X0),er_left_crate(X0).
-inter_er_shape_lockedcell_er_left_crate(X0) :- object(X0),not inter_er_shape_lockedcell_er_left_crate(X0).
inter_er_shape_lockedcell_er_overlap_crate(X0) :- er_shape_lockedcell(X0),er_overlap_crate(X0).
-inter_er_shape_lockedcell_er_overlap_crate(X0) :- object(X0),not inter_er_shape_lockedcell_er_overlap_crate(X0).
inter_er_shape_lockedcell_er_shape_crate(X0) :- er_shape_lockedcell(X0),er_shape_crate(X0).
-inter_er_shape_lockedcell_er_shape_crate(X0) :- object(X0),not inter_er_shape_lockedcell_er_shape_crate(X0).
inter_er_shape_lockedcell_er_smaller_key(X0) :- er_shape_lockedcell(X0),er_smaller_key(X0).
-inter_er_shape_lockedcell_er_smaller_key(X0) :- object(X0),not inter_er_shape_lockedcell_er_smaller_key(X0).
inter_er_shape_lockedcell_er_below_key(X0) :- er_shape_lockedcell(X0),er_below_key(X0).
-inter_er_shape_lockedcell_er_below_key(X0) :- object(X0),not inter_er_shape_lockedcell_er_below_key(X0).
inter_er_shape_lockedcell_er_left_key(X0) :- er_shape_lockedcell(X0),er_left_key(X0).
-inter_er_shape_lockedcell_er_left_key(X0) :- object(X0),not inter_er_shape_lockedcell_er_left_key(X0).
inter_er_shape_lockedcell_er_overlap_key(X0) :- er_shape_lockedcell(X0),er_overlap_key(X0).
-inter_er_shape_lockedcell_er_overlap_key(X0) :- object(X0),not inter_er_shape_lockedcell_er_overlap_key(X0).
inter_er_shape_lockedcell_er_shape_key(X0) :- er_shape_lockedcell(X0),er_shape_key(X0).
-inter_er_shape_lockedcell_er_shape_key(X0) :- object(X0),not inter_er_shape_lockedcell_er_shape_key(X0).
inter_er_shape_lockedcell_er_smaller_peg(X0) :- er_shape_lockedcell(X0),er_smaller_peg(X0).
-inter_er_shape_lockedcell_er_smaller_peg(X0) :- object(X0),not inter_er_shape_lockedcell_er_smaller_peg(X0).
inter_er_shape_lockedcell_er_below_peg(X0) :- er_shape_lockedcell(X0),er_below_peg(X0).
-inter_er_shape_lockedcell_er_below_peg(X0) :- object(X0),not inter_er_shape_lockedcell_er_below_peg(X0).
inter_er_shape_lockedcell_er_left_peg(X0) :- er_shape_lockedcell(X0),er_left_peg(X0).
-inter_er_shape_lockedcell_er_left_peg(X0) :- object(X0),not inter_er_shape_lockedcell_er_left_peg(X0).
inter_er_shape_lockedcell_er_overlap_peg(X0) :- er_shape_lockedcell(X0),er_overlap_peg(X0).
-inter_er_shape_lockedcell_er_overlap_peg(X0) :- object(X0),not inter_er_shape_lockedcell_er_overlap_peg(X0).
inter_er_shape_lockedcell_er_shape_peg(X0) :- er_shape_lockedcell(X0),er_shape_peg(X0).
-inter_er_shape_lockedcell_er_shape_peg(X0) :- object(X0),not inter_er_shape_lockedcell_er_shape_peg(X0).
inter_er_shape_lockedcell_er_smaller_disk(X0) :- er_shape_lockedcell(X0),er_smaller_disk(X0).
-inter_er_shape_lockedcell_er_smaller_disk(X0) :- object(X0),not inter_er_shape_lockedcell_er_smaller_disk(X0).
inter_er_shape_lockedcell_er_below_disk(X0) :- er_shape_lockedcell(X0),er_below_disk(X0).
-inter_er_shape_lockedcell_er_below_disk(X0) :- object(X0),not inter_er_shape_lockedcell_er_below_disk(X0).
inter_er_shape_lockedcell_er_left_disk(X0) :- er_shape_lockedcell(X0),er_left_disk(X0).
-inter_er_shape_lockedcell_er_left_disk(X0) :- object(X0),not inter_er_shape_lockedcell_er_left_disk(X0).
inter_er_shape_lockedcell_er_overlap_disk(X0) :- er_shape_lockedcell(X0),er_overlap_disk(X0).
-inter_er_shape_lockedcell_er_overlap_disk(X0) :- object(X0),not inter_er_shape_lockedcell_er_overlap_disk(X0).
inter_er_shape_lockedcell_er_shape_disk(X0) :- er_shape_lockedcell(X0),er_shape_disk(X0).
-inter_er_shape_lockedcell_er_shape_disk(X0) :- object(X0),not inter_er_shape_lockedcell_er_shape_disk(X0).
inter_er_shape_lockedcell_er_smaller_tile(X0) :- er_shape_lockedcell(X0),er_smaller_tile(X0).
-inter_er_shape_lockedcell_er_smaller_tile(X0) :- object(X0),not inter_er_shape_lockedcell_er_smaller_tile(X0).
inter_er_shape_lockedcell_er_below_tile(X0) :- er_shape_lockedcell(X0),er_below_tile(X0).
-inter_er_shape_lockedcell_er_below_tile(X0) :- object(X0),not inter_er_shape_lockedcell_er_below_tile(X0).
inter_er_shape_lockedcell_er_left_tile(X0) :- er_shape_lockedcell(X0),er_left_tile(X0).
-inter_er_shape_lockedcell_er_left_tile(X0) :- object(X0),not inter_er_shape_lockedcell_er_left_tile(X0).
inter_er_shape_lockedcell_er_overlap_tile(X0) :- er_shape_lockedcell(X0),er_overlap_tile(X0).
-inter_er_shape_lockedcell_er_overlap_tile(X0) :- object(X0),not inter_er_shape_lockedcell_er_overlap_tile(X0).
inter_er_shape_lockedcell_er_shape_tile(X0) :- er_shape_lockedcell(X0),er_shape_tile(X0).
-inter_er_shape_lockedcell_er_shape_tile(X0) :- object(X0),not inter_er_shape_lockedcell_er_shape_tile(X0).
inter_er_smaller_sokoban_er_below_sokoban(X0) :- er_smaller_sokoban(X0),er_below_sokoban(X0).
-inter_er_smaller_sokoban_er_below_sokoban(X0) :- object(X0),not inter_er_smaller_sokoban_er_below_sokoban(X0).
inter_er_smaller_sokoban_er_left_sokoban(X0) :- er_smaller_sokoban(X0),er_left_sokoban(X0).
-inter_er_smaller_sokoban_er_left_sokoban(X0) :- object(X0),not inter_er_smaller_sokoban_er_left_sokoban(X0).
inter_er_smaller_sokoban_er_overlap_sokoban(X0) :- er_smaller_sokoban(X0),er_overlap_sokoban(X0).
-inter_er_smaller_sokoban_er_overlap_sokoban(X0) :- object(X0),not inter_er_smaller_sokoban_er_overlap_sokoban(X0).
inter_er_smaller_sokoban_er_shape_sokoban(X0) :- er_smaller_sokoban(X0),er_shape_sokoban(X0).
-inter_er_smaller_sokoban_er_shape_sokoban(X0) :- object(X0),not inter_er_smaller_sokoban_er_shape_sokoban(X0).
inter_er_smaller_sokoban_er_smaller_crate(X0) :- er_smaller_sokoban(X0),er_smaller_crate(X0).
-inter_er_smaller_sokoban_er_smaller_crate(X0) :- object(X0),not inter_er_smaller_sokoban_er_smaller_crate(X0).
inter_er_smaller_sokoban_er_below_crate(X0) :- er_smaller_sokoban(X0),er_below_crate(X0).
-inter_er_smaller_sokoban_er_below_crate(X0) :- object(X0),not inter_er_smaller_sokoban_er_below_crate(X0).
inter_er_smaller_sokoban_er_left_crate(X0) :- er_smaller_sokoban(X0),er_left_crate(X0).
-inter_er_smaller_sokoban_er_left_crate(X0) :- object(X0),not inter_er_smaller_sokoban_er_left_crate(X0).
inter_er_smaller_sokoban_er_overlap_crate(X0) :- er_smaller_sokoban(X0),er_overlap_crate(X0).
-inter_er_smaller_sokoban_er_overlap_crate(X0) :- object(X0),not inter_er_smaller_sokoban_er_overlap_crate(X0).
inter_er_smaller_sokoban_er_shape_crate(X0) :- er_smaller_sokoban(X0),er_shape_crate(X0).
-inter_er_smaller_sokoban_er_shape_crate(X0) :- object(X0),not inter_er_smaller_sokoban_er_shape_crate(X0).
inter_er_smaller_sokoban_er_smaller_key(X0) :- er_smaller_sokoban(X0),er_smaller_key(X0).
-inter_er_smaller_sokoban_er_smaller_key(X0) :- object(X0),not inter_er_smaller_sokoban_er_smaller_key(X0).
inter_er_smaller_sokoban_er_below_key(X0) :- er_smaller_sokoban(X0),er_below_key(X0).
-inter_er_smaller_sokoban_er_below_key(X0) :- object(X0),not inter_er_smaller_sokoban_er_below_key(X0).
inter_er_smaller_sokoban_er_left_key(X0) :- er_smaller_sokoban(X0),er_left_key(X0).
-inter_er_smaller_sokoban_er_left_key(X0) :- object(X0),not inter_er_smaller_sokoban_er_left_key(X0).
inter_er_smaller_sokoban_er_overlap_key(X0) :- er_smaller_sokoban(X0),er_overlap_key(X0).
-inter_er_smaller_sokoban_er_overlap_key(X0) :- object(X0),not inter_er_smaller_sokoban_er_overlap_key(X0).
inter_er_smaller_sokoban_er_shape_key(X0) :- er_smaller_sokoban(X0),er_shape_key(X0).
-inter_er_smaller_sokoban_er_shape_key(X0) :- object(X0),not inter_er_smaller_sokoban_er_shape_key(X0).
inter_er_smaller_sokoban_er_smaller_peg(X0) :- er_smaller_sokoban(X0),er_smaller_peg(X0).
-inter_er_smaller_sokoban_er_smaller_peg(X0) :- object(X0),not inter_er_smaller_sokoban_er_smaller_peg(X0).
inter_er_smaller_sokoban_er_below_peg(X0) :- er_smaller_sokoban(X0),er_below_peg(X0).
-inter_er_smaller_sokoban_er_below_peg(X0) :- object(X0),not inter_er_smaller_sokoban_er_below_peg(X0).
inter_er_smaller_sokoban_er_left_peg(X0) :- er_smaller_sokoban(X0),er_left_peg(X0).
-inter_er_smaller_sokoban_er_left_peg(X0) :- object(X0),not inter_er_smaller_sokoban_er_left_peg(X0).
inter_er_smaller_sokoban_er_overlap_peg(X0) :- er_smaller_sokoban(X0),er_overlap_peg(X0).
-inter_er_smaller_sokoban_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_sokoban_er_overlap_peg(X0).
inter_er_smaller_sokoban_er_shape_peg(X0) :- er_smaller_sokoban(X0),er_shape_peg(X0).
-inter_er_smaller_sokoban_er_shape_peg(X0) :- object(X0),not inter_er_smaller_sokoban_er_shape_peg(X0).
inter_er_smaller_sokoban_er_smaller_disk(X0) :- er_smaller_sokoban(X0),er_smaller_disk(X0).
-inter_er_smaller_sokoban_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_sokoban_er_smaller_disk(X0).
inter_er_smaller_sokoban_er_below_disk(X0) :- er_smaller_sokoban(X0),er_below_disk(X0).
-inter_er_smaller_sokoban_er_below_disk(X0) :- object(X0),not inter_er_smaller_sokoban_er_below_disk(X0).
inter_er_smaller_sokoban_er_left_disk(X0) :- er_smaller_sokoban(X0),er_left_disk(X0).
-inter_er_smaller_sokoban_er_left_disk(X0) :- object(X0),not inter_er_smaller_sokoban_er_left_disk(X0).
inter_er_smaller_sokoban_er_overlap_disk(X0) :- er_smaller_sokoban(X0),er_overlap_disk(X0).
-inter_er_smaller_sokoban_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_sokoban_er_overlap_disk(X0).
inter_er_smaller_sokoban_er_shape_disk(X0) :- er_smaller_sokoban(X0),er_shape_disk(X0).
-inter_er_smaller_sokoban_er_shape_disk(X0) :- object(X0),not inter_er_smaller_sokoban_er_shape_disk(X0).
inter_er_smaller_sokoban_er_smaller_tile(X0) :- er_smaller_sokoban(X0),er_smaller_tile(X0).
-inter_er_smaller_sokoban_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_sokoban_er_smaller_tile(X0).
inter_er_smaller_sokoban_er_below_tile(X0) :- er_smaller_sokoban(X0),er_below_tile(X0).
-inter_er_smaller_sokoban_er_below_tile(X0) :- object(X0),not inter_er_smaller_sokoban_er_below_tile(X0).
inter_er_smaller_sokoban_er_left_tile(X0) :- er_smaller_sokoban(X0),er_left_tile(X0).
-inter_er_smaller_sokoban_er_left_tile(X0) :- object(X0),not inter_er_smaller_sokoban_er_left_tile(X0).
inter_er_smaller_sokoban_er_overlap_tile(X0) :- er_smaller_sokoban(X0),er_overlap_tile(X0).
-inter_er_smaller_sokoban_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_sokoban_er_overlap_tile(X0).
inter_er_smaller_sokoban_er_shape_tile(X0) :- er_smaller_sokoban(X0),er_shape_tile(X0).
-inter_er_smaller_sokoban_er_shape_tile(X0) :- object(X0),not inter_er_smaller_sokoban_er_shape_tile(X0).
inter_er_below_sokoban_er_left_sokoban(X0) :- er_below_sokoban(X0),er_left_sokoban(X0).
-inter_er_below_sokoban_er_left_sokoban(X0) :- object(X0),not inter_er_below_sokoban_er_left_sokoban(X0).
inter_er_below_sokoban_er_overlap_sokoban(X0) :- er_below_sokoban(X0),er_overlap_sokoban(X0).
-inter_er_below_sokoban_er_overlap_sokoban(X0) :- object(X0),not inter_er_below_sokoban_er_overlap_sokoban(X0).
inter_er_below_sokoban_er_shape_sokoban(X0) :- er_below_sokoban(X0),er_shape_sokoban(X0).
-inter_er_below_sokoban_er_shape_sokoban(X0) :- object(X0),not inter_er_below_sokoban_er_shape_sokoban(X0).
inter_er_below_sokoban_er_smaller_crate(X0) :- er_below_sokoban(X0),er_smaller_crate(X0).
-inter_er_below_sokoban_er_smaller_crate(X0) :- object(X0),not inter_er_below_sokoban_er_smaller_crate(X0).
inter_er_below_sokoban_er_below_crate(X0) :- er_below_sokoban(X0),er_below_crate(X0).
-inter_er_below_sokoban_er_below_crate(X0) :- object(X0),not inter_er_below_sokoban_er_below_crate(X0).
inter_er_below_sokoban_er_left_crate(X0) :- er_below_sokoban(X0),er_left_crate(X0).
-inter_er_below_sokoban_er_left_crate(X0) :- object(X0),not inter_er_below_sokoban_er_left_crate(X0).
inter_er_below_sokoban_er_overlap_crate(X0) :- er_below_sokoban(X0),er_overlap_crate(X0).
-inter_er_below_sokoban_er_overlap_crate(X0) :- object(X0),not inter_er_below_sokoban_er_overlap_crate(X0).
inter_er_below_sokoban_er_shape_crate(X0) :- er_below_sokoban(X0),er_shape_crate(X0).
-inter_er_below_sokoban_er_shape_crate(X0) :- object(X0),not inter_er_below_sokoban_er_shape_crate(X0).
inter_er_below_sokoban_er_smaller_key(X0) :- er_below_sokoban(X0),er_smaller_key(X0).
-inter_er_below_sokoban_er_smaller_key(X0) :- object(X0),not inter_er_below_sokoban_er_smaller_key(X0).
inter_er_below_sokoban_er_below_key(X0) :- er_below_sokoban(X0),er_below_key(X0).
-inter_er_below_sokoban_er_below_key(X0) :- object(X0),not inter_er_below_sokoban_er_below_key(X0).
inter_er_below_sokoban_er_left_key(X0) :- er_below_sokoban(X0),er_left_key(X0).
-inter_er_below_sokoban_er_left_key(X0) :- object(X0),not inter_er_below_sokoban_er_left_key(X0).
inter_er_below_sokoban_er_overlap_key(X0) :- er_below_sokoban(X0),er_overlap_key(X0).
-inter_er_below_sokoban_er_overlap_key(X0) :- object(X0),not inter_er_below_sokoban_er_overlap_key(X0).
inter_er_below_sokoban_er_shape_key(X0) :- er_below_sokoban(X0),er_shape_key(X0).
-inter_er_below_sokoban_er_shape_key(X0) :- object(X0),not inter_er_below_sokoban_er_shape_key(X0).
inter_er_below_sokoban_er_smaller_peg(X0) :- er_below_sokoban(X0),er_smaller_peg(X0).
-inter_er_below_sokoban_er_smaller_peg(X0) :- object(X0),not inter_er_below_sokoban_er_smaller_peg(X0).
inter_er_below_sokoban_er_below_peg(X0) :- er_below_sokoban(X0),er_below_peg(X0).
-inter_er_below_sokoban_er_below_peg(X0) :- object(X0),not inter_er_below_sokoban_er_below_peg(X0).
inter_er_below_sokoban_er_left_peg(X0) :- er_below_sokoban(X0),er_left_peg(X0).
-inter_er_below_sokoban_er_left_peg(X0) :- object(X0),not inter_er_below_sokoban_er_left_peg(X0).
inter_er_below_sokoban_er_overlap_peg(X0) :- er_below_sokoban(X0),er_overlap_peg(X0).
-inter_er_below_sokoban_er_overlap_peg(X0) :- object(X0),not inter_er_below_sokoban_er_overlap_peg(X0).
inter_er_below_sokoban_er_shape_peg(X0) :- er_below_sokoban(X0),er_shape_peg(X0).
-inter_er_below_sokoban_er_shape_peg(X0) :- object(X0),not inter_er_below_sokoban_er_shape_peg(X0).
inter_er_below_sokoban_er_smaller_disk(X0) :- er_below_sokoban(X0),er_smaller_disk(X0).
-inter_er_below_sokoban_er_smaller_disk(X0) :- object(X0),not inter_er_below_sokoban_er_smaller_disk(X0).
inter_er_below_sokoban_er_below_disk(X0) :- er_below_sokoban(X0),er_below_disk(X0).
-inter_er_below_sokoban_er_below_disk(X0) :- object(X0),not inter_er_below_sokoban_er_below_disk(X0).
inter_er_below_sokoban_er_left_disk(X0) :- er_below_sokoban(X0),er_left_disk(X0).
-inter_er_below_sokoban_er_left_disk(X0) :- object(X0),not inter_er_below_sokoban_er_left_disk(X0).
inter_er_below_sokoban_er_overlap_disk(X0) :- er_below_sokoban(X0),er_overlap_disk(X0).
-inter_er_below_sokoban_er_overlap_disk(X0) :- object(X0),not inter_er_below_sokoban_er_overlap_disk(X0).
inter_er_below_sokoban_er_shape_disk(X0) :- er_below_sokoban(X0),er_shape_disk(X0).
-inter_er_below_sokoban_er_shape_disk(X0) :- object(X0),not inter_er_below_sokoban_er_shape_disk(X0).
inter_er_below_sokoban_er_smaller_tile(X0) :- er_below_sokoban(X0),er_smaller_tile(X0).
-inter_er_below_sokoban_er_smaller_tile(X0) :- object(X0),not inter_er_below_sokoban_er_smaller_tile(X0).
inter_er_below_sokoban_er_below_tile(X0) :- er_below_sokoban(X0),er_below_tile(X0).
-inter_er_below_sokoban_er_below_tile(X0) :- object(X0),not inter_er_below_sokoban_er_below_tile(X0).
inter_er_below_sokoban_er_left_tile(X0) :- er_below_sokoban(X0),er_left_tile(X0).
-inter_er_below_sokoban_er_left_tile(X0) :- object(X0),not inter_er_below_sokoban_er_left_tile(X0).
inter_er_below_sokoban_er_overlap_tile(X0) :- er_below_sokoban(X0),er_overlap_tile(X0).
-inter_er_below_sokoban_er_overlap_tile(X0) :- object(X0),not inter_er_below_sokoban_er_overlap_tile(X0).
inter_er_below_sokoban_er_shape_tile(X0) :- er_below_sokoban(X0),er_shape_tile(X0).
-inter_er_below_sokoban_er_shape_tile(X0) :- object(X0),not inter_er_below_sokoban_er_shape_tile(X0).
inter_er_left_sokoban_er_overlap_sokoban(X0) :- er_left_sokoban(X0),er_overlap_sokoban(X0).
-inter_er_left_sokoban_er_overlap_sokoban(X0) :- object(X0),not inter_er_left_sokoban_er_overlap_sokoban(X0).
inter_er_left_sokoban_er_shape_sokoban(X0) :- er_left_sokoban(X0),er_shape_sokoban(X0).
-inter_er_left_sokoban_er_shape_sokoban(X0) :- object(X0),not inter_er_left_sokoban_er_shape_sokoban(X0).
inter_er_left_sokoban_er_smaller_crate(X0) :- er_left_sokoban(X0),er_smaller_crate(X0).
-inter_er_left_sokoban_er_smaller_crate(X0) :- object(X0),not inter_er_left_sokoban_er_smaller_crate(X0).
inter_er_left_sokoban_er_below_crate(X0) :- er_left_sokoban(X0),er_below_crate(X0).
-inter_er_left_sokoban_er_below_crate(X0) :- object(X0),not inter_er_left_sokoban_er_below_crate(X0).
inter_er_left_sokoban_er_left_crate(X0) :- er_left_sokoban(X0),er_left_crate(X0).
-inter_er_left_sokoban_er_left_crate(X0) :- object(X0),not inter_er_left_sokoban_er_left_crate(X0).
inter_er_left_sokoban_er_overlap_crate(X0) :- er_left_sokoban(X0),er_overlap_crate(X0).
-inter_er_left_sokoban_er_overlap_crate(X0) :- object(X0),not inter_er_left_sokoban_er_overlap_crate(X0).
inter_er_left_sokoban_er_shape_crate(X0) :- er_left_sokoban(X0),er_shape_crate(X0).
-inter_er_left_sokoban_er_shape_crate(X0) :- object(X0),not inter_er_left_sokoban_er_shape_crate(X0).
inter_er_left_sokoban_er_smaller_key(X0) :- er_left_sokoban(X0),er_smaller_key(X0).
-inter_er_left_sokoban_er_smaller_key(X0) :- object(X0),not inter_er_left_sokoban_er_smaller_key(X0).
inter_er_left_sokoban_er_below_key(X0) :- er_left_sokoban(X0),er_below_key(X0).
-inter_er_left_sokoban_er_below_key(X0) :- object(X0),not inter_er_left_sokoban_er_below_key(X0).
inter_er_left_sokoban_er_left_key(X0) :- er_left_sokoban(X0),er_left_key(X0).
-inter_er_left_sokoban_er_left_key(X0) :- object(X0),not inter_er_left_sokoban_er_left_key(X0).
inter_er_left_sokoban_er_overlap_key(X0) :- er_left_sokoban(X0),er_overlap_key(X0).
-inter_er_left_sokoban_er_overlap_key(X0) :- object(X0),not inter_er_left_sokoban_er_overlap_key(X0).
inter_er_left_sokoban_er_shape_key(X0) :- er_left_sokoban(X0),er_shape_key(X0).
-inter_er_left_sokoban_er_shape_key(X0) :- object(X0),not inter_er_left_sokoban_er_shape_key(X0).
inter_er_left_sokoban_er_smaller_peg(X0) :- er_left_sokoban(X0),er_smaller_peg(X0).
-inter_er_left_sokoban_er_smaller_peg(X0) :- object(X0),not inter_er_left_sokoban_er_smaller_peg(X0).
inter_er_left_sokoban_er_below_peg(X0) :- er_left_sokoban(X0),er_below_peg(X0).
-inter_er_left_sokoban_er_below_peg(X0) :- object(X0),not inter_er_left_sokoban_er_below_peg(X0).
inter_er_left_sokoban_er_left_peg(X0) :- er_left_sokoban(X0),er_left_peg(X0).
-inter_er_left_sokoban_er_left_peg(X0) :- object(X0),not inter_er_left_sokoban_er_left_peg(X0).
inter_er_left_sokoban_er_overlap_peg(X0) :- er_left_sokoban(X0),er_overlap_peg(X0).
-inter_er_left_sokoban_er_overlap_peg(X0) :- object(X0),not inter_er_left_sokoban_er_overlap_peg(X0).
inter_er_left_sokoban_er_shape_peg(X0) :- er_left_sokoban(X0),er_shape_peg(X0).
-inter_er_left_sokoban_er_shape_peg(X0) :- object(X0),not inter_er_left_sokoban_er_shape_peg(X0).
inter_er_left_sokoban_er_smaller_disk(X0) :- er_left_sokoban(X0),er_smaller_disk(X0).
-inter_er_left_sokoban_er_smaller_disk(X0) :- object(X0),not inter_er_left_sokoban_er_smaller_disk(X0).
inter_er_left_sokoban_er_below_disk(X0) :- er_left_sokoban(X0),er_below_disk(X0).
-inter_er_left_sokoban_er_below_disk(X0) :- object(X0),not inter_er_left_sokoban_er_below_disk(X0).
inter_er_left_sokoban_er_left_disk(X0) :- er_left_sokoban(X0),er_left_disk(X0).
-inter_er_left_sokoban_er_left_disk(X0) :- object(X0),not inter_er_left_sokoban_er_left_disk(X0).
inter_er_left_sokoban_er_overlap_disk(X0) :- er_left_sokoban(X0),er_overlap_disk(X0).
-inter_er_left_sokoban_er_overlap_disk(X0) :- object(X0),not inter_er_left_sokoban_er_overlap_disk(X0).
inter_er_left_sokoban_er_shape_disk(X0) :- er_left_sokoban(X0),er_shape_disk(X0).
-inter_er_left_sokoban_er_shape_disk(X0) :- object(X0),not inter_er_left_sokoban_er_shape_disk(X0).
inter_er_left_sokoban_er_smaller_tile(X0) :- er_left_sokoban(X0),er_smaller_tile(X0).
-inter_er_left_sokoban_er_smaller_tile(X0) :- object(X0),not inter_er_left_sokoban_er_smaller_tile(X0).
inter_er_left_sokoban_er_below_tile(X0) :- er_left_sokoban(X0),er_below_tile(X0).
-inter_er_left_sokoban_er_below_tile(X0) :- object(X0),not inter_er_left_sokoban_er_below_tile(X0).
inter_er_left_sokoban_er_left_tile(X0) :- er_left_sokoban(X0),er_left_tile(X0).
-inter_er_left_sokoban_er_left_tile(X0) :- object(X0),not inter_er_left_sokoban_er_left_tile(X0).
inter_er_left_sokoban_er_overlap_tile(X0) :- er_left_sokoban(X0),er_overlap_tile(X0).
-inter_er_left_sokoban_er_overlap_tile(X0) :- object(X0),not inter_er_left_sokoban_er_overlap_tile(X0).
inter_er_left_sokoban_er_shape_tile(X0) :- er_left_sokoban(X0),er_shape_tile(X0).
-inter_er_left_sokoban_er_shape_tile(X0) :- object(X0),not inter_er_left_sokoban_er_shape_tile(X0).
inter_er_overlap_sokoban_er_shape_sokoban(X0) :- er_overlap_sokoban(X0),er_shape_sokoban(X0).
-inter_er_overlap_sokoban_er_shape_sokoban(X0) :- object(X0),not inter_er_overlap_sokoban_er_shape_sokoban(X0).
inter_er_overlap_sokoban_er_smaller_crate(X0) :- er_overlap_sokoban(X0),er_smaller_crate(X0).
-inter_er_overlap_sokoban_er_smaller_crate(X0) :- object(X0),not inter_er_overlap_sokoban_er_smaller_crate(X0).
inter_er_overlap_sokoban_er_below_crate(X0) :- er_overlap_sokoban(X0),er_below_crate(X0).
-inter_er_overlap_sokoban_er_below_crate(X0) :- object(X0),not inter_er_overlap_sokoban_er_below_crate(X0).
inter_er_overlap_sokoban_er_left_crate(X0) :- er_overlap_sokoban(X0),er_left_crate(X0).
-inter_er_overlap_sokoban_er_left_crate(X0) :- object(X0),not inter_er_overlap_sokoban_er_left_crate(X0).
inter_er_overlap_sokoban_er_overlap_crate(X0) :- er_overlap_sokoban(X0),er_overlap_crate(X0).
-inter_er_overlap_sokoban_er_overlap_crate(X0) :- object(X0),not inter_er_overlap_sokoban_er_overlap_crate(X0).
inter_er_overlap_sokoban_er_shape_crate(X0) :- er_overlap_sokoban(X0),er_shape_crate(X0).
-inter_er_overlap_sokoban_er_shape_crate(X0) :- object(X0),not inter_er_overlap_sokoban_er_shape_crate(X0).
inter_er_overlap_sokoban_er_smaller_key(X0) :- er_overlap_sokoban(X0),er_smaller_key(X0).
-inter_er_overlap_sokoban_er_smaller_key(X0) :- object(X0),not inter_er_overlap_sokoban_er_smaller_key(X0).
inter_er_overlap_sokoban_er_below_key(X0) :- er_overlap_sokoban(X0),er_below_key(X0).
-inter_er_overlap_sokoban_er_below_key(X0) :- object(X0),not inter_er_overlap_sokoban_er_below_key(X0).
inter_er_overlap_sokoban_er_left_key(X0) :- er_overlap_sokoban(X0),er_left_key(X0).
-inter_er_overlap_sokoban_er_left_key(X0) :- object(X0),not inter_er_overlap_sokoban_er_left_key(X0).
inter_er_overlap_sokoban_er_overlap_key(X0) :- er_overlap_sokoban(X0),er_overlap_key(X0).
-inter_er_overlap_sokoban_er_overlap_key(X0) :- object(X0),not inter_er_overlap_sokoban_er_overlap_key(X0).
inter_er_overlap_sokoban_er_shape_key(X0) :- er_overlap_sokoban(X0),er_shape_key(X0).
-inter_er_overlap_sokoban_er_shape_key(X0) :- object(X0),not inter_er_overlap_sokoban_er_shape_key(X0).
inter_er_overlap_sokoban_er_smaller_peg(X0) :- er_overlap_sokoban(X0),er_smaller_peg(X0).
-inter_er_overlap_sokoban_er_smaller_peg(X0) :- object(X0),not inter_er_overlap_sokoban_er_smaller_peg(X0).
inter_er_overlap_sokoban_er_below_peg(X0) :- er_overlap_sokoban(X0),er_below_peg(X0).
-inter_er_overlap_sokoban_er_below_peg(X0) :- object(X0),not inter_er_overlap_sokoban_er_below_peg(X0).
inter_er_overlap_sokoban_er_left_peg(X0) :- er_overlap_sokoban(X0),er_left_peg(X0).
-inter_er_overlap_sokoban_er_left_peg(X0) :- object(X0),not inter_er_overlap_sokoban_er_left_peg(X0).
inter_er_overlap_sokoban_er_overlap_peg(X0) :- er_overlap_sokoban(X0),er_overlap_peg(X0).
-inter_er_overlap_sokoban_er_overlap_peg(X0) :- object(X0),not inter_er_overlap_sokoban_er_overlap_peg(X0).
inter_er_overlap_sokoban_er_shape_peg(X0) :- er_overlap_sokoban(X0),er_shape_peg(X0).
-inter_er_overlap_sokoban_er_shape_peg(X0) :- object(X0),not inter_er_overlap_sokoban_er_shape_peg(X0).
inter_er_overlap_sokoban_er_smaller_disk(X0) :- er_overlap_sokoban(X0),er_smaller_disk(X0).
-inter_er_overlap_sokoban_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_sokoban_er_smaller_disk(X0).
inter_er_overlap_sokoban_er_below_disk(X0) :- er_overlap_sokoban(X0),er_below_disk(X0).
-inter_er_overlap_sokoban_er_below_disk(X0) :- object(X0),not inter_er_overlap_sokoban_er_below_disk(X0).
inter_er_overlap_sokoban_er_left_disk(X0) :- er_overlap_sokoban(X0),er_left_disk(X0).
-inter_er_overlap_sokoban_er_left_disk(X0) :- object(X0),not inter_er_overlap_sokoban_er_left_disk(X0).
inter_er_overlap_sokoban_er_overlap_disk(X0) :- er_overlap_sokoban(X0),er_overlap_disk(X0).
-inter_er_overlap_sokoban_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_sokoban_er_overlap_disk(X0).
inter_er_overlap_sokoban_er_shape_disk(X0) :- er_overlap_sokoban(X0),er_shape_disk(X0).
-inter_er_overlap_sokoban_er_shape_disk(X0) :- object(X0),not inter_er_overlap_sokoban_er_shape_disk(X0).
inter_er_overlap_sokoban_er_smaller_tile(X0) :- er_overlap_sokoban(X0),er_smaller_tile(X0).
-inter_er_overlap_sokoban_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_sokoban_er_smaller_tile(X0).
inter_er_overlap_sokoban_er_below_tile(X0) :- er_overlap_sokoban(X0),er_below_tile(X0).
-inter_er_overlap_sokoban_er_below_tile(X0) :- object(X0),not inter_er_overlap_sokoban_er_below_tile(X0).
inter_er_overlap_sokoban_er_left_tile(X0) :- er_overlap_sokoban(X0),er_left_tile(X0).
-inter_er_overlap_sokoban_er_left_tile(X0) :- object(X0),not inter_er_overlap_sokoban_er_left_tile(X0).
inter_er_overlap_sokoban_er_overlap_tile(X0) :- er_overlap_sokoban(X0),er_overlap_tile(X0).
-inter_er_overlap_sokoban_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_sokoban_er_overlap_tile(X0).
inter_er_overlap_sokoban_er_shape_tile(X0) :- er_overlap_sokoban(X0),er_shape_tile(X0).
-inter_er_overlap_sokoban_er_shape_tile(X0) :- object(X0),not inter_er_overlap_sokoban_er_shape_tile(X0).
inter_er_shape_sokoban_er_smaller_crate(X0) :- er_shape_sokoban(X0),er_smaller_crate(X0).
-inter_er_shape_sokoban_er_smaller_crate(X0) :- object(X0),not inter_er_shape_sokoban_er_smaller_crate(X0).
inter_er_shape_sokoban_er_below_crate(X0) :- er_shape_sokoban(X0),er_below_crate(X0).
-inter_er_shape_sokoban_er_below_crate(X0) :- object(X0),not inter_er_shape_sokoban_er_below_crate(X0).
inter_er_shape_sokoban_er_left_crate(X0) :- er_shape_sokoban(X0),er_left_crate(X0).
-inter_er_shape_sokoban_er_left_crate(X0) :- object(X0),not inter_er_shape_sokoban_er_left_crate(X0).
inter_er_shape_sokoban_er_overlap_crate(X0) :- er_shape_sokoban(X0),er_overlap_crate(X0).
-inter_er_shape_sokoban_er_overlap_crate(X0) :- object(X0),not inter_er_shape_sokoban_er_overlap_crate(X0).
inter_er_shape_sokoban_er_shape_crate(X0) :- er_shape_sokoban(X0),er_shape_crate(X0).
-inter_er_shape_sokoban_er_shape_crate(X0) :- object(X0),not inter_er_shape_sokoban_er_shape_crate(X0).
inter_er_shape_sokoban_er_smaller_key(X0) :- er_shape_sokoban(X0),er_smaller_key(X0).
-inter_er_shape_sokoban_er_smaller_key(X0) :- object(X0),not inter_er_shape_sokoban_er_smaller_key(X0).
inter_er_shape_sokoban_er_below_key(X0) :- er_shape_sokoban(X0),er_below_key(X0).
-inter_er_shape_sokoban_er_below_key(X0) :- object(X0),not inter_er_shape_sokoban_er_below_key(X0).
inter_er_shape_sokoban_er_left_key(X0) :- er_shape_sokoban(X0),er_left_key(X0).
-inter_er_shape_sokoban_er_left_key(X0) :- object(X0),not inter_er_shape_sokoban_er_left_key(X0).
inter_er_shape_sokoban_er_overlap_key(X0) :- er_shape_sokoban(X0),er_overlap_key(X0).
-inter_er_shape_sokoban_er_overlap_key(X0) :- object(X0),not inter_er_shape_sokoban_er_overlap_key(X0).
inter_er_shape_sokoban_er_shape_key(X0) :- er_shape_sokoban(X0),er_shape_key(X0).
-inter_er_shape_sokoban_er_shape_key(X0) :- object(X0),not inter_er_shape_sokoban_er_shape_key(X0).
inter_er_shape_sokoban_er_smaller_peg(X0) :- er_shape_sokoban(X0),er_smaller_peg(X0).
-inter_er_shape_sokoban_er_smaller_peg(X0) :- object(X0),not inter_er_shape_sokoban_er_smaller_peg(X0).
inter_er_shape_sokoban_er_below_peg(X0) :- er_shape_sokoban(X0),er_below_peg(X0).
-inter_er_shape_sokoban_er_below_peg(X0) :- object(X0),not inter_er_shape_sokoban_er_below_peg(X0).
inter_er_shape_sokoban_er_left_peg(X0) :- er_shape_sokoban(X0),er_left_peg(X0).
-inter_er_shape_sokoban_er_left_peg(X0) :- object(X0),not inter_er_shape_sokoban_er_left_peg(X0).
inter_er_shape_sokoban_er_overlap_peg(X0) :- er_shape_sokoban(X0),er_overlap_peg(X0).
-inter_er_shape_sokoban_er_overlap_peg(X0) :- object(X0),not inter_er_shape_sokoban_er_overlap_peg(X0).
inter_er_shape_sokoban_er_shape_peg(X0) :- er_shape_sokoban(X0),er_shape_peg(X0).
-inter_er_shape_sokoban_er_shape_peg(X0) :- object(X0),not inter_er_shape_sokoban_er_shape_peg(X0).
inter_er_shape_sokoban_er_smaller_disk(X0) :- er_shape_sokoban(X0),er_smaller_disk(X0).
-inter_er_shape_sokoban_er_smaller_disk(X0) :- object(X0),not inter_er_shape_sokoban_er_smaller_disk(X0).
inter_er_shape_sokoban_er_below_disk(X0) :- er_shape_sokoban(X0),er_below_disk(X0).
-inter_er_shape_sokoban_er_below_disk(X0) :- object(X0),not inter_er_shape_sokoban_er_below_disk(X0).
inter_er_shape_sokoban_er_left_disk(X0) :- er_shape_sokoban(X0),er_left_disk(X0).
-inter_er_shape_sokoban_er_left_disk(X0) :- object(X0),not inter_er_shape_sokoban_er_left_disk(X0).
inter_er_shape_sokoban_er_overlap_disk(X0) :- er_shape_sokoban(X0),er_overlap_disk(X0).
-inter_er_shape_sokoban_er_overlap_disk(X0) :- object(X0),not inter_er_shape_sokoban_er_overlap_disk(X0).
inter_er_shape_sokoban_er_shape_disk(X0) :- er_shape_sokoban(X0),er_shape_disk(X0).
-inter_er_shape_sokoban_er_shape_disk(X0) :- object(X0),not inter_er_shape_sokoban_er_shape_disk(X0).
inter_er_shape_sokoban_er_smaller_tile(X0) :- er_shape_sokoban(X0),er_smaller_tile(X0).
-inter_er_shape_sokoban_er_smaller_tile(X0) :- object(X0),not inter_er_shape_sokoban_er_smaller_tile(X0).
inter_er_shape_sokoban_er_below_tile(X0) :- er_shape_sokoban(X0),er_below_tile(X0).
-inter_er_shape_sokoban_er_below_tile(X0) :- object(X0),not inter_er_shape_sokoban_er_below_tile(X0).
inter_er_shape_sokoban_er_left_tile(X0) :- er_shape_sokoban(X0),er_left_tile(X0).
-inter_er_shape_sokoban_er_left_tile(X0) :- object(X0),not inter_er_shape_sokoban_er_left_tile(X0).
inter_er_shape_sokoban_er_overlap_tile(X0) :- er_shape_sokoban(X0),er_overlap_tile(X0).
-inter_er_shape_sokoban_er_overlap_tile(X0) :- object(X0),not inter_er_shape_sokoban_er_overlap_tile(X0).
inter_er_shape_sokoban_er_shape_tile(X0) :- er_shape_sokoban(X0),er_shape_tile(X0).
-inter_er_shape_sokoban_er_shape_tile(X0) :- object(X0),not inter_er_shape_sokoban_er_shape_tile(X0).
inter_er_smaller_crate_er_below_crate(X0) :- er_smaller_crate(X0),er_below_crate(X0).
-inter_er_smaller_crate_er_below_crate(X0) :- object(X0),not inter_er_smaller_crate_er_below_crate(X0).
inter_er_smaller_crate_er_left_crate(X0) :- er_smaller_crate(X0),er_left_crate(X0).
-inter_er_smaller_crate_er_left_crate(X0) :- object(X0),not inter_er_smaller_crate_er_left_crate(X0).
inter_er_smaller_crate_er_overlap_crate(X0) :- er_smaller_crate(X0),er_overlap_crate(X0).
-inter_er_smaller_crate_er_overlap_crate(X0) :- object(X0),not inter_er_smaller_crate_er_overlap_crate(X0).
inter_er_smaller_crate_er_shape_crate(X0) :- er_smaller_crate(X0),er_shape_crate(X0).
-inter_er_smaller_crate_er_shape_crate(X0) :- object(X0),not inter_er_smaller_crate_er_shape_crate(X0).
inter_er_smaller_crate_er_smaller_key(X0) :- er_smaller_crate(X0),er_smaller_key(X0).
-inter_er_smaller_crate_er_smaller_key(X0) :- object(X0),not inter_er_smaller_crate_er_smaller_key(X0).
inter_er_smaller_crate_er_below_key(X0) :- er_smaller_crate(X0),er_below_key(X0).
-inter_er_smaller_crate_er_below_key(X0) :- object(X0),not inter_er_smaller_crate_er_below_key(X0).
inter_er_smaller_crate_er_left_key(X0) :- er_smaller_crate(X0),er_left_key(X0).
-inter_er_smaller_crate_er_left_key(X0) :- object(X0),not inter_er_smaller_crate_er_left_key(X0).
inter_er_smaller_crate_er_overlap_key(X0) :- er_smaller_crate(X0),er_overlap_key(X0).
-inter_er_smaller_crate_er_overlap_key(X0) :- object(X0),not inter_er_smaller_crate_er_overlap_key(X0).
inter_er_smaller_crate_er_shape_key(X0) :- er_smaller_crate(X0),er_shape_key(X0).
-inter_er_smaller_crate_er_shape_key(X0) :- object(X0),not inter_er_smaller_crate_er_shape_key(X0).
inter_er_smaller_crate_er_smaller_peg(X0) :- er_smaller_crate(X0),er_smaller_peg(X0).
-inter_er_smaller_crate_er_smaller_peg(X0) :- object(X0),not inter_er_smaller_crate_er_smaller_peg(X0).
inter_er_smaller_crate_er_below_peg(X0) :- er_smaller_crate(X0),er_below_peg(X0).
-inter_er_smaller_crate_er_below_peg(X0) :- object(X0),not inter_er_smaller_crate_er_below_peg(X0).
inter_er_smaller_crate_er_left_peg(X0) :- er_smaller_crate(X0),er_left_peg(X0).
-inter_er_smaller_crate_er_left_peg(X0) :- object(X0),not inter_er_smaller_crate_er_left_peg(X0).
inter_er_smaller_crate_er_overlap_peg(X0) :- er_smaller_crate(X0),er_overlap_peg(X0).
-inter_er_smaller_crate_er_overlap_peg(X0) :- object(X0),not inter_er_smaller_crate_er_overlap_peg(X0).
inter_er_smaller_crate_er_shape_peg(X0) :- er_smaller_crate(X0),er_shape_peg(X0).
-inter_er_smaller_crate_er_shape_peg(X0) :- object(X0),not inter_er_smaller_crate_er_shape_peg(X0).
inter_er_smaller_crate_er_smaller_disk(X0) :- er_smaller_crate(X0),er_smaller_disk(X0).
-inter_er_smaller_crate_er_smaller_disk(X0) :- object(X0),not inter_er_smaller_crate_er_smaller_disk(X0).
inter_er_smaller_crate_er_below_disk(X0) :- er_smaller_crate(X0),er_below_disk(X0).
-inter_er_smaller_crate_er_below_disk(X0) :- object(X0),not inter_er_smaller_crate_er_below_disk(X0).
inter_er_smaller_crate_er_left_disk(X0) :- er_smaller_crate(X0),er_left_disk(X0).
-inter_er_smaller_crate_er_left_disk(X0) :- object(X0),not inter_er_smaller_crate_er_left_disk(X0).
inter_er_smaller_crate_er_overlap_disk(X0) :- er_smaller_crate(X0),er_overlap_disk(X0).
-inter_er_smaller_crate_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_crate_er_overlap_disk(X0).
inter_er_smaller_crate_er_shape_disk(X0) :- er_smaller_crate(X0),er_shape_disk(X0).
-inter_er_smaller_crate_er_shape_disk(X0) :- object(X0),not inter_er_smaller_crate_er_shape_disk(X0).
inter_er_smaller_crate_er_smaller_tile(X0) :- er_smaller_crate(X0),er_smaller_tile(X0).
-inter_er_smaller_crate_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_crate_er_smaller_tile(X0).
inter_er_smaller_crate_er_below_tile(X0) :- er_smaller_crate(X0),er_below_tile(X0).
-inter_er_smaller_crate_er_below_tile(X0) :- object(X0),not inter_er_smaller_crate_er_below_tile(X0).
inter_er_smaller_crate_er_left_tile(X0) :- er_smaller_crate(X0),er_left_tile(X0).
-inter_er_smaller_crate_er_left_tile(X0) :- object(X0),not inter_er_smaller_crate_er_left_tile(X0).
inter_er_smaller_crate_er_overlap_tile(X0) :- er_smaller_crate(X0),er_overlap_tile(X0).
-inter_er_smaller_crate_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_crate_er_overlap_tile(X0).
inter_er_smaller_crate_er_shape_tile(X0) :- er_smaller_crate(X0),er_shape_tile(X0).
-inter_er_smaller_crate_er_shape_tile(X0) :- object(X0),not inter_er_smaller_crate_er_shape_tile(X0).
inter_er_below_crate_er_left_crate(X0) :- er_below_crate(X0),er_left_crate(X0).
-inter_er_below_crate_er_left_crate(X0) :- object(X0),not inter_er_below_crate_er_left_crate(X0).
inter_er_below_crate_er_overlap_crate(X0) :- er_below_crate(X0),er_overlap_crate(X0).
-inter_er_below_crate_er_overlap_crate(X0) :- object(X0),not inter_er_below_crate_er_overlap_crate(X0).
inter_er_below_crate_er_shape_crate(X0) :- er_below_crate(X0),er_shape_crate(X0).
-inter_er_below_crate_er_shape_crate(X0) :- object(X0),not inter_er_below_crate_er_shape_crate(X0).
inter_er_below_crate_er_smaller_key(X0) :- er_below_crate(X0),er_smaller_key(X0).
-inter_er_below_crate_er_smaller_key(X0) :- object(X0),not inter_er_below_crate_er_smaller_key(X0).
inter_er_below_crate_er_below_key(X0) :- er_below_crate(X0),er_below_key(X0).
-inter_er_below_crate_er_below_key(X0) :- object(X0),not inter_er_below_crate_er_below_key(X0).
inter_er_below_crate_er_left_key(X0) :- er_below_crate(X0),er_left_key(X0).
-inter_er_below_crate_er_left_key(X0) :- object(X0),not inter_er_below_crate_er_left_key(X0).
inter_er_below_crate_er_overlap_key(X0) :- er_below_crate(X0),er_overlap_key(X0).
-inter_er_below_crate_er_overlap_key(X0) :- object(X0),not inter_er_below_crate_er_overlap_key(X0).
inter_er_below_crate_er_shape_key(X0) :- er_below_crate(X0),er_shape_key(X0).
-inter_er_below_crate_er_shape_key(X0) :- object(X0),not inter_er_below_crate_er_shape_key(X0).
inter_er_below_crate_er_smaller_peg(X0) :- er_below_crate(X0),er_smaller_peg(X0).
-inter_er_below_crate_er_smaller_peg(X0) :- object(X0),not inter_er_below_crate_er_smaller_peg(X0).
inter_er_below_crate_er_below_peg(X0) :- er_below_crate(X0),er_below_peg(X0).
-inter_er_below_crate_er_below_peg(X0) :- object(X0),not inter_er_below_crate_er_below_peg(X0).
inter_er_below_crate_er_left_peg(X0) :- er_below_crate(X0),er_left_peg(X0).
-inter_er_below_crate_er_left_peg(X0) :- object(X0),not inter_er_below_crate_er_left_peg(X0).
inter_er_below_crate_er_overlap_peg(X0) :- er_below_crate(X0),er_overlap_peg(X0).
-inter_er_below_crate_er_overlap_peg(X0) :- object(X0),not inter_er_below_crate_er_overlap_peg(X0).
inter_er_below_crate_er_shape_peg(X0) :- er_below_crate(X0),er_shape_peg(X0).
-inter_er_below_crate_er_shape_peg(X0) :- object(X0),not inter_er_below_crate_er_shape_peg(X0).
inter_er_below_crate_er_smaller_disk(X0) :- er_below_crate(X0),er_smaller_disk(X0).
-inter_er_below_crate_er_smaller_disk(X0) :- object(X0),not inter_er_below_crate_er_smaller_disk(X0).
inter_er_below_crate_er_below_disk(X0) :- er_below_crate(X0),er_below_disk(X0).
-inter_er_below_crate_er_below_disk(X0) :- object(X0),not inter_er_below_crate_er_below_disk(X0).
inter_er_below_crate_er_left_disk(X0) :- er_below_crate(X0),er_left_disk(X0).
-inter_er_below_crate_er_left_disk(X0) :- object(X0),not inter_er_below_crate_er_left_disk(X0).
inter_er_below_crate_er_overlap_disk(X0) :- er_below_crate(X0),er_overlap_disk(X0).
-inter_er_below_crate_er_overlap_disk(X0) :- object(X0),not inter_er_below_crate_er_overlap_disk(X0).
inter_er_below_crate_er_shape_disk(X0) :- er_below_crate(X0),er_shape_disk(X0).
-inter_er_below_crate_er_shape_disk(X0) :- object(X0),not inter_er_below_crate_er_shape_disk(X0).
inter_er_below_crate_er_smaller_tile(X0) :- er_below_crate(X0),er_smaller_tile(X0).
-inter_er_below_crate_er_smaller_tile(X0) :- object(X0),not inter_er_below_crate_er_smaller_tile(X0).
inter_er_below_crate_er_below_tile(X0) :- er_below_crate(X0),er_below_tile(X0).
-inter_er_below_crate_er_below_tile(X0) :- object(X0),not inter_er_below_crate_er_below_tile(X0).
inter_er_below_crate_er_left_tile(X0) :- er_below_crate(X0),er_left_tile(X0).
-inter_er_below_crate_er_left_tile(X0) :- object(X0),not inter_er_below_crate_er_left_tile(X0).
inter_er_below_crate_er_overlap_tile(X0) :- er_below_crate(X0),er_overlap_tile(X0).
-inter_er_below_crate_er_overlap_tile(X0) :- object(X0),not inter_er_below_crate_er_overlap_tile(X0).
inter_er_below_crate_er_shape_tile(X0) :- er_below_crate(X0),er_shape_tile(X0).
-inter_er_below_crate_er_shape_tile(X0) :- object(X0),not inter_er_below_crate_er_shape_tile(X0).
inter_er_left_crate_er_overlap_crate(X0) :- er_left_crate(X0),er_overlap_crate(X0).
-inter_er_left_crate_er_overlap_crate(X0) :- object(X0),not inter_er_left_crate_er_overlap_crate(X0).
inter_er_left_crate_er_shape_crate(X0) :- er_left_crate(X0),er_shape_crate(X0).
-inter_er_left_crate_er_shape_crate(X0) :- object(X0),not inter_er_left_crate_er_shape_crate(X0).
inter_er_left_crate_er_smaller_key(X0) :- er_left_crate(X0),er_smaller_key(X0).
-inter_er_left_crate_er_smaller_key(X0) :- object(X0),not inter_er_left_crate_er_smaller_key(X0).
inter_er_left_crate_er_below_key(X0) :- er_left_crate(X0),er_below_key(X0).
-inter_er_left_crate_er_below_key(X0) :- object(X0),not inter_er_left_crate_er_below_key(X0).
inter_er_left_crate_er_left_key(X0) :- er_left_crate(X0),er_left_key(X0).
-inter_er_left_crate_er_left_key(X0) :- object(X0),not inter_er_left_crate_er_left_key(X0).
inter_er_left_crate_er_overlap_key(X0) :- er_left_crate(X0),er_overlap_key(X0).
-inter_er_left_crate_er_overlap_key(X0) :- object(X0),not inter_er_left_crate_er_overlap_key(X0).
inter_er_left_crate_er_shape_key(X0) :- er_left_crate(X0),er_shape_key(X0).
-inter_er_left_crate_er_shape_key(X0) :- object(X0),not inter_er_left_crate_er_shape_key(X0).
inter_er_left_crate_er_smaller_peg(X0) :- er_left_crate(X0),er_smaller_peg(X0).
-inter_er_left_crate_er_smaller_peg(X0) :- object(X0),not inter_er_left_crate_er_smaller_peg(X0).
inter_er_left_crate_er_below_peg(X0) :- er_left_crate(X0),er_below_peg(X0).
-inter_er_left_crate_er_below_peg(X0) :- object(X0),not inter_er_left_crate_er_below_peg(X0).
inter_er_left_crate_er_left_peg(X0) :- er_left_crate(X0),er_left_peg(X0).
-inter_er_left_crate_er_left_peg(X0) :- object(X0),not inter_er_left_crate_er_left_peg(X0).
inter_er_left_crate_er_overlap_peg(X0) :- er_left_crate(X0),er_overlap_peg(X0).
-inter_er_left_crate_er_overlap_peg(X0) :- object(X0),not inter_er_left_crate_er_overlap_peg(X0).
inter_er_left_crate_er_shape_peg(X0) :- er_left_crate(X0),er_shape_peg(X0).
-inter_er_left_crate_er_shape_peg(X0) :- object(X0),not inter_er_left_crate_er_shape_peg(X0).
inter_er_left_crate_er_smaller_disk(X0) :- er_left_crate(X0),er_smaller_disk(X0).
-inter_er_left_crate_er_smaller_disk(X0) :- object(X0),not inter_er_left_crate_er_smaller_disk(X0).
inter_er_left_crate_er_below_disk(X0) :- er_left_crate(X0),er_below_disk(X0).
-inter_er_left_crate_er_below_disk(X0) :- object(X0),not inter_er_left_crate_er_below_disk(X0).
inter_er_left_crate_er_left_disk(X0) :- er_left_crate(X0),er_left_disk(X0).
-inter_er_left_crate_er_left_disk(X0) :- object(X0),not inter_er_left_crate_er_left_disk(X0).
inter_er_left_crate_er_overlap_disk(X0) :- er_left_crate(X0),er_overlap_disk(X0).
-inter_er_left_crate_er_overlap_disk(X0) :- object(X0),not inter_er_left_crate_er_overlap_disk(X0).
inter_er_left_crate_er_shape_disk(X0) :- er_left_crate(X0),er_shape_disk(X0).
-inter_er_left_crate_er_shape_disk(X0) :- object(X0),not inter_er_left_crate_er_shape_disk(X0).
inter_er_left_crate_er_smaller_tile(X0) :- er_left_crate(X0),er_smaller_tile(X0).
-inter_er_left_crate_er_smaller_tile(X0) :- object(X0),not inter_er_left_crate_er_smaller_tile(X0).
inter_er_left_crate_er_below_tile(X0) :- er_left_crate(X0),er_below_tile(X0).
-inter_er_left_crate_er_below_tile(X0) :- object(X0),not inter_er_left_crate_er_below_tile(X0).
inter_er_left_crate_er_left_tile(X0) :- er_left_crate(X0),er_left_tile(X0).
-inter_er_left_crate_er_left_tile(X0) :- object(X0),not inter_er_left_crate_er_left_tile(X0).
inter_er_left_crate_er_overlap_tile(X0) :- er_left_crate(X0),er_overlap_tile(X0).
-inter_er_left_crate_er_overlap_tile(X0) :- object(X0),not inter_er_left_crate_er_overlap_tile(X0).
inter_er_left_crate_er_shape_tile(X0) :- er_left_crate(X0),er_shape_tile(X0).
-inter_er_left_crate_er_shape_tile(X0) :- object(X0),not inter_er_left_crate_er_shape_tile(X0).
inter_er_overlap_crate_er_shape_crate(X0) :- er_overlap_crate(X0),er_shape_crate(X0).
-inter_er_overlap_crate_er_shape_crate(X0) :- object(X0),not inter_er_overlap_crate_er_shape_crate(X0).
inter_er_overlap_crate_er_smaller_key(X0) :- er_overlap_crate(X0),er_smaller_key(X0).
-inter_er_overlap_crate_er_smaller_key(X0) :- object(X0),not inter_er_overlap_crate_er_smaller_key(X0).
inter_er_overlap_crate_er_below_key(X0) :- er_overlap_crate(X0),er_below_key(X0).
-inter_er_overlap_crate_er_below_key(X0) :- object(X0),not inter_er_overlap_crate_er_below_key(X0).
inter_er_overlap_crate_er_left_key(X0) :- er_overlap_crate(X0),er_left_key(X0).
-inter_er_overlap_crate_er_left_key(X0) :- object(X0),not inter_er_overlap_crate_er_left_key(X0).
inter_er_overlap_crate_er_overlap_key(X0) :- er_overlap_crate(X0),er_overlap_key(X0).
-inter_er_overlap_crate_er_overlap_key(X0) :- object(X0),not inter_er_overlap_crate_er_overlap_key(X0).
inter_er_overlap_crate_er_shape_key(X0) :- er_overlap_crate(X0),er_shape_key(X0).
-inter_er_overlap_crate_er_shape_key(X0) :- object(X0),not inter_er_overlap_crate_er_shape_key(X0).
inter_er_overlap_crate_er_smaller_peg(X0) :- er_overlap_crate(X0),er_smaller_peg(X0).
-inter_er_overlap_crate_er_smaller_peg(X0) :- object(X0),not inter_er_overlap_crate_er_smaller_peg(X0).
inter_er_overlap_crate_er_below_peg(X0) :- er_overlap_crate(X0),er_below_peg(X0).
-inter_er_overlap_crate_er_below_peg(X0) :- object(X0),not inter_er_overlap_crate_er_below_peg(X0).
inter_er_overlap_crate_er_left_peg(X0) :- er_overlap_crate(X0),er_left_peg(X0).
-inter_er_overlap_crate_er_left_peg(X0) :- object(X0),not inter_er_overlap_crate_er_left_peg(X0).
inter_er_overlap_crate_er_overlap_peg(X0) :- er_overlap_crate(X0),er_overlap_peg(X0).
-inter_er_overlap_crate_er_overlap_peg(X0) :- object(X0),not inter_er_overlap_crate_er_overlap_peg(X0).
inter_er_overlap_crate_er_shape_peg(X0) :- er_overlap_crate(X0),er_shape_peg(X0).
-inter_er_overlap_crate_er_shape_peg(X0) :- object(X0),not inter_er_overlap_crate_er_shape_peg(X0).
inter_er_overlap_crate_er_smaller_disk(X0) :- er_overlap_crate(X0),er_smaller_disk(X0).
-inter_er_overlap_crate_er_smaller_disk(X0) :- object(X0),not inter_er_overlap_crate_er_smaller_disk(X0).
inter_er_overlap_crate_er_below_disk(X0) :- er_overlap_crate(X0),er_below_disk(X0).
-inter_er_overlap_crate_er_below_disk(X0) :- object(X0),not inter_er_overlap_crate_er_below_disk(X0).
inter_er_overlap_crate_er_left_disk(X0) :- er_overlap_crate(X0),er_left_disk(X0).
-inter_er_overlap_crate_er_left_disk(X0) :- object(X0),not inter_er_overlap_crate_er_left_disk(X0).
inter_er_overlap_crate_er_overlap_disk(X0) :- er_overlap_crate(X0),er_overlap_disk(X0).
-inter_er_overlap_crate_er_overlap_disk(X0) :- object(X0),not inter_er_overlap_crate_er_overlap_disk(X0).
inter_er_overlap_crate_er_shape_disk(X0) :- er_overlap_crate(X0),er_shape_disk(X0).
-inter_er_overlap_crate_er_shape_disk(X0) :- object(X0),not inter_er_overlap_crate_er_shape_disk(X0).
inter_er_overlap_crate_er_smaller_tile(X0) :- er_overlap_crate(X0),er_smaller_tile(X0).
-inter_er_overlap_crate_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_crate_er_smaller_tile(X0).
inter_er_overlap_crate_er_below_tile(X0) :- er_overlap_crate(X0),er_below_tile(X0).
-inter_er_overlap_crate_er_below_tile(X0) :- object(X0),not inter_er_overlap_crate_er_below_tile(X0).
inter_er_overlap_crate_er_left_tile(X0) :- er_overlap_crate(X0),er_left_tile(X0).
-inter_er_overlap_crate_er_left_tile(X0) :- object(X0),not inter_er_overlap_crate_er_left_tile(X0).
inter_er_overlap_crate_er_overlap_tile(X0) :- er_overlap_crate(X0),er_overlap_tile(X0).
-inter_er_overlap_crate_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_crate_er_overlap_tile(X0).
inter_er_overlap_crate_er_shape_tile(X0) :- er_overlap_crate(X0),er_shape_tile(X0).
-inter_er_overlap_crate_er_shape_tile(X0) :- object(X0),not inter_er_overlap_crate_er_shape_tile(X0).
inter_er_shape_crate_er_smaller_key(X0) :- er_shape_crate(X0),er_smaller_key(X0).
-inter_er_shape_crate_er_smaller_key(X0) :- object(X0),not inter_er_shape_crate_er_smaller_key(X0).
inter_er_shape_crate_er_below_key(X0) :- er_shape_crate(X0),er_below_key(X0).
-inter_er_shape_crate_er_below_key(X0) :- object(X0),not inter_er_shape_crate_er_below_key(X0).
inter_er_shape_crate_er_left_key(X0) :- er_shape_crate(X0),er_left_key(X0).
-inter_er_shape_crate_er_left_key(X0) :- object(X0),not inter_er_shape_crate_er_left_key(X0).
inter_er_shape_crate_er_overlap_key(X0) :- er_shape_crate(X0),er_overlap_key(X0).
-inter_er_shape_crate_er_overlap_key(X0) :- object(X0),not inter_er_shape_crate_er_overlap_key(X0).
inter_er_shape_crate_er_shape_key(X0) :- er_shape_crate(X0),er_shape_key(X0).
-inter_er_shape_crate_er_shape_key(X0) :- object(X0),not inter_er_shape_crate_er_shape_key(X0).
inter_er_shape_crate_er_smaller_peg(X0) :- er_shape_crate(X0),er_smaller_peg(X0).
-inter_er_shape_crate_er_smaller_peg(X0) :- object(X0),not inter_er_shape_crate_er_smaller_peg(X0).
inter_er_shape_crate_er_below_peg(X0) :- er_shape_crate(X0),er_below_peg(X0).
-inter_er_shape_crate_er_below_peg(X0) :- object(X0),not inter_er_shape_crate_er_below_peg(X0).
inter_er_shape_crate_er_left_peg(X0) :- er_shape_crate(X0),er_left_peg(X0).
-inter_er_shape_crate_er_left_peg(X0) :- object(X0),not inter_er_shape_crate_er_left_peg(X0).
inter_er_shape_crate_er_overlap_peg(X0) :- er_shape_crate(X0),er_overlap_peg(X0).
-inter_er_shape_crate_er_overlap_peg(X0) :- object(X0),not inter_er_shape_crate_er_overlap_peg(X0).
inter_er_shape_crate_er_shape_peg(X0) :- er_shape_crate(X0),er_shape_peg(X0).
-inter_er_shape_crate_er_shape_peg(X0) :- object(X0),not inter_er_shape_crate_er_shape_peg(X0).
inter_er_shape_crate_er_smaller_disk(X0) :- er_shape_crate(X0),er_smaller_disk(X0).
-inter_er_shape_crate_er_smaller_disk(X0) :- object(X0),not inter_er_shape_crate_er_smaller_disk(X0).
inter_er_shape_crate_er_below_disk(X0) :- er_shape_crate(X0),er_below_disk(X0).
-inter_er_shape_crate_er_below_disk(X0) :- object(X0),not inter_er_shape_crate_er_below_disk(X0).
inter_er_shape_crate_er_left_disk(X0) :- er_shape_crate(X0),er_left_disk(X0).
-inter_er_shape_crate_er_left_disk(X0) :- object(X0),not inter_er_shape_crate_er_left_disk(X0).
inter_er_shape_crate_er_overlap_disk(X0) :- er_shape_crate(X0),er_overlap_disk(X0).
-inter_er_shape_crate_er_overlap_disk(X0) :- object(X0),not inter_er_shape_crate_er_overlap_disk(X0).
inter_er_shape_crate_er_shape_disk(X0) :- er_shape_crate(X0),er_shape_disk(X0).
-inter_er_shape_crate_er_shape_disk(X0) :- object(X0),not inter_er_shape_crate_er_shape_disk(X0).
inter_er_shape_crate_er_smaller_tile(X0) :- er_shape_crate(X0),er_smaller_tile(X0).
-inter_er_shape_crate_er_smaller_tile(X0) :- object(X0),not inter_er_shape_crate_er_smaller_tile(X0).
inter_er_shape_crate_er_below_tile(X0) :- er_shape_crate(X0),er_below_tile(X0).
-inter_er_shape_crate_er_below_tile(X0) :- object(X0),not inter_er_shape_crate_er_below_tile(X0).
inter_er_shape_crate_er_left_tile(X0) :- er_shape_crate(X0),er_left_tile(X0).
-inter_er_shape_crate_er_left_tile(X0) :- object(X0),not inter_er_shape_crate_er_left_tile(X0).
inter_er_shape_crate_er_overlap_tile(X0) :- er_shape_crate(X0),er_overlap_tile(X0).
-inter_er_shape_crate_er_overlap_tile(X0) :- object(X0),not inter_er_shape_crate_er_overlap_tile(X0).
inter_er_shape_crate_er_shape_tile(X0) :- er_shape_crate(X0),er_shape_tile(X0).
-inter_er_shape_crate_er_shape_tile(X0) :- object(X0),not inter_er_shape_crate_er_shape_tile(X0).
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
inter_er_smaller_key_er_smaller_tile(X0) :- er_smaller_key(X0),er_smaller_tile(X0).
-inter_er_smaller_key_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_key_er_smaller_tile(X0).
inter_er_smaller_key_er_below_tile(X0) :- er_smaller_key(X0),er_below_tile(X0).
-inter_er_smaller_key_er_below_tile(X0) :- object(X0),not inter_er_smaller_key_er_below_tile(X0).
inter_er_smaller_key_er_left_tile(X0) :- er_smaller_key(X0),er_left_tile(X0).
-inter_er_smaller_key_er_left_tile(X0) :- object(X0),not inter_er_smaller_key_er_left_tile(X0).
inter_er_smaller_key_er_overlap_tile(X0) :- er_smaller_key(X0),er_overlap_tile(X0).
-inter_er_smaller_key_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_key_er_overlap_tile(X0).
inter_er_smaller_key_er_shape_tile(X0) :- er_smaller_key(X0),er_shape_tile(X0).
-inter_er_smaller_key_er_shape_tile(X0) :- object(X0),not inter_er_smaller_key_er_shape_tile(X0).
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
inter_er_below_key_er_smaller_tile(X0) :- er_below_key(X0),er_smaller_tile(X0).
-inter_er_below_key_er_smaller_tile(X0) :- object(X0),not inter_er_below_key_er_smaller_tile(X0).
inter_er_below_key_er_below_tile(X0) :- er_below_key(X0),er_below_tile(X0).
-inter_er_below_key_er_below_tile(X0) :- object(X0),not inter_er_below_key_er_below_tile(X0).
inter_er_below_key_er_left_tile(X0) :- er_below_key(X0),er_left_tile(X0).
-inter_er_below_key_er_left_tile(X0) :- object(X0),not inter_er_below_key_er_left_tile(X0).
inter_er_below_key_er_overlap_tile(X0) :- er_below_key(X0),er_overlap_tile(X0).
-inter_er_below_key_er_overlap_tile(X0) :- object(X0),not inter_er_below_key_er_overlap_tile(X0).
inter_er_below_key_er_shape_tile(X0) :- er_below_key(X0),er_shape_tile(X0).
-inter_er_below_key_er_shape_tile(X0) :- object(X0),not inter_er_below_key_er_shape_tile(X0).
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
inter_er_left_key_er_smaller_tile(X0) :- er_left_key(X0),er_smaller_tile(X0).
-inter_er_left_key_er_smaller_tile(X0) :- object(X0),not inter_er_left_key_er_smaller_tile(X0).
inter_er_left_key_er_below_tile(X0) :- er_left_key(X0),er_below_tile(X0).
-inter_er_left_key_er_below_tile(X0) :- object(X0),not inter_er_left_key_er_below_tile(X0).
inter_er_left_key_er_left_tile(X0) :- er_left_key(X0),er_left_tile(X0).
-inter_er_left_key_er_left_tile(X0) :- object(X0),not inter_er_left_key_er_left_tile(X0).
inter_er_left_key_er_overlap_tile(X0) :- er_left_key(X0),er_overlap_tile(X0).
-inter_er_left_key_er_overlap_tile(X0) :- object(X0),not inter_er_left_key_er_overlap_tile(X0).
inter_er_left_key_er_shape_tile(X0) :- er_left_key(X0),er_shape_tile(X0).
-inter_er_left_key_er_shape_tile(X0) :- object(X0),not inter_er_left_key_er_shape_tile(X0).
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
inter_er_overlap_key_er_smaller_tile(X0) :- er_overlap_key(X0),er_smaller_tile(X0).
-inter_er_overlap_key_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_key_er_smaller_tile(X0).
inter_er_overlap_key_er_below_tile(X0) :- er_overlap_key(X0),er_below_tile(X0).
-inter_er_overlap_key_er_below_tile(X0) :- object(X0),not inter_er_overlap_key_er_below_tile(X0).
inter_er_overlap_key_er_left_tile(X0) :- er_overlap_key(X0),er_left_tile(X0).
-inter_er_overlap_key_er_left_tile(X0) :- object(X0),not inter_er_overlap_key_er_left_tile(X0).
inter_er_overlap_key_er_overlap_tile(X0) :- er_overlap_key(X0),er_overlap_tile(X0).
-inter_er_overlap_key_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_key_er_overlap_tile(X0).
inter_er_overlap_key_er_shape_tile(X0) :- er_overlap_key(X0),er_shape_tile(X0).
-inter_er_overlap_key_er_shape_tile(X0) :- object(X0),not inter_er_overlap_key_er_shape_tile(X0).
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
inter_er_shape_key_er_smaller_tile(X0) :- er_shape_key(X0),er_smaller_tile(X0).
-inter_er_shape_key_er_smaller_tile(X0) :- object(X0),not inter_er_shape_key_er_smaller_tile(X0).
inter_er_shape_key_er_below_tile(X0) :- er_shape_key(X0),er_below_tile(X0).
-inter_er_shape_key_er_below_tile(X0) :- object(X0),not inter_er_shape_key_er_below_tile(X0).
inter_er_shape_key_er_left_tile(X0) :- er_shape_key(X0),er_left_tile(X0).
-inter_er_shape_key_er_left_tile(X0) :- object(X0),not inter_er_shape_key_er_left_tile(X0).
inter_er_shape_key_er_overlap_tile(X0) :- er_shape_key(X0),er_overlap_tile(X0).
-inter_er_shape_key_er_overlap_tile(X0) :- object(X0),not inter_er_shape_key_er_overlap_tile(X0).
inter_er_shape_key_er_shape_tile(X0) :- er_shape_key(X0),er_shape_tile(X0).
-inter_er_shape_key_er_shape_tile(X0) :- object(X0),not inter_er_shape_key_er_shape_tile(X0).
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
inter_er_smaller_peg_er_smaller_tile(X0) :- er_smaller_peg(X0),er_smaller_tile(X0).
-inter_er_smaller_peg_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_peg_er_smaller_tile(X0).
inter_er_smaller_peg_er_below_tile(X0) :- er_smaller_peg(X0),er_below_tile(X0).
-inter_er_smaller_peg_er_below_tile(X0) :- object(X0),not inter_er_smaller_peg_er_below_tile(X0).
inter_er_smaller_peg_er_left_tile(X0) :- er_smaller_peg(X0),er_left_tile(X0).
-inter_er_smaller_peg_er_left_tile(X0) :- object(X0),not inter_er_smaller_peg_er_left_tile(X0).
inter_er_smaller_peg_er_overlap_tile(X0) :- er_smaller_peg(X0),er_overlap_tile(X0).
-inter_er_smaller_peg_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_peg_er_overlap_tile(X0).
inter_er_smaller_peg_er_shape_tile(X0) :- er_smaller_peg(X0),er_shape_tile(X0).
-inter_er_smaller_peg_er_shape_tile(X0) :- object(X0),not inter_er_smaller_peg_er_shape_tile(X0).
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
inter_er_below_peg_er_smaller_tile(X0) :- er_below_peg(X0),er_smaller_tile(X0).
-inter_er_below_peg_er_smaller_tile(X0) :- object(X0),not inter_er_below_peg_er_smaller_tile(X0).
inter_er_below_peg_er_below_tile(X0) :- er_below_peg(X0),er_below_tile(X0).
-inter_er_below_peg_er_below_tile(X0) :- object(X0),not inter_er_below_peg_er_below_tile(X0).
inter_er_below_peg_er_left_tile(X0) :- er_below_peg(X0),er_left_tile(X0).
-inter_er_below_peg_er_left_tile(X0) :- object(X0),not inter_er_below_peg_er_left_tile(X0).
inter_er_below_peg_er_overlap_tile(X0) :- er_below_peg(X0),er_overlap_tile(X0).
-inter_er_below_peg_er_overlap_tile(X0) :- object(X0),not inter_er_below_peg_er_overlap_tile(X0).
inter_er_below_peg_er_shape_tile(X0) :- er_below_peg(X0),er_shape_tile(X0).
-inter_er_below_peg_er_shape_tile(X0) :- object(X0),not inter_er_below_peg_er_shape_tile(X0).
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
inter_er_left_peg_er_smaller_tile(X0) :- er_left_peg(X0),er_smaller_tile(X0).
-inter_er_left_peg_er_smaller_tile(X0) :- object(X0),not inter_er_left_peg_er_smaller_tile(X0).
inter_er_left_peg_er_below_tile(X0) :- er_left_peg(X0),er_below_tile(X0).
-inter_er_left_peg_er_below_tile(X0) :- object(X0),not inter_er_left_peg_er_below_tile(X0).
inter_er_left_peg_er_left_tile(X0) :- er_left_peg(X0),er_left_tile(X0).
-inter_er_left_peg_er_left_tile(X0) :- object(X0),not inter_er_left_peg_er_left_tile(X0).
inter_er_left_peg_er_overlap_tile(X0) :- er_left_peg(X0),er_overlap_tile(X0).
-inter_er_left_peg_er_overlap_tile(X0) :- object(X0),not inter_er_left_peg_er_overlap_tile(X0).
inter_er_left_peg_er_shape_tile(X0) :- er_left_peg(X0),er_shape_tile(X0).
-inter_er_left_peg_er_shape_tile(X0) :- object(X0),not inter_er_left_peg_er_shape_tile(X0).
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
inter_er_overlap_peg_er_smaller_tile(X0) :- er_overlap_peg(X0),er_smaller_tile(X0).
-inter_er_overlap_peg_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_peg_er_smaller_tile(X0).
inter_er_overlap_peg_er_below_tile(X0) :- er_overlap_peg(X0),er_below_tile(X0).
-inter_er_overlap_peg_er_below_tile(X0) :- object(X0),not inter_er_overlap_peg_er_below_tile(X0).
inter_er_overlap_peg_er_left_tile(X0) :- er_overlap_peg(X0),er_left_tile(X0).
-inter_er_overlap_peg_er_left_tile(X0) :- object(X0),not inter_er_overlap_peg_er_left_tile(X0).
inter_er_overlap_peg_er_overlap_tile(X0) :- er_overlap_peg(X0),er_overlap_tile(X0).
-inter_er_overlap_peg_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_peg_er_overlap_tile(X0).
inter_er_overlap_peg_er_shape_tile(X0) :- er_overlap_peg(X0),er_shape_tile(X0).
-inter_er_overlap_peg_er_shape_tile(X0) :- object(X0),not inter_er_overlap_peg_er_shape_tile(X0).
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
inter_er_shape_peg_er_smaller_tile(X0) :- er_shape_peg(X0),er_smaller_tile(X0).
-inter_er_shape_peg_er_smaller_tile(X0) :- object(X0),not inter_er_shape_peg_er_smaller_tile(X0).
inter_er_shape_peg_er_below_tile(X0) :- er_shape_peg(X0),er_below_tile(X0).
-inter_er_shape_peg_er_below_tile(X0) :- object(X0),not inter_er_shape_peg_er_below_tile(X0).
inter_er_shape_peg_er_left_tile(X0) :- er_shape_peg(X0),er_left_tile(X0).
-inter_er_shape_peg_er_left_tile(X0) :- object(X0),not inter_er_shape_peg_er_left_tile(X0).
inter_er_shape_peg_er_overlap_tile(X0) :- er_shape_peg(X0),er_overlap_tile(X0).
-inter_er_shape_peg_er_overlap_tile(X0) :- object(X0),not inter_er_shape_peg_er_overlap_tile(X0).
inter_er_shape_peg_er_shape_tile(X0) :- er_shape_peg(X0),er_shape_tile(X0).
-inter_er_shape_peg_er_shape_tile(X0) :- object(X0),not inter_er_shape_peg_er_shape_tile(X0).
inter_er_smaller_disk_er_below_disk(X0) :- er_smaller_disk(X0),er_below_disk(X0).
-inter_er_smaller_disk_er_below_disk(X0) :- object(X0),not inter_er_smaller_disk_er_below_disk(X0).
inter_er_smaller_disk_er_left_disk(X0) :- er_smaller_disk(X0),er_left_disk(X0).
-inter_er_smaller_disk_er_left_disk(X0) :- object(X0),not inter_er_smaller_disk_er_left_disk(X0).
inter_er_smaller_disk_er_overlap_disk(X0) :- er_smaller_disk(X0),er_overlap_disk(X0).
-inter_er_smaller_disk_er_overlap_disk(X0) :- object(X0),not inter_er_smaller_disk_er_overlap_disk(X0).
inter_er_smaller_disk_er_shape_disk(X0) :- er_smaller_disk(X0),er_shape_disk(X0).
-inter_er_smaller_disk_er_shape_disk(X0) :- object(X0),not inter_er_smaller_disk_er_shape_disk(X0).
inter_er_smaller_disk_er_smaller_tile(X0) :- er_smaller_disk(X0),er_smaller_tile(X0).
-inter_er_smaller_disk_er_smaller_tile(X0) :- object(X0),not inter_er_smaller_disk_er_smaller_tile(X0).
inter_er_smaller_disk_er_below_tile(X0) :- er_smaller_disk(X0),er_below_tile(X0).
-inter_er_smaller_disk_er_below_tile(X0) :- object(X0),not inter_er_smaller_disk_er_below_tile(X0).
inter_er_smaller_disk_er_left_tile(X0) :- er_smaller_disk(X0),er_left_tile(X0).
-inter_er_smaller_disk_er_left_tile(X0) :- object(X0),not inter_er_smaller_disk_er_left_tile(X0).
inter_er_smaller_disk_er_overlap_tile(X0) :- er_smaller_disk(X0),er_overlap_tile(X0).
-inter_er_smaller_disk_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_disk_er_overlap_tile(X0).
inter_er_smaller_disk_er_shape_tile(X0) :- er_smaller_disk(X0),er_shape_tile(X0).
-inter_er_smaller_disk_er_shape_tile(X0) :- object(X0),not inter_er_smaller_disk_er_shape_tile(X0).
inter_er_below_disk_er_left_disk(X0) :- er_below_disk(X0),er_left_disk(X0).
-inter_er_below_disk_er_left_disk(X0) :- object(X0),not inter_er_below_disk_er_left_disk(X0).
inter_er_below_disk_er_overlap_disk(X0) :- er_below_disk(X0),er_overlap_disk(X0).
-inter_er_below_disk_er_overlap_disk(X0) :- object(X0),not inter_er_below_disk_er_overlap_disk(X0).
inter_er_below_disk_er_shape_disk(X0) :- er_below_disk(X0),er_shape_disk(X0).
-inter_er_below_disk_er_shape_disk(X0) :- object(X0),not inter_er_below_disk_er_shape_disk(X0).
inter_er_below_disk_er_smaller_tile(X0) :- er_below_disk(X0),er_smaller_tile(X0).
-inter_er_below_disk_er_smaller_tile(X0) :- object(X0),not inter_er_below_disk_er_smaller_tile(X0).
inter_er_below_disk_er_below_tile(X0) :- er_below_disk(X0),er_below_tile(X0).
-inter_er_below_disk_er_below_tile(X0) :- object(X0),not inter_er_below_disk_er_below_tile(X0).
inter_er_below_disk_er_left_tile(X0) :- er_below_disk(X0),er_left_tile(X0).
-inter_er_below_disk_er_left_tile(X0) :- object(X0),not inter_er_below_disk_er_left_tile(X0).
inter_er_below_disk_er_overlap_tile(X0) :- er_below_disk(X0),er_overlap_tile(X0).
-inter_er_below_disk_er_overlap_tile(X0) :- object(X0),not inter_er_below_disk_er_overlap_tile(X0).
inter_er_below_disk_er_shape_tile(X0) :- er_below_disk(X0),er_shape_tile(X0).
-inter_er_below_disk_er_shape_tile(X0) :- object(X0),not inter_er_below_disk_er_shape_tile(X0).
inter_er_left_disk_er_overlap_disk(X0) :- er_left_disk(X0),er_overlap_disk(X0).
-inter_er_left_disk_er_overlap_disk(X0) :- object(X0),not inter_er_left_disk_er_overlap_disk(X0).
inter_er_left_disk_er_shape_disk(X0) :- er_left_disk(X0),er_shape_disk(X0).
-inter_er_left_disk_er_shape_disk(X0) :- object(X0),not inter_er_left_disk_er_shape_disk(X0).
inter_er_left_disk_er_smaller_tile(X0) :- er_left_disk(X0),er_smaller_tile(X0).
-inter_er_left_disk_er_smaller_tile(X0) :- object(X0),not inter_er_left_disk_er_smaller_tile(X0).
inter_er_left_disk_er_below_tile(X0) :- er_left_disk(X0),er_below_tile(X0).
-inter_er_left_disk_er_below_tile(X0) :- object(X0),not inter_er_left_disk_er_below_tile(X0).
inter_er_left_disk_er_left_tile(X0) :- er_left_disk(X0),er_left_tile(X0).
-inter_er_left_disk_er_left_tile(X0) :- object(X0),not inter_er_left_disk_er_left_tile(X0).
inter_er_left_disk_er_overlap_tile(X0) :- er_left_disk(X0),er_overlap_tile(X0).
-inter_er_left_disk_er_overlap_tile(X0) :- object(X0),not inter_er_left_disk_er_overlap_tile(X0).
inter_er_left_disk_er_shape_tile(X0) :- er_left_disk(X0),er_shape_tile(X0).
-inter_er_left_disk_er_shape_tile(X0) :- object(X0),not inter_er_left_disk_er_shape_tile(X0).
inter_er_overlap_disk_er_shape_disk(X0) :- er_overlap_disk(X0),er_shape_disk(X0).
-inter_er_overlap_disk_er_shape_disk(X0) :- object(X0),not inter_er_overlap_disk_er_shape_disk(X0).
inter_er_overlap_disk_er_smaller_tile(X0) :- er_overlap_disk(X0),er_smaller_tile(X0).
-inter_er_overlap_disk_er_smaller_tile(X0) :- object(X0),not inter_er_overlap_disk_er_smaller_tile(X0).
inter_er_overlap_disk_er_below_tile(X0) :- er_overlap_disk(X0),er_below_tile(X0).
-inter_er_overlap_disk_er_below_tile(X0) :- object(X0),not inter_er_overlap_disk_er_below_tile(X0).
inter_er_overlap_disk_er_left_tile(X0) :- er_overlap_disk(X0),er_left_tile(X0).
-inter_er_overlap_disk_er_left_tile(X0) :- object(X0),not inter_er_overlap_disk_er_left_tile(X0).
inter_er_overlap_disk_er_overlap_tile(X0) :- er_overlap_disk(X0),er_overlap_tile(X0).
-inter_er_overlap_disk_er_overlap_tile(X0) :- object(X0),not inter_er_overlap_disk_er_overlap_tile(X0).
inter_er_overlap_disk_er_shape_tile(X0) :- er_overlap_disk(X0),er_shape_tile(X0).
-inter_er_overlap_disk_er_shape_tile(X0) :- object(X0),not inter_er_overlap_disk_er_shape_tile(X0).
inter_er_shape_disk_er_smaller_tile(X0) :- er_shape_disk(X0),er_smaller_tile(X0).
-inter_er_shape_disk_er_smaller_tile(X0) :- object(X0),not inter_er_shape_disk_er_smaller_tile(X0).
inter_er_shape_disk_er_below_tile(X0) :- er_shape_disk(X0),er_below_tile(X0).
-inter_er_shape_disk_er_below_tile(X0) :- object(X0),not inter_er_shape_disk_er_below_tile(X0).
inter_er_shape_disk_er_left_tile(X0) :- er_shape_disk(X0),er_left_tile(X0).
-inter_er_shape_disk_er_left_tile(X0) :- object(X0),not inter_er_shape_disk_er_left_tile(X0).
inter_er_shape_disk_er_overlap_tile(X0) :- er_shape_disk(X0),er_overlap_tile(X0).
-inter_er_shape_disk_er_overlap_tile(X0) :- object(X0),not inter_er_shape_disk_er_overlap_tile(X0).
inter_er_shape_disk_er_shape_tile(X0) :- er_shape_disk(X0),er_shape_tile(X0).
-inter_er_shape_disk_er_shape_tile(X0) :- object(X0),not inter_er_shape_disk_er_shape_tile(X0).
inter_er_smaller_tile_er_below_tile(X0) :- er_smaller_tile(X0),er_below_tile(X0).
-inter_er_smaller_tile_er_below_tile(X0) :- object(X0),not inter_er_smaller_tile_er_below_tile(X0).
inter_er_smaller_tile_er_left_tile(X0) :- er_smaller_tile(X0),er_left_tile(X0).
-inter_er_smaller_tile_er_left_tile(X0) :- object(X0),not inter_er_smaller_tile_er_left_tile(X0).
inter_er_smaller_tile_er_overlap_tile(X0) :- er_smaller_tile(X0),er_overlap_tile(X0).
-inter_er_smaller_tile_er_overlap_tile(X0) :- object(X0),not inter_er_smaller_tile_er_overlap_tile(X0).
inter_er_smaller_tile_er_shape_tile(X0) :- er_smaller_tile(X0),er_shape_tile(X0).
-inter_er_smaller_tile_er_shape_tile(X0) :- object(X0),not inter_er_smaller_tile_er_shape_tile(X0).
inter_er_below_tile_er_left_tile(X0) :- er_below_tile(X0),er_left_tile(X0).
-inter_er_below_tile_er_left_tile(X0) :- object(X0),not inter_er_below_tile_er_left_tile(X0).
inter_er_below_tile_er_overlap_tile(X0) :- er_below_tile(X0),er_overlap_tile(X0).
-inter_er_below_tile_er_overlap_tile(X0) :- object(X0),not inter_er_below_tile_er_overlap_tile(X0).
inter_er_below_tile_er_shape_tile(X0) :- er_below_tile(X0),er_shape_tile(X0).
-inter_er_below_tile_er_shape_tile(X0) :- object(X0),not inter_er_below_tile_er_shape_tile(X0).
inter_er_left_tile_er_overlap_tile(X0) :- er_left_tile(X0),er_overlap_tile(X0).
-inter_er_left_tile_er_overlap_tile(X0) :- object(X0),not inter_er_left_tile_er_overlap_tile(X0).
inter_er_left_tile_er_shape_tile(X0) :- er_left_tile(X0),er_shape_tile(X0).
-inter_er_left_tile_er_shape_tile(X0) :- object(X0),not inter_er_left_tile_er_shape_tile(X0).
inter_er_overlap_tile_er_shape_tile(X0) :- er_overlap_tile(X0),er_shape_tile(X0).
-inter_er_overlap_tile_er_shape_tile(X0) :- object(X0),not inter_er_overlap_tile_er_shape_tile(X0).
% inverSE roles
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
% COMPOSITION roles
comp_smaller_below(X0,X1) :- smaller(X0,X2),below(X2,X1).
-comp_smaller_below(X0,X1) :- object(X0),object(X1),not comp_smaller_below(X0,X1).
comp_smaller_left(X0,X1) :- smaller(X0,X2),left(X2,X1).
-comp_smaller_left(X0,X1) :- object(X0),object(X1),not comp_smaller_left(X0,X1).
comp_smaller_overlap(X0,X1) :- smaller(X0,X2),overlap(X2,X1).
-comp_smaller_overlap(X0,X1) :- object(X0),object(X1),not comp_smaller_overlap(X0,X1).
comp_smaller_shape(X0,X1) :- smaller(X0,X2),shape(X2,X1).
-comp_smaller_shape(X0,X1) :- object(X0),object(X1),not comp_smaller_shape(X0,X1).
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
comp_below_left(X0,X1) :- below(X0,X2),left(X2,X1).
-comp_below_left(X0,X1) :- object(X0),object(X1),not comp_below_left(X0,X1).
comp_below_overlap(X0,X1) :- below(X0,X2),overlap(X2,X1).
-comp_below_overlap(X0,X1) :- object(X0),object(X1),not comp_below_overlap(X0,X1).
comp_below_shape(X0,X1) :- below(X0,X2),shape(X2,X1).
-comp_below_shape(X0,X1) :- object(X0),object(X1),not comp_below_shape(X0,X1).
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
comp_left_overlap(X0,X1) :- left(X0,X2),overlap(X2,X1).
-comp_left_overlap(X0,X1) :- object(X0),object(X1),not comp_left_overlap(X0,X1).
comp_left_shape(X0,X1) :- left(X0,X2),shape(X2,X1).
-comp_left_shape(X0,X1) :- object(X0),object(X1),not comp_left_shape(X0,X1).
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
comp_overlap_shape(X0,X1) :- overlap(X0,X2),shape(X2,X1).
-comp_overlap_shape(X0,X1) :- object(X0),object(X1),not comp_overlap_shape(X0,X1).
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
comp_inv_smaller_inv_below(X0,X1) :- inv_smaller(X0,X2),inv_below(X2,X1).
-comp_inv_smaller_inv_below(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_inv_below(X0,X1).
comp_inv_smaller_inv_left(X0,X1) :- inv_smaller(X0,X2),inv_left(X2,X1).
-comp_inv_smaller_inv_left(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_inv_left(X0,X1).
comp_inv_smaller_inv_overlap(X0,X1) :- inv_smaller(X0,X2),inv_overlap(X2,X1).
-comp_inv_smaller_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_inv_overlap(X0,X1).
comp_inv_smaller_inv_shape(X0,X1) :- inv_smaller(X0,X2),inv_shape(X2,X1).
-comp_inv_smaller_inv_shape(X0,X1) :- object(X0),object(X1),not comp_inv_smaller_inv_shape(X0,X1).
comp_inv_below_inv_left(X0,X1) :- inv_below(X0,X2),inv_left(X2,X1).
-comp_inv_below_inv_left(X0,X1) :- object(X0),object(X1),not comp_inv_below_inv_left(X0,X1).
comp_inv_below_inv_overlap(X0,X1) :- inv_below(X0,X2),inv_overlap(X2,X1).
-comp_inv_below_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_below_inv_overlap(X0,X1).
comp_inv_below_inv_shape(X0,X1) :- inv_below(X0,X2),inv_shape(X2,X1).
-comp_inv_below_inv_shape(X0,X1) :- object(X0),object(X1),not comp_inv_below_inv_shape(X0,X1).
comp_inv_left_inv_overlap(X0,X1) :- inv_left(X0,X2),inv_overlap(X2,X1).
-comp_inv_left_inv_overlap(X0,X1) :- object(X0),object(X1),not comp_inv_left_inv_overlap(X0,X1).
comp_inv_left_inv_shape(X0,X1) :- inv_left(X0,X2),inv_shape(X2,X1).
-comp_inv_left_inv_shape(X0,X1) :- object(X0),object(X1),not comp_inv_left_inv_shape(X0,X1).
comp_inv_overlap_inv_shape(X0,X1) :- inv_overlap(X0,X2),inv_shape(X2,X1).
-comp_inv_overlap_inv_shape(X0,X1) :- object(X0),object(X1),not comp_inv_overlap_inv_shape(X0,X1).
% Number of generated features: 3118
