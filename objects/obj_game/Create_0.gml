/// @description Initialize variables and all that shit
// You can write your code in this editor

randomize();//allow for truly random turn off for debugging

//initialize ds list not to pause on
global.list_no_pause=ds_list_create();
ds_list_add(global.list_no_pause,rm_intro,rm_start_menu,rm_game_over)




var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(_view_width, _view_height);

alarm[0]=90*room_speed;//90 second menu screen time out

scr_states();

//health
global.hp=100;
global.max_hp=100;

global.cutscene=false;
