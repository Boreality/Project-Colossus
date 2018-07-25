


if(x_buf >= lengthdir_x(400, player_direction)) && (x_buf <= lengthdir_x(-400,player_direction))
{
	x = x_buf;	
}
else
{
	x_buf = random_range(0,room_width);	
}

if(y_buf >= lengthdir_y(400, player_direction)) && (y_buf <= lengthdir_y(-400,player_direction))
{
	y = y_buf;
}
else
{
	y_buf = random_range(0,room_width);
}





pause--;
if(pause <= 0)
{
	instance_create_layer(x,y,"Bullets",obj_missle_boss);
	instance_destroy();
}
	
