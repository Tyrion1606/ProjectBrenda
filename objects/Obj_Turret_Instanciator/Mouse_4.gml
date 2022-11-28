///@description Instantiates the shadow to the respective turret

// Verify if aready has a shadow on the game
if(instance_exists(Obj_Turret_Shadow)){
	for (var i = 0; i < instance_number(Obj_Turret_Shadow); ++i;){
		instance_destroy(instance_find(Obj_Turret_Shadow,i));
	}	
}

// On Clicked, this object creates the "Shadow" that allow you to chose the location to create a new turret:

var ThisBase = instance_create_layer(mouse_x,mouse_y,"Sockets", Obj_Turret_Base); // Stores the id of the recently created "Base" for future configurations
ThisBase.Selected = true;	// Set the new "Base" to start following the mouse

var ThisShadow = instance_create_layer(mouse_x,mouse_y,"Instances", TurretShadow);
//ThisShadow.Selected = true;	// Set the new "Shadow" to start following the base[deprecated - setted on his "create" event]
ThisShadow.MyBase = ThisBase;
