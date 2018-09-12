

if(instance_exists(obj_boss_atkfinal))
{
	#region Final Phase
	if(opening)
	{
		if(image_yscale <= 34)
		{
			image_yscale += 0.2;
			audio_sound_pitch(snd_lazer,random_range(0.9,1.1));
			audio_play_sound(snd_lazer,2,false);
			
		}
		else
		{
			opening = false;
			status = status.gameplay;
			retract = true;
			cooldown = true;
		}
	}

	if(charge)
	{
		if(image_yscale <= 34)
		{
			image_yscale += 0.7;
			audio_sound_pitch(snd_lazer,random_range(0.9,1.1));
			audio_play_sound(snd_lazer,2,false);	
		}
		else
		{
			cool_timer--;
			if(cool_timer <= 0)
			{
				charge = false;	
				cooldown = true;
				last_phase = "charge";
				cool_timer = cool_timer_max;
			}
		}
	
	}
	if(retract)
	{
		if(image_yscale >= 1) image_yscale = 0;	
		else
		{
			image_xscale = xscale_stretch;
			retract = false;
			cooldown = true;
			last_phase = "retract";
		}
	}

	if(cooldown)
	{
		cooldown_timer--;
		if(cooldown_timer <= 0)
		{
			if(last_phase == "charge") 
			{
				retract = true;
				cooldown_timer = cooldown_timer_max;
				cooldown = false;
			}
			else
			{
				charge = true;
				cooldown_timer = cooldown_timer_max;	
				cooldown = false;
			}
		}
	}

	if(place_meeting(x,y,obj_player))
	{
		room_restart();
	}
	#endregion
}
else
{
	image_yscale = 10;
	image_xscale = 1.5;
	image_speed = 3;
	image_angle += 1;
	direction = image_angle;
	#region if hit player
	if(place_meeting(x,y,obj_player))
	{
		with(obj_player)
		{
			flash = 3;
			if(!iFrame)
			{
				 hp -= 1;
			}	
			
			}
		}

	}
	#endregion
