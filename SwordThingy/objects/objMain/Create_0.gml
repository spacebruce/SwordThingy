/// @description Insert description here
// You can write your code in this editor

globalvar Score;
Score = 0;

globalvar ScreenScale, ScreenWidth, ScreenHeight;
ScreenScale = 2;
ScreenWidth = 1920 / 3;
ScreenHeight = 1080 / 3;

window_set_size(ScreenWidth * ScreenScale, ScreenHeight * ScreenScale);
surface_resize(application_surface, ScreenWidth, ScreenHeight);

CameraX = 0;
CameraY = 0;

instance_create_layer(0, 0, "BackgroundObjects", objBackgroundCity);