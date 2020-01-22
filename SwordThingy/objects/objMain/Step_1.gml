/// @description Insert description here
// You can write your code in this editor

if(Paused)
{
	instance_deactivate_object(parEntity);
}

if(!Paused)
{
	instance_activate_all();
}