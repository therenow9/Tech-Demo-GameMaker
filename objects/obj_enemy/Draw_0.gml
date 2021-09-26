/// @description 
image_xscale=2;
image_yscale=2;
image_angle=0;
{
	pc=(enemy_hp/enemy_max_hp) *100
	draw_self();
	
draw_healthbar(x-15, y-25, x+15, y-20,pc, c_black, c_red,c_green, 0, true, true)

	draw_set_font(fnt_health_small);
	draw_text_transformed_color(x-10,y-25,+string(enemy_max_hp)+"/"+string(enemy_hp),1,1,0,c_white,c_white,c_white,c_white,1)
}
