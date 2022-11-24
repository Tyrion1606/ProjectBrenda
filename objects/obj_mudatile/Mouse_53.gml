/// @description Set Tile

if(Obj_CheckBox_PathDrawMode.image_index == 0){
	var LayerID = layer_get_id("Construct_MapTiles");
	var TileMapID = layer_tilemap_get_id(LayerID);


	tilemap_set_at_pixel(TileMapID, Tile_Index, mouse_x, mouse_y);
}