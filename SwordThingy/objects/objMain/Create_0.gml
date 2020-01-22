/// @description Insert description here
// You can write your code in this editor
if(instance_number(objMain) > 1)
	instance_destroy();

globalvar Score, Lives;
Score = 0;
Lives = 2;

PlayerRespawn = -1;
PlayerX = objPlayerSpawn.x;
PlayerY = objPlayerSpawn.y;

MenuBoredTimer = -1;	//How long until this gets bored and resets game

globalvar ScreenScale, ScreenWidth, ScreenHeight;
ScreenScale = 2;
ScreenWidth = 1920 / 3;
ScreenHeight = 1080 / 3;

window_set_size(ScreenWidth * ScreenScale, ScreenHeight * ScreenScale);
surface_resize(application_surface, ScreenWidth, ScreenHeight);

CameraX = 0;
CameraY = 0;

instance_create_layer(0, 0, "BackgroundObjects", objBackgroundCity);