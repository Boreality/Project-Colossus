/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//event_inherited();

with(obj_player)
{
	if(!iFrame)
	{
		 hp -= 2;
		with(other) instance_destroy();
	}	
	
}

	