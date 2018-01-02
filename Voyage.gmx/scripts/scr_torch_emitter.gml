x1 = argument[0];
y1 = argument[1];
x2 = argument[2];
y2 = argument[3];

part_emitter_region(global.ps, global.pe, x1, x2, y1, y2, ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(global.ps, global.pe, global.pt, 1);
