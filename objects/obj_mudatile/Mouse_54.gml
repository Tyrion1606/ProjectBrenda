/// @description Get Tile

if(Obj_CheckBox_PathDrawMode.image_index == 0){
	var TileMapID = layer_tilemap_get_id("MapTiles");
	//var TileMapID = layer_tilemap_get_id("Components_MapTiles");

	var Tile = tilemap_get_at_pixel(TileMapID, mouse_x, mouse_y);
	Tile_Index = tile_get_index(Tile);

	print(Tile_Index);
}