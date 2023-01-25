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
var Point_x = 0;	// Avoid HardCode
var Point_y = 1;	// Avoid HardCode
path_clear_points(Path_Running);
print("level: ", global.CurrentLevel);
print(Paths_Array);
for(var i = 0 ; i < array_length(Paths_Array[global.CurrentLevel]) ; i++){
	path_add_point(Path_Running, Paths_Array[global.CurrentLevel][i][Point_x], Paths_Array[global.CurrentLevel][i][Point_y], 100);
}


//Sets the Tilemap to the MapSize
var LayerID = layer_get_id("MapTiles");
var TileMapID = layer_tilemap_get_id(LayerID);
tilemap_set_width(TileMapID,21);
tilemap_set_height(TileMapID,16);
tilemap_x(TileMapID,150);
tilemap_y(TileMapID,0);

// Loads the Tiles on the map
var Tiles_array = Fn_Data_Load_txt("Tiles_array");
print(Tiles_array)
	//desenha do array
	for (var i = 0; i < tilemap_get_width(TileMapID); i++) {
		for (var j = 0; j < tilemap_get_height(TileMapID); j++) {
			tilemap_set(TileMapID, Tiles_array[global.CurrentLevel][i][j], i, j);
		}
	}