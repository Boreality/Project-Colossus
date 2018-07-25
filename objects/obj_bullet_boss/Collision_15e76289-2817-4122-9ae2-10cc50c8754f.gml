/// @desc
with(obj_player)
{
	if(!iFrame)
	{
		obj_player.hp -= 1;
		
	}	
	else
	{
		if(other.hp_pickup_is)		
		{
			hp += 1;	
		}
	}
}
instance_destroy();
	