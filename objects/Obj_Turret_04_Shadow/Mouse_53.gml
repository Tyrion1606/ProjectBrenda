/// @description Put the turret at the place


	
if(Selected and AntibugDelay <= 0 and not PlaceTurret){
	// Check if the place is a path or if already has a turret at this place
	// 1st - Check for the path at point of the click
	// 2nd - Check for the path at top border of the turret
	// 3rd - Check for the path at left border of the turret
	// 4th - Check for the path at botton border of the turret
	// 5th - Check for the path at right border of the turret
	// 6th - Check for turrets at the point of click
	if(!tilemap_get_at_pixel(layer_tilemap_get_id("PathTiles"), mouse_x, mouse_y)
		&& !tilemap_get_at_pixel(layer_tilemap_get_id("PathTiles"), mouse_x, mouse_y - sprite_height/2)
			&& !tilemap_get_at_pixel(layer_tilemap_get_id("PathTiles"), mouse_x - sprite_height/2, mouse_y)
				&& !tilemap_get_at_pixel(layer_tilemap_get_id("PathTiles"), mouse_x, mouse_y + sprite_height/2)
					&& !tilemap_get_at_pixel(layer_tilemap_get_id("PathTiles"), mouse_x + sprite_height/2, mouse_y))
						&& !position_meeting(mouse_x, mouse_y, Obj_Turret){
	
		// By clicking, and After the AntibugDelay(explaned in 'Create')
		// and Doublecheking the Selected by redundance
		// Prepare the shadow to set turret's direction
		if(global.Dinheiros >= TurretValue){
			global.Dinheiros -= TurretValue;
			PlaceTurret = true;
			Selected = false;
		}
	}
}
else if(PlaceTurret){
	// Creates a turrent on the shadow direction 
	
	var Turret = instance_create_layer(id.x, id.y, "Instances", TurretObject);
	Turret.image_angle = id.image_angle;
	id.image_angle = 0;
	
	PlaceTurret = false;
	Selected = true;
}

