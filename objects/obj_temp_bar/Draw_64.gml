/// @description Creating health bar decay effect
display_set_gui_size(view_wport[0], view_hport[0]);

draw_healthbar(global.boss_hp_bar_x1,global.boss_hp_bar_y1,global.boss_hp_bar_x2,global.boss_hp_bar_y2 ,obj_text.hp_boss_temp,c_dkgray,c_orange,c_orange,-1,true,false)