global.ps = part_system_create();
global.pt = part_type_create();
global.pe = part_emitter_create(global.ps);

part_system_depth(global.ps, -3000);
part_type_shape(global.pt, pt_shape_flare);
part_type_blend(global.pt, true);
part_type_alpha2(global.pt, .5, 0);
part_type_color_mix(global.pt, c_red, c_yellow);
part_type_direction(global.pt, 90, 90, 0, 0);
part_type_speed(global.pt, 0.1, 1, 0, 0);
part_type_size(global.pt, 0.2, 0.3, 0, 0);
part_type_life(global.pt, 50, 75);
