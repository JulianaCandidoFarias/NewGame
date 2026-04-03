
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

velx = 0;
vely = 0;

step = function(){

	left	= keyboard_check(ord("A"));
	right	= keyboard_check(ord("D"));
	up		= keyboard_check(ord("W"));
	down	= keyboard_check(ord("S"));
	
	control_x = right - left;
	control_y = down - up;
	
	var _can_walk = !(control_x != 0 and control_y != 0)
	
	velx = control_x * _can_walk;
	vely = control_y * _can_walk;
	
	x += velx;
	y += vely;
	

	
}

draw = function(){
	
	if(vely != 0 or velx != 0){
		frame += frame_speed;
		
		
		if(vely > 0){
			sprite = spr_player_walk_down;
		}
		else if(vely == 0){
			sprite = spr_player_walk_side;	
			xscale = -velx;
			
		}
		else{
			sprite = spr_player_walk_up;	
		}
	}
	else{
		frame = 0;
	}
	
	
	draw_sprite_ext(sprite, frame, x, y, xscale, 1, 0, -1, 1);
}
	