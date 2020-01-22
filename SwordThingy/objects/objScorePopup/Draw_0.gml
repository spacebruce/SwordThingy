/// @description Insert description here
// You can write your code in this editor

if(!variable_instance_exists(id, "Text"))
	instance_destroy();

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(fntPopup);

DrawTextOutline(Text, x, y);