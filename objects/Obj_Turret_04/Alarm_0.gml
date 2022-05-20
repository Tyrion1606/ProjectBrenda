/// @description Change the status of the atack

#region Fire
// Creates the whip
if (Firing){
	image_index = 1;
	// Instanciate the whips to atack
	MyWhip = instance_create_layer(x + lengthdir_y(sprite_height/2, image_angle),
								   y - lengthdir_x(sprite_height/2, image_angle), "Shoots", Obj_Whip);
	MyWhip.image_angle = id.image_angle;
	alarm[0] = AtackDuration;
}
// destroy the whip
else{
	image_index = 0;
	instance_destroy(MyWhip);
	
	alarm[0] = Cooldown;
}

Firing = !Firing;

#endregion
