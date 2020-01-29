/// @description Update camera

if(CameraReset)
{
	CameraX = objPlayerSpawn.x - ScreenWidth / 2;
	CameraY = objPlayerSpawn.y - ScreenHeight / 2;
	CameraReset = false;
}

if(instance_exists(objPlayer))
{
	PlayerX = objPlayer.x;	//keep track of player position while it's alive
	PlayerY = objPlayer.y;
	
	if(instance_exists(objPlayer.RoomObj))
	{	
		PlayerRoomObj = objPlayer.RoomObj;
	}
	
	var ClampX = CameraX;
	var ClampY = CameraY;
	
	if(instance_exists(PlayerRoomObj))
	{
		
		ClampX = clamp(objPlayer.x - ScreenWidth / 2, PlayerRoomObj.x, PlayerRoomObj.x + (RoomSize - ScreenWidth));
		ClampY = clamp(objPlayer.y - ScreenHeight / 2, PlayerRoomObj.y, PlayerRoomObj.y + (RoomSize - ScreenHeight));
	}
	
	CameraX = lerp(CameraX, ClampX, 0.25);
	CameraY = lerp(CameraY, ClampY, 0.25);
}

camera_set_view_size(view_camera[0], ScreenWidth, ScreenHeight);
camera_set_view_pos(view_camera[0], CameraX, CameraY);