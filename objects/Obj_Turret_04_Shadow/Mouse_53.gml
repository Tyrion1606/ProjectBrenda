/// @description Put the turret at the place

if(Selected and AntibugDelay <= 0 and not PlaceTurret){
	// Check if the place is a path or if already has a turret at this place
	// 1nd - [Deleted]
	// 2nd - Check for the path at top border of the turret
	// 3rd - Check for the path at left border of the turret
	// 4th - Check for the path at botton border of the turret (-1 for adjust and avoid bugs)
	// 5th - Check for the path at right border of the turret (-1 for adjust and avoid bugs)
	// 6th - Check for turrets at the point of click
	TileMapID = layer_tilemap_get_id("MapTiles");
	var PathTileID = 3;
	if(tile_get_index(tilemap_get_at_pixel(TileMapID, id.x, id.y - sprite_height/2)) != PathTileID
		&& tile_get_index(tilemap_get_at_pixel(TileMapID, id.x - sprite_height/2, id.y)) != PathTileID
			&& tile_get_index(tilemap_get_at_pixel(TileMapID, id.x, id.y - 1 + sprite_height/2)) != PathTileID
				&& tile_get_index(tilemap_get_at_pixel(TileMapID, id.x - 1 + sprite_height/2, id.y)) != PathTileID
					&& place_empty(id.x, id.y,Obj_Turret)){
	
		// By clicking, and After the AntibugDelay(explaned in 'Create')
		// and Doublecheking the Selected by redundance
		// Prepare the shadow to set turret's direction
		if(global.Dinheiros >= TurretValue){
		//	show_debug_message("Position Before - X: " + string(id.y) + " Y: " + string(id.y));
			global.Dinheiros -= TurretValue;
			PlaceTurret = true;
			Selected = false;
		}
		
	}
}
else if(PlaceTurret){
	// Creates a turrent on the shadow direction 
	
	var Base = instance_create_layer(id.x, id.y, "Sockets", Obj_Turret_Base);
	with(Base){
			instance_create_layer(id.x, id.y, "Instances", other.TurretObject, { image_angle : other.image_angle });
	}
				
	
	id.image_angle = 0;
	
	PlaceTurret = false;
	Selected = true;
	
	
}