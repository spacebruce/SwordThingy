/// @description Insert description here
// You can write your code in this editor

if(!Active && instance_exists(objPlayer))
{
	Active = (objPlayer.x >= x && objPlayer.y >= y && objPlayer.x < x + Size && objPlayer.y < y + Size);
	if(Active)
	{
		event_user(0);
	}
}

