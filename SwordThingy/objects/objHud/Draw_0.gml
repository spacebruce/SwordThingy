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
}

matrix_set(matrix_world, matrix_build_identity());