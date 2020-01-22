/// @description Update camera
if(instance_exists(objPlayer))
{
	PlayerX = objPlayer.x;	//keep track of player position while it's alive
	PlayerY = objPlayer.y;
	CameraX = objPlayer.x - (ScreenWidth / 2);
	CameraY = objPlayer.y - (ScreenHeight/ 2);
}

camera_set_view_size(view_camera[0], ScreenWidth, ScreenHeight);
camera_set_view_pos(view_camera[0], CameraX, CameraY);