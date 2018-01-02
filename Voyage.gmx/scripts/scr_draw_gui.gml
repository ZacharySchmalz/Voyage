boxCol = make_colour_rgb(102, 102, 102);
jumpCol1 = make_colour_rgb(102, 0, 0);
jumpCol2 = make_colour_rgb(153, 0, 0);
foodCol1 = make_colour_rgb(51, 51, 0);
foodCol2 = make_colour_rgb(153, 153, 0);
sprintCol1 = make_colour_rgb(0, 0, 77);
sprintCol2 = make_colour_rgb(0, 0, 153);

// Outer Box
draw_set_alpha(.5);
draw_roundrect_colour(view_xview[0] + 20, view_yview[0] + 20, view_xview[0] + 160, view_yview[0] + 125, boxCol, boxCol, false);

draw_set_alpha(1);

// Jump
draw_roundrect_colour(view_xview[0] + 25, view_yview[0] + 25, view_xview[0] + 125, view_yview[0] + 45, jumpCol1, jumpCol1, false);
draw_roundrect_colour(view_xview[0] + 25, view_yview[0] + 25, view_xview[0] + 25 + (5 * (jumpCharge - 20)), view_yview[0] + 45, jumpCol2, jumpCol2, false);
draw_sprite_ext(spr_player_jump, 0, view_xview[0] + 145, view_yview[0] + 37, .40, .40, 0, c_white, 1);

// Hunger
draw_roundrect_colour(view_xview[0] + 25, view_yview[0] + 60, view_xview[0] + 125, view_yview[0] + 80, foodCol1, foodCol1, false);
draw_roundrect_colour(view_xview[0] + 25, view_yview[0] + 60, view_xview[0] + 25 + food, view_yview[0] + 80, foodCol2, foodCol2, false);
draw_sprite_ext(spr_hunger, 0, view_xview[0] + 145, view_yview[0] + 70, .18, .18, 0, c_white, 1);

// Torch
draw_sprite_ext(spr_torch, 0, view_xview[0] + 70, view_yview[0] + 95, 1.5, 1.5, 0, c_white, 1);
draw_set_font(fnt_nasa);
//draw_set_color(jumpCol);
draw_text(view_xview[0] + 85, view_yview[0] + 95, "X ");
draw_text(view_xview[0] + 110, view_yview[0] + 95, obj_player.torchAmount);
