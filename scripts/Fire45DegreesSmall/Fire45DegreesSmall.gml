/// Fire45DegreesSmall
/// @description Fire45DegreesSmall()


	direction+=45
	with(instance_create_layer(x,y,"Bullets",obj_bullet_boss))
	{
		speed = 3;
		direction = other.direction
	}
	