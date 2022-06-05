///@desscription Make the logic of the shoot

// Function to set the settings of the shoot
function setShootSetings(Bullet, num){
	
	// Set the source of the bullet
	Bullet.Parent = id;
	
	// Set the speed of the shoot
	Bullet.direction = 360 / ShotsNumber * num;
	
	// Set the speed of the shoot
	Bullet.speed = BulletSpeed;
	
	// Set the distance to bullet disappear
	Bullet.Distance = AtackRange;
}


#region Fire
// Creates the bulets with certain fire-rate and seting its speed
if (Firing && collision_circle(id.x, id.y, AtackRange, Obj_Enemy, false, true) != noone){
	
	// Generato the bullets
	for(var i=0; i < ShotsNumber; i++){
		var Bullet = instance_create_layer(x, y, "Instances", Obj_Turret_01_Bullet);
		setShootSetings(Bullet, i);
	}
	
	// Reset the cooldown to fire
	Firing = false;
	alarm[0] = Cooldown;
}

#endregion


