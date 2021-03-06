/// @description Setting Variables

#region Health and Depleting Health
hp_max = 8;
hp = hp_max;

hp_timer_max = 2 * room_speed;
hp_timer = hp_timer_max;
#endregion


walk_spd_max =5;
walk_spd = walk_spd_max;

#region Iframes
iFrame_timer_max = 1.5 * room_speed;
iFrame_timer = iFrame_timer_max;
#endregion

#region Dodging
dodge_delay_max = second(0.6);
dodge_delay = dodge_delay_max;
dodge_direction = 0;
 
dodge_happening = false;

dodge_timer_max = second(0.15);
dodge_timer = 0;

dodge_stamina_cost = 30;
#endregion

#region Melee (disabled)
melee_delay_max = 20;
melee_delay = melee_delay_max;

melee_stamina_cost = 30;
#endregion

#region Stamina Bar
stamina_max = 100;
stamina = stamina_max;
stamina_action = false;

stamina_pause = 0;
stamina_pause_timer_max = 0.5 * room_speed;
stamina_pause_timer = stamina_pause_timer_max;

stamina_pause_exhaust_max = 1.5 * room_speed;
stamina_pause_exhaust = stamina_pause_exhaust_max;
#endregion

#region Controller
controller = false;

//Control player has
control_amount = 1;

controller_angle = 0;
#endregion

flash = 0;
global.death = false;

death_check = true;

audio_play_random_pitch(snd_revive,1);
// audio_sound_pitch(snd_revive,random_range(0.5,1.5));
// audio_play_sound(snd_revive,1,false);