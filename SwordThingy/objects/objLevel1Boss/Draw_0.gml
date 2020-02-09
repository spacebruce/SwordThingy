/// @description Insert description here
// You can write your code in this editor

var vscale = 1.5;
var spr = sprBoss1;

var num = sprite_get_number(spr);
var shade = c_gray;
for(var i = 0; i < num; ++i)
{
	shade = merge_colour(c_gray, c_white, i / num);
	draw_sprite_ext(spr, num - i, x, (y - 2) -(i * vscale) + 1 , 2.0, 2.0, image_angle, shade, 1.0);
	draw_sprite_ext(spr, num - i, x, (y - 2) - (i * vscale), 2.0, 2.0, image_angle, shade, 1.0);
	draw_sprite_ext(spr, num - i, x + 1, (y - 2) - (i * vscale) + 1 , 2.0, 2.0, image_angle, shade, 1.0);
	draw_sprite_ext(spr, num - i, x + 1, (y - 2) - (i * vscale), 2.0, 2.0, image_angle, shade, 1.0);
	
	if(i < sprite_get_number(sprBoss1Tracks))
	{
		var off = 2 * (38 / 2);
		draw_sprite_ext(sprBoss1Tracks, i,
			x + lengthdir_x(off, image_angle),
			(y - (i * vscale)) + lengthdir_y(off, image_angle), 
			2, 2, image_angle, shade, 1.0);
			
		draw_sprite_ext(sprBoss1Tracks, i,
			x - lengthdir_x(off, image_angle),
			(y - (i * vscale)) - lengthdir_y(off, image_angle), 
			2, 2, image_angle, shade, 1.0);
	}
}