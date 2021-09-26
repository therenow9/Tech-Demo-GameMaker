
/// @description drawing an entire sprite sheet with code
//used for drawing custom charecters and spritesheets with code
if (hInput!=0 or vInput!=0){
	y_frame=dir/45;//45 degree increments
		//increment frame for animation
	x_frame +=anim_speed/room_speed;
if (x_frame >=anim_length) x_frame=0; //keep in check so it dosen't start drawing nothing by slowly offsetting each sprite
} else { 
	x_frame=0.9;//transition from standing still to walking frame 0=0.9
}

var xx=x-x_offset;//anchored at player's feet
var yy=y-y_offset;

//draw sprite part


draw_sprite_part(spr_spritesheet,
0,
floor(x_frame)*frame_size,
y_frame*frame_size,
frame_size,
frame_size,
xx,
yy
);

/*
var interval=8
if(alarm[1] % interval) <= interval/2 {draw_self();}//iframes stuff


