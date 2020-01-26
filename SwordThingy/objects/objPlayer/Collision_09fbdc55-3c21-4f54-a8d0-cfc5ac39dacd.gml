/// @description Insert description here
// You can write your code in this editor

if((other.Damage > 0) && (HurtFrames < 0))
{
	Health -= other.Damage;
	HurtFrames = 0.5;
}

if(other.object_index == objEnemyDude)
{
	other.Killed = true;
	instance_destroy(other);
}