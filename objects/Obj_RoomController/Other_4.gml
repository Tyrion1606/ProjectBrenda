// Sets the room persistence as FALSE, to avoid bugs when coming back from pause:
room_persistent = false;


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
if(global.RestartFlag){
	room_restart();
	global.RestartFlag = false;
}
