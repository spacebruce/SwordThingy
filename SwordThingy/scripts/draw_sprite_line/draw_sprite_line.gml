///draw_sprite_line(x,y, x2,y2, sprite);
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param sprite
var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3, sprite = argument4;

var wid = sprite_get_width(sprite);
var hei = sprite_get_height(sprite);

var dist = point_distance(x1, y1, x2, y2);
var dir = point_direction(x1, y1, x2, y2);

var drawMid = (dist >= sprite_get_width(sprite) * 2);

if(!drawMid)    //draw compressed sprite
{
    
}
else
{
    draw_sprite_ext(sprite, 0, x1, y1, 1.0, 1.0, dir, c_white, 1.0);
    draw_sprite_ext(sprite, 2, x2 - lengthdir_x(wid, dir), y2 - lengthdir_y(wid, dir), 1.0, 1.0, dir, c_white, 1.0);
    
    var scale = (dist - (sprite_get_width(sprite) * 2)) / sprite_get_width(sprite);
    draw_sprite_ext(sprite, 1, x1 + lengthdir_x(wid, dir), y1 + lengthdir_y(wid, dir), scale, 1.0, dir, c_white, 1.0);
}