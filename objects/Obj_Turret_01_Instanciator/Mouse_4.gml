// On Clicked, this object creates the "Shadow" that allow you to chose the location to create a new turret:
ThisInstance = instance_create_layer(mouse_x,mouse_y,"Instances", Obj_Turret_01_Shadow); // Stores the id of the recently created "Shadow" for future configurations
ThisInstance.Selected = true;	// Set the new "Shadow" to start following the mouse
