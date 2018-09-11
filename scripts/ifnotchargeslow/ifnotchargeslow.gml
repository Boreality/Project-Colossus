/// ifnotchargeslow()
/// @arg code

if(instance_exists(obj_boss_atkfinal))
{
	with(obj_boss_atkfinal)
	{
		if(status != status.chargeslow)
			{
				with(other)
				{
					return argument0;
				}
			}
	}
}
else return argument0;