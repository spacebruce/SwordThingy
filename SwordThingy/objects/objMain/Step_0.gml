/// @description Insert description here

if(gamepad_button_check_pressed(0, gp_face4))
{
	screen_save("screen" + string(current_second) + "f" + md5_string_utf8(string(current_time)) + ".png");
}


if(Level != LevelCurrent)
{
	RoomFadeTo(Level);
	return;
}

if(instance_exists(objMainMenu))
{
	if(instance_exists(objPlayerSpawn))
	{
		PlayerX = objPlayerSpawn.x;
		PlayerY = objPlayerSpawn.y;
	}

	if (MenuBoredTimer != -1)
	{
		MenuBoredTimer -= 1 / room_speed;
		if(MenuBoredTimer <= 0)
			RoomFadeTo(0);
	}
}
else
{
	if(keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start))
		Paused = !Paused;
	
	if(!Paused)
	{
		if(instance_exists(objPlayer))
		{
		}
		else if (instance_exists(objPlayerDead))	//Player is deaddd??
		{
			if(PlayerRespawn == -1)	
				PlayerRespawn = 1;	//Set respawn timer to 1 second if not already set
		
			if(PlayerRespawn > 0)	//if respawn timer bigger than 0, tick down
			{
				PlayerRespawn -= 1 / room_speed;
				if(PlayerRespawn <= 0)	//If just triggered respawn
				{
					--Lives;	//Take 1 life away
					if(Lives < 0)	// out of lives?
					{
						instance_create_layer(0, 0, "Hud", objMainMenu);
						MenuBoredTimer = 4;	//4 seconds til world reset
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
}