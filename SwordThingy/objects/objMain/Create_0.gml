/// @description Insert description here
// You can write your code in this editor
if(instance_number(objMain) > 1)
	instance_destroy();

DebugInit();

LevelDefine();
globalvar Level, LevelCurrent, LevelVisited, RoomObject;
Level = 0;
LevelCurrent = 0;
LevelVisited = ds_list_create();
RoomObject = ds_list_create();

globalvar Score, Lives;
Score = 0;
Lives = 2;

globalvar Paused; 
Paused = false;
PausedLast = false;
PausedDraw = -1;

PlayerRoomObj = noone;
PlayerRespawn = -1;
PlayerX = 0;//objPlayerSpawn.x;
PlayerY = 0;//objPlayerSpawn.y;

MenuBoredTimer = -1;	//How long until this gets bored and resets game

globalvar ScreenScale, ScreenWidth, ScreenHeight;
ScreenScale = 2;
ScreenWidth = 640;
ScreenHeight = 360;

window_set_size(ScreenWidth * ScreenScale, ScreenHeight * ScreenScale);
surface_resize(application_surface, ScreenWidth, ScreenHeight);
pause_surface = surface_create(ScreenWidth, ScreenHeight);

CameraX = 0;
CameraY = 0;
CameraTween = 0.0;
CameraReset = true;

instance_create_layer(0, 0, "Hud", objMainMenu);
instance_create_layer(0, 0, "Hud", objHud);

instance_create_layer(0, 0, "BackgroundObjects", objBackgroundCity);


LevelLoad(0);