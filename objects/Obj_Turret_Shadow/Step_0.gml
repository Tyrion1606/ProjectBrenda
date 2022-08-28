
if (AntibugDelay > 0){
	// The antibug logic, explaned in 'Create' code, where the variable "AntibugDelay" is created
	AntibugDelay--; 
} 

if(id.Selected){
	// If 'Selected = true', this object will follow the mouse
	id.x = mouse_x;
	id.y = mouse_y;
}

move_snap(sprite_width, sprite_height);	// It Snaps the object on a grid with (arg1 x arg2) size

id.x -= sprite_width  / 2;
id.y -= sprite_height / 2;

// Clamps the position of the shadow by the pré-calculed margins
id.x = clamp(id.x, X_MarginMin, X_MarginMax);
id.y = clamp(id.y, Y_MarginMin, Y_MarginMax);