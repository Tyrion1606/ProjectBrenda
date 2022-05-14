#region Fire
// Creates the bulets with certain fire-rate and seting its speed
if (Firing){
	i++;
	if(i > 10){
		var Bullet = instance_create_layer(x,y,"Instances",Obj_Turret_01_Bullet);
		Bullet.direction = id.image_angle;
		Bullet.speed = BulletSpeed;
		i=0;
	}
}

#endregion

#region Look For the Enemy
// Set its direction by the nearest enemy...
// (it may be changed so the turret can shot the enemy that is closest to the end of path)
if (instance_exists(Obj_Enemy)){
	var Nearest = instance_nearest(id.x, id.y, Obj_Enemy);
	image_angle = point_direction(id.x, id.y, Nearest.x, Nearest.y);
}
#endregion
