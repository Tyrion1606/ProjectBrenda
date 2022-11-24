if(ReloadWavesData_Flag){
	instance_destroy(Obj_Enemy_Placed);
	var TempLevelsData = Scr_LevelsDataLoad();	//Carrega um array com as informações já presentes no arquivo de dados das waves
	if instance_exists(Obj_TimeLine){
		Scr_Instanciate_From_Array_Horizontal(Obj_TimeLine.x, Obj_TimeLine.y, TempLevelsData, Obj_ValuePanel_LevelSet_Editor.Value-1, Obj_ValuePanel_WaveSet_Editor.Value-1)	// Instancia todos deste Level e Wave... "-1" por que array começa no indice 0
	}
	ReloadWavesData_Flag = false;
}


if (Flag_Path_Create_n_Save){
	var xValue = 0;	// Just avoiding HardCode
	var yValue = 1;	// Just avoiding HardCode
	
	var Level_Selected = Obj_ValuePanel_LevelSet_Editor.Value-1; // '-1' to starts at Index[0] when Level=1;
	
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
	
	var Level_Selected = Obj_ValuePanel_LevelSet_Editor.Value-1; // '-1' to starts at Index[0] when Level=1;
	
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