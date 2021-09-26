//Draw Game over Text
draw_text_transformed_color(55,75,"GAME OVER",2,2,0,c_white,c_white,c_white,c_white,1);

draw_set_halign(fa_left); //Horizontal alignment
draw_set_valign(fa_middle);  //Vertical alignment
draw_set_font(Font_Menu_game_over);
menu_x=40			//room_width/2; 
menu_y=200;
for (i=0;i<array_length_1d(menu);i++)
{
    draw_set_color(c_black);//Shadow color
    draw_text(menu_x+2,menu_y+2,string_hash_to_newline(menu[i]));//Shadow
    draw_set_color(c_white); //Text color    
    if point_in_rectangle(mouse_x,mouse_y,menu_x-string_width(string_hash_to_newline(menu[i]))/2,menu_y-string_height(string_hash_to_newline(menu[i]))/2,menu_x+string_width(string_hash_to_newline(menu[i]))/2,menu_y+string_height(string_hash_to_newline(menu[i]))/2)
    {
        draw_set_color(c_aqua); //Text color (Mouse tip)
        if mouse_check_button_pressed(mb_left)    
        {
            switch(i)
            {
                case 0://Try Again
                    game_restart(); //menu[0]
                break;
                case 1: //menu[1] Give Up?
					game_end();
                break;
                case 2: //menu[2]
                break;
                case 3: 
				//url_open("https://soundcloud.com/gro-grova");
                   //menu[3]
                break;
                case 4: 
                   // game_end(); //menu[4]
                break;
            }
        }
    }
    draw_text(menu_x,menu_y,string_hash_to_newline(menu[i]));//Text
    menu_y+=string_height(string_hash_to_newline(menu[i]))+line_spacing;
}


