Firing = true;	// Says if the turret is in the firing mode or not
BulletSpeed = 10;	// Speed that the bullet goes out from the turret
AtackRange = 150;
Cooldown = 1; // Cooldown to fire
TurretCollor = c_white; // Color for turret attack area

move_snap(sprite_width/2, sprite_height/2); // Redundantly snaps the turret location, reinforcing the Shadow location... (trying to avoid bugs)