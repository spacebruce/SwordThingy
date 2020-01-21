/// @description Insert description here
// You can write your code in this editor

var cam = view_camera[0];
x = camera_get_view_x(cam);
y = camera_get_view_y(cam);
var dx = x - (x / 10);
var dy = y - (y / 10);

draw_sprite_tiled(sprGroundTest, 0, dx, dy);