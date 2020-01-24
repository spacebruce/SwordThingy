///LevelBegin(level num);

show_debug_message("Attempt load of level " + string (argument0));
///Hack to get around dead player bug
++Lives;
		
LevelCurrent = argument0;
ds_list_clear(LevelVisited);
ds_list_clear(RoomObject);

with(objRoom)
	instance_destroy();
with(parEntity)
	instance_destroy();
	
var Array = LevelLayout[| argument0];

var Width = Array[0];
var Height = Array[1];

var px = 0;
var py = 0;

var Size = 512;
for(var i = 0; i < (Width * Height); ++i)
{
	var Type = Array[2 + i];
	
	var Room = noone;
	ds_list_add(LevelVisited, Type == 2);	//Set visited flag if spawn room
	if(Type > 0)
	{
		Room = instance_create_depth(px * Size, py * Size, 0, objEmpty);
		
		Room.RoomX = px;
		Room.RoomY = py;
		Room.RoomIndex = i;
	
		Room.Size = Size;
		Room.Type = Type;
	
		with(Room)	instance_change(objRoom, true);
	
	
		//show_debug_message("R: "+ string(px)+","+string(py)+" : "+ string(Type));
		switch(Type)
		{
		case 1:	//Normal
		break;
		case 2:	//Spawn room
		break;	
		case 3:	//Boss room
		break;
		default:
		break;
		}
	}
	
	ds_list_add(RoomObject, Room);
	
	++px;	
	if(px == Width)
	{
		px = 0;
		++py;
	}
}

if(instance_exists(objPlayerSpawn))
{
	if(instance_exists(objPlayer))
	{
		objPlayer.x = objPlayerSpawn.y;
		objPlayer.y = objPlayerSpawn.x;
	}
	objMain.PlayerX = objPlayerSpawn.x
	objMain.PlayerY = objPlayerSpawn.y;
}