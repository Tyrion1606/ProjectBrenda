/// @description Place the frizing shots

#region Fire
// Creates the frizing shot if faz a free place
for(var i = 0; i < 4; i++){
	
	// Set the next position to place the frizing shot
	if(NextPosition<3)
		NextPosition++;
	else
		NextPosition = 0;
	
	// Verify if has a Frizing Shot at the next place
	if(collision_rectangle(PlacePositions[NextPosition][0] - 4, 
								PlacePositions[NextPosition][1] - 4, 
									PlacePositions[NextPosition][0] + 4,
										PlacePositions[NextPosition][1] + 4, 
											Obj_Freeze, false, true) == noone){
												
		// Instanciate the frzing shot
		instance_create_layer(PlacePositions[NextPosition][0], 
								PlacePositions[NextPosition][1], "Shoots", Obj_Freeze);
		show_debug_message("Placing fire");
		Firing = true;	// Normalizes the cooldown
		break;
	}
	else if(i==3){
		Firing = false; // If didn't has a free place set the cooldown to minimum
	}
			
}


alarm[0] = ( (Cooldown - 1) * Firing) + 1; // Restart the cooldown to fire
#endregion
