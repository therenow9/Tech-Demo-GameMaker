function scr_projectiles_shield() {
	//shield object
#region//shield and projectile stuff
	/*Make sure the siheld appears at the right place in front of the player
	also does this for fire projectiles as well
	*/
	switch(sprite_index)
	{
		case spr_ness_south:

		global.shield_x=0;
		global.shield_y=35;
		global.shield_angle=0;
		global.fire_direction=270
		break;
	
		case spr_ness_north:

		global.shield_x=0;
		global.shield_y=-40;
		global.shield_angle=0;
		global.fire_direction=90
		break;
	
		case spr_ness_east:

		global.shield_x=30;
		global.shield_y=0;
		global.shield_angle=90;
		global.fire_direction=0
		break;
	
		case spr_ness_west:

		global.shield_x=-30;
		global.shield_y=0;
		global.shield_angle=90;
		global.fire_direction=180
		break;
	
		case spr_ness_northeast:

		global.shield_x=23;
		global.shield_y=-35;
		global.shield_angle=135;
		global.fire_direction=45
		break;
	
		case spr_ness_northwest:

		global.shield_x=-23;
		global.shield_y=-35;
		global.shield_angle=225;
		global.fire_direction=135
		break;
	
		case spr_ness_southeast:

		global.shield_x=23;
		global.shield_y=35;
		global.shield_angle=45;
		global.fire_direction=315
		break;
	
		case spr_ness_southwest:

		global.shield_x=-23;
		global.shield_y=35;
		global.shield_angle=315;
		global.fire_direction=225
		break;
	
	}
	#endregion
		//Code to fire projectiles
	

	
		if can_shoot=true && !(instance_exists(obj_shield)){
		if keyboard_check_pressed(ord("P")){
			can_shoot=false;//add firing delay
			obj_player.alarm[0]=10;//amount of frames to delay
			var fire=instance_create_layer(x+global.shield_x,y+global.shield_y,"Projectiles",obj_attack)
			fire.direction=global.fire_direction
			audio_sound_pitch(snd_attack,random_range(0.9,1.1));
			audio_play_sound(snd_attack,0,false)
		}
		}
		//so you can't shield and shoot projectiles when talking to npcs
		if (instance_exists(obj_textbox))
		{
			exit;
		}



}
