/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Set the direction of the turret referring to the mouse position
if(PlaceTurret){
	var MouseDirection = point_direction(x, y, mouse_x, mouse_y);
	
	if(MouseDirection<45 || MouseDirection>315){
		id.image_angle = 270;
	}
	else if(MouseDirection<135){
		id.image_angle = 0;
	}
	else if(MouseDirection<225){
		id.image_angle = 90;
	}
	else{
		id.image_angle = 180;
	}
}
