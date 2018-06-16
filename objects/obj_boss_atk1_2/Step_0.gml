/// @desc Big huge bullets that fire diagonal and horizontal to spice things up
x = obj_boss.x;
y = obj_boss.y;


firing_delay--;

if(mode == "Straight")
{
	if(firing)
	{
		if(firing_delay == 0)
		{
			Fire90DegreesBig()
			Fire90DegreesBig()
			Fire90DegreesBig()
			Fire90DegreesBig()
			
			firing_delay = firing_delay_max;
		}
	}
}

if(mode == "Slanted")
{
	direction = 45;
	if(firing)
	{
		if(firing_delay == 0)
		{
			Fire90DegreesBig()
			Fire90DegreesBig()
			Fire90DegreesBig()
			Fire90DegreesBig()
			
			firing_delay = firing_delay_max;
		}
	}
}



	