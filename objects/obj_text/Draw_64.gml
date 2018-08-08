//display_set_gui_size(camera_get_view_width(global.camera), camera_get_view_height(global.camera));
//display_set_gui_size(obj_display.ideal_width, obj_display.ideal_height);
display_set_gui_size(camera_get_view_width(global.camera),camera_get_view_height(global.camera));
draw_set_font(fnt_hp);

draw_text(10,5,obj_player.hp);
draw_text(250,5,obj_bow.firing_delay);

draw_text(600,5,obj_boss.hp);

draw_set_alpha(0.4)
//draw_healthbar(boss_hp_bar_x1,boss_hp_bar_y1,boss_hp_bar_x2,boss_hp_bar_y2,obj_boss.hp,c_gray,c_red,c_red,-1,true,false);
draw_healthbar(global.boss_hp_bar_x1,global.boss_hp_bar_y1,global.boss_hp_bar_x2,global.boss_hp_bar_y2 ,obj_boss.hp,c_dkgray,c_red,c_red,-1,true,false)

