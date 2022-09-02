/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Set the direction of the turret referring to the mouse position
if(PlaceTurret){
	var MouseDirection = point_direction(id.x, id.y, mouse_x, mouse_y);
	var ImageAngle = 0;
		
	if(MouseDirection<45 || MouseDirection>315){
		id.image_angle = - ImageAngle;
	}
	else if(MouseDirection<135){
		id.image_angle = 90 - ImageAngle;
	}
	else if(MouseDirection<225){
		id.image_angle = 180 - ImageAngle;
	}
	else{
		id.image_angle = 270 - ImageAngle;
	}
}