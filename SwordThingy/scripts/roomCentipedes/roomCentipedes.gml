if(object_index != objRoom)
	return;
	
switch(argument0)
{
case ScriptState.Begin:
	show_debug_message("SPAWN THE CENTIPEDES.");
	
	for(var i = 0; i < 360; i += 90)
	{
		ds_list_add(EnemyList,	
			instance_create_depth(
				MiddleX + lengthdir_x(100, i),
				MiddleY + lengthdir_y(100, i),
				0, objCentipede
			)
		);
		
		instance_create_depth(
			MiddleX + lengthdir_x(150, i + 45),
			MiddleY + lengthdir_y(150, i + 45),
			0, objCentipedePatrol);
	}
		
	
break;
case ScriptState.Tick:
	//track enemy deaths
	for(var i = 0; i < ds_list_size(EnemyList); ++i)
	{
		if(instance_exists(EnemyList[| i]))
			ds_list_delete(EnemyList, i);
	}
	if(ds_list_size(EnemyList) == 0)
		Finished = true;
break;
case ScriptState.End:
	with(objCentipedePatrol)
		instance_destroy();
break;
}