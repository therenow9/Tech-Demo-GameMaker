///@description sound stuff/music controller
//this code is for bacground room music,switch statement might be better?
#region audio controller
if (room=rm_spawn)
{
	audio_stop_all();
	audio_stop_sound(snd_Mother_Earth_Mother);
	audio_stop_sound(snd_menu_Link_to_the_past);
	audio_stop_sound(snd_Dangerous_Caves_Earthbound);
	audio_play_sound(snd_Twoson_Earthbound,0,true);
}
if (room=rm_cave)
{
	audio_stop_all();
audio_stop_sound(snd_Twoson_Earthbound);
audio_play_sound(snd_Spooky_boi_1_by_joey,1,false);
	if !(audio_is_playing(snd_great_picture_earthbound)){
audio_play_sound(snd_Dangerous_Caves_Earthbound,0,true);
	}
}
if (room=rm_the_legend)
{
audio_stop_all();
audio_play_sound(snd_Undertale_Undertale,0,true);
}
if (room=rm_test_debug)
{
audio_stop_all();
audio_play_sound(snd_new_pork_bossa_Mother_3,1,true);
//if (!audio_is_playing(snd_Eight_Melodies_MOther)){audio_play_sound(snd_new_pork_bossa_Mother_3,0,true);}
	//needs more debugging but ive already wasted enough time on this for now
}
if (room=rm_disco)
{
audio_stop_all();
audio_play_sound(snd_Death_by_glamour_Undertale,0,true);

}
if (room=rm_start_menu){
	audio_stop_all();
	audio_play_sound(snd_menu_Link_to_the_past,0,true);
}
if (room=rm_intro){
	audio_stop_all();
	audio_play_sound(snd_Mother_Earth_Mother,0,true);
}
if (room=rm_test_movement){
	audio_stop_all();
	audio_play_sound(snd_Mother_Earth_Mother_3,0,true);
}
if(room=rm_hallway){
	//audio_stop_all();
	audio_stop_sound(snd_Mother_Earth_Mother);
	audio_stop_sound(snd_attic_dungeon_mother_3);
	audio_stop_sound(snd_Dangerous_Caves_Earthbound);
	audio_play_sound(snd_unsettling_opponent_earthbound,0,true);
}
if(room=rm_fight){
	audio_stop_all();
	audio_play_sound(snd_attic_dungeon_mother_3,0,true);
}
if(room=rm_game_over){
	audio_stop_all();
	audio_play_sound(snd_stand_up_Mother_3,0,true);
}
#endregion

