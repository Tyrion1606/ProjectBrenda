if (room == Rm_Construct){

	//checks if the mouse is in the limits of the PCB border
	var isBetween = (LeftLimit < mouse_x) and (mouse_x < RightLimit) and (TopLimit < mouse_y) and (mouse_y < BottomLimit);
	
	// If its in PathEdit Mode, place a new point for the path on the mouse position;
	if(Obj_CheckBox_PathDrawMode.image_index == 1 and isBetween){
		path_insert_point(Path_Temp, path_get_number(Path_Temp)-1, mouse_x, mouse_y, 100);
	}
}

