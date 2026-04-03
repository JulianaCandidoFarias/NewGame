

x = 0;
y = 0;
screen_width = camera_get_view_width(view_camera[0]);
screen_height = camera_get_view_height(view_camera[0]);
my_target = noone;

step = function(){
	
	var _x_to = (floor(my_target.x / screen_width)) * screen_width;
	x = (lerp(x, _x_to, 0.125));
	
	var _y_to = (floor(my_target.y / screen_height)) * screen_height;
	y = (lerp(y, _y_to, 0.125));
	
	camera_set_view_pos(view_camera[0], x, y);
}

