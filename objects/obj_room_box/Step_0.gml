if(global.death)
{
	visible = true;
	image_alpha = image_alpha * 1.09;
	if(image_alpha >= 1)
	{
		room_goto(rm_death);	
	}
	
}