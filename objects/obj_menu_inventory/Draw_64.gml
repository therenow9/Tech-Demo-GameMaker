/// @description 

if(keyboard_check_pressed(vk_tab))active=!active;//if active = true menu shows up
else exit;//if not exit this event

	
	if (active){
		scr_9_slice_box_stretch(spr_9_slice,32,32,mouse_x,mouse_y)
	var w=0,h=0;
	for(var i=0; i<ds_list_size(global.list_inv); i++){
		var btn=instance_create_depth(64+(w*96),164+(h*96),0,obj_button);//y=32
		btn.item_id=global.list_inv[|i];//assigns item value
		btn.inv_id=i;//indexes button to take it
		w ++;//move to next line if previous is filled
		if(w>=(floor(window_get_width()/96))){
			w=0; h++;	
		}
	}
}
else
//if deactivate remove the menu buttons
if (instance_exists(obj_button)){
	with(obj_button) instance_destroy();
}
