 #region Stage changer deactivated

if(hp >= (round((hp_max/num_of_stages)*(num_of_stages - 1))))	//Health divided by number of stages, have amount of health needed for change. Times to be the desired amount (if stages = 4, should be 75)
{
	if(check0)
	{
		path_end();
		attack = 3;	
		active = true;
		check0 = false;	
	}
}
if(hp >= (round((hp_max/num_of_stages)*(num_of_stages - 2))) ) && (hp < (round((hp_max/num_of_stages)*(num_of_stages - 1))) )
{
	if(check1)
	{
		path_end();
		attack = 2;
		active = true; 
		check1 = false;
	}
}
if(hp >= (round((hp_max/num_of_stages)*(num_of_stages - 3))) ) && (hp < (round((hp_max/num_of_stages)*(num_of_stages - 2))) )
{
	if(check2)
	{
		path_end();
		attack = 4;
		active = true; 
		check2 = false;
	}
}
if(hp >= (round((hp_max/num_of_stages)*(num_of_stages - 4))) ) && (hp < (round((hp_max/num_of_stages)*(num_of_stages - 3))) )
{
	if(check4)
	{
		path_end();
		attack = 5;
		active = true; 
		check4 = false;
	}
	
}
if(hp < ((hp_max/num_of_stages)*(num_of_stages - 4)))
{
	if(check3)
	{
		path_end();
		x = 500;
		y = (room_height / 2);
		attack = 1;
		active = true;
		check3 = false;
	}
}
 
#endregion

#region Activating Stages deactivated

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
if(active) && (attack == 5) //melee
{
	instance_deactivate_layer("Bossweapons");
	instance_create_layer(x,y,"Bossweapons",obj_boss_atk5);
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

#region Damage done to play if touchy
if(place_meeting(x,y,obj_player))  obj_player.hp-= 1;


#endregion


#region//ATK 4

var trigger_object;

if(place_meeting(x,y,obj_trigger_atk4)) && (test)
{
	test = false;
	trigger_object = instance_place(x,y,obj_trigger_atk4);
	temp_direction = trigger_object.ddirection;
	with(instance_create_layer(x,y,"BigBullets",obj_wave))
	{
			speed = 6;
			direction = other.temp_direction;
			image_angle = direction;
	}
	temp_direction = 0;
	
}

if(!place_meeting(x,y,obj_trigger_atk4)) test = true;
#endregion