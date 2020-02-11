/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(vk_space))
{
	Tween = 0;
	Frame = 0;
}


if(Tween < 0.7)
{
	ShipFrame = 0;
	ShipScale = lerp(1.0, 0.2, Tween * (1/0.7));
	var s = Tween * (1/0.7);
	x = lerp(640, 190, s);
	y = lerp(300, 310, s);
	
	Tween += (0.25 / room_speed);
}
else if(Tween < 0.9)
{
	ShipFrame = 1;
	var s = (Tween - 0.7) * 5;
	ShipScale = lerp(1.0, 0.3, s);
	x = lerp(190, 116, s);
	y = lerp(310, 277, s);
	Tween += (0.125 / room_speed);
}
else if(Tween <= 1.0)
{
	ShipFrame = 2;
	ShipScale = 1;
	var s = (Tween - 0.9) * 10;
	x = lerp(116, 120, s);
	y = lerp(277, 230, s);
	Tween += (0.0625 / room_speed);
}
else
{
	instance_change(objCutIntro4, true);
}

++Frame;