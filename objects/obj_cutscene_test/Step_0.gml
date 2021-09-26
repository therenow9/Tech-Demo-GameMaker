/// @description 
obj_papyrus.image_speed=0;
obj_poo.image_speed=0
with (obj_cameraguy)
{
	if(x=736 and y=384 and i=0)
	{
		image_index=0;
		i+=1
		create_dialogue("Oh, hello, I am the camera man, i take pictures INSTANTANEOUSLY, however, Jeremy is lazy as a shit and hasnt programmed in my camera yet, (*sighs), oh well hopefully later.... bye i guess",mySpeaker=-1);
		path_speed=0;
	}
		if (keyboard_check(ord("L")) and instance_exists(obj_textbox))
		{
			alarm[1]=60
			y=383
			path_flip(path_camera_guy)//turn path around after textbox is read
			path_position=0;
			path_speed=2;
			path_add_point(path_camera_guy,736,-33,1)
		}
	if (y=-33)//end of path end of cutscene
	{
		global.cutscene=false
		audio_stop_sound(snd_great_picture_earthbound);
		audio_play_sound(snd_Dangerous_Caves_Earthbound,0,true);
		instance_destroy(obj_cameraguy);
		instance_destroy(id);
		exit;
	}
}	