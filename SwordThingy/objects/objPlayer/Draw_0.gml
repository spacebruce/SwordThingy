//draw_circle(x, y - 12, 12, 1);


for(var i = 0; i < sprite_get_number(sprPlayer); ++i)
	draw_sprite_ext(sprPlayer, i, x, y - i, 1.0, 1.0, direction, c_white, 1.0);
	
for(var i = 0; i < sprite_get_number(sprPlayerTurret); ++i)
	draw_sprite_ext(sprPlayerTurret, i, x, y - (9 + i), 1.0, 1.0, ShootDirection, c_white, 1.0);
	
draw_text(0, 0, string(SpeedX) + ", " + string(SpeedY));