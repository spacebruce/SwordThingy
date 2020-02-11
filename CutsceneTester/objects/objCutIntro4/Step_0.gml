/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space))
	Zoom = 0.75;
	
Zoom *= 1.00525;//* (1 / room_speed);

y = lerp(room_height * 0.25, room_height * 0.5, clamp((Zoom - 1), 0, 1));

if(Zoom > 6)
	instance_change(objCutIntro5, true);