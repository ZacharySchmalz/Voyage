///decrement
decrement = argument0;
c = c_black;

alpha = 0;
alpha += decrement;

draw_set_alpha(1 - alpha);
draw_rectangle_colour(0, 0, room_width, room_height, c, c, c, c, false);
