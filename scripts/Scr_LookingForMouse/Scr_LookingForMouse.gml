function Scr_LookingForMouse(){
	// Returns a Vector pointing from player to Mouse and set image angle as its vector direction;
	id.image_angle = point_direction(id.x,id.y,mouse_x,mouse_y);
}