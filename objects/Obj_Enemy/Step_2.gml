///@description Verify if the enemy is dead

// If lifes gone, destroy Self(counted only on colision at moment... so it
// saves processing... may be change if there is some continuous damage like fire)
if(HP < 1){
	instance_destroy(id);
}
