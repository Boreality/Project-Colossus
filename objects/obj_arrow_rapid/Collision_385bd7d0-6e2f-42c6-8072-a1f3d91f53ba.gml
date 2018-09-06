/// @desc
with(obj_boss)
{
	hp-= other.damage;
	flash = 3;
}
screenshake(5,second(0.2));
instance_destroy();