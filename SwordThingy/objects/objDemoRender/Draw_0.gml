/// @description Insert description here
// You can write your code in this editor

var vscale = 1.5;

var num = sprite_get_number(sprite_index);
for(var i = 0; i < num; ++i)
{
	draw_sprite_ext(sprite_index, num - i, x, y - (i * vscale) + 1 , 2.0, 2.0, image_angle, c_white, 1.0);
	draw_sprite_ext(sprite_index, num - i, x, y - (i * vscale), 2.0, 2.0, image_angle, c_white, 1.0);
	draw_sprite_ext(sprite_index, num - i, x + 1, y - (i * vscale) + 1 , 2.0, 2.0, image_angle, c_white, 1.0);
	draw_sprite_ext(sprite_index, num - i, x + 1, y - (i * vscale), 2.0, 2.0, image_angle, c_white, 1.0);
	
	if(i < sprite_get_number(sprBoss1Tracks))
	{
		var off = 2 * (38 / 2);
		draw_sprite_ext(sprBoss1Tracks, i,
			x + lengthdir_x(off, image_angle),
			(y - (i * vscale)) + lengthdir_y(off, image_angle), 
			2, 2, image_angle, c_white, 1.0);
			
		draw_sprite_ext(sprBoss1Tracks, i,
			x - lengthdir_x(off, image_angle),
			(y - (i * vscale)) - lengthdir_y(off, image_angle), 
			2, 2, image_angle, c_white, 1.0);
	}
}