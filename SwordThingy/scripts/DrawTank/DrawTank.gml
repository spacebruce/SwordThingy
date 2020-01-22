///DrawTank(x, y, body dir, turret dir, track frame);
var dx = argument0;
var dy = argument1;
var BodyDirection = argument2;
var ShootDirection = argument3;

draw_sprite_ext(sprPlayerOutline, 0, dx, dy - 7, 1, 1, BodyDirection, c_white, 1.0);
for(var i = 0; i < sprite_get_number(sprPlayer); ++i)
{
	draw_sprite_ext(sprPlayer, i, dx, dy - i, 1.0, 1.0, BodyDirection, c_white, 1.0);
	var off = (argument4 & 1) * 4;
	if(i < (sprite_get_number(sprPlayerTracks) / 2))
	{
		draw_sprite_ext(sprPlayerTracks, i + off, dx, dy - i, 1.0, 1.0, BodyDirection, c_white, 1.0);
	}
}

for(var i = 0; i < sprite_get_number(sprPlayerTurret); ++i)
{
	draw_sprite_ext(sprPlayerTurretOutline, i, dx, dy - (9 + i), 1.0, 1.0, ShootDirection, c_white, 1.0);
}
for(var i = 0; i < sprite_get_number(sprPlayerTurret); ++i)
{
	draw_sprite_ext(sprPlayerTurret, i, dx, dy - (9 + i), 1.0, 1.0, ShootDirection, c_white, 1.0);
}