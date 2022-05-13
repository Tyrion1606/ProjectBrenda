HP--; // Loses 1 HP when coliding with a bullet

// If lifes gone, destroy Self(counted only on colision at moment... so it
// saves processing... may be change if there is some continuous damage like fire)
if(HP < 1){
	instance_destroy(id);
}
