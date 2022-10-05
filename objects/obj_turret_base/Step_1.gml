/// @description Set it's position BEFORE Turret's Shadow follow it
if(id.Selected){
	// If 'Selected = true', this object will follow the mouse thiyng to stay Snapped
	
	id.image_alpha = 0.5;	// seting the 'alpha < 1' will mage it gosthly by give it somw transparency
	
	// Stores half Sprite Sizes
	var HalfSpriteX = (sprite_width / 2);
	var HalfSpriteY = (sprite_height / 2);
	
	// Moves and Snaps
	id.x = mouse_x - HalfSpriteX;
	id.y = mouse_y - HalfSpriteY;
	move_snap(sprite_width, sprite_height);	// It Snaps the object on a grid with (arg1 x arg2) size
}