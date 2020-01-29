/// @description Insert description here
// You can write your code in this editor


if(Speed > 0)
{
	image_index += Speed / 5;	
}

if(image_index > 3.5)
	image_index = 0;
	
if(instance_exists(objPartyHard))
{
	var timer = floor(objPartyHard.Timer * 4) & 1;
	if(timer = 0)	image_xscale = -1;
	else	image_xscale = 1;
}