/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space))
	Time = - 5;
	
if(Time > 2.5)
	instance_change(objCutIntro3, true);

Time += 1 / room_speed;

x = lerp(700, -100, Time / 2);
y = 360 / 2;