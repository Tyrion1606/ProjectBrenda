
AntibugDelay = 20;		// It inhibits the bug that creates a turret just after clicking the 
						// instantiator by waiting a time before it can create a turret
						
						
Selected = false;		// If selected = true, it will follow the mouse
move_snap(sprite_width/2, sprite_height/2);

// Pre-calculate the margins where you can move the shadow to put a turret:
X_MarginMin = 144+(sprite_width/2);
X_MarginMax = 144+1024-(sprite_width);
Y_MarginMin = sprite_height/2;
Y_MarginMax = room_height-(sprite_height);