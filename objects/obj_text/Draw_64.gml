//display_set_gui_size(camera_get_view_width(global.camera), camera_get_view_height(global.camera));
//display_set_gui_size(obj_display.ideal_width, obj_display.ideal_height);
if(!global.death)
{
	display_set_gui_size(obj_display.ideal_width,obj_display.ideal_height);
	draw_set_alpha(1)
	draw_set_font(fnt_hp);

	draw_text(10,5, "Hp: " + string(obj_player.hp));

	draw_set_font(fnt_debug);

	draw_text(global.boss_hp_bar_x1, global.boss_hp_bar_y1 - 20, "Boss");
	//draw_text(150, 5,obj_bow.reload_timer);
	//draw_text(300, 5,obj_bow.firing_delay);

	//draw_healthbar(boss_hp_bar_x1,boss_hp_bar_y1,boss_hp_bar_x2,boss_hp_bar_y2,obj_boss.hp,c_gray,c_red,c_red,-1,true,false);
	
}
var hp_bar_amount = approach(obj_boss.hp_percentile,hp_bar_amount, 0.2);

if((global.death) && (room != rm_death)) or (!global.death)
	{
		
		draw_set_alpha(0.4)
		draw_healthbar(global.boss_hp_bar_x1,global.boss_hp_bar_y1,global.boss_hp_bar_x2,global.boss_hp_bar_y2 ,hp_bar_amount * 100,c_dkgray,c_red,c_red,-1,true,false);
	}