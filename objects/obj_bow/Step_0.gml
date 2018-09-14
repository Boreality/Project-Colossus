


x = obj_player.x;
y = obj_player.y + 7;
	
	
if(obj_player.control_amount != 0)
{
#region //controller stuff
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
	#endregion
	
}

//animation
if(image_angle > 90) && (image_angle < 270) image_yscale = -1;
else image_yscale = 1;



//Firing System


//Taking Input

if(obj_player.control_amount != 0)
{
    if(obj_player.key_fire)
    {
        fire_key = mbutton.left;
    }
    else
    {
       if(obj_player.key_fire_alt)
        {
            if(ifnotchargeslow(true)) fire_key = mbutton.right;
            if(ifchargeslow(true)) fire_key = mbutton.left;
            
            
        } 
        else
        {
            fire_key = mbutton.nothing;
        }
    }
}


if(fire_key == mbutton.left) or (gamepad_button_check(0,gp_shoulderrb)) //Charge
{
    firing_delay_rapid = firing_delay_rapid_max;
    firing_delay--;
    obj_player.walkspd = 3;
    
    if(fire_key == mbutton.nothing)
    {
        if (firing_delay <= 0)
        {
            with(instance_create_layer(x + lengthdir_x(70,image_angle),y + lengthdir_y(40,image_angle),"Bullets",obj_arrow))
            		{
            			speed = 25;
            			direction = other.image_angle;
            			image_angle = direction;
            		}
    				sprite_index = spr_bow_fire;
    				firing_delay = firing_delay_max;
        }
    }
    else obj_player.walkspd = 5;

}
else
{
    if(fire_key == mbutton.right) or (gamepad_button_check(0,gp_shoulderrb)) //Rapid
    {
        firing_delay = firing_delay_max;
        firing_delay_rapid--;
        if(firing_delay_rapid <= 0)
        {
            with(instance_create_layer(x + lengthdir_x(70,image_angle),y + lengthdir_y(40,image_angle),"Bullets",obj_arrow_rapid))
	        	{
	       			speed = 15;
	       			direction = other.image_angle + random_range(-bullet_offset,bullet_offset);
	       			image_angle = direction;
					other.reload_mag--;
        		}  
        		sprite_index = spr_bow_fire;
        		firing_delay = firing_delay_rapid_max;
        }
    }
}
#region old firing system
//V1.0
    /*
	//Charge
        if((ifnotchargeslow(obj_player.key_fire) or (gamepad_button_check(0,gp_shoulderrb)))) or (ifchargeslow((mouse_check_button(mb_left)) or (ifchargeslow(mouse_check_button(mb_right)))))
        {
			if(obj_player.control_amount != 0)
			{
	        	firing_delay--;
	        	obj_player.walk_spd = 3;
				firing_delay_rapid = 0;
			}
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
				
				//audio_sound_pitch(snd_fire,random_range(0.5,1.5));
				//audio_play_sound(snd_fire,1,false);
        	}
        	else firing_delay = firing_delay_max;	
			
        	obj_player.walk_spd = 5;
        }
        firing_delay = clamp(firing_delay,0,999);
       
    
	//Rapid
	//firing_delay = firing_delay_max;
	
    if(ifnotchargeslow((obj_player.key_fire_alt)  or  (gamepad_button_check(0,gp_shoulderrb))))  
    {
		firing_delay_rapid--;
		firing_delay = firing_delay_max;
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
				
				//audio_sound_pitch(snd_fire,random_range(0.5,1.5));
				//audio_play_sound(snd_fire,1,false);
				
				sprite_index = spr_bow_fire;
				firing_delay_rapid = firing_delay_rapid_max;
			}
			else state = state.reload;
        }
        
    }
    */
#endregion

firing_delay_percetile =( firing_delay / firing_delay_max) * 100;
