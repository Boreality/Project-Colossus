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
			direction += 90;
			with(instance_create_layer(x,y,"Bullets",obj_bullet_boss_big))
			{
				speed = 2;
				direction = other.direction
			}
			firing_delay = firing_delay_max;
		}
		
	}

}



	