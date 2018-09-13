
//Walking

switch(stage)
{
	case stage.walking:
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
			stage = stage.preperation;
			
		}
		break;
	

	//Preperation
	case stage.preperation:
		//Preperation animation
	
		//Parry stuff
	
		timer_preperation--;
		if(timer_preperation <= 0)
		{
			timer_preperation = timer_preperation_max;
			stage = stage.charge;
		}
		break;
		

	
	//Change
	//Need extra hurtbox for parry and hitting player
	case stage.charge:
	
	//Testing new method 
	//x += lengthdir_x(point_distance(x,y,obj_player.x,obj_player.y) + 100,point_direction(x,y,obj_player.x,obj_player.y))
	//y += lengthdir_y(point_distance(x,y,obj_player.x,obj_player.y) + 100,point_direction(x,y,obj_player.x,obj_player.y))
	
	
	
		if(check_player_pos) //Placing end point
		{
			 instance_create_layer(obj_player.x,obj_player.y,"Trigger",obj_trigger_atk5)
			//instance_create_layer(lengthdir_x(point_distance(x,y,obj_player.x,obj_player.y),point_direction(x,y,obj_player.x,obj_player.y)),lengthdir_y(point_distance(x,y,obj_player.x,obj_player.y),point_direction(x,y,obj_player.x,obj_player.y)),"Trigger",obj_trigger_atk5)
			check_player_pos = false;
			
			audio_sound_pitch(snd_charge,random_range(0.5,1.5));
			audio_play_sound(snd_charge,1,false);
			
		}
	
		with(obj_boss) move(40,point_direction(x,y,obj_trigger_atk5.x, obj_trigger_atk5.y));
		//parry
		if(place_meeting(x,y,obj_melee)) parried = true;

	    //Bullets flying by side
			with(obj_boss)
			{
		        with(instance_create_layer(x,y,"Bullets", obj_bullet_boss))
		        {
		            speed = 5;
		            direction = other.direction + 90;
		        }
		         with(instance_create_layer(x,y,"Bullets", obj_bullet_boss))
		        {
		            speed = 5;
		            direction = other.direction - 90;
		        }
			}
   
	    //Ending phase
		with(obj_boss)
		{   
			if(place_meeting(x,y,obj_trigger_atk5)) || (other.parried)
			{
				with(other)
				{
					check_player_pos = true;
					instance_deactivate_object(obj_trigger_atk5);
					stage = stage.recovery;
					break;
				}
			}
		}


	//Recovery=
	case stage.recovery:
		timer_recovery--;
		//Recovery animation
		if(timer_recovery <= 0)
		{
		    parried = false;
			timer_recovery = timer_recovery_max;
			stage = stage.walking;
		}
		break;
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






