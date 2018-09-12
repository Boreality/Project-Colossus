/// @description iFrame checker

if(hp != hp_prev)
{
	audio_sound_pitch(snd_damage,random_range(0.5,1.5));
	audio_play_sound(snd_damage,3,false);
	iFrame = true; 
	if(hp < (hp_prev - 1))
	{
		hp = hp_prev - 1;
	}
}

