///LevelBegin(level num);

///Hack to get around dead player bug
++Lives;
		
LevelCurrent = argument0;

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
	var Room = instance_create_depth(px * Size, py * Size, 0, objRoom);
	var Type = Array[2 + i];
	Room.Size = Size;
	Room.Type = Type;
	
	show_debug_message("R: "+ string(px)+","+string(py)+" : "+ string(Type));
	switch(Type)
	{
	case 1:	//Normal
		
	break;
	case 2:	//Spawn room
	break;	
	case 3:	//Boss room
		
	break;
	default:
		instance_destroy(Room);
	break;
	}
	++px;	
	if(px == Width)	
	{
		px = 0;
		++py;
	}
}