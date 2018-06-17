/// @desc Big huge bullets that fire diagonal and horizontal to spice things up
x = obj_boss.x;
y = obj_boss.y;



firing_delay--;
 
if(last_atk == "Slanted") or (last_atk == "null")
{
	if(firing)
	{
		direction = 0;
		if(firing_delay == 0)
		{
			Fire90DegreesBig()
			Fire90DegreesBig()
			Fire90DegreesBig()
			Fire90DegreesBig()
			
			firing_delay = firing_delay_max;
			last_atk = "Straight";
		}
	}
}

if(last_atk == "Straight")
{
	if(firing)
	{
		direction = 45;
		if(firing_delay == 0)
		{
			Fire90DegreesBig()
			Fire90DegreesBig()
			Fire90DegreesBig()
			Fire90DegreesBig()
			
			firing_delay = firing_delay_max;
			last_atk = "Slanted";
		}
	}
}



	