
if (AntibugDelay > 0){
	// The antibug logic, explaned in 'Create' code, where the variable "AntibugDelay" is created
	AntibugDelay--; 
} 

if(id.Selected){
	// If 'Selected = true', this object will follow the mouse
	id.x = mouse_x;
	id.y = mouse_y;
	
	var HalfSpriteX = sprite_width / 2;
	var HalfSpriteY = sprite_height / 2;
	
	// Snap the object on the miffle of a grid
	id.x = round(id.x / HalfSpriteX + power(- 1, round((id.x % sprite_width)/sprite_width)) / 2) * HalfSpriteX;
	id.y = round(id.y / HalfSpriteY + power(- 1, round((id.y % sprite_height)/sprite_height)) / 2) * HalfSpriteY;
	
	
	// move_snap(HalfSpriteX, HalfSpriteY);	// It Snaps the object on a grid with (arg1 x arg2) size
	// id.x -= sprite_width  / 2;
	// id.y -= sprite_height / 2;
}



// Clamps the position of the shadow by the pré-calculed margins
id.x = clamp(id.x, X_MarginMin, X_MarginMax);
id.y = clamp(id.y, Y_MarginMin, Y_MarginMax);