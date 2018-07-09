#region//Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_fire = mouse_check_button(mb_left);
key_melee = mouse_check_button(mb_right);
key_dodge = keyboard_check(vk_space);
#endregion

#region//Movement
var MoveH
var MoveV

MoveH =  key_right - key_left;
MoveV = key_down - key_up;

hsp = walk_spd * MoveH;
vsp = walk_spd * MoveV;
#endregion

#region//Horizontal Collision 
if(place_meeting(x+hsp,y,obj_border))
{
	hsp = 0;	
}

x+= hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,obj_border))
{
	vsp = 0;
}
y+= vsp;
#endregion

#region//iFrames
//Timer

if(iFrame)
{
	image_blend = c_black;
	
	iFrame_timer--;
	if(iFrame_timer <= 0)
	{
			iFrame_timer = iFrame_timer_max;
			iFrame = false;
	}
	
}
else image_blend = c_white;
#endregion

#region//Dodging (God help me) YEAAAA

//Horizontal
if(hsp > 0) && (vsp == 0) direction = 0;
if(hsp < 0) && (vsp == 0) direction = 180;
if(vsp < 0) && (hsp == 0) direction = 90;
if(vsp > 0) && (hsp == 0) direction = 270;

//Vertical
if(hsp < 0) && (vsp > 0) direction = 235; 
if(hsp < 0) && (vsp < 0) direction = 135;
if(hsp > 0) && (vsp < 0) direction = 45;
if(hsp > 0) && (vsp > 0) direction = 315;



dodge_delay--;
if(key_dodge) && (dodge_delay <= 0) && (stamina != 0)
{
	dodge_direction = direction;
	dodge_happening = true;
	
	stamina -= dodge_stamina_cost;
	stamina_action = true;
	
	dodge_delay = dodge_delay_max;
}
if(dodge_happening)
{
	iFrame = true;
	dodge_timer--;
	
	move(20,dodge_direction);
	
	if(dodge_timer <= 0)
	{
		dodge_timer = dodge_timer_max;
		dodge_happening = false;
		iFrame = false;
	}
}
#endregion

#region//Melee
melee_delay--;
if(key_melee) && (melee_delay <= 0) && (stamina != 0)
{
	with(instance_create_layer(x,y,"Weapons",obj_melee))
	{
		x += lengthdir_x(50,direction);
		y += lengthdir_y(50,direction)
	}
	
	
	stamina -= melee_stamina_cost;
	stamina_action = true;
	
	melee_delay = melee_delay_max;
}
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
	else
	{
		stamina++;
	}
}
else
{
	stamina_pause_exhaust--;	
	if(stamina_pause_exhaust <= 0)
	{
		stamina += 50;
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
