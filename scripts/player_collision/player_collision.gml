
if(place_meeting(x+hsp,y,obj_border)) or (place_meeting(x+hsp,y,obj_border_destruct))
{
	hsp = 0;	
}
x+= hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,obj_border)) or (place_meeting(x,y+vsp,obj_border_destruct))
{
	vsp = 0;
}
y+= vsp;
