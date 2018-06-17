//Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

//Movement
var MoveH
var MoveV

MoveH =  key_right - key_left;
MoveV = key_down - key_up;

hsp = walk_spd * MoveH;
vsp = walk_spd * MoveV;

//Horizontal Collision //BROKEN
/*if(place_meeting(x+hsp,vsp,obj_borders_player))
{
	hsp = 0;	 
}*/
x+= hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,obj_borders_player))
{
	vsp = 0;
}
y+= vsp;

