/// @description Insert description here
// You can write your code in this editor

var Left = x + 64;
var Right = (x + Size) - 64;
var Top = y + 64;
var Bottom = (y + Size) - 64;
var MiddleX = x + (Size / 2);
var MiddleY = y + (Size / 2);

if(Type == 0)
{
	
}

if(Type == 1)
{
	
}

if(Type == 2)
{
	instance_create_depth(MiddleX, MiddleY, 0, objPlayerSpawn);
}

if(Type == 3)
{
	if(Level == 0)
		instance_create_depth(MiddleX, MiddleY, 0, objLevel1Boss);
	if(Level == 1)
		instance_create_depth(MiddleX, MiddleY, 0, objLevel2Boss);
	if(Level == 2)
		instance_create_depth(MiddleX, MiddleY, 0, objLevel2Boss);
}