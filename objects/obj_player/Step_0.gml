//Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

//Movement
var MoveH
var MoveV

MoveH =  key_right - key_left;
MoveV = key_up - key_down;

hsp = walk_spd * MoveH;
vsp = walk_spd * MoveV;

x+= hsp;
y-= vsp;

