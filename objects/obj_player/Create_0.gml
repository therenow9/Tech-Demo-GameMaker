/// @description Insert description here
// You can write your code in this eifv
array_ds_ness_sprite=ds_list_create();
ds_list_add(array_ds_ness_sprite,spr_ness_east,spr_ness_north,spr_ness_south,spr_ness_southeast,spr_ness_west,spr_ness_northwest,spr_ness_northeast,spr_ness_southwest);
ness_sprites=array_ds_ness_sprite[|all];
scr_get_inputs();
global.list_inv=ds_list_create();


if(input_run)
{//if you are pressing k 
	 run=1.5;
	//run speed multiplies sprite and movement speeds by itself 
}
else	{run=1;}
image_speed=0;
spd=4*run;

collision_Spd=spd-run+3;

invincible=false;
can_shoot=true;

#region particles run animation

part_sys_walk=part_system_create_layer("inst_particles",true);//system
part_walk=part_type_create();//particle
part_type_shape(part_walk,pt_shape_pixel);//pixel shape
part_type_life(part_walk,10,15);//40 to 90 frame lifespan
part_type_scale(part_walk,2,2);//all particle size functions multiplied by this
part_type_size(part_walk,1,1.2,0.1,0.01);//defines how big particle will look when it starts
//possible to increase the size of the particle each step of its life until it ends
//part_type_orientation(myParticle)//set particle relative to diretion of object
part_type_color1(part_walk,c_gray)//choose 3 colors use ful for fire effect ex fading into red orange yellow
//can use custom or gml predefined
//part_type_blend(myParticle,1/0);//define whether particles will blend
part_type_direction(part_walk,sin(direction)-3,sin(direction)+3,1,0.5);//define direction you want it to go in from 0-360 degree values
part_type_speed(part_walk,0.5,1,0.1,0.3);//min max whether to increase or decrease
part_type_alpha3(part_walk,0.5,1,0);//alpha values for particles

part_walk_emitter=part_emitter_create(part_sys_walk)//create particle emitter

#endregion
