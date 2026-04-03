
//Sprite Drawing Variables
sprite = sprite_index;
frame = 0;
frame_speed = 0.2;
xscale = 1;

//Player Controls Variables
left = false;
right = false;
up = false;
down = false;
control_x = 0;
control_y = 0;

step = function(){

	left	= keyboard_check(ord("A"));
	right	= keyboard_check(ord("D"));
	up		= keyboard_check(ord("W"));
	down	= keyboard_check(ord("S"));
	
	control_x = right - left;
	control_y = down - up;
	
	x += control_x;
	y += control_y;

	
}

draw = function(){
	frame += frame_speed;
	draw_sprite_ext(sprite, frame, x, y, xscale, 1, 0, -1, 1);
}
	