if(mouse_check_button_pressed(mb_left)){
	if (scr_itsinside(id.x, id.y+sprite_height*1,id.x+sprite_width, id.y+sprite_height*2, mouse_x, mouse_y)){
		StrCurrentResolution = "480p";
		//DrawFlag = false;
		show_debug_message("primeiro");
	} else if (scr_itsinside(id.x, id.y+sprite_height*2,id.x+sprite_width, id.y+sprite_height*3, mouse_x, mouse_y)){
		StrCurrentResolution = "720p";
		//DrawFlag = false;
		show_debug_message("segundo");
	} else if (scr_itsinside(id.x, id.y+sprite_height*3,id.x+sprite_width, id.y+sprite_height*4, mouse_x, mouse_y)){
		StrCurrentResolution = "1080p";
		//DrawFlag = false;
		show_debug_message("terceiro");
	}
	if(DrawFlag and i > 2)
		DrawFlag = false;
}