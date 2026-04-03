
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

//Player Movematation Variables
velx = 0;
vely = 0;

step = function(){

	left	= keyboard_check(ord("A")) or keyboard_check(vk_left);
	right	= keyboard_check(ord("D")) or keyboard_check(vk_right);
	up		= keyboard_check(ord("W")) or keyboard_check(vk_up);
	down	= keyboard_check(ord("S")) or keyboard_check(vk_down);
	
	control_x = right - left;
	control_y = down - up;
	
	var _can_walk = !(control_x != 0 and control_y != 0)
	
	velx = control_x * _can_walk;
	vely = control_y * _can_walk;
	
	if(place_meeting(x + velx, y, obj_coll)){
		while(!place_meeting(x + sign(velx), y, obj_coll)){
			x += sign(velx)
		}
		velx = 0;
	}
	x += velx;
	
	
	if(place_meeting(x, y + vely, obj_coll)){
		while(!place_meeting(x, y + sign(vely), obj_coll)){
			y += sign(vely)
		}
		vely = 0;
	}
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
	