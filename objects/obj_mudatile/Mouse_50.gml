
LayerID = layer_get_id("Tiles");
TileMapID = layer_tilemap_get_id(LayerID);
TileToUse = tile_set_index(TileMapID, Index);
tilemap_set_at_pixel(TileMapID, TileToUse, mouse_x, mouse_y);
Index++;