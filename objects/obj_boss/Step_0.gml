/// @desc
//Circle Spray Attack
//Plan:
/*
Have a seperate launcher object spawn and follow boss obj
Have that spin and shoot while boss does whatever
If possible give the invis gun no sprite
*/
if(active) && (attack == 1)
{
	instance_create_layer(x,y,"Weapons",obj_boss_atk1_1);
	instance_create_layer(x,y,"Weapons",obj_boss_atk1_2);
	active = false;
}
//Start timer for how long the attack lasts/how much health needed to have
//lost




