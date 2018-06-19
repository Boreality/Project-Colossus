/// @desc
y*=1.05;

if(y >= obj_boss_atk3.player_pos_y)
{
	repeat(8) Fire45DegreesSmall();
	
	instance_destroy()
}