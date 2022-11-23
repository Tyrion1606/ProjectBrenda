// Sets the room persistence as FALSE, to avoid bugs when coming back from pause:
room_persistent = false;


//Work out number of waves and enemies per wave
Total_Waves = -1;
for(var i = 0 ; i < ds_list_size(Waves) ; i++){
	var ThisEntry = ds_list_find_value(Waves,i);
	if(ThisEntry[_WAVE] > Total_Waves){
		Total_Waves = ThisEntry[_WAVE];
		Remaining[Total_Waves] = 0;
	}
	Remaining[ThisEntry[_WAVE]]++;	//Adiciona 1 na quantidade de inimigos na wave do inimigo sendo analizado
}
if(global.RestartFlag){
	room_restart();
	global.RestartFlag = false;
}


// Fill the Path_Running with the points
var Point_x = 0;
var Point_y = 1;
path_clear_points(Path_Running);
for(var i = 0 ; i < array_length(Path_Array[0]) ; i++){
	path_add_point(Path_Running, Path_Array[0][i][Point_x], Path_Array[0][i][Point_y], 100);
}
