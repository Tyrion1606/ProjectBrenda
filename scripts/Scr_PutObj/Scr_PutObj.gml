///@description				Put the turret at the place
///							
///
///@argument {real} PutModeSelection	[0 = Obj only]
///										[1 = Using Tilesets to the path]
///										[2 = Full Tileset without initial Base]
///										[3 = Full Tileset with initial Base]
function Scr_PutObj(PutModeSelection){
	// Código usando apenas objetos
	if(PutModeSelection = 0){
		if(Selected & (AntibugDelay <= 0) & (global.Dinheiros >= TurretValue) & (place_empty(id.x, id.y,Obj_Turret, Obj_Path))){
			instance_create_layer(id.x, id.y, "Instances", TurretObject);
			global.Dinheiros -= TurretValue;
		}
	} 

	// Código Usando Tilesets para o caminho
	if(PutModeSelection = 1) {
		// Check if the place is a path or if already has a turret at this place
		// 1st - Check for the path at point of the click
		// 2nd - Check for the path at top border of the turret
		// 3rd - Check for the path at left border of the turret
		// 4th - Check for the path at botton border of the turret (-1 for adjust and avoid bugs)
		// 5th - Check for the path at right border of the turret (-1 for adjust and avoid bugs)
		// 6th - Check for turrets at the point of click
		if(!tilemap_get_at_pixel(layer_tilemap_get_id("PathTiles"), id.x, id.y)
		&& !tilemap_get_at_pixel(layer_tilemap_get_id("PathTiles"), id.x, id.y - sprite_height/2)
			&& !tilemap_get_at_pixel(layer_tilemap_get_id("PathTiles"), id.x - sprite_height/2, id.y)
				&& !tilemap_get_at_pixel(layer_tilemap_get_id("PathTiles"), id.x, id.y - 1 + sprite_height/2)
					&& !tilemap_get_at_pixel(layer_tilemap_get_id("PathTiles"), id.x - 1 + sprite_height/2, id.y))
						&& place_empty(id.x, id.y,Obj_Turret){
			if(Selected and AntibugDelay <= 0){
				// By clicking, and After the AntibugDelay(explaned in 'Create')
				// and Doublecheking the Selected by redundance
				// Creates a turrent on the shadow position 
				if(global.Dinheiros >= TurretValue){
					instance_create_layer(id.x, id.y, "Instances", TurretObject);
					global.Dinheiros -= TurretValue;
				}
			}		
		}
	}
	
	if(PutModeSelection = 2) {
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
			if(Selected and AntibugDelay <= 0){
				// By clicking, and After the AntibugDelay(explaned in 'Create')
				// and Doublecheking the Selected by redundance
				// Creates a turrent on the shadow position 
				if(global.Dinheiros >= TurretValue){
					var Base = instance_create_layer(id.x, id.y, "Sockets", Obj_Turret_Base);
					with(Base){
						 instance_create_layer(id.x, id.y, "Instances", other.TurretObject);
					}
				
					global.Dinheiros -= TurretValue;
				}
			}		
		}
	}
	
	if(PutModeSelection = 3) {
		// Check if the place is a path or if already has a turret at this place
		// 1nd - [Deleted]
		// 2nd - Check for the path at top border of the turret
		// 3rd - Check for the path at left border of the turret
		// 4th - Check for the path at botton border of the turret (-1 for adjust and avoid bugs)
		// 5th - Check for the path at right border of the turret (-1 for adjust and avoid bugs)
		// 6th - Check for turrets at the point of click
		TileMapID = layer_tilemap_get_id("MapTiles");
		var PathTileID = 3;
		var HalfSpriteX = (sprite_width / 2);
		var HalfSpriteY = (sprite_height / 2);
		if(tile_get_index(tilemap_get_at_pixel(TileMapID, id.x, id.y - sprite_height/2)) != PathTileID
			&& tile_get_index(tilemap_get_at_pixel(TileMapID, id.x - sprite_height/2, id.y)) != PathTileID
				&& tile_get_index(tilemap_get_at_pixel(TileMapID, id.x, id.y - 1 + sprite_height/2)) != PathTileID
					&& tile_get_index(tilemap_get_at_pixel(TileMapID, id.x - 1 + sprite_height/2, id.y)) != PathTileID
						&& !position_meeting(id.x, id.y,Obj_Turret)){
			if(Selected and AntibugDelay <= 0){
				// By clicking, and After the AntibugDelay(explaned in 'Create')
				// and Doublecheking the Selected by redundance
				// Creates a turrent on the shadow position 
				if(global.Dinheiros >= TurretValue){
						instance_create_layer(id.x, id.y, "Instances", TurretObject);	//Puts the turret
						
						//Puts the Base right above the turret
						instance_create_layer(id.x-HalfSpriteX, id.y-HalfSpriteY, "Sockets", Obj_Turret_Base);
						
					global.Dinheiros -= TurretValue;
				}
			}		
		}
	}
}