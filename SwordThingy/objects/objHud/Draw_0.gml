/// @description Insert description here
// You can write your code in this editor

var cam = view_camera[0];
x = camera_get_view_x(cam);
y = camera_get_view_y(cam);

matrix_set(matrix_world, matrix_build(x, y, 0, 0, 0, 0, 1.0, 1.0, 1.0));

with(objPlayer)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fntHUD);
	DrawTextOutline(string(Score), ScreenWidth / 2, 0);
	
	draw_set_halign(fa_left);
	DrawTextOutline(string(Lives), 0, 0);
	draw_set_halign(fa_center);

	draw_set_valign(fa_bottom)
	DrawTextOutline(string(Health), ScreenWidth / 2, ScreenHeight);

	var spr = -1;
	if(PickupEffect == PickupType.Power)	spr = sprPickupPower;
	if(PickupEffect == PickupType.Speed)	spr = sprPickupSpeed;
	if(spr != -1)
	{
		draw_sprite_ext(spr, 0, 24, ScreenHeight - 24, 2, 2, 0, c_white, 1.0);
		draw_set_halign(fa_left)
		var str
		if(PickupTimer >= 1.0)
			str = string_format(PickupTimer, 1, 0);
		else
			str = string_format(PickupTimer, 1, 1);
		DrawTextOutline(str, 48, ScreenHeight);
	}
	
	if(Level >= 0 || Level < ds_list_size(LevelLayout))
	{
		var Array = LevelLayout[| Level];
		var Size = 16;
		var Width = Array[0];
		var Height = Array[1];
		var OffsetX = ScreenWidth - Size * Width;
		var OffsetY = ScreenHeight - Size * Height;
		var px = 0, py = 0;
		
		draw_rectangle_colour(OffsetX, OffsetY, ScreenWidth, ScreenHeight, c_black, c_black, c_black, c_black, 0);
		for(var i = 0; i < (Width * Height); ++i)
		{
			var col = c_black;
			if(LevelVisited[| i])
			{
				var col = c_black;
				switch(Array[i + 2])
				{
					case 1:	col = c_blue;	break;
					case 2: col = c_green;	break;
					case 3: col = c_red;	break;
				}
				draw_rectangle_colour(OffsetX + (px * Size), OffsetY + (py * Size), OffsetX + ((px + 1) * Size), OffsetY + ((py + 1) * Size), col, col, col, col, 0);
			}
			++px;
			if(px == Width)	{	px = 0; ++py;	}
		}
		
		draw_circle_colour(OffsetX + (x / (512 / 16)), OffsetY + (y / (512 / 16)), 2, c_blue, c_green, 0);
	}
	
	draw_set_font(fntPopup);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	var t = "Rm : " + string(RoomX) + "x" + string(RoomY) + " ("+ string_format(RoomSlot,2,0) + ")";
	DrawTextOutline(t, ScreenWidth, OffsetY);
}

matrix_set(matrix_world, matrix_build_identity());