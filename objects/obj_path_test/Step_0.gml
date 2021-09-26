/// @description sprite animation code for paths

//this makes it look cleaner instead of just straight increments of 45


if (direction >= 306 or direction <=45) {
	sprite_index=spr_ness_west;
	image_xscale=-1;
}
if (direction >= 46 and direction <=135) {
	sprite_index=spr_ness_north;
	image_xscale=1;
}
if (direction >= 136 and direction <=225) {
	sprite_index=spr_ness_west;
	image_xscale=1;
}
if (direction >= 226 and direction <=305) {
	sprite_index=spr_ness_south;
	image_xscale=1;
}