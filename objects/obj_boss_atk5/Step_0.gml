
//Walking
if(stage_current == "Walking")
{
	with(obj_boss) //walking movement
	{
		//Animation change
		speed = walkspd;
		direction = point_direction(x,y,obj_player.x,obj_player.y);
	}
	timer_walking--;
	if(timer_walking <= 0)
	{
		obj_boss.speed = 0;
		timer_walking = timer_walking_max;
		stage_current = "Preperation";
			
	}
}

//Preperation
if(stage_current == "Preperation")
{
	//Preperation animation
	
	//Parry stuff
	
	timer_preperation--;
	if(timer_preperation <= 0)
	{
		timer_preperation = timer_preperation_max;
		stage_current = "Charge";
	}
}
	
//Change
//Need extra hurtbox for parry and hitting player
if(stage_current == "Charge")
{
	if(check_player_pos) //Placing end point
	{
		instance_create_layer(obj_player.x,obj_player.y,"Trigger",obj_trigger_atk5)
		check_player_pos = false;
	}
	
	with(obj_boss)
	{
		move(40,point_direction(x,y,obj_trigger_atk5.x, obj_trigger_atk5.y));
		
		if(place_meeting(x,y,obj_trigger_atk5))
		{
			with(other)
			{
				check_player_pos = true;
				instance_deactivate_object(obj_trigger_atk5);
				stage_current = "Recovery";
			}
		}
	}
}


//Recovery
if(stage_current == "Recovery")
{
	timer_recovery--;
	//Recovery animation
	
	if(timer_recovery <= 0)
	{
		timer_recovery = timer_recovery_max;
		stage_current = "Walking";
	}
	
}







//Plan
/*
	Has 4 modes in this phase: walking, preperation, charge, and recovery
	Walking
		Walks slowly towards player's position, doesnt last long
	Preperation
		Stops walking, does a charge pose animation. 
		Makes some indication of a parry opportunity (Furi)
	Charge
		Charges towards players exact position; they need to use dodge to escape dmg
		
		As charges, releases small bullets from his side.
		
		If player melees at the right moment of attack, parries boss, leaving his with
		longer recovery phase 
		
	Recovery
		After charge or parry, has some time dedicated to standing in same charge pose
		Opportunity for player to attack/recover
		If parried, have different animation play to show player that parrying is good
*/






