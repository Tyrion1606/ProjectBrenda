/// @description Change the status of the atack

#region Fire
// Creates the bulets with certain fire-rate and seting its speed
if (Firing){
	image_index = 1;
	// Instanciate the whips to atack
	MyWhip = instance_create_layer(x, y - sprite_height / 2, "Shoots", Obj_Whip);
	alarm[0] = AtackDuration;
}
else{
	image_index = 0;
	instance_destroy(MyWhip);
	
	alarm[0] = Cooldown;
}

Firing = !Firing;

#endregion
