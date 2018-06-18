/// @desc
//Want system where player has to hold in bow, and slow down(disadvantaged state to fire)
x = obj_player.x;
y = obj_player.y;


direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction

firing_delay--;

if(obj_player.key_fire) && (firing_delay <= 0)
{
	with(instance_create_layer(x,y,"Bullets",obj_arrow))
	{
		speed = 10;
		direction = other.direction;
		image_angle = direction;
	}
	firing_delay = firing_delay_max
	
}

