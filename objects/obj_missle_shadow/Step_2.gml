/// @description Insert description here
// You can write your code in this editor
if(following)
{
	x =  obj_player.x;
	y =  obj_player.y;
	
	chase--;
	if(chase <= 0)
	{
		following = false;	
		image_speed = 10; 
	}
}
else
{
	pause--;
	if(pause <= 0)
	{
		instance_create_layer(x,y,"Bullets",obj_missle_boss);
		instance_destroy();
	}
	
}
if(!instance_exists(obj_boss_atk3)) instance_destroy();