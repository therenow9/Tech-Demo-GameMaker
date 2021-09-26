// Inherit the parent event
event_inherited();
//this code is still buggy but it's supposed to pause new pork bossa then resume after the melodies are done needs more testing
if (!audio_is_playing(snd_Eight_Melodies_MOther)) &&(global.music=true){
var dr = detection_radius;
if ((keyboard_check_pressed(interact_key))&&(point_in_rectangle(playerobject.x, playerobject.y, x-dr, y-dr, x+dr, y+dr)))
{

		audio_play_sound(snd_Eight_Melodies_MOther,1,false);
	frozen=true;
}else{audio_stop_sound(snd_Eight_Melodies_MOther);
}
}

if (audio_is_playing(snd_Eight_Melodies_MOther)){
audio_pause_sound(snd_new_pork_bossa_Mother_3)
}else{
	audio_resume_sound(snd_new_pork_bossa_Mother_3);
}
		
//code is broken, background music won't resume and step event gets permanently exited

	
	
	


