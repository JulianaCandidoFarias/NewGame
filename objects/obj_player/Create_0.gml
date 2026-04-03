
//Sprite Drawing Variables
sprite = sprite_index;
frame = 0;
frame_speed = 0.2;
xscale = 1;



step = function(){
	
}

draw = function(){
	draw_sprite_ext(sprite, frame, x, y, xscale, 1, 0, -1, 1);
}
	