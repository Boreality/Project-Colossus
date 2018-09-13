
with(obj_player)
{
	if(!iFrame)
	{
		 hp -= 1;
	}	
	else
	{
		if(other.hp_pickup_is)		
		{
			hp += 1;	
			
			audio_sound_pitch(snd_health,random_range(0.8,1.5));
			audio_play_sound(snd_health,3,false);
			
			with(other) instance_destroy();
		}
	}
}

	