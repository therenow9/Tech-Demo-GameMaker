/// @description draw my inventory stuff
if(active)
{
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_set_color(c_white)
		draw_set_font(fnt_dialogue);
		draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()/10,"My Inventory",3.5,3.5,0);
}