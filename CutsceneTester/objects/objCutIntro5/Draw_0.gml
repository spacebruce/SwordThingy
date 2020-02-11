/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprSpace, 0, PanX / 4, 0);

draw_sprite(sprIntroShipBackground, 0, PanX, 0);
draw_sprite(sprIntroShipCloseup, DoorFrame, ShipX + PanX, ShipY);

if(Tank)
{
	draw_sprite(sprIntroTank, TankFrame, TankX, TankY);
}

draw_text(5, 5, "Sequence 5\nTime : " + string(Time));