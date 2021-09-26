//take you to death screen when you die
if (global.hp<0) ||(global.hp=0)
{
room_goto(rm_game_over)
}

//keep health in order
if(global.hp>global.max_hp)
{
	global.hp=global.max_hp
}
/*
if (room=rm_hallway and (room_previous(room)=rm_cave))
{
	instance_create_layer(502,888,"instances",obj_player)
}