/// @description Insert description here
// You can write your code in this editor

image_angle = point_direction(x, y, mouse_x, mouse_y);
draw_sprite(sprTurret, 0, x, y - z);

draw_sprite_ext(sprTurret, 2, x, y - z, 1, 1, direction, c_white, 1.0);

gpu_set_blendmode(bm_add);
draw_sprite(sprTurret, 1, x, y - z);
gpu_set_blendmode(bm_normal);

draw_sprite_line(x, y - z, LineX, LineY , sprBeam);
//draw_line(x, y, LineX, LineY);