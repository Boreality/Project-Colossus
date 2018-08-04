player_get_input();

if(key_dodge) || (key_down) || (key_fire) || (key_left) || (key_melee) || (key_right) || (key_up) controller = false;

//if(abs(gamepad_axis_value(0,gp_axislh))) > 0.2;

#region//Movement
var MoveH
var MoveV

MoveH =  key_right - key_left;
MoveV = key_down - key_up;

hsp = walk_spd * MoveH;
vsp = walk_spd * MoveV;

hsp = hsp * control_amount;
vsp = vsp * control_amount;
#endregion



player_collision();

#region //Animation

//Walking
if(hsp != 0) || (vsp != 0)
{
	sprite_index = spr_player_run;
}
else
{
	sprite_index = spr_player;
}



#endregion

player_iframe();

#region//Dodging

dodge_delay--;
if(key_dodge) && (dodge_delay <= 0) && (stamina != 0)
{
	//directions and sprites
	//Horizontal
	if(hsp > 0) && (vsp == 0) direction = 0; sprite_index = spr_player_dodge_0;
	if(hsp < 0) && (vsp == 0) direction = 180; sprite_index = spr_player_dodge_180;
	if(vsp < 0) && (hsp == 0) direction = 90; sprite_index = spr_player_dodge_90;
	if(vsp > 0) && (hsp == 0) direction = 270;

	//Vertical
	if(hsp < 0) && (vsp > 0) direction = 235; sprite_index = spr_player_dodge_235;
	if(hsp < 0) && (vsp < 0) direction = 135; sprite_index = spr_player_dodge_135
	if(hsp > 0) && (vsp < 0) direction = 45; sprite_index = spr_player_dodge_45;
	if(hsp > 0) && (vsp > 0) direction = 315;


	obj_bow.allowed = false;
	dodge_direction = direction;
	dodge_happening = true;
	
	stamina -= dodge_stamina_cost;
	stamina_action = true;
	
	//control_amount = 0;
	
	dodge_delay = dodge_delay_max;
}
if(dodge_happening)
{
	iFrame = true;
	dodge_timer++;
	
	move(20,dodge_direction);
	
	//Smoother control for player
	//control_amount = ((dodge_timer_max /100) * dodge_timer_max);
	if(dodge_timer < ((dodge_timer_max / 3) * 2))
	{
	    control_amount = 0.8;
	}
	//else if(dodge_timer < (dodge_timer_max / 4))
	//{
	//    control_amount = 0.6;
	//}
	
	
	if(dodge_timer >= dodge_timer_max)
	{
		dodge_timer = 0;
		dodge_happening = false;
		iFrame = false;
		control_amount = 1;
	}
}
#endregion

#region//Melee DISABLED

//melee_delay--;
//if(key_melee) && (melee_delay <= 0) && (stamina != 0)
//{
//	key_fire = false;
//	with(instance_create_layer(x,y,"Weapons",obj_melee))
//	{
//		x += lengthdir_x(50,direction);
//		y += lengthdir_y(50,direction)
//	}
	
//	stamina -= melee_stamina_cost;
//	stamina_action = true;
	
//	melee_delay = melee_delay_max;
//}
#endregion

#region//Stamina


//Trigger
if(stamina_action) //If stamina changed
{
	stamina_pause = true;
	stamina_action = false;
	dstamina_pause_timer = stamina_pause_timer_max;
}

//Action
if(stamina > 0)
{
	if(stamina_pause)
	{
		stamina_pause_timer--;
		if(stamina_pause_timer <= 0)
		{
			stamina_pause = false;	
			stamina_pause_timer = stamina_pause_timer_max;
		}
	}
	else stamina++;
}
else //If run out of stamina
{
	stamina_pause_exhaust--;	
	if(stamina_pause_exhaust <= 0)
	{
		stamina += 5;
		stamina_pause_exhaust = stamina_pause_exhaust_max;	
	}
}
stamina = clamp(stamina,0,100);

#endregion

#region//Death Disabled for debug
if(hp <= 0)
{
	//show_message("Rip dude");
	//game_restart();
	
}
#endregion

hp = clamp(hp,0,hp_max);