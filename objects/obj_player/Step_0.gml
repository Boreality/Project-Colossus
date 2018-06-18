//Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_fire = mouse_check_button(mb_left);

//Movement
var MoveH
var MoveV

MoveH =  key_right - key_left;
MoveV = key_down - key_up;

hsp = walk_spd * MoveH;
vsp = walk_spd * MoveV;

//Horizontal Collision  //DISABLED
x+= hsp;
if(place_meeting(x + hsp,vsp,obj_borders))
{
	hsp = 0;	 
}


//Vertical Collision
if(place_meeting(x,y+vsp,obj_borders))
{
	vsp = 0;
}
y+= vsp;

