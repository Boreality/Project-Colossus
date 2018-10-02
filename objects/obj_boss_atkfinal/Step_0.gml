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
				with(other) status = status.retreat;
				instance_destroy();
			}
		}
 		break;
	
	case status.retreat:
		
		if(check_run)
		{
			obj_boss.sprite_index = spr_boss_running;	
		//	obj_boss.image_speed = 5;
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
	case status.gameplay:
		
		if(check_retract)
		{
			obj_lazer.retract = true;
			check_retract = false;
		}
	break;
	
	case status.chargetrigger:
	if(check_stop)
	{
		instance_destroy(obj_lazer);
		obj_player.control_amount = 0;
		obj_camera.follow = obj_boss;
		obj_boss.sprite_index = spr_boss_rage;
		
		check_stop = false;
	}
	break;



	break;
	
	
	
	case status.chargeslow:
	if(check_charge)
	{
		with(obj_player) image_speed = image_speed / 4;
		with(obj_boss) image_speed = image_speed / 3;
		obj_camera.follow = obj_camera_player_boss;
		obj_boss.sprite_index = spr_boss_run_back;
		obj_player.control_amount = 0.05;
		
		check_charge = false;
	}
		with(obj_boss) y -= 7;
		if(obj_boss.hp <= 2) status = status.recoil;
		with(obj_boss) if (place_meeting(x,y,obj_player)) room_restart();
	
	break;
	
	case status.recoil:
	
		obj_boss.sprite_index = spr_boss_recoil;
		if(last_hit_check )
		{
			audio_sound_pitch(snd_finalhit,1);
			audio_play_sound(snd_finalhit,5,false);
			last_hit_check = false;
		}
		
		obj_boss.y += 10;
		recoil_timer--;
		
		if(recoil_timer <= 0) status = status.landing;
	break;	
	
	case status.landing:
	obj_boss.sprite_index = spr_boss_landing;
		obj_boss.y += 30;
		recoil_timer1--;
		
		if(recoil_timer1 <= 0) status = status.skidding;
	
	
	break;
	case status.skidding:
		
		recoil_timer2--;
		obj_boss.y += (slowing_down--);
		if(recoil_timer2 <= 0) 
		{
			obj_camera.follow = obj_player_camera;
			status = status.victory;
		}
		slowing_down = clamp(slowing_down,0,10)
	break;
	
	case status.victory:
		obj_player.control_amount = 1;
		
		victory_delay--;
		if(victory_delay <= 0) && (victory_check)
		{
			instance_create_layer(x,obj_player.y - 100,"Cursor",obj_victory_banner);
			victory_check = false;
		}
	
	// Stage 10: Victory banner shows up. After a while brief credits roll and game ends
	break;
	
	
}