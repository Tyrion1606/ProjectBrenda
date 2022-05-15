draw_set_font(Fnt_Money);	// sets the font to 'Fnt_Money' that has only NUMBERS, UPCASED-LETHERS, and ':'
// shows the "Dinheiros" on the screen
draw_text_transformed(room_width*0.75, room_height/20, "DINHEIROS:" + string(global.Dinheiros), 1.8, 1.8 ,0);
