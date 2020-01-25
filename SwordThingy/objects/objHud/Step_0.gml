/// @description Insert description here
// You can write your code in this editor

var Safe = false;

if(instance_exists(objPlayer))
{
	var p = instance_find(objPlayer,0);
	if(instance_exists(p.RoomObj))
		Safe = (p.RoomObj.Finished);
}

if(Safe)
	MapVisible = min(MapVisible + (1 / room_speed), 1.0);
else
	MapVisible = max(MapVisible - (1 / room_speed), 0.0);