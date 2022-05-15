/// @description Destroy the bullet from the distance

if(Distance != 0 && distance_to_object(Parent) >= Distance)
	instance_destroy(id);
