Firing = false;	// Says if the turret is in the firing mode or not
Cooldown = 100; // Cooldown to fire the bomb
i = 0;	// Just declaretes the counter for FireRate
BulletSpeed = 2;	// Speed that the bullet goes out from the turret
FireRadius = 400;	// Radius at which the turret can shoot

move_snap(32, 32); // Redundantly snaps the turret location, reinforcing the Shadow location... (trying to avoid bugs)

alarm[0] = Cooldown; // Start the cooldown to fire
