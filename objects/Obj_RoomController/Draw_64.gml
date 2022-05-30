/// @description Waves Debug text

if(Triggered or DebugingGUIlock){
	DebugingGUIlock = true;
	draw_set_font(Fnt_General);
	var str = "Remaining: "
	for(var i = 0 ; i < array_length(Remaining) ; i++){
		str+= string(Remaining[i]) + "|";
	}
	draw_text(25,25,str
					+"\nWave: " + string(Current_Wave) +"/" + string(Total_Waves)
					+"\nLevel: " + string(global.Level))
}

draw_set_font(Fnt_Money);	// sets the font to 'Fnt_Money' that has only NUMBERS, UPCASED-LETHERS, and ':'
// shows the "Dinheiros" on the screen
draw_text_transformed(room_width*0.75, room_height/20, "DINHEIROS:" + string(global.Dinheiros), 1.8, 1.8 ,0);

