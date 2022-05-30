if(Triggered){
	//Check the list for enemies that are aready to spawn and if they are right wave/time Spawn them!
	for(var i = 0 ; i < ds_list_size(Waves) ; i++){
		var Next = ds_list_find_value(Waves,i)
		if((Next[_WAVE] == Current_Wave) && (Next[_DELAY] == Timer)){
			instance_create_layer(0,0,"Enemy_Layer",Next[_TYPE]);
		}
	}

	// Increase Timer
	Timer++;
	
	// Next Wave or end Room When all enemies have died
	if(Remaining[Current_Wave] <= 0){
		if(Current_Wave == Total_Waves){
			// all waves cleaned
			show_debug_message("[R.C.] Level cleaned")
			global.LevelCleaned = true;
		} else{
			// Wave Cleaned
			Current_Wave++;
			Triggered = false;
			if(!timeline_running){
				timeline_index = Tln_WaveStartTrigger_3sec;
				timeline_position = 0;
				timeline_running = true;
			}
			Timer = 0;
		}
	}
}
