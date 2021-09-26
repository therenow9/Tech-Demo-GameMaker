///@description cutscene_wait
///@arg seconds
function cutscene_wait(argument0) {

	//cutscene waits for x amount of seconds
	timer++

	if (timer >= argument0 * room_speed){//timers and triggers for cutscenes
		timer=0;
		cutscene_end_action();
	
	}


}
