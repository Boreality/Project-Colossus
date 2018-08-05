/// @description Final Phase


switch(status)
{
	case status.start:

	
		if(check_start)
		{
			//Dead animation
			instance_create_layer(x,y,"Trigger",obj_trigger_dead);
			check_start = false;
		}
		with(obj_trigger_dead) if(place_meeting(x,y,obj_player)) with(other) status = status.retreat;
	
		break;
	
	case status.retreat:
	
	//Screaming animation
	//Running animation upwards
	with(obj_boss) y -= 8;
	//Wall destroying animation
	//switch room
	
	
	
	
	break;
	
	
	
	
	
	
	
	
	
	
}