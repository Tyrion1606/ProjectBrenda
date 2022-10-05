/// @description Waves Debug text

if(/*Triggered or */DebugingGUIlock){
	//DebugingGUIlock = true;
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
draw_text_transformed(Obj_Inventory.x + (Obj_Inventory.sprite_width/2), room_height/32, "CASH: " + string(global.Dinheiros), 4, 4 ,0);

#region Spawn Roll
	var Start_y = 160;
	draw_set_color(c_white);
	draw_set_font(Fnt_General);
	var y_OffSet = 0;
	draw_text(room_width/19,Start_y-24,"=============");
	draw_text(room_width/19,Start_y,"Spawn Queue");
	draw_text(room_width/33,Start_y+32,"Next->");
	var i = 0;
	while(i < ds_list_size(Waves)){
		var WaveElement = ds_list_find_value(Waves,i);
		if((WaveElement[_WAVE] == Current_Wave) and (WaveElement[_DELAY] >= Timer)){
			var TempObj = ds_list_find_value(Waves,i)[_TYPE];
			var TempSprite = object_get_sprite(TempObj);
			draw_sprite_ext(TempSprite, 0, room_width/15, (Start_y+43)+32*y_OffSet, 0.5, 0.5, 0, c_white, 1);
			draw_rectangle(room_width/18, (Start_y+29)+32*y_OffSet, room_width/10, (Start_y+56)+32*y_OffSet, true);
			draw_text_transformed(room_width/11.5,(Start_y+37)+32*y_OffSet,string("[Type]"), 0.6, 0.6, 0);

			
			y_OffSet++;
		}
		i++;
	}
#endregion

#region Level and Wave informations
	draw_set_color(c_white);
	draw_set_font(Fnt_Min_LoRes);
	draw_set_halign(fa_center);
	draw_text_transformed(room_width/18,(room_height/300),"LEVEL:" + string(global.CurrentLevel), 4,4,0)
	draw_text_transformed(room_width/18,(room_height/64)+32,"WAVE", 4,4,0)
	draw_text_transformed(room_width/18,(room_height/64)+64,string(Current_Wave) +"/" + string(Total_Waves), 4,4,0)
	

	
#endregion