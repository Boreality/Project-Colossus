/// Fire90DegreesBig()
/// @description Fire90DegreesBig()
			
		direction += 90;
		with(instance_create_layer(x,y,"BigBullets",obj_bullet_boss_big))
		{
			speed = obj_bullet_boss.bullet_spd;
			direction = other.direction
		}