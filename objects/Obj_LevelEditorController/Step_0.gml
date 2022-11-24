if(ReloadWavesData_Flag){
	instance_destroy(Obj_Enemy_Placed);
	var TempLevelsData = Scr_LevelsDataLoad();	//Carrega um array com as informações já presentes no arquivo de dados das waves
	if instance_exists(Obj_TimeLine){
		Scr_Instanciate_From_Array_Horizontal(Obj_TimeLine.x, Obj_TimeLine.y, TempLevelsData, Obj_ValuePanel_LevelSet_Editor.Value-1, Obj_ValuePanel_WaveSet_Editor.Value-1)	// Instancia todos deste Level e Wave... "-1" por que array começa no indice 0
	}
	ReloadWavesData_Flag = false;
}

if(Flag_Reload_Path){
	var Point_x = 0;	// Avoid HardCode
	var Point_y = 1;	// Avoid HardCode
	
	Level_Selected = Obj_ValuePanel_LevelSet_Editor.Value-1; // '-1' to starts at Index[0] when Level=1;
	path_clear_points(Path_Temp);
	if(file_exists("Paths")){	// Verifica se o arquivo existe
		var Paths_Array = Fn_Data_Load_txt("Paths")	// Carrega array de paths do arquivo
		if(array_length(Paths_Array) > Level_Selected){	// Verifica se há dados para este level no array
			for(var i = 0 ; i < array_length(Paths_Array[Level_Selected]) ; i++){
				path_add_point(Path_Temp, PCBResizeValue*Paths_Array[Level_Selected][i][Point_x], PCBResizeValue*Paths_Array[Level_Selected][i][Point_y], 100);
			}
			#region Repositioning Start-End points
				// Reposiciona StartPoint
				Obj_StartPoint.x = path_get_point_x(Path_Temp,0);
				Obj_StartPoint.y = path_get_point_y(Path_Temp,0);
				// Reposiciona Main Tower
				Obj_MainTower.x = path_get_point_x(Path_Temp,path_get_number(Path_Temp)-1);
				Obj_MainTower.y = path_get_point_y(Path_Temp,path_get_number(Path_Temp)-1);
			#endregion
			
		} else {	// if file Exists but there is no data for this level
			Obj_StartPoint.x = 350;
			Obj_StartPoint.y = 120;
			path_add_point(Path_Temp, Obj_StartPoint.x, Obj_StartPoint.y, 100);	//Add initial path
			
			Obj_MainTower.x = 750;
			Obj_MainTower.y = 460;
			path_add_point(Path_Temp, Obj_MainTower.x, Obj_MainTower.y, 100);	//Add final path
		}
	} else {	// if File dont exists
		Obj_StartPoint.x = 350;
		Obj_StartPoint.y = 120;
		path_add_point(Path_Temp, Obj_StartPoint.x, Obj_StartPoint.y, 100);	//Add initial path
			
		Obj_MainTower.x = 750;
		Obj_MainTower.y = 460;
		path_add_point(Path_Temp, Obj_MainTower.x, Obj_MainTower.y, 100);	//Add final path
	}
	
	Flag_Reload_Path = false;
}


if (Flag_Path_Create_n_Save){
	var xValue = 0;	// Just avoiding HardCode
	var yValue = 1;	// Just avoiding HardCode
	
	Level_Selected = Obj_ValuePanel_LevelSet_Editor.Value-1; // '-1' to starts at Index[0] when Level=1;
	
	var Points_Array = Fn_Data_Load_txt("Paths");	// Array that holds all the paths Data
	Points_Array[Level_Selected] = 0;	// Clear the Old Path

	var Path_Size = path_get_number(Path_Temp);
	for(var Point_Index = 0 ; Point_Index < Path_Size ; Point_Index++){
		Points_Array[Level_Selected][Point_Index][xValue] = path_get_point_x(Path_Temp,Point_Index)/PCBResizeValue;
		Points_Array[Level_Selected][Point_Index][yValue] = path_get_point_y(Path_Temp,Point_Index)/PCBResizeValue;
	}
	
	//show_debug_message(Points_Array)
	Fn_Data_Save_txt("Paths", Points_Array);
	
	Flag_Path_Create_n_Save = false;
}


if (Flag_Map_Tiles_Save){
	var LayerID = layer_get_id("Construct_MapTiles");
	var TileMapID = layer_tilemap_get_id(LayerID);
	
	Level_Selected = Obj_ValuePanel_LevelSet_Editor.Value-1; // '-1' to starts at Index[0] when Level=1;
	
	var Tiles_array = Fn_Data_Load_txt("Tiles_array");	// Array that holds all the paths Data
	Tiles_array[Level_Selected] = 0;	// Clear the Old Path
	//cria um array que armazena todos os dados de todos os tiles do tilemap
	for (var i = 0; i < tilemap_get_width(TileMapID); i++) {
		for (var j = 0; j < tilemap_get_height(TileMapID); j++) {
		    Tiles_array[Level_Selected][i][j] = tilemap_get(TileMapID, i, j);
		}
	}
	print(Tiles_array)
	Fn_Data_Save_txt("Tiles_array",Tiles_array)
	Flag_Map_Tiles_Save = false
}