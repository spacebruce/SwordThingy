/// @description Insert description here
// You can write your code in this editor
HurtFrames -= 1 / room_speed;

if (Health < 0)
{
	instance_destroy();
}

if (!instance_exists(Parent))	
{
	if (!AlreadyDead)	//if chain broke & not in dead condition
	{
		Value = PopValue;	//Reduce value if killed in chain
		AlreadyDead = true;
		alarm[0] = room_speed / 8;
	}
}
else	//If parent exists, follow it
{
	var angle = point_direction(Parent.x, Parent.y, x, y);
	x = Parent.x + lengthdir_x(Diameter, angle);
	y = Parent.y + lengthdir_y(Diameter, angle);
}