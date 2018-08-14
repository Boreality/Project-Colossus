/// @description Final Phase


switch(status)
{
	case status.start:

	
		if(check_start)
		{
			//Dead animation
			instance_create_layer(obj_boss.x,obj_boss.y,"Trigger",obj_trigger_dead);
			check_start = false;
		}
		with(obj_trigger_dead)
		{
			if(place_meeting(x,y,obj_player))
			{
				with(other)
				{
					status = status.retreat;
				}
				instance_destroy();
			}
		}
 		break;
	
	case status.retreat:
	
	//Screaming animation
	//Running animation upwards
	with(obj_boss)
	{
		y += 8;
		if(place_meeting(x,y,obj_trigger_stop))
		{
			x = 40000;
			y = 200;
			
		}
	}
	if(check_destruct)
	{
		instance_create_layer(obj_boss.x,obj_boss.y,"BossWeapons",obj_destruct_collision)
		check_destruct = false;
	}
	
	//Wall destroying animation
	
	break;
	
	case status.corridor:
		
	
	break;
	
	
	
	
	
	
	
	
}