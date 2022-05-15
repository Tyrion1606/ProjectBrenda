///@description Instantiates the shadow to the respective turret

// Verify if has a shadow sekected
if(instance_number(Obj_Turret_Shadow)>0){
	for (var i = 0; i < instance_number(Obj_Turret_Shadow); ++i;){
		instance_destroy(instance_find(Obj_Turret_Shadow,i));
	}	
}

// On Clicked, this object creates the "Shadow" that allow you to chose the location to create a new turret:
ThisInstance = instance_create_layer(mouse_x,mouse_y,"Instances", TurretShadow); // Stores the id of the recently created "Shadow" for future configurations
ThisInstance.Selected = true;	// Set the new "Shadow" to start following the mouse
