/// @description FC npc wander code
//alarm can either resets randomly between 2.5 and 5 seconds

//set move variables to nothing
moveX=0
moveY=0

var idle=choose(0,1);
if(idle==false){
	var dir=choose(1,2,3,4);//choose a direction
	switch(dir){
		case 1:moveX=-spd sprite_index=spr_lady_left; break;
		case 2:moveX=spd sprite_index=spr_lady_right; break;
		case 3:moveY=-spd sprite_index=spr_lady_down; break;
		case 4:moveY=spd sprite_index=spr_lady_forward; break;
		//case 5;
	}
}
alarm[1]=irandom_range(2.5, 5)*room_speed;
