///@description cutscene_instance_destroy_nearest
///@arg x
///@arg y
///@arg obj
function cutscene_instance_destroy_nearest(argument0, argument1, argument2) {

	var inst=instance_nearest(argument0,argument1,argument2);

	cutscene_instance_destroy(inst);


}
