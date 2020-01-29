///Input
HurtFrames -= 1 / room_speed;
ShootCooldown -= 1 / room_speed;
PickupTimer -= 1 / room_speed;

//Debug
if(keyboard_check_pressed(vk_delete) || gamepad_button_check(0, gp_select))
	Health = -100;
	
if (Health <= 0)
{
	instance_destroy();
}

if(keyboard_check_pressed(vk_control))
{
	if(RoomObj != noone)
		RoomObj.Finished = true;
}

var Shoot = false;
var Horizontal = 0, Vertical = 0;
var TurretMove = false;

var turretDir = ShootDirection;
if gamepad_is_connected(0)
{
	Horizontal = gamepad_axis_value(0, gp_axislh);
	Vertical = gamepad_axis_value(0, gp_axislv);
	
	var padHor = gamepad_button_check(0, gp_padr) - gamepad_button_check(0, gp_padl);
	var padVer = gamepad_button_check(0, gp_padd) - gamepad_button_check(0, gp_padu);
	if(padHor != 0 || padVer != 0)
	{
		Horizontal = padHor;
		Vertical = padVer;
	}
	var ShootHor = gamepad_axis_value(0, gp_axisrh);
	var ShootVer = gamepad_axis_value(0, gp_axisrv);
	TurretMove = (point_distance(0, 0, ShootHor, ShootVer) > 0.5);
	turretDir = point_direction(0, 0, ShootHor, ShootVer);
	Shoot = gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_shoulderrb) || gamepad_button_check(0, gp_shoulderr);
} 
else
{
	Horizontal = keyboard_check(vk_right) - keyboard_check(vk_left);
	Vertical = keyboard_check(vk_down) - keyboard_check(vk_up);
	turretDir = point_direction(window_get_width() / 2, window_get_height() / 2, window_mouse_get_x(), window_mouse_get_y());
	TurretMove = true;
	Shoot = mouse_check_button_pressed(mb_left);
}

//Calculate movement
var SpeedMin = 0.3;
Speed = point_distance(0, 0, Horizontal, Vertical) * 2;


Direction = point_direction(0, 0,  Horizontal, Vertical);
if(point_distance(0, 0, Horizontal, Vertical) > 0.5)	//if moving, snap to desired speed & dir
{
	Speed = max(Speed, SpeedMin);
	if(PickupEffect = PickupType.Speed)
		Speed *= 1.5;
	//Only change tank body angle when moving, visual only
	var dd = angle_difference(BodyDirection, Direction);
	BodyDirection -= min(abs(dd), 10) * sign(dd);
}

else	//if released, apply friction
{
	//If not moving, convert speed vector into speed/direction and apply friction
	Speed = max(0, abs(Speed) - friction);
	
}
Move(Speed, Direction);


//Tween turret angle
if(TurretMove)
{
	var dd = angle_difference(ShootDirection, turretDir);
	ShootDirection -= min(abs(dd), 10) * sign(dd);
}

GunTipX = x + lengthdir_x(sprite_get_width(sprPlayerTurret) - 8, ShootDirection);
GunTipY = y - (sprite_get_number(sprPlayer) + 2) + lengthdir_y(sprite_get_width(sprPlayerTurret) - 8, ShootDirection);

///Shoot
if(Shoot && (ShootCooldown < 0))
{
	var bullet = instance_create_depth(GunTipX, GunTipY, depth, objPlayerBullet);
	bullet.direction = ShootDirection;
	bullet.speed = 10;
	if(PickupEffect = PickupType.Power)
		ShootCooldown = 0;
	else
		ShootCooldown = 0.1;
}

//Stuff
TrackFrame += (Speed / 10);

//Powerups
if(PickupTimer <= 0)
{
	PickupTimer = -1;
	PickupEffect = PickupType.None;
}

///Current Room
if(x != xprevious || y != yprevious)
{
	RoomX = floor(x / RoomSize);
	RoomY = floor(y / RoomSize);
	var Array = LevelLayout[| Level];
	RoomSlot = (RoomY * Array[0]) + RoomX;
	RoomObj = RoomGetObject(RoomX, RoomY);
	
	LevelVisited[| RoomSlot] = true;
}