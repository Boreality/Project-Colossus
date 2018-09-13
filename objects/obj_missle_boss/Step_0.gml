/// @desc
//y*=1.05;

//if(y >= obj_player.y)
//{
	repeat(8) Fire45DegreesSmall();
	
	
	audio_sound_pitch(snd_bombhit,random_range(0.5,1.5));
	audio_play_sound(snd_bombhit,0,false);
	
	instance_destroy()
//}