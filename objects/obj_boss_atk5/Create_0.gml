/// @description Charging/following attack

//Timers
timer_walking_max = 2 * room_speed;
timer_walking = timer_walking_max;

timer_preperation_max = 1 * room_speed;
timer_preperation = timer_preperation_max;

timer_parry_flash_max = 0.7 * room_speed;
timer_preperation = timer_parry_flash_max;

timer_recovery_max = 1.5 * room_speed;
timer_recovery = timer_recovery_max;

//Delays
bullet_side_delay_max = 1 * room_speed;
bullet_side_delay = bullet_side_delay_max;

//Stage

enum stage 
{
	walking,
	preperation,
	charge,
	recovery
}
stage = stage.walking;

//Check
check_player_pos = true;
parried = false;

//Variables
player_x = 0;
player_y = 0;