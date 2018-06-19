/// @desc
//Boss dissapears for most of fight
//Bombs go to players last position, when explode releases a couple of hexagonal bulletsget

firing_delay--;
if(firing_delay <= 0)
{
	
		player_pos_x = obj_player.x;
		player_pos_y = obj_player.y;
	
	
	instance_create_layer(player_pos_x,player_pos_y - 500,"Bullets",obj_missle_boss);
	
	firing_delay = firing_delay_max;
}








