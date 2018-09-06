if(iFrame)
{
	iFrame_timer--;
	if(iFrame_timer <= 0)
	{
			iFrame_timer = iFrame_timer_max;
			iFrame = false;
	}
}
