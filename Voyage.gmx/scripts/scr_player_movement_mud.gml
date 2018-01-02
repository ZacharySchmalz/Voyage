keyRight = keyboard_check(ord("D"));
keyLeft = -keyboard_check(ord("A"));
keyUp = keyboard_check_direct(ord("W"));
keyDown = keyboard_check_direct(ord("S"));
keySpace = keyboard_check_released(vk_space);
keyNone = keyboard_check(vk_nokey);

if(vspeed < 20)
    vspeed += grav;
    
if(place_meeting(x, y+1, obj_mud) || vine = true)
    vspeed = keySpace * -jumpSpeed;

if(keyRight)
    hspeed = 6;
if(-keyLeft)
    hspeed = -6;


// Horizontal Collision    
if(place_meeting(x+hspeed, y, obj_mud))
{
    while(!place_meeting(x+sign(hspeed), y, obj_mud))
        x += sign(hspeed);  
    hspeed = 0;
}

// Vertical Collision
if(place_meeting(x, y+vspeed, obj_mud))
{
    if(vspeed > 0)
        audio_play_sound(snd_walk, 10, false);
        
    while(!place_meeting(x, y+sign(vspeed), obj_mud))
        y += sign(vspeed);
    vspeed = 0;
}

// Change sprite according to direction

// Second constraint is for when you have 0 vspeed for a brief moment in the air
if(vspeed == 0 && !place_free(x, y+1))
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
else if(vspeed != 0 && keyRight == 1)
{
    lastKey = 1;
    sprite_index = spr_player_jump_torch;
    image_speed = 0;
    image_index = 0;
}

// Movement left in the air
else if(vspeed != 0 && keyLeft == -1)
{
    lastKey = -1;
    sprite_index = spr_player_jump_torch;
    image_speed = 0;
    image_index = 1;
}

// No movement in the air
else if(vspeed != 0 && keySpace == 1)
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
