///@description
///@arg obj
///@arg var_name_as_string
///@arg value
function cutscene_change_variable(argument0, argument1, argument2) {

	//if you want this cutscene to permanently effect your game worls ex: health upgrade


	with (argument0){
		variable_instance_set(id,argument1,argument2);
	}

	cutscene_end_action();




}
