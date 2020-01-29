/// @description Insert description here
// You can write your code in this editor

var frame = 0;
if(HurtFrames > 0)
{
	frame = 2;
}

if(DebugMode)
{
	draw_triangle(x, y, ConeLX, ConeLY, ConeRX, ConeRY, 1);
	draw_line(x, y, TargetX, TargetY);
}

draw_sprite(sprCentipede, frame, x, y - z);