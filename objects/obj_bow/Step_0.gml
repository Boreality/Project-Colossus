/// @desc
//Want system where player has to hold in bow, and slow down(disadvantaged state to fire)
x = obj_player.x;
key_charge = keyboard_check_pressed(ord("1"));
key_rapid = keyboard_check_pressed(ord("2"));


y = obj_player.y;


direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction


if(key_charge) state = state.charge;
if(key_rapid) state = state.rapid;



//Firing System

switch(state)
{
    case state.charge:
        if(obj_player.key_fire)
        {
        	firing_delay--;
        	obj_player.walk_spd = 3;
        }
        else
        {
        	if(firing_delay <= 0)
        	{
        		with(instance_create_layer(x,y,"Bullets",obj_arrow))
        		{
        			speed = 25;
        			direction = other.direction;
        			image_angle = direction;
        		}
        		firing_delay = firing_delay_max;
        		
        		
        	}
        	else
        	{
        		firing_delay = firing_delay_max;	
        	}
        	obj_player.walk_spd = 5;
        }
        firing_delay = clamp(firing_delay,0,999);
        break;
    case state.rapid:
    if(obj_player.key_fire)
    {
        firing_delay_rapid--;
        if(firing_delay_rapid <= 0) 
        {
			if(reload_mag > 0)
			{
				with(instance_create_layer(x,y,"Bullets",obj_arrow_rapid))
	        	{
	       			speed = 15;
	       			direction = other.direction + random_range(-bullet_offset,bullet_offset);
	       			image_angle = direction;
					other.reload_mag--;
        		}  
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


