//draw_circle(x, y - 12, 12, 1);


for(var i = 0; i < sprite_get_number(sprPlayer); ++i)
{
	draw_sprite_ext(sprPlayer, i, x, y - i, 1.0, 1.0, BodyDirection, c_white, 1.0);
	var off = (TrackFrame & 1) * 4;
	if(i < (sprite_get_number(sprPlayerTracks) / 2))
	{
		draw_sprite_ext(sprPlayerTracks, i + off, x, y - i, 1.0, 1.0, BodyDirection, c_white, 1.0);
	}
}

for(var i = 0; i < sprite_get_number(sprPlayerTurret); ++i)
{
	draw_sprite_ext(sprPlayerTurretOutline, i, x, y - (9 + i), 1.0, 1.0, ShootDirection, c_white, 1.0);
}
for(var i = 0; i < sprite_get_number(sprPlayerTurret); ++i)
{
	draw_sprite_ext(sprPlayerTurret, i, x, y - (9 + i), 1.0, 1.0, ShootDirection, c_white, 1.0);
}


draw_circle(GunTipX, GunTipY, 4, 1);

draw_text(0, 0, string(SpeedX) + ", " + string(SpeedY));