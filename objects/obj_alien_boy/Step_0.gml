event_inherited();
/*
//Set these if this Npc has different directions
var npc_up=
var npc_right=
var npc_left=
var npc_down=


//Switch directions when talked to
if obj_player.sprite_index=spr_ness_west &&instance_exists(myTextbox){
sprite_index=npc_right;
}else if obj_player.sprite_index=spr_ness_east &&instance_exists(myTextbox){
	sprite_index=npc_left;
}else if obj_player.sprite_index=spr_ness_south &&instance_exists(myTextbox){
	sprite_index=npc_down;
}else {
	sprite_index=npc_up
}
