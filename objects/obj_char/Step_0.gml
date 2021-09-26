#region normal stuff
if (instance_exists(obj_textbox))//Freeze the player when they are talking to someone
{
image_speed=0;
exit;
}

scr_get_inputs();

//script for walking code
//scr_movement()
//code and script for ladder animation
if (place_meeting(x,y,obj_ladder))
{
	scr_ladder();
}
scr_projectiles_shield();

#endregion

hInput=input_right-input_left;
vInput=input_down-input_up;

if (hInput!=0 or vInput!=0){
	dir=point_direction(0,0,hInput,vInput);
	moveX=lengthdir_x(spd,dir);
	moveY=lengthdir_y(spd,dir);

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

