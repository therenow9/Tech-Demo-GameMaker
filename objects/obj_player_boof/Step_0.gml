input_right=keyboard_check(ord("D"));
input_left=keyboard_check(ord("A"));
input_up=keyboard_check(ord("W"));
input_down=keyboard_check(ord("S"));
input_run=keyboard_check(ord("K"));
//Inputs to keep code clean and be able to reuse easier



globalvar frozen;//used to exit you from step event so player can't move
if instance_exists(obj_textbox) 
exit;


if (audio_is_playing(snd_Eight_Melodies_MOther))
{

}
if(frozen=true)//to control ocarina
{
exit;
}
//Following code used for all of my movement and ish
if(input_run)
{
	//if you are pressing k 
	var run=1.5;
	//run speed multiplies sprite and movement speeds by itself 
	
}
else
{
	run=1;
}
image_speed=0;

if(input_left)
{
	x-=4*run;
	sprite_index=spr_boof_left;
image_speed=1*run;
}

if(input_right)
{
	//x+=4*run;
	sprite_index=spr_boof_right;
	image_speed=1*run;
}
if(input_up)
{
y-=4*run;
image_speed=1*run;
sprite_index=spr_boof_up;
}
if(input_down)
{
y+=4*run;
	sprite_index=spr_boof_down;
	image_speed=1*run;
}
 if(input_down) && (input_right)//diagnol movement
{
	sprite_index=spr_boof_rightdown;
	image_speed=1*run;
	}
	if(input_down) && (input_left)
{
	sprite_index=spr_boof_leftdown;
	image_speed=1*run;
	}
if(input_up) && (input_right)
{
	sprite_index=spr_boof_rightup;
	image_speed=1*run;
	}
if(input_up) && (input_left)
{
	sprite_index=spr_boof_leftup;
	image_speed=1*run;
	}
