function Scr_Instanciate_From_Array_Horizontal(xLinePosition, yLinePosition, Array, Level, Wave){
	
	//Declara variaveis pra evitar código "hardcoded" para lidar com o array
	var _level = 0;
	var _wave = 1;
	var _enemy = 2;
	var x_Position = 3;
	
	for(var i = 0 ; i < array_length(Array) ; i++){
		if(Level == Array[i][_level] and Wave == Array[i][_wave]){	
			instance_create_layer(Array[i][x_Position] + xLinePosition, yLinePosition, "Enemies", asset_get_index(Array[i][_enemy]+"_Placed"));	// instancia todos que são deste Level e desta Wave
		}
	}
}