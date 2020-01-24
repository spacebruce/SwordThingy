///RoomGetObject(rX, rY);
//show_debug_message("RoomGetObject not implemented correctly!");
var Array = LevelLayout[| Level]
var wid = Array[0];
return RoomObject[| (argument1 * wid) + argument0];