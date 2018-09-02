

stage_switch_enabled = true;
enabled = true;

attack = attack.missle;
active = true; //Set to false to start off

num_of_stages = attack.length; 

boss_atk_1_2_delay = 10 * room_speed;

new_phase_timer_max = 2 * room_speed;
new_phase_timer = new_phase_timer_max;


walkspd = 2;

check0 = true;
check1 = true;
check2 = true;
check3 = true;
check4 = true;
check5 = true;
check6 = true;

hp_max = 100;
hp = hp_max;


temp_direction = 0;
test = true;

enum attack 
{
	spin_and_bullets,
	circle,
	missle,
	wave,
	melee,
	length
}





