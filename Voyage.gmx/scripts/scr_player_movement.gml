keyRight = keyboard_check(ord("D"));
keyLeft = -keyboard_check(ord("A"));
keyUp = keyboard_check_direct(ord("W"));
keyDown = keyboard_check_direct(ord("S"));
keySpace = keyboard_check_released(vk_space);
keyNone = keyboard_check(vk_nokey);

move = keyRight + keyLeft;
hsp = move * movespeed

if(vsp < 20)
    vsp += grav;
    
if(place_meeting(x, y+1, obj_wall) || vine = true)
    vsp = keySpace * -jumpSpeed;

// Vine Climbing
if(keyUp == 1 || keyDown == 1)
{
    if(place_meeting(x, y, obj_vine))
        vine = true;
}

if(vine)
{
    if(keyUp)
        vsp = -4;
    if(keyDown)
        vsp = 4;
    if(!place_meeting(x, y, obj_vine))
        vine = false;
    if(keySpace)
        vine = false;
    if(-keyLeft)
    {
        if(!place_meeting(x+hsp, y, obj_vine))
            hsp = 0;
    }
    if(keyRight)
    {
        if(!place_meeting(x+hsp, y, obj_vine))
            hsp = 0;
    }
}

// Horizontal Collision    
if(place_meeting(x+hsp, y, obj_wall))
{
    while(!place_meeting(x+sign(hsp), y, obj_wall))
        x += sign(hsp);  
    hsp = 0;
}
x += hsp;

// Vertical Collision
if(place_meeting(x, y+vsp, obj_wall))
{
    if(vsp > 0)
        audio_play_sound(snd_walk, 10, false);
        
    while(!place_meeting(x, y+sign(vsp), obj_wall))
        y += sign(vsp);
    vsp = 0;
}
y += vsp;



// Change sprite according to direction

// Second constraint is for when you have 0 vspeed for a brief moment in the air
if(vsp == 0 && !place_free(x, y+1))
{
    if(keyRight == 1)
    {
        lastKey = 1;
        sprite_index = spr_player_torch_right;
        image_speed = .3;
        if(image_index == 0)
            image_index = 1;
    }

    else if(keyLeft == -1)
    {
        lastKey = -1;
        sprite_index = spr_player_torch_left;
        image_speed = .3;
        if(image_index == 0)
            image_index = 1;
    }
    
    // No key
    else if(keyNone == 1)
    {
        if(lastKey == 1)
            sprite_index = spr_player_torch_right;
        else
            sprite_index = spr_player_torch_left;
        
        image_speed = 0;
        image_index = 0;
    }
}

// Movement right in the air
else if(vsp != 0 && keyRight == 1)
{
    lastKey = 1;
    sprite_index = spr_player_jump_torch;
    image_speed = 0;
    image_index = 0;
}

// Movement left in the air
else if(vsp != 0 && keyLeft == -1)
{
    lastKey = -1;
    sprite_index = spr_player_jump_torch;
    image_speed = 0;
    image_index = 1;
}

// No movement in the air
else if(vsp != 0 && keySpace == 1)
{
    sprite_index = spr_player_jump_torch;
    image_speed = 0;
    
    if(lastKey == 1)
        image_index = 0;
    else
        image_index = 1;
}

else if(vine)
{
    sprite_index = spr_player_jump_torch
    if(keyRight)
    {
        image_index = 0;
        lastKey = 1;
    }
    else if(-keyLeft)
    {
        image_index = 1;
        lastKey = -1;
    }
    else if(keyNone)
    {
        if(lastKey == 1)
            image_index = 0;
        else
            image_index = 1;
    }
}
