if (room == Rm_Construct){
	
	#region Path Mode ON
		// If its in PathEdit Mode, delete last placed point, until the minimum of 2 points(start and finish);
		if(Obj_CheckBox_PathDrawMode.image_index == 1 and path_get_number(Path_Temp) > 2){
			path_delete_point(Path_Temp, path_get_number(Path_Temp)-2);
		}
	#endregion
	
	#region Path Mode OFF
		// Get Tile
		if(Obj_CheckBox_PathDrawMode.image_index == 0){
			var TileMapID = layer_tilemap_get_id("Components_MapTiles");
			var Tile = tilemap_get_at_pixel(TileMapID, mouse_x, mouse_y);
	
			Tile_Index = tile_get_index(Tile);
		}
	#endregion
	
}