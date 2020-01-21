///Movement input
var Horizontal = 0, Vertical = 0;

if gamepad_is_connected(0)
{
	Horizontal = gamepad_axis_value(0, gp_axislh)
	Vertical = gamepad_axis_value(0, gp_axislv)
	if(point_distance(0, 0, Horizontal, Vertical) < 0.3)
	{
		Horizontal = 0;
		Vertical = 0;
	}
	var ShootHor = gamepad_axis_value(0, gp_axislh)
	var ShootVer = gamepad_axis_value(0, gp_axislv)
	if(point_distance(0, 0, ShootHor, ShootVer) < 0.3)
	{
		ShootHor = 0;
		ShootVer = 0;
	}
	ShootDirection = point_direction(0, 0, ShootHor, ShootVer);
} 
else
{
	Horizontal = keyboard_check(vk_right) - keyboard_check(vk_left);
	Vertical = keyboard_check(vk_down) - keyboard_check(vk_up);
	ShootDirection = point_direction(window_get_width() / 2, window_get_height() / 2, window_mouse_get_x(), window_mouse_get_y());
}

//Calculate movement
if(Horizontal != 0 || Vertical != 0)	//if moving, snap to desired speed & dir
{
	SpeedX = Horizontal;
	SpeedY = Vertical;
	direction = point_direction(0, 0, SpeedX, SpeedY);
}
else	//if released, apply friction
{
	//If not moving, convert speed vector into speed/direction and apply friction
	var Speed = point_distance(0, 0, SpeedX, SpeedY);
	var Direction = point_direction(0, 0, SpeedX, SpeedY);
	Speed = max(0, abs(Speed) - friction);
	//Convert back to vector
	SpeedX = sin(Direction) * Speed;
	SpeedY = cos(Direction) * Speed;
}

//Apply movement to X/Y
repeat(abs(SpeedX))
{
    if (!place_meeting(x + sign(SpeedX), y, parSolid))
	{
        x += sign(SpeedX);
    }
	else
	{
        break;
    }
}

repeat(abs(SpeedY)) 
{
    if (!place_meeting(x, y + sign(SpeedY), parSolid))
	{
        y += sign(SpeedY);
    }
	else
	{
        break;
    }
}