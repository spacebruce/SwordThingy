/// @description Insert description here
// You can write your code in this editor
if(Killed)
{
	DebugPrint("boss death trigger");
	instance_create_depth(0,0,0,objBossDeadTimer);
}