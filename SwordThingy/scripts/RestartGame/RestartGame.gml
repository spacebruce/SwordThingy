///RestartGame(Lives);

Score = 0;
Lives = argument0;

with(parEnemy)
{
	instance_destroy();
}

with(parPickup)
{
	x = xstart;
	y = ystart;
}

instance_create_depth(0,0,0,objPlayerDead);
LevelLoad(0);