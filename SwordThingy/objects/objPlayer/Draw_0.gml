//draw_circle(x, y - 12, 12, 1);
draw_sprite_ext_skew(sprPlayerOutline, 0, x, y, 1.0, 1.0, BodyDirection, 1.0, 0.2, 0.3, 0.85, 0.68);

if(HurtFrames > 0)
{
	shader_set(shdFlash);
}

DrawTank(x, y, BodyDirection, ShootDirection, TrackFrame);

if(HurtFrames > 0)
{
	shader_reset();
}
