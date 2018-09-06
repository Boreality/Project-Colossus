/// @description Insert description here
// You can write your code in this editor
with(obj_player)
{
	var boss_direction = point_direction(x,y,obj_boss.x,obj_boss.y);
	obj_camera_player_boss.x = (x + lengthdir_x(distance_to_object(obj_boss)/2,boss_direction));	
	obj_camera_player_boss.y = (y + lengthdir_y(distance_to_object(obj_boss)/2,boss_direction));
	
}