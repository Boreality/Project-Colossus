if(!global.death)
{
	if(reduction)
	{
		if(check)
		{
			hp_boss_temp = hp_boss_prev;
			check = false;
		}
		hp_boss_temp--;
		if(hp_boss_temp <= obj_boss.hp)
		{
			reduction = false;
			check = true;
			hp_boss_temp = obj_boss.hp;
		}	
	}
}



