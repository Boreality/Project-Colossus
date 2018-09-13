/// @desc
with(obj_player)
{
	flash = 3;
	if(!iFrame)
	{
		 hp -= 1;
		with(other) instance_destroy();
	}	
	else
	{
		if(other.hp_pickup_is) && (dodge_happening)	
		{
			hp += 1;	
			
			audio_sound_pitch(snd_health,random_range(0.8,1.5));
			audio_play_sound(snd_health,3,false);
			
			with(other) instance_destroy();
		}
	}
}

	