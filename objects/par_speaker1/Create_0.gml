//Fc created this controlsl all speakers in the game
//-----------Customise (FOR USER)
playerobject = obj_player;
interact_key = ord("L");
detection_radius = 55;//how close user has to be

myVoice			= snd_voice1;
myPortrait		= -1;
myFont			= fnt_dialogue;
myName			= "None";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;
myPortraitIdle_x	= -1;
myPortraitIdle_y	= -1;

//-----------Defaults Setup (LEAVE THIS STUFF)
reset_dialogue_defaults();
event_inherited();