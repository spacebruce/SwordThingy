/// @description Insert description here
// You can write your code in this editor

if(HurtFrames > 0 || AlreadyDead)
{
	shader_set(shdFlash);
}

draw_sprite(sprCentipede, 1, x, y);

if(HurtFrames > 0 || AlreadyDead)
{
	shader_reset();
}