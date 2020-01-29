/// @description Update camera

if(CameraReset)
{
	CameraX = objPlayerSpawn.x - ScreenWidth / 2;
	CameraY = objPlayerSpawn.y - ScreenHeight / 2;
	CameraReset = false;
}

if(instance_exists(objPlayer))
{
	var Room = objPlayer.RoomObj;
	
	CameraTween = min(CameraTween + (1 / room_speed), 1.0);
	PlayerX = objPlayer.x;	//keep track of player position while it's alive
	PlayerY = objPlayer.y;
	
	var ClampX = objPlayer.x - ScreenWidth / 2;
	var ClampY = objPlayer.y - ScreenHeight / 2;
	
	if(instance_exists(Room))
	{
		ClampX = clamp(ClampX, Room.x, Room.x + (RoomSize - ScreenWidth));
		ClampY = clamp(ClampY, Room.y, Room.y + (RoomSize - ScreenHeight));
	}
	
	CameraX = lerp(CameraX, ClampX, CameraTween);
	CameraY = lerp(CameraY, ClampY, CameraTween);
}
else
{
	CameraTween = 0.0;
}

camera_set_view_size(view_camera[0], ScreenWidth, ScreenHeight);
camera_set_view_pos(view_camera[0], CameraX, CameraY);