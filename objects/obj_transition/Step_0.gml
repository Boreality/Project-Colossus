if(place_meeting(x,y,obj_player))
{
	room_goto_next();	
	if(room == room0)
	{
		status = status.lazerdodge;	
	}
}