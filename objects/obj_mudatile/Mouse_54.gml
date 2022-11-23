/// @description Get Tile

var TileMapID = layer_tilemap_get_id("MapTiles");

var temp = tilemap_get_at_pixel(TileMapID, mouse_x, mouse_y);

//var TileToUse = tile_get_index()
//tilemap_set_at_pixel(TileMapID, TileToUse, mouse_x, mouse_y);
