
RoomX = 0;
RoomY = 0;
RoomSlot = 0;
RoomObj = noone;

HurtFrames = -1;

MaxHealth = 100;
Health = MaxHealth;

Speed = 0;
Direction = 90;

ShootCooldown = -1;
GunTipX = x;
GunTipY = y;

TrackFrame = 0;
direction = 0;
BodyDirection = 0;
ShootDirection = 0;

friction = 0.15;

enum PickupType
{
	None, Power, Speed,
}
PickupEffect = PickupType.None;
PickupTimer = -1;