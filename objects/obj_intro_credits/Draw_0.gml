
//Introduction Text
var Intro_text_1="Produced By Helix Studios"
var Intro_text_2=""
var Intro_text_3=""
var Intro_text_4=""

draw_set_halign(fa_left);
//set to horizontal left alignment

draw_text(157,154,Intro_text_1);

var text_controls=string_hash_to_newline("CONTROLS:      Move: WASD   	 Run: K	     Talk/Interact: L#	Energy Shield:O        Attack:P")
draw_text_transformed(50,637,text_controls,2,2,0);