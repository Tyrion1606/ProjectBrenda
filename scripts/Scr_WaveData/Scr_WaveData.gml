function Scr_WaveDataLoad(C_Level, WaveArray){
	
	//Anti-HardCode Labels/Macros
	var level = 0;
	var wave = 1;
	var enemy = 2;
	var time = 3;
	
	//Creates a DS_List to hold all waves data of this level
	Waves = ds_list_create();
	
	//Percorre Todo array com as informações das waves e separa somente as do Level atual na Lista "Waves"
	var i = 0;
	repeat(array_length(WaveArray)){
		if(WaveArray[i][level] == C_Level){
			ds_list_add(Waves, [WaveArray[i][wave], asset_get_index(WaveArray[i][enemy]), WaveArray[i][time]]);	//A lista "Waves" recebe[wave do inimigo | qual inimigo é | Quando ele entra]
		}
		i++;
	}
	
	//Retorna a lista com as informações das Waves do Level Atual
	return Waves;
}