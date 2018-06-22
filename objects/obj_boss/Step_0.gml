/// @desc

//Stage changer

if(hp >= 66)
{
	
	
	if(check0)
	{
		attack = 3;	
		active = true;
		
		check0 = false;
			
	}
}

if(hp >= 33) && (hp < 66)
{
	
	if(check1)
	{
		attack = 2;
		active = true; 
		
		check1 = false;
			
	}
	
}
if(hp < 33)
{
	if(check2)
	{
		attack = 1;
		active = true;
		
		check2 = false;
		
	}
}


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


//Winning
if(hp <= 0)
{
	show_message("HEIR OF FIRE DESTROYED");
	game_end();
}



