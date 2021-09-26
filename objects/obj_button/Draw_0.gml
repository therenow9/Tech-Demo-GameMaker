/// @description 
draw_self();
draw_sprite(asset_get_index("spr_" + item_id),0, x , scr_wave(y-10,y-7,2,0));//x+32,y+32
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x,y+10,item_id);//draw name of item under


//draws item at center of button
//add scr wave with i random range to give floating effect