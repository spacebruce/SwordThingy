if(object_index != objRoom)
	return;
	
if(argument0 == ScriptState.Begin)
{
	DebugPrint("SPAWN THE GUNS.");
	
	instance_create_depth(MiddleX - 200, MiddleY, 0, objEnemyDude);
	//instance_create_depth(MiddleX + 16, MiddleY, 0, objEnemyDude);
	//instance_create_depth(MiddleX, MiddleY, 0, objPartyHard);
	instance_create_depth(MiddleX, MiddleY, 0, objDemoRender);
}

