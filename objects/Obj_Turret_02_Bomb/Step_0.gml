
// Checks if the bomb has passed halfway
if(distance_to_point(Target[0], Target[1]) < TargetDistance/2)
	ReferenceScale = 2;

// Modify bomb size from objective distance
image_xscale = lerp(image_xscale, ReferenceScale, 0.03);
image_yscale = lerp(image_yscale, ReferenceScale, 0.03);

//If the bomb reached the target, it explodes
if(distance_to_point(Target[0], Target[1]) == 0 )
	instance_destroy(id);
