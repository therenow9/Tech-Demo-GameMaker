/// @description 
par_speaker.image_speed=0;
obj_player.image_speed=0;
global.cutscene=true;
audio_stop_sound(snd_Dangerous_Caves_Earthbound);

if (!audio_is_playing(snd_great_picture_earthbound))
{
	audio_play_sound(snd_great_picture_earthbound,0,true);
}
//cutscene for camera guy
with (obj_cameraguy){
path_start(path_camera_guy,1,path_action_continue,true);
}
//make camera guy stop when he touches the floorr

