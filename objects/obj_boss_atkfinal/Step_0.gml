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
			instance_create_layer(obj_boss.x,obj_boss.y,"BossWeapons",obj_destruct_collision)
			instance_deactivate_object(obj_border_temp);
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
		
	
	break;
	
	//In room 2, both are positioned at opposite ends
	case status.lazerdodge:
		
		if(check_fire)
		{
			with(obj_boss) instance_create_layer(x,y -10,"BossWeapons",obj_lazer);		
			check_fire = false;
		}
	
	break;
	
	
	
	
	
	
	
	
}