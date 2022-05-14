/// @description Insert description here
// You can write your code in this editor

// Select the enemy
// Randomize enemy enemy to array size
enemy = enemies[irandom_range(0, array_length(enemies)-1)];

// Instanciate an enemy
var tempEnemy = instance_create_layer(5, 5, "Instances", enemy); 

// Reset alarm
alarm[0] = room_speed * CreationDelay;


