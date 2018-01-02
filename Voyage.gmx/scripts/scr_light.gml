
    var x1,y1,x2,y2,ww;
    ww = 800;
    x1 = argument0-ww/2;
    x2 = argument0+ww/2;
    y1 = argument1-ww/2;
    y2 = argument1+ww/2;
    draw_set_color(c_black);
    draw_set_alpha(.5);
    draw_rectangle(0,0,x1,room_height,false);
    draw_rectangle(x2,0,room_width,room_height,false);
    draw_rectangle(0,0,room_height,y1,false);
    draw_rectangle(0,y2,room_width,room_height,false);
    draw_background_stretched(back_light,x1,y1,ww,ww);

