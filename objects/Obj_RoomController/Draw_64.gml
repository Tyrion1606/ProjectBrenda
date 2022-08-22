/// @description Waves Debug text

if(Triggered or DebugingGUIlock){
	DebugingGUIlock = true;
	draw_set_font(Fnt_General_LoRes);

	var str = "Remaining: "
	for(var i = 0 ; i < array_length(Remaining) ; i++){
		str+= string(Remaining[i]) + "|";
	}
	draw_text(25,25,str
					+"\nWave: " + string(Current_Wave) +"/" + string(Total_Waves)
					+"\nLevel: " + string(global.CurrentLevel))
}

draw_set_font(Fnt_Money_LoRes);	// sets the font to 'Fnt_Money' that has only NUMBERS, UPCASED-LETHERS, and ':'
// shows the "Dinheiros" on the screen
draw_text_transformed(room_width*0.85, room_height/32, "CASH: " + string(global.Dinheiros), 4, 4 ,0);

#region Spawn Roll
	var y_OffSet = 0;
	var i = 0;
	while(i < ds_list_size(Waves)){
		var WaveElement = ds_list_find_value(Waves,i);
		if((WaveElement[_WAVE] == Current_Wave) and (WaveElement[_DELAY] >= Timer)){
			draw_set_color(c_white);
			draw_set_font(Fnt_General);
			draw_text(8,96+32*y_OffSet,string(ds_list_find_value(Waves,i)[_TYPE]));
			y_OffSet++;
		}
		i++;
	}
#endregion