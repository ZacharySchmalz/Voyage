text = argument[0];
tut += .01;
draw_set_font(fnt_nasa);
draw_set_colour(c_white);
draw_set_alpha(tut);
draw_text(obj_player_static.x, room_height / 2, text);
