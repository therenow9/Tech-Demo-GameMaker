///@description create_box_at_mouse
function create_box_at_mouse() {

	//creates box and ends the scene on mouse click

	if(mouse_check_button_pressed(mb_left)){
		instance_create_layer(mouse_x,mouse_y,"Instances",obj_box);
		cutscene_end_action();
	}


}
