// Inherit the parent event
//event_inherited();
{
//choose a distance to walk
random_movement=irandom_range(1,400);
//choose one of 4 cardinal directon
random_choose_direction=irandom_range(1,4);
wander_movement=0
//var idle=0
var wander_up=ystart+random_movement;
var wander_down=ystart-random_movement;
var wander_left=xstart-random_movement;
var wander_right=xstart+random_movement;

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
}