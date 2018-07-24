if(iFrame)
{
	image_blend = c_black;
	
	iFrame_timer--;
	if(iFrame_timer <= 0)
	{
			iFrame_timer = iFrame_timer_max;
			iFrame = false;
	}
}
else image_blend = c_white;