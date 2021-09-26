///@description code for states and stuff
function scr_states() {
	//state machines
	enum state_enemy
	{
		idle,
		chase
	}

	enum state_npc
	{
		idle,
		wander,
		cutscene
	}

	/*
	sprites_array[state_npc.idle]=spr_idle;
	sprite_index=sprites_array[state_npc.idle];
	//use arrays to set sprites based ons states

	dialogue_array[state_enemy.chase]=["Don't Move","Not so fast!"];
	dialogue_array[state_enemy.idle]=["*Humms*","......"];

	var len=array_length_1d(dialogue_array[state])];
	text=dialogue_array[state[irandom_range(0,len-1)]];


/* end scr_states */
}
