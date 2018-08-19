/// @description Insert description here
// You can write your code in this editor
// Display Properties
ideal_width = 0;
ideal_height = 1080;//1080;

aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height*aspect_ratio);

// Check for odd number
if (ideal_width and 1) ideal_width++;

// Build a camera at (0,0), with size of ideal width and heigth, 0 degrees of angle, no target instance, instant-jumping hspeed and vspeed, with a 32 pixel border
global.camera = camera_create_view(0, 0, ideal_width, ideal_height, 0, obj_player, -1, -1, 600, 600);

for (var i = 1; i <= room_last; i++)
	{
		// enable view and setup viewport
		room_set_view_enabled(i, true)
		room_set_viewport(i, 0, true, 0, 0, ideal_width, ideal_height);
	
		// set camera for room
		room_set_camera(i, 0, global.camera);
	}

surface_resize(application_surface,ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);

room_goto_next();