if(position_meeting(mouse_x, mouse_y, self)){
	draw_set_font(Fnt_Money);	// TEMPORARY usin the Monetary font

	//shows the upgrade name in front of the buton
	draw_set_halign(fa_center);
	draw_text(x + sprite_width/2, y + sprite_height + 8, Name);
	draw_set_halign(fa_left);
}
