/// @description 

camera_set_view_size(camera,view_width,view_height);

if (instance_exists(obj_player))
{
	var _x=obj_player.x-view_width/2;
	var _y=obj_player.y-view_height/2;
	//var _x=clamp(obj_player.x-view_width/2,0,room_width-view_width);//keep cameras in room
	//var _y=clamp(obj_player.y-view_height/2,0,room_height-view_height);

//	var cur_x=camera_get_view_x(view);//camera smoothing
	//var cur_y=camera_get_view_y(view);
	
	//var _spd=1;
camera_set_view_pos(camera,_x,_y);
					//	lerp(cur_x,_x,_spd),
					//	lerp(cur_y,_y,_spd));
	
}