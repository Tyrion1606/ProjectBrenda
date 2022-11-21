if(ReloadWavesData_Flag){
	instance_destroy(Obj_Enemy_Placed);
	var TempLevelsData = Scr_LevelsDataLoad();	//Carrega um array com as informações já presentes no arquivo de dados das waves
	if instance_exists(Obj_TimeLine){
		Scr_Instanciate_From_Array_Horizontal(Obj_TimeLine.x, Obj_TimeLine.y, TempLevelsData, Obj_ValuePanel_LevelSet_Editor.Value-1, Obj_ValuePanel_WaveSet_Editor.Value-1)	// Instancia todos deste Level e Wave... "-1" por que array começa no indice 0
	}
	ReloadWavesData_Flag = false;
}


#region Path Create and Save
if (Flag_Path_Create_n_Save){
	//var Point = 0;
	var xValue = 0;
	var yValue = 1;

	/*var Points_Array =	[[0,0]
						,[0,0]];*/
						
	var Points_Array;
	
	var Path_Size = path_get_number(Path_Temp);
	for(var i = 0 ; i < Path_Size ; i++){
		//Points_Array[i][Point] = i
		Points_Array[0][i][xValue] = path_get_point_x(Path_Temp,i)/PCBResizeValue;
		Points_Array[0][i][yValue] = path_get_point_y(Path_Temp,i)/PCBResizeValue;
	}
	//show_debug_message(Points_Array)
	Fn_Data_Save_txt("Paths", Points_Array);
	
	Flag_Path_Create_n_Save = false;
}
#endregion