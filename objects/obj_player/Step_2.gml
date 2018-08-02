/// @description iFrame checker

if(hp != hp_prev)
{
	iFrame = true; 
	if(hp < (hp_prev - 1))
	{
		hp = hp_prev - 1;
	}
}

