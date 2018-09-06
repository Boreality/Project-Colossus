/// @desc
with(obj_player)
{
	flash = 3;
	if(!iFrame)
	{
		 hp -= 1;
		with(other) instance_destroy();
	}	
	else
	{
		if(other.hp_pickup_is) && (dodge_happening)	
		{
			hp += 1;	
			with(other) instance_destroy();
		}
	}
}

	