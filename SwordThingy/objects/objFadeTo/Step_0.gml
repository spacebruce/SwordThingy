/// @description Insert description here
// You can write your code in this editor

if(FadeOut)	
{
	Alpha += 2 / room_speed;
	if(Alpha > 1.2)
	{
		FadeOut = false;
		if(!DidTheThing)
		{
			LevelLoad(RoomTo);
			DidTheThing = true;
		}
	}	
}
else
{
	Alpha -= 1.5 / room_speed;
	if(Alpha < 0)	
		instance_destroy();
}