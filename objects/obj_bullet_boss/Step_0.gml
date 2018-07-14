/// @description Insert description here
// You can write your code in this editor



if(place_meeting(x,y,obj_border))
{
	instance_destroy();	
}

if(place_meeting(x,y,obj_melee))
{
	if(hp_pickup_is)
	{
		obj_player.hp += 1;
	}
	instance_destroy();
}

