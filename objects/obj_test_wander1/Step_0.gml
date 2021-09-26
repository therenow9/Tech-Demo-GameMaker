/// @description 

var random_movement=irandom_range(1,400);
var random_choose_direction=irandom_range(1,4);
var done=false

var wander_up=ystart+random_movement;
var wander_down=ystart-random_movement;
var wander_left=xstart-random_movement;
var wander_right=xstart+random_movement;
while (done=false){
if (random_choose_direction==1){
{
	do	{y+=1}
	until (y=(place_free(x,wander_up)))
	}
	if (y=wander_up) done=true
}
else if (random_choose_direction==2){
{
	do	{y-=1}
	until (y=(place_free(x,wander_down)))
	}
	if (y=wander_down) done=true
}
else if (random_choose_direction==3){
{
	do	{x+=1}
	until (y=(place_free(x,wander_left)))
	}
	if (y=wander_left) done=true
}
else if(random_choose_direction==4){
{
	do	{x-=1}
	until (y=(place_free(x,wander_right)))
	}
	if (y=wander_right) done=true
}
}