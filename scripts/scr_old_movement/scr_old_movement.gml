function scr_old_movement() {

#region Movement and collision code
	if (instance_exists(obj_shield))exit;
	if(input_run)
	{//if you are pressing k 
		 run=1.5;
		//run speed multiplies sprite and movement speeds by itself 
	}
	else	{run=1;
	}
		image_speed=0;

	spd=4*run;//how fast player is moving

	//Inputs to keep code clean and be able to reuse easier
	//Reset MOve variables after collisioncheck

	moveX=0;
	moveY=0;


	//Following code used for all of my movement and ish
	/*place_free used if palce is free then move other wise don't
	good collsion code but the solid checkbox must be marked for it to work
	*/

	if(input_left)&& place_free(x-collision_Spd,y)
	{
	moveX=-spd;
		sprite_index=spr_ness_west;
	image_speed=1*run;


	}

	if(input_right)&&place_free(x+collision_Spd,y)
	{
	moveX=spd;
		sprite_index=spr_ness_east;
		image_speed=1*run;
	
	}
	if(input_up)&&place_free(x,y-collision_Spd)
	{
		moveY=-spd;
	image_speed=1*run;
	sprite_index=spr_ness_north;

	}
	if(input_down)&&place_free(x,y+collision_Spd)
	{
		moveY=spd;
		sprite_index=spr_ness_south;
		image_speed=1*run;
	
	}
	 if(input_down) && (input_right)//diagnol movement
	{
	
		sprite_index=spr_ness_southeast;
		image_speed=1*run;

	}
	
	 if(input_down) && (input_left)
	{
		sprite_index=spr_ness_southwest;
		image_speed=1*run;
		}
	
	 if(input_up) && (input_right)
	 {
	
		sprite_index=spr_ness_northeast;
		image_speed=1*run;
		}
	if(input_up) && (input_left)
	{
		sprite_index=spr_ness_northwest;
		image_speed=1*run;
	
		}


	x+=moveX
	y+=moveY
	//add movement after collsion check
#endregion






}
