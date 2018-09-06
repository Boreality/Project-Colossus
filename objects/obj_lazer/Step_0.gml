/// @description Insert description here
// You can write your code in this editoof
if(opening)
{
	if(image_yscale <= 34) image_yscale += 0.2;
	else
	{
		opening = false;
		status = status.gameplay;
		retract = true;
		cooldown = true;
	}
}

if(charge)
{
	if(image_yscale <= 34) image_yscale += 0.7;
	else
	{
		cool_timer--;
		if(cool_timer <= 0)
		{
			charge = false;	
			cooldown = true;
			last_phase = "charge";
			cool_timer = cool_timer_max;
		}
	}
	
}
if(retract)
{
	if(image_yscale >= 1) image_yscale = 0;	
	else
	{
		image_xscale = xscale_stretch;
		retract = false;
		cooldown = true;
		last_phase = "retract";
	}
}

if(cooldown)
{
	cooldown_timer--;
	if(cooldown_timer <= 0)
	{
		if(last_phase == "charge") 
		{
			retract = true;
			cooldown_timer = cooldown_timer_max;
			cooldown = false;
		}
		else
		{
			charge = true;
			cooldown_timer = cooldown_timer_max;	
			cooldown = false;
		}
	}
}

if(place_meeting(x,y,obj_player))
{
	room_restart();
}