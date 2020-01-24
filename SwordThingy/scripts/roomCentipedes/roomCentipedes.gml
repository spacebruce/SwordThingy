if(object_index != objRoom)
	return;
	
switch(argument0)
{
case ScriptState.Begin:
	show_debug_message("SPAWN THE CENTIPEDES.");
	
	for(var i = 0; i < 360; i += 90)
	{
		instance_create_depth(
			MiddleX + lengthdir_x(150, i + 45),
			MiddleY + lengthdir_y(150, i + 45),
			0, objCentipedePatrol);
			
		//ds_list_add(EnemyList,	
			instance_create_depth(
				MiddleX + lengthdir_x(100, i),
				MiddleY + lengthdir_y(100, i),
				0, objCentipede
			)
		//);
	}
		
	
break;
case ScriptState.Tick:
	//track enemy deaths
	if(instance_number(parEnemy) == 0)
		Finished = true;
break;
case ScriptState.End:
	with(objCentipedePatrol)
		instance_destroy();
break;
}