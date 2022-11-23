/// @description Get Tile

var TileMapID = layer_tilemap_get_id("MapTiles");

Index = tilemap_get_at_pixel(TileMapID, mouse_x, mouse_y);
