/// @description 
//mouse hover
if(position_meeting(mouse_x,mouse_y,id)) image_alpha=0.8;
else image_alpha=1;

//do something if left mouse is pressed:

if(position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)){
//add code here to make item do something ex health or armor
{
	if (item_id=="apple") global.hp +=10;
	else if (item_id=="pear") {global.hp+=20;}
	else if (item_id=="banana"){global.hp+=15;}
}	
	
	ds_list_delete(global.list_inv,inv_id);
	//removes item from inventory
	if (instance_exists(obj_button)) with(obj_button) instance_destroy();
	obj_menu_inventory.active=false;
	
	}
	
//scroll
y=ystart-obj_menu_inventory.y_scroll;

