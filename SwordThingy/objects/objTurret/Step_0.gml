/// @description Insert description here
// You can write your code in this editor

if (z > 0)
{
	z -= 4;
	return;
}

if(Health <= 0)
	instance_destroy();

if(instance_exists(objPlayer))
{
	Target = objPlayer;
}
else
{
	Target = noone;
}

if(Target == noone)
{
	direction += (60 / room_speed);
}
else
{
	var dir = point_direction(x, y, Target.x, Target.y);
	var dd = angle_difference(direction, dir);
	direction -= min(abs(dd), 5) * sign(dd);
}

if(current_second & 1)
{
	var dist = 2000;
	var xto = x + lengthdir_x(dist, direction);
	var yto = y + lengthdir_y(dist, direction);
	var hit = collision_line_point(x, y, xto, yto, parEntity, true, true);
	if(hit[0] == noone)
	{
		LineX = xto;
		LineY = yto;
	}
	else
	{
		LineX = hit[1];
		LineY = hit[2];
		if(DamageReset)
		{
			if(hit[0] == instance_find(objPlayer, 0) || object_get_parent(hit[0]) == parEnemy)
			{
				hit[0].Health -= 5;
				DamageReset = false;
			}
		}
	}
}
else
{
	LineX = x;
	LineY = y;
	DamageReset = true;
}