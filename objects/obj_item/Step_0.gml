/// @description add to inv of player

if (place_meeting(x,y,obj_player)){
	ds_list_add(global.list_inv,item_name);//adds item to inv
	instance_destroy();//removes instance
}

