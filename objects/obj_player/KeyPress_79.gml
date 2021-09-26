///@description shield event stuff
//create shield at the right angle when O is pressed
var shield=instance_create_layer(x+global.shield_x,y+global.shield_y,"Projectiles",obj_shield)
shield.image_angle=global.shield_angle
	

//change ness?sprite index and speed so he is standing still and play the shield sound
if (instance_exists(obj_shield))
{
	if !(audio_is_playing(snd_shielding))
	{
		audio_sound_pitch(snd_shielding,random_range(0.9,1.1))
	audio_play_sound(snd_shielding,2,true);
	}
	obj_player.image_index=1
	obj_player.image_speed=0
}
