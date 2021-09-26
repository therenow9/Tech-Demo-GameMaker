/// @description 
//view =view_camera[0]
view_scale=1;
view_width=(1024/6)*view_scale;//1920
view_height=(768/6)*view_scale;//1080
#macro camera view_camera[0] 

window_scale=3;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);//maintain resolution and shiet


