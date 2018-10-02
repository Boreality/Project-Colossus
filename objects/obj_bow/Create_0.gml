/// @desc Variableeeeees

firing_delay_max = 1.6 * room_speed;
firing_delay = firing_delay_max;

firing_delay_rapid_max = second(0.4);
firing_delay_rapid = 0;

reload_timer_max = second(1);
reload_timer = reload_timer_max;

reload_mag_max = 6;
reload_mag = reload_mag_max;

check = true;

charge_active = false;


controller_angle = 0;


enum state
{
    rapid,
    charge,
	reload
}
state = state.charge;

enum mbutton {
    left,
    right,
    nothing
}
fire_key = 10;