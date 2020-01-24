/// @description Insert description here
// You can write your code in this editor
HurtFrames -= 1 / room_speed;
SpottedTimeout -= 1 / room_speed;

if (Health < 0)
{
	instance_destroy();
}

var PlayerX = -9999, PlayerY = -9999;
if(instance_exists(objPlayer))
{
	PlayerX = objPlayer.x;
	PlayerY = objPlayer.y;
}

///Vision cone
var ConeCX = x + lengthdir_x(SpottedDistance, direction);
var ConeCY = y + lengthdir_y(SpottedDistance, direction);
ConeLX = ConeCX + lengthdir_x(SpottedDistance, direction - 90);
ConeLY = ConeCY + lengthdir_y(SpottedDistance, direction - 90);
ConeRX = ConeCX + lengthdir_x(SpottedDistance, direction + 90);
ConeRY = ConeCY + lengthdir_y(SpottedDistance, direction + 90);
if(point_in_triangle(PlayerX, PlayerY, x, y, ConeLX, ConeLY, ConeRX, ConeRY))
{
	SpottedPlayer = true;
	SpottedTimeout = 3;
	TargetX = objPlayer.x;
	TargetY = objPlayer.y;
}

if(SpottedPlayer)
{
	NodeBored = -1;
	SpottedPlayer = (SpottedTimeout > 0);
}

if(!SpottedPlayer)
{
	SpottedTimeout = -1;
	if(NodeBored < 0)
	{
		NodeBored = 10;
		NodeTarget = instance_find(objCentipedePatrol, irandom(instance_number(objCentipedePatrol) - 1));
	}
	NodeBored -= 1 / room_speed;
	if(instance_exists(NodeTarget))
	{
		TargetX = NodeTarget.x;
		TargetY = NodeTarget.y;
	}
}

var TargetDir = point_direction(x, y, TargetX, TargetY)
var dd = angle_difference(direction, TargetDir);
direction -= min(abs(dd), 5) * sign(dd);
	
spd = 0.6;

Move(spd, direction);