/// @description 
current_scene=scene_info[scene];

var len =array_length_1d(current_scene) -1;//get array length of current scene

current_scene_array=-1;//resets for multiple uses
current_scene_array= array_create(len,0);
array_copy(current_scene_array,0,current_scene,1,len);