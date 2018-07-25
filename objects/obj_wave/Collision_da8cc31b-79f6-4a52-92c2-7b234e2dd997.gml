
with(obj_player)
{
	if(!iFrame)
	{
		 hp -= 1;
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

	