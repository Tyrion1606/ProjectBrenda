if(Selectable){
	// If 'Selected = true', this object will follow the mouse thiyng to stay Snapped
	
	// Stores Quarter Sprite Sizes
	var HalfSpriteX = (sprite_width / 2);
	var HalfSpriteY = (sprite_height / 2);
	
	// Moves and Snaps
	id.x = mouse_x - HalfSpriteX;
	id.y = mouse_y - HalfSpriteY;
	move_snap(48, 48);	// It Snaps the object on a grid with (arg1 x arg2) size
}


