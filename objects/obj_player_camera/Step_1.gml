


//with(obj_player) other.distance_cursor_half = (2 / (distance_to_object(obj_cursor)));

//x = obj_player.x;
//y = obj_player.y;

//x += lengthdir_x(distance_to_object(obj_cursor),cursor_direction);
//y += lengthdir_y(distance_to_object(obj_cursor),cursor_direction);


with(obj_player)
{
	var cursor_direction = point_direction(x,y,obj_cursor.x,obj_cursor.y);
	obj_player_camera.x = (x + lengthdir_x(distance_to_object(obj_cursor)/3,cursor_direction));	
	obj_player_camera.y = (y + lengthdir_y(distance_to_object(obj_cursor)/3,cursor_direction));
	
}