/// @desc
with(obj_player)
{
	if(!iFrame)
	{
		 hp -= 1;
		with(other) instance_destroy();
	}	
	else
	{
		if(other.hp_pickup_is)		
		{
			hp += 1;	
			with(other) instance_destroy();
		}
	}
}

	