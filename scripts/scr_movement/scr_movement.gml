function scr_movement() {
	//if (global.cutscene=true) exit;
	if (instance_exists(obj_shield))exit;
	//Update Input
	input_right=keyboard_check(ord("D"));
	input_left=keyboard_check(ord("A"));
	input_up=keyboard_check(ord("W"));
	input_down=keyboard_check(ord("S"));
	input_run=keyboard_check(ord("K"));

	if(input_run)
	{//if you are pressing k 
		var run=1.5;
		//run speed multiplies sprite and movement speeds by itself 
	}
	else	{run=1;}
	image_speed=0;

	spd=4*run;//how fast player is moving

	//Inputs to keep code clean and be able to reuse easier
	//Reset MOve variables after collisioncheck

	moveX=0;
	moveY=0;

	//-----Intended movement
	moveX=(input_right-input_left)*spd;
	moveY=(input_down-input_up)*spd;

	//Following code used for all of my movement and ish

	if(input_left)
	{
	
		sprite_index=spr_ness_west;
	image_speed=1*run;
	}

	if(input_right)
	{
		sprite_index=spr_ness_east;
		image_speed=1*run;
	}
	if(input_up)
	{

	image_speed=1*run;
	sprite_index=spr_ness_north;
	}
	if(input_down){
		//moveY=spd;
		sprite_index=spr_ness_south;
		image_speed=1*run;
	}
	 if(input_down) && (input_right)//diagnol movement
	{
		sprite_index=spr_ness_southeast;
		image_speed=1*run;
		}
		if(input_down) && (input_left){
		sprite_index=spr_ness_southwest;
		image_speed=1*run;
		}
	if(input_up) && (input_right){
		sprite_index=spr_ness_northeast;
		image_speed=1*run;
		}
	if(input_up) && (input_left){
		sprite_index=spr_ness_northwest;
		image_speed=1*run;
		}


	//

	//Collision checks
	//Horizontal
	if(moveX !=0){//Only runs this code when movement is happening good for optimization
	if(place_meeting(x+moveX,y,obj_collision)){
			while(!place_meeting(x+sign(moveX),y,obj_collision)){
				x+=sign(moveX);}	
		moveX=0;
		}
	}
	x+=moveX;
	//Vertical
	if(moveY !=0){
	if(place_meeting(x,y+moveY,obj_collision)){
			while(!place_meeting(x,y+sign(moveY),obj_collision)){
				y+=sign(moveY);}
		moveY=0
	
		}
	}
	y+=moveY;




}
