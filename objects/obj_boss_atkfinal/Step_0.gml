/// @description Final Phase


switch(status)
{
	case status.start:
	
		if(check_start)
		{
			obj_boss.sprite_index = spr_boss_dead;
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
	
		if(check_run)
		{
			obj_boss.sprite_index = spr_boss_running;		
			check_run = false;	
		}
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
	
	break;
	
	case status.corridor:
		
	
	break;
	
	
	
	
	
	
	
	
}