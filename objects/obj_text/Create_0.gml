//Setting Boss hp bar properties
cam = view_camera[0];

global.boss_hp_bar_x1 = (camera_get_view_width(cam) / 8);
global.boss_hp_bar_y1 = (camera_get_view_height(cam) / 8) * 3.8;

global.boss_hp_bar_x2 = (camera_get_view_width(cam) / 8) * 3;
global.boss_hp_bar_y2 = (camera_get_view_height(cam) / 8) * 3.9;



hp_boss_prev = 0;
reduction = false;
hp_boss_temp = 0;

check = true;