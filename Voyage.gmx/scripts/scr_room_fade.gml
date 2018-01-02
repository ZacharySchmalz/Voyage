if(obj_player.x > room_width + 10 && !instance_exists(obj_room_fade))
{
    instance_create(0, 0, obj_room_fade);
} 
/*
if(instance_exists(obj_room_fade) && obj_room_fade.fade < 1)
{
    room_goto(rm_jump_2);
}
