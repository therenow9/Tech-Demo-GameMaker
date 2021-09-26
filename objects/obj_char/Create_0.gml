/// @description Insert description here
// You can write your code in this eifv
#region sprites with one sheet in code
x_offset=8;
y_offset=16;
frame_size=17;

x_frame=0;
y_frame=0;

anim_length=4;
anim_speed=4;
dir=0;
#endregion
scr_get_inputs();


if(input_run)
{//if you are pressing k 
	 run=1.5;
	//run speed multiplies sprite and movement speeds by itself 
}
else	{run=1;}
image_speed=0;
spd=4*run;

collision_Spd=spd-run+3;


invincible=false;
can_shoot=true;
