/// @description Insert description here
// You can write your code in this editor

DrawTextOutline(string(MenuBoredTimer), 200, 200);

with(objFadeTo)
{
	draw_set_alpha(clamp(Alpha, 0, 1));
	draw_rectangle_colour(-1, -1, ScreenWidth + 1, ScreenHeight + 1, c_black, c_black, c_black, c_black, 0);
	draw_set_alpha(1.0);
}