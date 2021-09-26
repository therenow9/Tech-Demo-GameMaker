//take health away from player whwn hit with attack




	
if obj_player.invincible==false
	{
	instance_destroy();	
	with (obj_player){
	global.hp-=15
	audio_play_sound(snd_damage,0,false);
	obj_player.invincible=true;
	obj_player.alarm[1]=1.5*room_speed;//set seconds to be invincible for
	//obj_player.alarm[1]=game_get_speed(gamespeed_fps);//60 fps
	}

}else if (obj_player.invincible==true)
{
	mask_index=spr_empty
}

