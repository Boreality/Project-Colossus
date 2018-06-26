/// @desc
/*
with(other)
	{
		
		with(instance_create_layer(x,y,"Bullets",obj_wave))
		{
			speed = 10;
			if(other.place == 0) direction = 90;
			if(other.place == 1) direction = 0;
			if(other.place == 2) direction = 270;
			if(other.place == 3) direction = 180;
			image_angle = direction;
		}
	}