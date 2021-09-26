//event_inherited();

//Starting positions to return to for wandering so the npcs don't wander too far
start_x=xstart;
start_y=ystart;

//dest_x=start_x + irandom_range(-400,400)
//dest_y=start_y + irandom_range(-300,300)
//destinations that are close to the starting point of the object

alarm[0]=room_speed*10;

random_movement=irandom_range(1,400);
random_choose_direction=irandom_range(1,4);
wander_movement=0
var local wander_up=y+random_movement;
var local wander_down=y-random_movement;
var local wander_left=x-random_movement;
var local wander_right=x+random_movement;

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
