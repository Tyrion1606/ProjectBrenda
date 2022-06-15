/// @description Insert description here
// You can write your code in this editor

draw_set_font(Fnt_General);
draw_set_color(c_white);
draw_text_transformed(id.x, id.y, StrCurrentResolution,4, 4, 0);

if(DrawFlag){
	if(i > 1){
		if (scr_itsinside(id.x, id.y+sprite_height*1,id.x+sprite_width, id.y+sprite_height*2, mouse_x, mouse_y)){
			draw_set_color(c_aqua);
		} else {
			draw_set_color(c_white);
		}
		draw_text_transformed(id.x, id.y+sprite_height*1, "480p",4, 4, 0);
	}
	if(i > 2){
		if (scr_itsinside(id.x, id.y+sprite_height*2,id.x+sprite_width, id.y+sprite_height*3, mouse_x, mouse_y)){
			draw_set_color(c_aqua);
		} else {
			draw_set_color(c_white);
		}
		draw_text_transformed(id.x, id.y+sprite_height*2, "720p",4, 4, 0);
	}
	if(i > 3){
		if (scr_itsinside(id.x, id.y+sprite_height*3,id.x+sprite_width, id.y+sprite_height*4, mouse_x, mouse_y)){
			draw_set_color(c_aqua);
		} else {
			draw_set_color(c_white);
		}
		draw_text_transformed(id.x, id.y+sprite_height*3, "1080p",4, 4, 0);
	}
}