/// @description Insert description here
// You can write your code in this editor

if(HurtFrames < 0)
{
	Health -= other.Damage;
	HurtFrames = 0.5;
}