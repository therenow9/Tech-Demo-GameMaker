/// @description 
image_speed=0;
if(moveX !=0){//Only runs this code when movement is happening good for optimization
image_speed=1;

var collisionH=place_meeting(x+moveX,y,obj_collision or obj_player);
if(collisionH){
	repeat(abs(moveX)){
		if(!place_meeting(x+sign(moveX),y,obj_collision or obj_player)){x+=sign(moveX);}
		else {break;}
	}
	moveX=0;
	}
}

//Vertical
if(moveY !=0){//Only runs this code when movement is happening good for optimization
image_speed=1;
var collisionH=place_meeting(x,y+moveY,obj_collision or obj_player);
if(collisionH){
	repeat(abs(moveX)){
		if(!place_meeting(x,y+sign(moveY),obj_collision or obj_player)){y+=sign(moveY);}
		else {break;}
	}
	moveY=0;
	}
}
x+=moveX;
y+=moveY;


