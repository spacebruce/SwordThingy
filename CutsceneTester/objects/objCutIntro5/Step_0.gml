/// @description Insert description here
// You can write your code in this editor

Time += 1 / room_speed;

if(Time < 3)
{
	var tween = -1 * ((Time / 3) * ((Time / 3) - 2));
	ShipX = lerp(-room_width / 2, 0, tween)
	ShipY = 300;
}
else if((Time > 4) && (Time < 5))
{
	var t = (Time - 4);
	var b = 0;
	var c = 1;
	t /= 1/2;
	var tween = 0;
	if (t < 1) 
	{
		tween = c/2*t*t + b;
	}
	else
	{
		t--;
		tween =  -c/2 * (t*(t-2) - 1) + b;
	}
	ShipY = lerp(300, 340, tween);
}

if(Time > 6 && Time < 7)
{
	DoorFrame = clamp((Time - 6) * 4, 0, 4);
}

if(Time > 7.5 && PanX > -590)
{
	PanX -= 150 / room_speed;
	Tank = true;
	TankY = lerp(340, 310, clamp(Time - 7.5, 0, 1));
}

if(PanX < -200)
{
	TankTween += 1/room_speed;
	TankY = lerp(310, 360, clamp(TankTween, 0, 1));
	if(TankY > 350)
		TankFrame = 1;
}
