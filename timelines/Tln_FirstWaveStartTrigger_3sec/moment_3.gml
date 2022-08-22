with(Obj_RoomController){
	if(!Triggered){
		Triggered = true;
	
	/* =====moved to room start=====
	
		//Work out number of waves and enemies per wave
		Total_Waves = -1;
		for(var i = 0 ; i < ds_list_size(Waves) ; i++){
			var ThisEntry = ds_list_find_value(Waves,i);
			if(ThisEntry[_WAVE] > Total_Waves){
				Total_Waves++;
				Remaining[Total_Waves] = 0;
			}
			Remaining[Total_Waves]++;
		}
		
		=====moved to room start=====
	*/
	
	}
}

timeline_running = false;
