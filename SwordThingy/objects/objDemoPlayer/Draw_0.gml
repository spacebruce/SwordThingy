/// @description Insert description here
// You can write your code in this editor

if(Step == 0)
{
	image_angle += 5;
	if(image_angle >= 360)
	{
		image_angle = 0;
		CountDown = 5;
		Step = 1;
	}
}

if(Step == 1)
{
	--CountDown
	if(CountDown <= 0)
	{
		++Step1Level
		CountDown = room_speed / 8;
		if(Step1Level > sprite_get_number(sprPlayer))
		{
			Step = 2;
			CountDown = room_speed / 1.5;
		}
	}
}

if(Step == 2)
{
	TrackY = max(TrackY - 1, BodyY);
	--CountDown;
	if(CountDown <= 0)
	{
		Step = 3;
		CountDown = room_speed / 2;
	}
}

if(Step == 3)
{
	OffsetX = max(OffsetX - 0.25, 0);
	if(OffsetX == 0)
		--CountDown;
	if(CountDown <= 0)
	{
		Step = 4;
	}
}

if(Step == 4)
{
	++ShadowX;
	if(ShadowX == 32)
		Step = 5;
}

if(Step == 5)
{
	image_angle += 5;
	if(image_angle == 360)
		Step = 6;
}

if(Step == 6)
{
	--FinishedX
	if(FinishedX < 128 + 24)
	{
		--TankX;
		ShadowX = TankX;
	}
	if(FinishedX == 32)
	{
		Step = 7;
	}
}

if(Step == 7)
{
	Turret_Angle += 5;
	image_angle -= 5;
	if(Turret_Angle == 180 + 360)
	{
		Step = 8;
	}
}
if(Step == 8)
{
	--FinishedX;
	if(FinishedX < -32)
		game_end();
}

draw_sprite_ext(sprPlayerOutline, TankX, ShadowX, 32 - 7, 1, 1, image_angle, c_white, 1.0);
for(var i = 0; i < sprite_get_number(sprPlayer); ++i)
{
	draw_sprite_ext(sprPlayer, i, TankX + round(i * OffsetX), BodyY - min(Step1Level, i), 1, 1, image_angle, c_white, 1.0);
	if(i < sprite_get_number(sprPlayerTracks) / 2)
		draw_sprite_ext(sprPlayerTracks, i, TankX + round(i * OffsetX), TrackY - min(Step1Level, i), 1, 1, image_angle, c_white, 1.0);
}

DrawTank(FinishedX, BodyY, image_angle, Turret_Angle, 0);


++FrameNum;