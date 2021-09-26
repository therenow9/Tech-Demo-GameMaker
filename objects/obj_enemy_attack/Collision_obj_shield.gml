//have player absorb bullets when hit and get health back
if(global.hp<global.max_hp){
global.hp+=8
}
audio_play_sound(snd_shield_absorb,0,false);
instance_destroy();
