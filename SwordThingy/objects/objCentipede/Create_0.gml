/// @description Insert description here
// You can write your code in this editor


Diameter = sprite_get_width(sprCentipede);	//32, prolly

var angle = random_range(-360, 360);
var Last = id;
var CX = x, CY = y;

PartNum = 8;
for(var i = 0; i < PartNum; ++i)
{
	var Part = instance_create_depth(CX, CY, depth, objCentipedePart);
	Part.Parent = Last;
	Last = Part;
	
	angle += 20 * sign(angle);
	CX += lengthdir_x(Diameter, angle);
	CY += lengthdir_y(Diameter, angle);
}