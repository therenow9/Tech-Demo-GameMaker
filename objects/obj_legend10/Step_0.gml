event_inherited();

image_speed=1;
/*
if (distance_to_point(destX,destY)==0)
{  
    do
    {
        destX = random(room_width)
        destY = random(room_height)
    }
    until(!place_meeting(destX,destY,obj_invs_border_rm_spawn))
    //this is so the target destination isn't inside a soling block
} 
mp_potential_step(destX,destY,0.5,false)
