//display_set_gui_size(camera_get_view_width(global.camera), camera_get_view_height(global.camera));
//display_set_gui_size(obj_display.ideal_width, obj_display.ideal_height);
if(!global.death)
{
	display_set_gui_size(obj_display.ideal_width,obj_display.ideal_height);
	draw_set_alpha(1)
	draw_set_font(fnt_hp);

	var xlocation = 150;
	var ylocation = 100;
	var imagescale = 4;
	draw_sprite_ext(spr_gui,0,xlocation,ylocation,imagescale,imagescale,0,-1,1);
	
	
	for(var i = 1; i <= obj_player.hp; i++)
	{
		draw_sprite_ext(spr_gui_life,0,xlocation + (90 * i), ylocation -30,6,6,0,-1,1);	
	}
	
	
	draw_healthbar(xlocation * 1.7,ylocation + 80,xlocation * 4, ylocation + 120,obj_player.stamina, c_black, c_red, c_green, 0, true, false);
	//iframe true when player hit, 
	//draw_text(10,5, "Hp: " + string(obj_player.hp));

	draw_set_font(fnt_debug);

	draw_text(global.boss_hp_bar_x1, global.boss_hp_bar_y1 - 20, "Boss");
	//draw_text(150, 5,obj_bow.reload_timer);
	//draw_text(300, 5,obj_bow.firing_delay);

	//draw_healthbar(boss_hp_bar_x1,boss_hp_bar_y1,boss_hp_bar_x2,boss_hp_bar_y2,obj_boss.hp,c_gray,c_red,c_red,-1,true,false);
	
}





if((global.death) && (room != rm_death)) or (!global.death)
	{
		
		draw_set_alpha(0.4)
		draw_healthbar(global.boss_hp_bar_x1,global.boss_hp_bar_y1,global.boss_hp_bar_x2,global.boss_hp_bar_y2 ,obj_boss.hp_percentile * 100,c_dkgray,c_red,c_red,-1,true,false);
	}