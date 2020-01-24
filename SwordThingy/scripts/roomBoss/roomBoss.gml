
if(argument0 == ScriptState.Begin)
{
	if(Level == 0)
		instance_create_depth(MiddleX, MiddleY, 0, objLevel1Boss);
	if(Level == 1)
		instance_create_depth(MiddleX, MiddleY, 0, objLevel2Boss);
	if(Level == 2)
		instance_create_depth(MiddleX, MiddleY, 0, objLevel2Boss);
}