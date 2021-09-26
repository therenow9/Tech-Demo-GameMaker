

//reset alarm
alarm[0]=room_speed*10;
//choose a distance to walk
random_movement=irandom_range(1,400);
//choose one of 4 cardinal directon
random_choose_direction=irandom_range(1,4);
wander_movement=0
//var idle=0
var wander_up=y+random_movement;
var wander_down=y-random_movement;
var wander_left=x-random_movement;
var wander_right=x+random_movement;

/*this code is getting there but i need way more testing
and loops and if statements to make it smooth and make sure
the sprites and animations stay smooth
*/
if (random_choose_direction==1){
	do {
		y+=1
	}
	until (y=wander_up)
	//wander_movement=wander_up;
}
if (random_choose_direction==2){
		do {
		y-=1
	}
	until (y=wander_down)
	//wander_movement=wander_down;
}
if (random_choose_direction==3){
		do {
		x-=1
	}
	until (x=wander_left)
	//wander_movement=wander_left;
}
if (random_choose_direction==4){
		do {
		x+=1
	}
	until (x=wander_right)
	//wander_movement=wander_right;
}

#region early code
//x=wander_movement;
//y=wander_movement;
//resetting the alarm
/*
if (x=dest_x and y=dest_y)
{
//if they are at destination return to start
move_towards_point(start_x,start_y,3);
}
else if (x=start_x and y=start_y)
{
//if they are at start go to a new destination

move_towards_point(dest_x,dest_y,3);
}
*/
#endregion

