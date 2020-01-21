/// @description Update camera
if(instance_exists(objMainMenu))
{
	CameraX = 0;
	CameraY = 0;
}
else if(instance_exists(objPlayer))
{
	CameraX = lerp(CameraX, objPlayer.x - (ScreenWidth / 2), 0.2);
	CameraY = lerp(CameraY, objPlayer.y - (ScreenHeight/ 2), 0.2);
}


camera_set_view_size(view_camera[0], ScreenWidth, ScreenHeight);
camera_set_view_pos(view_camera[0], CameraX, CameraY);