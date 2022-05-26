#region Look For the Enemy
// Set its direction by the nearest enemy...
// (it may be changed so the turret can shot the enemy that is closest to the end of path)
var Nearest;

if (instance_exists(Obj_Enemy)){
	Nearest = instance_nearest(id.x, id.y, Obj_Enemy);
	image_angle = point_direction(id.x, id.y, Nearest.x, Nearest.y);
}

#endregion


#region Fire
// Creates the bulets with certain fire-rate and seting its speed
if (Firing && collision_circle(x, y, AtackRange, Obj_Enemy, false, true)){
	
	var Bomb = instance_create_layer(x, y, "Instances", Obj_Turret_02_Bomb);
	Bomb.direction = id.image_angle;
	Bomb.speed = BulletSpeed;
	
	// Set the position of the target
	Bomb.Target = [Nearest.x, Nearest.y];
//	show_debug_message(Bomb.Target);
	
	// Set the distance to the target
	Bomb.TargetDistance = distance_to_object(instance_nearest(id.x, id.y, Obj_Enemy));
	
	// Reset the cooldown to fire
	Firing = false;
	alarm[0] = Cooldown;
	
	// Som:
	audio_play_sound(Snd_Tum_Vocal,1,false);
}

#endregion
