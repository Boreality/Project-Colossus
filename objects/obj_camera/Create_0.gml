

cam = global.camera;
follow = obj_player_camera;


view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

xTo = x;
yTo = y;


shake_length = 0;	//How long it takes
shake_magnitude = 0;	//How intense it is
shake_remain = 0;	//Timer 
shake_buff = 32;
