///@description cutscene_end_action
function cutscene_end_action() {

	scene++;
	if (scene > array_length_1d(scene_info)-1){
		instance_destroy();//make sure it dosen't go over	
		exit;
	}

	event_perform(ev_other,ev_user0);


}
