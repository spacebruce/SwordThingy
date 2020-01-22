/// @description Insert description here
// You can write your code in this editor
HurtFrames -= 1 / room_speed;

if (Health < 0)
{
	instance_destroy();
}

spd = 1.0;
direction = direction + 1.0;

Move(spd, direction);