 /// @desc

 #region Stage changer DEACTIVATED
/*

if(hp >= (round((hp_max/num_of_stages)*(num_of_stages - 1))))	//Health divided by number of stages, have amount of health needed for change. Times to be the desired amount (if stages = 4, should be 75)
{
	if(check0)
	{
		attack = 3;	
		active = true;
		
		check0 = false;	
	}
}

if(hp >= (round((hp_max/num_of_stages)*(num_of_stages - 2))) ) && (hp < (round((hp_max/num_of_stages)*(num_of_stages - 1))) )
{
	if(check1)
	{
		attack = 2;
		active = true; 
		
		check1 = false;
	}
}
if(hp < ((hp_max/num_of_stages)*(num_of_stages - 2)))
{
	if(check2)
	{
		attack = 1;
		active = true;
		
		check2 = false;
	}
}
 */
#endregion

#region Activating Stages
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

if(active) && (attack == 4) //Wave
{
	instance_deactivate_layer("Bossweapons");
	instance_create_layer(x,y,"Bossweapons",obj_boss_atk4);
	path_start(p_atk_4,10,path_action_restart,true);
	active = false;
}
#endregion

#region Winning
if(hp <= 0)
{
	show_message("HEIR OF FIRE DESTROYED");
	game_end();
}
#endregion

if(place_meeting(x,y,obj_trigger_atk4))
{
	
}
/*
place rules:
0: 90
1: 0
2: 270
3: 180
*/

/*
with(instance_create_layer(x,y,"Weapons",obj_wave))
		{
			speed = 10;
			image_xscale = -1;
		
			direction = 180;