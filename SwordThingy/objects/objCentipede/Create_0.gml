/// @description Insert description here
// You can write your code in this editor
Value = 400;
Damage = 10;

Health = 100;
HurtFrames = -1;

direction = random_range(-360, 360);
spd = 0.0;

///AI
SpottedPlayer = false;
SpottedDistance = 150;
PlayerLastX = 0;
PlayerLastY = 0;
SpottedTimeout = -1;

NodeBored = -1;
NodeTarget = noone;

TargetX = 0;
TargetY = 0;


///Create Chain
Diameter = sprite_get_width(sprCentipede);	//32, prolly

var angle = direction;
var Last = id;
var CX = x, CY = y;
CX += lengthdir_x(Diameter, angle);
CY += lengthdir_y(Diameter, angle);

PartNum = 8;
for(var i = 0; i < PartNum; ++i)
{
	var Part = instance_create_depth(CX, CY, depth, objCentipedePart);
	Part.Parent = Last;
	Part.Diameter = Diameter;
	Last = Part;
	
	angle += 10 * sign(angle);
	CX += lengthdir_x(Diameter, angle);
	CY += lengthdir_y(Diameter, angle);
}