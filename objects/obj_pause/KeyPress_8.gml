/// @description pause button
//pause the game
if ((global.pause==0) and room!=global.list_no_pause)//not paused
{
	global.pause=1;
	instance_deactivate_all(true);
	audio_pause_all();
	//create menu objects here
}
else//unpause the game
{
	global.pause=0;
	instance_activate_all();
	audio_resume_all();
	//deactivate pause menu instances
}