/// @desc
//Want system where player has to hold in bow, and slow down(disadvantaged state to fire)
if(obj_player.control_amount != 0)
{
	//key_charge = keyboard_check_pressed(ord("1"));
	//if(obj_player.control_amount == 1)
	//{
		//key_rapid = keyboard_check_pressed(ord("2"));
	//}
	x = obj_player.x;
	y = obj_player.y + 7;


	if((obj_player.key_fire) or (gamepad_button_check(0,gp_padu))) state = state.charge;
	if((obj_player.key_fire_alt) or (gamepad_button_check(0,gp_padd))) state = state.rapid;

	if(!obj_player.controller)
	{
		//put stuff here that only works with keyboard/mouse	
		image_angle = point_direction(x,y,mouse_x,mouse_y);
	
	}
	else
	{
		var controllerh = gamepad_axis_value(0,gp_axisrh);
		var controllerv = gamepad_axis_value(0,gp_axisrv);
		if(abs(controllerh) > 0.2) or (abs(controllerv) > 0.2)
		{
			controller_angle = point_direction(0,0,controllerh,controllerv);
			image_angle = controller_angle;
		
		}
		//General left analoge movement so its in the same place
}
	
	
}

//animation
if(image_angle > 90) && (image_angle < 270) image_yscale = -1;
else image_yscale = 1;



//Firing System

switch(state)
{
    case state.charge:
        if((obj_player.key_fire) or (gamepad_button_check(0,gp_shoulderrb)))
        {
        	firing_delay--;
        	obj_player.walk_spd = 3;
        }
        else
        {
        	if(firing_delay <= 0)
        	{
				
        		with(instance_create_layer(x + lengthdir_x(70,image_angle),y + lengthdir_y(40,image_angle),"Bullets",obj_arrow))
        		{
        			speed = 25;
        			direction = other.image_angle;
        			image_angle = direction;
        		}
				sprite_index = spr_bow_fire;
        		firing_delay = firing_delay_max;
				reload_timer = reload_timer_max;
				reload_mag = reload_mag_max;
        	}
        	else firing_delay = firing_delay_max;	
			
        	obj_player.walk_spd = 5;
        }
        firing_delay = clamp(firing_delay,0,999);
        break;
    case state.rapid:
	//firing_delay = firing_delay_max;
	firing_delay_rapid--;
    if((obj_player.key_fire_alt)  or  (gamepad_button_check(0,gp_shoulderrb)))
    {
      //  firing_delay_rapid--;
        if(firing_delay_rapid <= 0) 
        {
			if(reload_mag > 0)
			{
				with(instance_create_layer(x + lengthdir_x(70,image_angle),y + lengthdir_y(40,image_angle),"Bullets",obj_arrow_rapid))
	        	{
	       			speed = 15;
	       			direction = other.image_angle + random_range(-bullet_offset,bullet_offset);
	       			image_angle = direction;
					other.reload_mag--;
        		}  
				sprite_index = spr_bow_fire;
				firing_delay_rapid = firing_delay_rapid_max;
			}
			else state = state.reload;
        }
        
    }
    break;
    
    case state.reload:
	reload_timer--;
	//reload animation here
	if(reload_timer <= 0) 
	{
		reload_timer = reload_timer_max;
		reload_mag = reload_mag_max;
		state = state.rapid;
		
	}
    break;
}


