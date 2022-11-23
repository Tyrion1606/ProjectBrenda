/// @description Set Tile

//var LayerID = layer_get_id("MapTiles");
var TileMapID = layer_tilemap_get_id("MapTiles");
var TileToUse = tile_set_index(TileMapID, Index);
tilemap_set_at_pixel(TileMapID, TileToUse, mouse_x, mouse_y);