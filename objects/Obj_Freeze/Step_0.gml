/// @description Destroy the bullet from the distance

#region Set the target
if(Target == noone){
	var PossibleTargets = ds_list_create();
	var TargetsNumber = collision_circle_list(x, y, AtackRange, Obj_Enemy, false, true, PossibleTargets, true);
	if(TargetsNumber > 0)
		Target = PossibleTargets[| 0];
	ds_list_destroy(PossibleTargets);
}
#endregion
#region Folow the target
else{
	if(instance_exists(Target)){
		direction = point_direction(x, y, Target.x, Target.y);
		speed = BulletSpeed;
	}
	else{
		Target = noone;
		speed = 0;
	}
}

#endregion
	
	if(collision_circle(id.x, id.y, AtackRange,Obj_Enemy,false,true) == noone){
	Firing = false;
} else {
	Scr_Path_SearchFurtherEnemy(AtackRange);
	Firing = true;
	
}


