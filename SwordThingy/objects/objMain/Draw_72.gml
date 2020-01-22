/// @description Insert description here
// You can write your code in this editor

if(Paused)
{
	if(!PausedLast)
	{
		surface_copy(pause_surface, 0, 0, application_surface);
	}
	PausedDraw = 2;
	PausedLast = true;
}
else
{
	--PausedDraw;
	PausedLast = false;
}