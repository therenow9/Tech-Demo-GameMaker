/// @description 
	
if obj_player.invincible==false
	{
	with (obj_player){
	global.hp-=20
	audio_play_sound(snd_damage,0,false);
	obj_player.invincible=true;
	obj_player.alarm[1]=1.5*room_speed;//set seconds to be invincible for
	//obj_player.alarm[1]=game_get_speed(gamespeed_fps);//60 fps

	}
	}
		obj_player.speed=-10;
	obj_player.direction=place_free(other.direction,other.direction);
	obj_player.alarm[3]=20;//knockback


spd=-1;
direction=other.direction
alarm[0]=40;
