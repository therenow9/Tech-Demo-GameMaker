//Time out to go back to intro screen after 90 seconds of idle at menu
if room=rm_start_menu
	{
	alarm[0]=(room_speed*90);
	room_goto(rm_intro)
	}

