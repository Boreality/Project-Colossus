if(keyboard_check_pressed(vk_space))
{
	if(global.death)
	{
		room_goto(room0);
	}
	else room_goto_next();
	
}