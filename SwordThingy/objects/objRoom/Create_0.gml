/// @description Insert description here
// You can write your code in this editor

enum RoomState { Unexplored, Inactive, Active, Completed }
State = RoomState.Unexplored;
Active = false;
Finished = false;

TileSetData = [	tileset0, tileset1, tileset2 ];
TileSet = TileSetData[Level];

Border = 32;
Left = x + Border;
Right = (x + Size) - Border;
Top = y + Border;
Bottom = (y + Size) - Border;
MiddleX = x + (Size / 2);
MiddleY = y + (Size / 2);

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

RoomCreateWalls(RoomLeft, RoomRight, RoomUp, RoomDown);

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