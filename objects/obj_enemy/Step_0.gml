/// @description states and collisions
//image_angle=direction;
if (enemy_hp <=0)
{
	instance_destroy();
	
}
#region state machine
switch (state)//switch between states
{
	case state_enemy.idle:
	{
		
	moveX=0;
	moveY=0;
	
	if (distance_to_object(obj_player) < 250) state=state_enemy.chase;
	}
	break;
	case state_enemy.chase:
	{
	dir_x=sign(obj_player.x-x);	//go to player x coordinate
	dir_y=sign(obj_player.y-y);
	moveX=dir_x*spd;
	moveY=dir_y*spd;
	if (distance_to_object(obj_player) > 270) state=state_enemy.idle;
	}
	break;
}
#endregion

#region collision code
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
#endregion

#region temporary sprite code
if (moveX >0) {
	sprite_index=spr_zombie_right;
	//image_xscale=1;
}
if (moveY <0) {
	sprite_index=spr_zombie_up;
	//image_xscale=1;
}
if (moveX <0) {
	sprite_index=spr_zombie_left;
	//image_xscale=1;
}
if (moveY >0) {
	sprite_index=spr_zombie_down;
	//image_xscale=1;
}
#endregion

