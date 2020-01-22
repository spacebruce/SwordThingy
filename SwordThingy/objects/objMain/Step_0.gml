/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objMainMenu))
{
	PlayerX = objPlayerSpawn.x;
	PlayerY = objPlayerSpawn.y;
}
else
{
	if(!instance_exists(objPlayer))
	{
		if(PlayerRespawn == -1)	
			PlayerRespawn = 1;	//Set respawn timer to 1 second if not already set
		
		if(PlayerRespawn > 0)	//if respawn bigger than 0, tick down
		{
			PlayerRespawn -= 1 / room_speed;
			if(PlayerRespawn <= 0)	//If just triggered respawn
			{
				--Lives;	//Take 1 life away
				if(Lives < 0)	// out of lives?
				{
					instance_create_layer(0, 0, "Hud", objMainMenu);
				}
				else
				{
					instance_create_depth(PlayerX, PlayerY, 0, objPlayer);
				}
				PlayerRespawn = -1;	//defuse
			}
		}
	}
}