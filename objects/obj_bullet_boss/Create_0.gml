/// @description 
hp_pickup_is = false;

hp_pickup_chance = 5;
roll = irandom_range(0,100)
if(roll <= hp_pickup_chance)
{
	hp_pickup_is = true;
	//becomes health pickup	
}

bullet_spd = 6;