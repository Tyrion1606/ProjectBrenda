	var level = 0;
	var wave = 1;
	var enemy = 2;
	var x_Position = 3;

/*
#region First: Calculate the positions [deprecated]
	var i = 0;
	repeat(ds_list_size(global.EnemyList)){
		EnemyArray[i][level] = Obj_ValuePanel_LevelSet_Editor.Value-1;	// -1 cause in code it starts on "0" but user must see "Level 1"
		EnemyArray[i][wave] = Obj_ValuePanel_WaveSet_Editor.Value-1;	// -1 cause in code it starts on "0" but user must see "Wave 1"
		EnemyArray[i][enemy] = ds_list_find_value(global.EnemyList,i).Type
		EnemyArray[i][x_Position] = ds_list_find_value(global.EnemyList,i).x
		i++;
	}
#endregion
*/

#region Clear this Wave
	var i = 0;
	if (file_exists("WaveData.txt")) {
		var TempLevelsData = Scr_LevelsDataLoad();	// Carrega um array com as informações já presentes no arquivo de dados das waves
		// Apaga tudo que há nesta Wave especifica
		for(var i = 0 ; i < array_length(TempLevelsData) ; i++){
			if(Obj_ValuePanel_LevelSet_Editor.Value-1 == TempLevelsData[i][level] and Obj_ValuePanel_WaveSet_Editor.Value-1 == TempLevelsData[i][wave]){	
				array_delete(TempLevelsData, i, 1);
				i--;
			}
		}
		var i = array_length(TempLevelsData);	// Continua do ultimo indice caso o arquivo exista (0 caso não exista, olhe acima do if para entender o motivo)
	}
#endregion

#region Calculate the positions and fullfil the end of the array with the new wave data
	var j = 0;
	repeat(array_length(global.EnemyArray)){
		TempLevelsData[i][level] = Obj_ValuePanel_LevelSet_Editor.Value-1;	// -1 cause in code it starts on "0" but user must see "Level 1"
		TempLevelsData[i][wave] = Obj_ValuePanel_WaveSet_Editor.Value-1;	// -1 cause in code it starts on "0" but user must see "Wave 1"
		TempLevelsData[i][enemy] = global.EnemyArray[j].Type
		TempLevelsData[i][x_Position] = global.EnemyArray[j].x
		i++;
		j++;
	}
#endregion

#region Second: Generate a TXT Archive
	var JsonArray = json_stringify(TempLevelsData);
	//show_debug_message("[ButtonClick]" + string(JsonArray));
	var file = file_text_open_write("WaveData.txt");
	file_text_write_string(file, JsonArray);
	file_text_close(file);
#endregion
/*
#region Third: Automaticaly copy it to clipboard
	clipboard_set_text(JsonArray);
#endregion*/