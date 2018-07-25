/// @desc Air Bomb Attack
//Boss dissapears for most of fight
//Bombs go to players last position, when explode releases a couple of hexagonal bulletsget

firing_delay--;
if(firing_delay <= 0)
{

	instance_create_layer(x,y,"Bullets",obj_missle_shadow);
	instance_create_layer(x,y,"Bullets",obj_missle_shadow_random);
	
	firing_delay = firing_delay_max;
}








