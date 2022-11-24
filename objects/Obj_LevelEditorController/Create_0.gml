ReloadWavesData_Flag = true;
Flag_Reload_Path = false;
Flag_Path_Create_n_Save = false;
Flag_Map_Tiles_Save = false;

PCBResizeValue = 0.8125;

if (room == Rm_Construct){
	Tile_Index = 1;
	Flag_Reload_Path = true;
	Obj_MainTower.Selectable = true;
	
	#region PCB transform
		var PCB_Layer = layer_get_id("PCB");
		var PCB_Element = layer_background_get_id(PCB_Layer);
		layer_background_xscale(PCB_Element, PCBResizeValue);
		layer_background_yscale(PCB_Element, PCBResizeValue);
		var PCB_Sprite = layer_background_get_sprite(PCB_Element);
		var OffSet = ((room_width/2)-((sprite_get_width(PCB_Sprite)/2)*PCBResizeValue));
		layer_x(PCB_Layer, OffSet);
	#endregion
	
	#region Calculate the PCB limits
		var Width = sprite_get_width(PCB_Sprite)*PCBResizeValue;
		var Height = sprite_get_height(PCB_Sprite)*PCBResizeValue;
		LeftLimit = layer_get_x(PCB_Layer);
		RightLimit = LeftLimit + Width;
		TopLimit = layer_get_y(PCB_Layer);
		BottomLimit = TopLimit + Height;
	#endregion
	
	#region Sets the Tilemap to the PCB Size
		var LayerID = layer_get_id("Construct_MapTiles");
		var TileMapID = layer_tilemap_get_id(LayerID);
	
		tilemap_set_width(TileMapID,21);
		tilemap_set_height(TileMapID,16);
		tilemap_x(TileMapID,274);
		tilemap_y(TileMapID,0);
	#endregion

}


