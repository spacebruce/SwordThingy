/// @description Update camera
if(instance_exists(objPlayer))
{
	CameraTween = min(CameraTween + (1 / room_speed), 1.0);
	PlayerX = objPlayer.x;	//keep track of player position while it's alive
	PlayerY = objPlayer.y;
	CameraX = lerp(CameraX, objPlayer.x - (ScreenWidth / 2), CameraTween);
	CameraY = lerp(CameraY, objPlayer.y - (ScreenHeight/ 2), CameraTween);
}
else
{
	CameraTween = 0.0;
}

camera_set_view_size(view_camera[0], ScreenWidth, ScreenHeight);
camera_set_view_pos(view_camera[0], CameraX, CameraY);