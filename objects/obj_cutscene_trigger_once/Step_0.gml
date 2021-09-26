/// @description 
if(!instance_exists(obj_cutscene)){//prevent multiple cutscenes
	if (place_meeting(x,y,obj_player)){
		create_cutscene(t_scene_info);
		instance_destroy();
	}
}