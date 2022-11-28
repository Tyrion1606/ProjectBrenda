///@description				This function sets the caller's image angle to the
///							enemy that is currently further on the path
///
///@argument {real} Range	The range within it will scans
function Scr_Path_SearchFurtherEnemy(Range){
	if (instance_exists(Obj_Enemy)){		// Dirst of all it only do something if there is at least one enemy in the room
		
		var EnemyList = ds_list_create();	// Creates a temporary DSlist to be filled with the enemies within the range
		var Further;						// Creates a temporary Variable to hold the Current further enemy while calculating
		
		//Returns ,in the DSlist, the ID of any 'Obj_Enemy'(and children) that colides with a circle with a radius of "range" centered in the caller
		var n_Collisions = collision_circle_list(id.x, id.y, Range, Obj_Enemy, false, true, EnemyList,false);	
		
		if (!ds_list_empty(EnemyList)){		// Checks if the list isn't empty, in other words: if there is some target in the range
			
			Further = ds_list_find_value(EnemyList, 0);		// For a Future comparation, Further starts by being the first object of the list
			
			// It loops all arround the DSlist to search for the further one
			for (var j = 1 ; j < n_Collisions ; j++){
				
				// Its important to check the current existence status of the 'Further' in any loop to avoid bugs/crashes when the current 'Further'
				// Just dies during the calculation, in this case, if the further no more exists We break the 'for' loop
				if (instance_exists(Further)){	// Checks if the current setted 'Further' still existing until the moment
					if(ds_list_find_value(EnemyList, j).path_position > Further.path_position){	//Checks if the next enemy is further then the actual 'further'
						Further = ds_list_find_value(EnemyList, j);	// Actualize the futher
					}
				} else {
					break;	// Breaks the loop if the current further dont exist anymore
				}
			}
			if (instance_exists(Further)){	// If all runs good and the further still existing:
				image_angle = point_direction(id.x, id.y, Further.x, Further.y);	// Makes the caller to look to the further
			}
		}
	}
}