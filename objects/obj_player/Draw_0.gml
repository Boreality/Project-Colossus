/// @desc
draw_self();
if(!global.death)
{
	draw_self();
	if(obj_bow.charge_active) draw_healthbar(x -30,y - 50,x + 30, y - 30,obj_bow.firing_delay_percetile, c_black, c_red, c_silver, 0, true, true);
	

	if(iFrame)
	{
		if(flash > 0)
		{
			shader_set(sh_red);
			draw_self();
			shader_reset();
			flash--;
		}
		
		if(dodge_happening)
		{
			shader_set(sh_aqua);
			draw_self();
			shader_reset();
		}
	}
}


