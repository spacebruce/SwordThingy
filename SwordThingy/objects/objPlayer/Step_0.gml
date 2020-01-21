///Movement input
var Horizontal = 0, Vertical = 0;

if(keyboard_check(vk_anykey))
{
	Horizontal = keyboard_check(vk_right) - keyboard_check(vk_left);
	Vertical = keyboard_check(vk_down) - keyboard_check(vk_up);
}
else if gamepad_is_connected(0)
{
	Horizontal = gamepad_axis_value(0, gp_axislh)
	Vertical = gamepad_axis_value(0, gp_axislv)
	if(point_distance(0, 0, Horizontal, Vertical) < 0.3)
	{
		Horizontal = 0;
		Vertical = 0;
	}
}

//Calculate movement
if(Horizontal != 0 || Vertical != 0)
{
	SpeedX = Horizontal;
	SpeedY = Vertical;
}
else
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