/// @desc
//Circle Spray Attack
//Plan:
/*
Have a seperate launcher object spawn and follow boss obj
Have that spin and shoot while boss does whatever
If possible give the invis gun no sprite
*/
if(active) && (attack == 1) //Spin and big bullets
{	
	instance_deactivate_layer("BossWeapons");
	instance_create_layer(x,y,"BossWeapons",obj_boss_atk1_1);
	instance_create_layer(x,y,"BossWeapons",obj_boss_atk1_2);
	active = false; //Prevents mutliple boss attack instances
}

if(active) && (attack == 2) //Circle
{
	instance_deactivate_layer("BossWeapons");
	instance_create_layer(x,y,"BossWeapons",obj_boss_atk2);
	active = false; 
}

if(active) && (attack == 3) //Missle
{
	instance_deactivate_layer("BossWeapons");
	instance_create_layer(x,y,"BossWeapons",obj_boss_atk3);
	active = false; 
}
//Start timer for how long the attack lasts/how much health needed to have
//lost




//Needs a way to switch automatically