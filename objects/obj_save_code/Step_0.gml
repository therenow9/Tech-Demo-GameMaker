#region early walk code pre perfect collisions
if instance_exists(obj_textbox)//Freeze the player when they are talking to someone
//image_speed=0;
exit;
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
//moveX=-spd;
	sprite_index=spr_ness_west;
image_speed=1*run;
}

if(input_right)
{
//moveX=spd;
	sprite_index=spr_ness_east;
	image_speed=1*run;
}
if(input_up)
{
	//moveY=-spd;
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
x+=moveX
//Vertical
if(moveY !=0){
if(place_meeting(x,y+moveY,obj_collision)){
		while(!place_meeting(x,y+sign(moveY),obj_collision)){
			y+=sign(moveY);}
	moveY=0
	}
}
y+=moveY;
	//move the player back
//Apply Movement

//if collision check passes add movement
#endregion pre perfect collision walk code
#region random ocarina shit
globalvar frozen;//used to exit you from step event so player can't move
if instance_exists(obj_textbox) 
exit;


if (audio_is_playing(snd_Eight_Melodies_MOther)){

}
if(frozen=true)//to control ocarina
{
exit;
}
#endregion f
#region early wander code

start_x=xstart;
start_y=ystart;

dest_x=start_x + irandom_range(-400,400)
dest_y=start_y + irandom_range(-300,300)

move_towards_point(dest_x,dest_y,5)

//move towards destination at 5 pixels per second

//4 directional random movement code



if (random_choose_direction==1){
	wander_movement=wander_up;
}
if (random_choose_direction==2){
	wander_movement=wander_down;
}
if (random_choose_direction==3){
	wander_movement=wander_left;
}
if (random_choose_direction==4){
	wander_movement=wander_right;
}
#endregion
