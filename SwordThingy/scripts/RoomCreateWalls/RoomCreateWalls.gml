var RoomLeft = argument0;
var RoomRight = argument1;
var RoomUp = argument2;
var RoomDown = argument3;

/*
	this code is certified FUCKING STUPID. 
*/

var position = 0;
repeat(Size / 32)
{
	instance_create_depth(x + position, y, 0, objBlock32);
	instance_create_depth(x + position, Bottom, 0, objBlock32);
	instance_create_depth(Right, y + position, 0, objBlock32);
	instance_create_depth(x, y + position, 0, objBlock32);
	position += 32;
}

if(RoomLeft)	
{
	instance_destroy(instance_nearest(x, MiddleY - Border, objBlock32));
	instance_destroy(instance_nearest(x, MiddleY, objBlock32));
	instance_create_depth(x, MiddleY - Border, 0, objDoor);
	instance_create_depth(x, MiddleY, 0, objDoor);
}
if(RoomRight)	
{
	instance_destroy(instance_nearest(Right, MiddleY - Border, objBlock32));
	instance_destroy(instance_nearest(Right, MiddleY, objBlock32));
	instance_create_depth(Right, MiddleY - Border, 0, objDoor);
	instance_create_depth(Right, MiddleY, 0, objDoor);
}
if(RoomUp)		
{
	instance_destroy(instance_nearest(MiddleX, y, objBlock32));
	instance_destroy(instance_nearest(MiddleX - Border, y, objBlock32));
	instance_create_depth(MiddleX, y, 0, objDoor);
	instance_create_depth(MiddleX - Border, y, 0, objDoor);
}
if(RoomDown)	
{
	instance_destroy(instance_nearest(MiddleX, Bottom, objBlock32));
	instance_destroy(instance_nearest(MiddleX - Border, Bottom, objBlock32));
	instance_create_depth(MiddleX, Bottom, 0, objDoor);
	instance_create_depth(MiddleX - Border, Bottom, 0, objDoor);
}
