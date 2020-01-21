/// @description Insert description here
// You can write your code in this editor

if(HurtFrames > 0)
{
	shader_set(shdFlash);
}

draw_sprite(sprCentipede, 0, x, y);

if(HurtFrames > 0)
{
	shader_reset();
}