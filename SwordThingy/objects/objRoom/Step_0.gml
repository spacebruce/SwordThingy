/// @description Insert description here
// You can write your code in this editor

if(!Active && instance_exists(objPlayer))
{
	var nearestDoor = instance_nearest(objPlayer.x, objPlayer.y, objDoor);
	Active = (objPlayer.x >= x && objPlayer.y >= y && objPlayer.x < x + Size && objPlayer.y < y + Size)
		&& (point_distance(nearestDoor.x, nearestDoor.y, objPlayer.x, objPlayer.y) > 48);
		
	//Don't activate if player too close to a door
}

if(State == RoomState.Unexplored)
{
	if(Active)
	{
		show_debug_message(string(id) + " ACTIVATED");
		for(var i = 0; i < ds_list_size(DoorList); ++i)
		{
			var obj = DoorList[| i];
			obj.Open = false;
		}
		State = RoomState.Active;
		script_execute(RoomScript, ScriptState.Begin);
	}
}
if(State == RoomState.Active)
{
	script_execute(RoomScript, ScriptState.Tick);
	if(Finished)	//controlled via script
		State = RoomState.Completed;
}
if(State == RoomState.Completed)
{
	if(StateLast != State)
	{
		Active = false;
		show_debug_message(string(id) + " DEACTIVATED");
		script_execute(RoomScript, ScriptState.End);
		for(var i = 0; i < ds_list_size(DoorList); ++i)
		{
			var obj = DoorList[| i];
			obj.Open = true;
		}
	}
}

StateLast = State;