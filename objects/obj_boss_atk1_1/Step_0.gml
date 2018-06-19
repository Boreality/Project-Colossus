/// @desc Circle bullet spam attack
x = obj_boss.x;
y = obj_boss.y;



//Goal: Fire 1 bullet while the thing is circling evey 0.5 seconds
rotation_spd += (random_range(-0.5,0.5) + choose(-2,2));


direction+= rotation_spd;

firing_delay--;
if(firing)
{
	if(firing_delay <= 0)
	{
		with(instance_create_layer(x,y,"Bullets",obj_bullet_boss))
		{
			speed = other.bullet_spd ;	
			direction = other.direction;
		}
		firing_delay = firing_delay_max;
	}
}
	
rotation_spd = rotation_spd_max;
	