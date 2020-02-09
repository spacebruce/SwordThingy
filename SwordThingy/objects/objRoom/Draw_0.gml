/// @description Insert description here
// You can write your code in this editor

var wid = sprite_get_width(sprFloorTile);
for(var iy = 0; iy < Size / wid; ++iy)
{
	for(var ix = 0; ix < Size / wid; ++ix)
	{
		if(FloorGrid[# ix, iy])	
			draw_sprite(sprFloorTile, 0, x + (ix * wid), y + (iy * wid));
	}
}

for(var i = 1; i < ((Size / 32) - 1); ++i)
{
	draw_sprite(sprWallTile, 0, x + (i * 32), y);
	draw_sprite(sprWallTile, 3, x + (i * 32), y + (Size - 32));
	draw_sprite(sprWallTile, 1, x, y + (i * 32));
	draw_sprite(sprWallTile, 2, x + (Size - 32), y + (i * 32));
}
draw_sprite(sprWallTile, 4, x, y);
draw_sprite(sprWallTile, 5, x + (Size - 32), y);
draw_sprite(sprWallTile, 6, x + (Size - 32), y + (Size - 32));
draw_sprite(sprWallTile, 7, x, y + (Size - 32));

//draw_rectangle_color(x, y, x + Size, y + Size, c_gray, c_gray, c_gray, c_gray, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(Left, Top, "Area : " + string(RoomIndex) + " ("+ string(RoomX)+"x"+string(RoomY)+")");// + "\nDoor L" + string(RoomLeft)+"U"+string(RoomUp)+"R"+string(RoomRight)+"D"+string(RoomDown))