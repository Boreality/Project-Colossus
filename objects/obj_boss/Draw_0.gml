draw_self();


if(flash > 0)
{
	audio_sound_pitch(snd_damage,random_range(0.5,1.5));
	audio_play_sound(snd_damage,2,false);
	
	shader_set(sh_white);
	draw_self();
	shader_reset();
	flash--;
}




