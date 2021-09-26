///@description move_character
///@arg obj
///@arg x
///@arg y
///@arg relative?
///@arg spd
function cutscene_move_character(argument0, argument1, argument2, argument3, argument4) {

	var obj=argument0,relative=argument3,spd=argument4;

	if (x_dest==-1){
		if(!relative){
			x_dest=argument1;
			y_dest=argument2;
		} else {
			x_dest=obj.x+ argument1;
			y_dest=obj.y+ argument2;
		}
	}

	var xx =x_dest;
	var yy =y_dest;

	with (obj){
	//sprite_index=spr_walk;//define in create event of object



			if(point_distance(x,y,xx,yy) >=spd){
			var dir= point_direction(x,y,xx,yy);
			var ldirx= lengthdir_x(spd,dir);	//direction to move along axis
			var ldiry= lengthdir_y(spd,dir);

		#region direction change during cutscene
	//finally got this to work need to setup a system though
		if(ldirx !=0){
			if (direction >= 306 or direction <=45) {
				sprite_index=spr_walk_right;
				image_xscale=image_xscale;
			}
				if (direction >= 136 and direction <=225) {
				sprite_index=spr_walk_left;
				image_xscale=image_xscale;
			}
		}
			if(ldiry!=0){	
			if (direction >= 46 or direction <=135) {
				sprite_index=spr_walk_up;
				image_xscale=image_xscale;
			}
			 if (direction >= 226 and direction <=305) {
				sprite_index=spr_walk_down;
				image_xscale=image_xscale;
			 }
		}


#endregion	
			
			//if(ldirx !=0) {image_xscale=sign(ldirx);}
		
		
			x+=ldirx;
			y+=ldiry;	
		

			
			} else {
			//sprite_index=sprite_index;
			//sprite_index=spr_idle;//define in object's create event
		
			x=xx;
			y=yy;
		

			
		
			with(other ){
				x_dest=-1;
				y_dest=-1;
				cutscene_end_action();	
			}
		}
	}
	





}
