if (instance_exists(obj_textbox))//Freeze the player when they are talking to someone
{
image_speed=0;
exit;
}

scr_get_inputs();

//script for walking code
scr_movement();

//code and script for ladder animation
if (place_meeting(x,y,obj_ladder))
{
	scr_ladder();
}
scr_projectiles_shield();

var xx_min=x+lengthdir_x(-10,sin(direction))
var xx_max=x+lengthdir_x(10,sin(direction))
var yy_min=y+23+lengthdir_y(-40,sin(direction))//keep it at player's feet
var yy_max=y+23+lengthdir_y(-30,sin(direction))

//dust cloud when running
if ((moveX!=0 or moveY!=0) and input_run)
	{
		part_emitter_stream(part_sys_walk,part_walk_emitter,part_walk,3);//streams particles every step of the game
		part_emitter_region(part_sys_walk,part_walk_emitter,xx_min,xx_max,yy_min,yy_max,ps_shape_ellipse,ps_distr_gaussian);//tells emitter where to shoot particles and distribution. small cluster or big explosion
	}else {
		part_emitter_clear(part_sys_walk,part_walk_emitter)
	}

//inv test

if (mouse_check_button_pressed(mb_left)){//create items at mouse
    instance_create_depth(mouse_x, mouse_y, 0, obj_item);
}


