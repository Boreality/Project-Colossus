
key_left = keyboard_check(ord("A")); 
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

if(instance_exists(obj_boss_atkfinal))
{
	with(obj_boss_atkfinal)
	{
		if(status != status.chargeslow) other.key_fire = mouse_check_button(mb_left);
		else other.key_fire = mouse_check_button(mb_right);
	}
}
else key_fire = mouse_check_button(mb_left);



key_fire_alt = mouse_check_button(mb_right);

key_melee = mouse_check_button(mb_right);
key_dodge = keyboard_check(vk_space);