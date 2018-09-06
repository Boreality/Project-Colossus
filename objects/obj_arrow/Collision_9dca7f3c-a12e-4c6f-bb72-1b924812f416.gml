/// @desc
with(other)
{
	hp-= other.damage;
	flash = 3;
}
screenshake(10,second(0.2));
instance_destroy();