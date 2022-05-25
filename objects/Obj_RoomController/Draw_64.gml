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

