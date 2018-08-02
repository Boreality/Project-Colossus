/// @description Setting Variables

//Health and Depleting Health
hp_max = 20;
hp = hp_max;

hp_timer_max = 2 * room_speed;
hp_timer = hp_timer_max;

//Iframes
iFrame_timer_max = 1.5 * room_speed;
iFrame_timer = iFrame_timer_max;


//Flicker (unused)
flicker_timer_max = 2;
flicker_timer = flicker_timer_max;


//Dodging
dodge_delay_max = 0.6 * room_speed;
dodge_delay = dodge_delay_max
dodge_direction = 0;
 
dodge_happening = false;

dodge_timer_max = second(0.15);
dodge_timer = dodge_timer_max;

dodge_stamina_cost = 30;

//Melee
melee_delay_max = 20;
melee_delay = melee_delay_max;

melee_stamina_cost = 30;

//Stamina Bar
stamina_max = 100;
stamina = stamina_max;
stamina_action = false;

stamina_pause = 0;
stamina_pause_timer_max = 0.5 * room_speed;
stamina_pause_timer = stamina_pause_timer_max;

stamina_pause_exhaust_max = 1.5 * room_speed;
stamina_pause_exhaust = stamina_pause_exhaust_max;

controller = false;

//Control player has
comtrol_amount = 1;
