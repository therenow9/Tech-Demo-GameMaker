/// @description 
if (global.pause)//draw pause menu
{
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_rectangle(0,0,camera_get_view_width(view_current),camera_get_view_height(view_current),0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_dialogue);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text_transformed(camera_get_view_width(view_current)/2,camera_get_view_height(view_current)/2,"Paused",4,4,0);
	draw_set_color(c_black);
}
