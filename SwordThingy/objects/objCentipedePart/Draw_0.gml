/// @description Insert description here
// You can write your code in this editor

var frame = 1;
if(HurtFrames > 0 || AlreadyDead)
{
	frame = 2;
}


draw_sprite(sprCentipede, frame, x, y - z);
