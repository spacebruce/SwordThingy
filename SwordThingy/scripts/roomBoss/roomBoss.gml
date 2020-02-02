
if(argument0 == ScriptState.Begin)
{
	DebugPrint("Boss",Level,"Begin");
	if(Level == 0)
		instance_create_depth(MiddleX, MiddleY, 0, objLevel1Boss);
	if(Level == 1)
		instance_create_depth(MiddleX, MiddleY, 0, objLevel2Boss);
	if(Level == 2)
		instance_create_depth(MiddleX, MiddleY, 0, objLevel3Boss);
}