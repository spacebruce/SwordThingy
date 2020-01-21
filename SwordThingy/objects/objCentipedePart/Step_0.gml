/// @description Insert description here
// You can write your code in this editor

if (Health < 0)
{
	instance_destroy();
}

if ((!instance_exists(Parent)) && !AlreadyDead)
{
	Value = PopValue;	//Reduce value if killed in chain
	AlreadyDead = true;
	alarm[0] = room_speed / 8;
}