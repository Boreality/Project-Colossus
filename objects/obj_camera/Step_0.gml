

if(instance_exists(obj_player)) or (instance_exists(obj_player_camera))
{
	xTo = follow.x;
	yTo = follow.y;
}	

//Keep camera center inside room

x = clamp(x,view_w_half+shake_buff,room_width-view_w_half-shake_buff);
y = clamp(y,view_h_half+shake_buff,room_height-view_h_half-shake_buff);



//Screenshake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));	//reducing shake_length


//Update object position	smooth camera movement
x += (xTo - x) / 10;
y += (yTo - y) / 10;

//update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half );




