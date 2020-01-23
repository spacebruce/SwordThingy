/// @description Insert description here
// You can write your code in this editor

enum RoomState { Unexplored, Inactive, Active, Completed }
State = RoomState.Unexplored;
Active = false;
Finished = false;

TileSetData = [	tileset0, tileset1, tileset2 ];
TileSet = TileSetData[Level];

var Left = x + 64;
var Right = (x + Size) - 64;
var Top = y + 64;
var Bottom = (y + Size) - 64;
var MiddleX = x + (Size / 2);
var MiddleY = y + (Size / 2);

var World = LevelLayout[| LevelCurrent];
var WorldWidth = World[0];
var WorldHeight = World[1];

///Place doors
RoomLeft = false;
RoomRight = false;
RoomUp = false
RoomDown = false;
if(RoomX > 0)	
	RoomLeft = (World[2 + (RoomIndex - 1)] > 0);
if(RoomX < (WorldWidth - 1))	
	RoomRight = (World[2 + (RoomIndex + 1)] > 0);
if(RoomY > 0)
	RoomUp = (World[2 + (RoomIndex - WorldWidth)] > 0);
if(RoomY < (WorldHeight - 1))
	RoomDown = (World[2 + (RoomIndex + WorldWidth)] > 0);

if(RoomLeft)	instance_create_depth(x, MiddleY - 32, 0, objDoor);
if(RoomRight)	instance_create_depth(Right, MiddleY - 32, 0, objDoor);
if(RoomUp)		instance_create_depth(MiddleX - 32, y, 0, objDoor);
if(RoomDown)	instance_create_depth(MiddleX - 32, Bottom, 0, objDoor);

if(Type == 0)
{
	
}

if(Type == 1)
{
	
}

if(Type == 2)
{
	instance_create_depth(MiddleX, MiddleY, 0, objPlayerSpawn);
	State = RoomState.Completed;
	Finished = true;
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