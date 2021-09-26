/// @description 
/*
#region particle stuff
mySystem=part_system_create();//system
myParticle=part_type_create();//particle
//part_type_shape(myParticle,shape_ring);//pre defined shape
part_type_sprite(myParticle,spr_hp,1,1,1);//use sprite
part_type_life(myParticle,min,max);//randomrange of time until particle death
part_type_scale(myParticle,x_scale,y_scale);//skew size of particles
part_type_size(myParticle,start_min,start_max,increase,wiggle);//defines how big particle will look when it starts
//possible to increase the size of the particle each step of its life until it ends
part_type_orientation(myParticle)//set particle relative to diretion of object
part_type_color3()//choose 3 colors use ful for fire effect ex fading into red orange yellow
//can use custom or gml predefined
part_type_blend(myParticle,1/0);//define whether particles will blend
part_type_direction();//define direction you want it to go in from 0-360 degree values
part_type_speed(myParticle,)//min max whether to increase or decrease
part_type_gravity(myParticle,);//define gravity and direction
part_type_alpha3(myParticle)//alpha values for particles

part_particles_create()//create particles instantly at one spot

myEmitter=part_emitter_create(mySystem)//create particle emitter
part_emitter_region();//tells emitter where to shoot particles and distribution. small cluster or big explosion
part_emitter_burst();//bursts particles should be done in destroy event
part_emitter_stream();//streams particles every step of the game

//destroy stuff to avoid memory leaks
part_system_destroy()
part_type_destroy()
part_emitter_destroy_all()
#endregion 
