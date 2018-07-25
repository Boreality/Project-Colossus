 #region Stage changer deactivated

if(hp >= (round((hp_max/num_of_stages)*(num_of_stages - 1))))	//Health divided by number of stages, have amount of health needed for change. Times to be the desired amount (if stages = 4, should be 75)
{
	if(check0)
	{
		path_end();
		attack = attack.missle;	
		active = true;
		check0 = false;	
	} 
	//stage_changer_default(attack.missle,check0);
}
if(hp >= (round((hp_max/num_of_stages)*(num_of_stages - 2))) ) && (hp < (round((hp_max/num_of_stages)*(num_of_stages - 1))) )
{
	if(check1)
	{
		path_end();
		attack = attack.circle;
		active = true; 
		check1 = false;
	} 
	//stage_changer_default(2,check1);
}
if(hp >= (round((hp_max/num_of_stages)*(num_of_stages - 3))) ) && (hp < (round((hp_max/num_of_stages)*(num_of_stages - 2))) )
{
	if(check2)
	{
		path_end();
		attack = attack.wave;
		active = true; 
		check2 = false;
	}
}
if(hp >= (round((hp_max/num_of_stages)*(num_of_stages - 4))) ) && (hp < (round((hp_max/num_of_stages)*(num_of_stages - 3))) )
{
	if(check4)
	{
		path_end();
		attack = attack.melee;
		instance_deactivate_object(obj_trigger_atk5);
		
		active = true; 
		check4 = false;
	}
	
}
if(hp < ((hp_max/num_of_stages)*(num_of_stages - 4)))
{
	if(check3)
	{
		speed = 0;
		path_end();
		x = 500;
		y = (room_height / 2);
		attack = attack.spin_and_bullets;
		active = true;
		check3 = false;
	}
}
 
#endregion

#region Activating Stages 

if(active) && (attack == attack.spin_and_bullets) //Spin and big bullets 1
{	
	
	initiate_stage(obj_boss_atk1_1);
	instance_create_layer(x,y,"BossWeapons",obj_boss_atk1_2);
}

if(active) && (attack == attack.circle) initiate_stage(obj_boss_atk2); //Circle 2

if(active) && (attack == attack.missle) initiate_stage(obj_boss_atk3); //Missle 3

if(active) && (attack == attack.wave) //Wave 4
{
	path_start(p_atk_4,10,path_action_restart,true);
	initiate_stage(obj_boss_atk4);
} 
if(active) && (attack == attack.melee) initiate_stage(obj_boss_atk5); //melee 5
#endregion

#region Winning
if(hp <= 0)
{
	show_message("HEIR OF FIRE DESTROYED");
	game_end();
}
#endregion

#region Damage done to play if touchy
if(place_meeting(x,y,obj_player))  
{
	if(!obj_player.iFrame)
	{
		obj_player.hp -= 1;;
		
	}		
}


#endregion


#region//ATK 4 also fucking mess

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