/// @desc

firing_delay_max = 2 * room_speed;
firing_delay = firing_delay_max;

firing_delay_rapid_max = second(0.4);
firing_delay_rapid = firing_delay_rapid_max;

reload_timer_max = second(1);
reload_timer = reload_timer_max;

reload_mag_max = 6;
reload_mag = reload_mag_max;



controller_angle = 0;


enum state
{
    rapid,
    charge,
	reload
}
state = state.charge;

