///@description
///@arg obj
///@arg sprite
function cutscene_change_sprite(argument0, argument1) {

	//if you want this cutscene to permanently effect your game worls ex: health upgrade


	with (argument0){
		sprite_index=argument1
	}

	cutscene_end_action();




}
