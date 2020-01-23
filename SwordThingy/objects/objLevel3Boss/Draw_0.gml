/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_text(x, y, "Insert Boss 3 here!");

if(keyboard_check_pressed(vk_space))
{
	Killed = true;
	instance_destroy();
}