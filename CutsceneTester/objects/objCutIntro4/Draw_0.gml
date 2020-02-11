/// @description Insert description here
// You can write your code in this editor

draw_clear(c_green);

draw_sprite_tiled_ext(sprIntroDockTile, 0, x, y, Zoom, Zoom, c_white, 1.0);

var wid = sprite_get_width(sprIntroDockZoom);
var hei = sprite_get_height(sprIntroDockZoom);

draw_rectangle_colour(x - (wid * Zoom * 0.75), y - (hei * Zoom* 0.75), x + (wid * Zoom * 0.75), y + (wid * Zoom * 0.75), c_black, c_black, c_black, c_black, 0);

var Scale;
for(var lyr = 1; lyr < 6; ++lyr)
{
	Scale = Scales[lyr - 1] * Zoom;
	var Shade = 0.5 + (lyr * 0.1);
	var Rot = 0;//(lyr - 1) * (22.5);
	for(var Angle = 0; Angle < 360; Angle += 90)
	{
		draw_sprite_ext(sprIntroDockZoom, 0, x, y, Scale, Scale, Angle + Rot, merge_colour(c_black, c_white, Shade), 1.0);
	}
}


for(var i = 0; i < 4; ++i)
{
	var Split = (Scale * wid) + (i * 32);
	var YPosition = y + (Scale * hei * 0.75) + (i * 32)
	draw_sprite(sprIntroLight, 0, x - Split, YPosition);
	draw_sprite(sprIntroLight, 0, x + Split, YPosition);
}

draw_sprite(sprIntroCockpit, 0, 0, 0);
draw_text(5,5,"Sequence 4\n" + string(Zoom));