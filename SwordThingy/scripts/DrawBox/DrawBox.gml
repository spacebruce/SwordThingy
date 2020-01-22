///DrawBox(x, argument1, Height, Angle, SpriteBox, SpriteTop);

draw_sprite_ext(argument4, 0, argument0, argument1, 1.0, 1.0, argument3, c_white, 1.0);
for(var i = 1; i < argument2; ++i)
	draw_sprite_ext(argument4, 1, argument0, argument1 - i, 1.0, 1.0, argument3, c_white, 1.0);
draw_sprite_ext(argument4, 2, argument0, argument1 - argument2, 1.0, 1.0, argument3, c_white, 1.0);

if(sprite_exists(argument5))
	draw_sprite_ext(argument5, 0, argument0, argument1 - argument2, 1.0, 1.0, 0, c_white, 1.0);