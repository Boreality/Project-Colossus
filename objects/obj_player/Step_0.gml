 //Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_fire = mouse_check_button(mb_left);
key_dodge = keyboard_check(vk_space);

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

//iFrames
//Timer

if(iFrame)
{
	image_blend = c_black;
	
	iFrame_timer--;
	if(iFrame_timer <= 0)
	{
			iFrame_timer = iFrame_timer_max;
			iFrame = false;
	}
	
}
else image_blend = c_white;
	

//Dodging (God help me)

//Create if vsp+ and hsp- direction = something system to allow keyboard dodging instead of mouse

dodge_delay--;
if(key_dodge) && (dodge_delay <= 0)
{
	dodge_direction = obj_bow.direction;
	
	dodge_happening = true;
	
	
	dodge_delay = dodge_delay_max;
}
if(dodge_happening)
{
	iFrame = true;
	dodge_timer--;
	x += lengthdir_x(20,dodge_direction);
	y += lengthdir_y(20,dodge_direction); 
	
	
	if(dodge_timer <= 0)
	{
		dodge_timer = dodge_timer_max;
		dodge_happening = false;
		iFrame = false;
	}
}


//Death
if(hp <= 0)
{
	show_message("Rip dude");
	game_restart();
	
}



