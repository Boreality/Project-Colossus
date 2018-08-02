/// @desc
	
draw_self();
draw_healthbar(x -30,y - 50,x + 30, y - 30,obj_bow.firing_delay, c_black, c_red, c_silver, 0, true, true);
draw_healthbar(x -30,y - 100,x + 30, y - 70,id.stamina, c_black, c_red, c_green, 0, true, true);
draw_text(x, y-120,obj_bow.reload_timer);





