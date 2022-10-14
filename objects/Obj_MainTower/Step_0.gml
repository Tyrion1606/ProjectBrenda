if(Selected){
	// If 'Selected = true', this object will follow the mouse thiyng to stay Snapped
	
	// Moves and Snaps
	id.x = mouse_x-6+HalfNewSquareSize;
	id.y = mouse_y+HalfNewSquareSize;
	move_snap(NewSquareSize, NewSquareSize);	// It Snaps the object on a grid with (arg1 x arg2) size
	id.y -= HalfNewSquareSize;
	id.x -= (HalfNewSquareSize-6);
	
	id.x = clamp(id.x, LeftLimit-NewSquareSize, RightLimit+NewSquareSize);
	id.y = clamp(id.y, TopLimit-NewSquareSize, BottomLimit+NewSquareSize);
	
	
	path_change_point(Path_Temp, path_get_number(Path_Temp)-1, id.x, id.y, 100);
}


