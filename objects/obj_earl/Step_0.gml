event_inherited();
path_speed=1;//keep earl moving after collision with player
image_speed=1;
if direction=0 image_xscale=-2.8;
if direction=180 image_xscale=2.8;

if (instance_exists(myTextbox)) //stop him when obj player talk s to him
{
path_speed=0
image_speed=0;
}

