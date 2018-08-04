/// @description Final Phase


switch(stage)
{
	case stage.start:
	//Play all below once
	//Dead animation
	instance_create_layer(x,y,"Trigger",obj_trigger_dead);
	//stop here
	with(obj_trigger_dead) if(place_meeting(x,y,obj_player)) stage = stage.retreat;
	
	break;
	
	
	
	
	
	
	
	
	
	
	
	
}