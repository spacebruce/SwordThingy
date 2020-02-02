/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(vk_space))
{
	Killed = true;
	instance_destroy();
}

image_angle += (45 / room_speed);