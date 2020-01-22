
if(instance_exists(objFadeTo))
	return false;

var fade = instance_create_layer(0, 0, "Hud", objFadeTo);
fade.RoomTo = argument0;
return true;