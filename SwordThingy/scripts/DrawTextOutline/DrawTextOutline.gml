///DrawTextOutline(String, x, y);
var dx = argument1;
var dy = argument2;

for(var i = 0; i < 360; i += 45)
{
	draw_text_colour(dx + lengthdir_x(1, i), dy + lengthdir_y(1, i), argument0, c_black, c_black, c_black, c_black, 1.0);
}
draw_text_colour(dx, dy, argument0, c_white, c_white, c_white, c_white, 1.0);