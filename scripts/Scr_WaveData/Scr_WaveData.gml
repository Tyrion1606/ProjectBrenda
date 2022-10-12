function Scr_WaveDataLoad(C_Level, WaveArray){
	var level = 0;
	var wave = 1;
	var enemy = 2;
	var time = 3;
	
	Waves = ds_list_create();
	
	var i = 0;
	repeat(array_length(WaveArray)){
		if(WaveArray[i][level] == C_Level){
			ds_list_add(Waves, [WaveArray[i][wave], asset_get_index(WaveArray[i][enemy]), WaveArray[i][time]]);
		}
		i++;
	}
	return Waves;
}