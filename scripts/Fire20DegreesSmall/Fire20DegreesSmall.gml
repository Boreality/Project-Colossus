/// Fire20DegreesSmall
/// @description Fire20DegreesSmall()
	
	direction += 20;
	with(instance_create_layer(x,y,"Bullets",obj_bullet_boss))
	{
		speed = obj_bullet_boss.bullet_spd;
		direction = other.direction
	}