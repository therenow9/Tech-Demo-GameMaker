///@description healthbar and Gui
//displays health as 100
var pc=(global.hp/global.max_hp)*100;
//Draw haelthbar to screen and display your health
if (room!=global.list_no_pause)
	{
	//Make healthbar slightly transparent with alpha
		//draw_set_alpha(0.5)
	draw_set_alpha(0.5);
	draw_healthbar(10, 10, 175, 30, pc, c_black, c_red,c_lime, 0, true, true)
	draw_set_alpha(1);
	draw_set_color(c_white)
	draw_set_font(fnt_health);
	draw_set_halign(fa_left);//fix bug where text goes off the heakth bar
	draw_set_valign(fa_top);//^
	draw_text_transformed_color(20,12,"HEALTH:"+string(global.hp)+"/"+string(global.max_hp),1,1,0,c_white,c_white,c_white,c_white,1)
	}
