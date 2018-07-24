
if(place_meeting(x+hsp,y,obj_border))
{
	hsp = 0;	
}
x+= hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,obj_border))
{
	vsp = 0;
}
y+= vsp;
