event_inherited();


/*
var npc_up=spr_papyrus_forward
var npc_right=spr_papyrus_right
var npc_left=spr_papyrus_left
var npc_down=spr_papyrus_back


//Switch directions when talked to

if obj_player.sprite_index=spr_ness_west &&instance_exists(myTextbox){
sprite_index=npc_right;
}else if obj_player.sprite_index=spr_ness_east &&instance_exists(myTextbox){
	sprite_index=npc_left;
}else if obj_player.sprite_index=spr_ness_south &&instance_exists(myTextbox){
	sprite_index=npc_down;
}else {
	sprite_index=npc_up;
}
*/


/*code still needs work maybe use point.dir function in a case statement
 instead of a string of switch statements for sprite indexes
*/

if (instance_exists(obj_papyrus.myTextbox))
{
	image_speed=0;
		audio_pause_sound(snd_Dangerous_Caves_Earthbound);
		audio_pause_sound(snd_Spooky_boi_1_by_joey);
		//to stop audio from playing over itself multiple times giving it horrible quality
		{if!audio_is_playing(snd_bonetrousle_undertale){
		audio_play_sound(snd_bonetrousle_undertale,2,true);}}
	
}else{ audio_stop_sound(snd_bonetrousle_undertale);
	audio_resume_all();
	image_speed=1;
}

