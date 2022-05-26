/// @description Waves Debug text

if(Triggered){
	draw_set_font(Fnt_General);
	var str = "Remaining: "
	for(var i = 0 ; i < array_length(Remaining) ; i++){
		str+= string(Remaining[i]) + "|";
	}
	draw_text(25,25,str
					+"\nWaves Total: " + string(Total_Waves)
					+"\nWave Now: " + string(Current_Wave)
					)
}

draw_set_font(Fnt_Money);	// sets the font to 'Fnt_Money' that has only NUMBERS, UPCASED-LETHERS, and ':'
// shows the "Dinheiros" on the screen
draw_text_transformed(room_width*0.75, room_height/20, "DINHEIROS:" + string(global.Dinheiros), 1.8, 1.8 ,0);

