
if(point_distance(x_buf,y_buf,obj_player.x,obj_player.y) > 400) && (point_distance(x_buf,y_buf,obj_boss.x,obj_boss.y) > 400)
{
	x = x_buf;	
	y = y_buf;
	allowed = true;
}
else
{
	x_buf = random_range(0,inst_185FA82F.sprite_width);	
	y_buf = random_range(0,inst_185FA82F.sprite_width );
}


if(allowed) pause--;
if(pause < 0) 
{
	instance_create_layer(x,y,"Bullets",obj_missle_boss);
	instance_destroy();
}