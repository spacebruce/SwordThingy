/// @description Insert description here
// You can write your code in this editor

var tween = clamp(Frame / 363, 0, 1);
tween = -1 * (tween * (tween - 2));

draw_sprite(sprSpace, 0, lerp(-150, 0, tween) / 4, 0);
draw_sprite(sprIntroStation, 0, lerp(-150, 0, tween), 0);
draw_sprite_ext(sprIntroShip, ShipFrame, x, y, ShipScale, ShipScale, 0, c_white, 1.0);

draw_text_colour(5, 5, "Sequence 3\nFrame : " + string(Frame), c_white, c_white, c_white, c_white, 1.0);