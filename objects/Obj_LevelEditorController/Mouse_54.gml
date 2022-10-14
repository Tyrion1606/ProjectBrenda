if (room == Rm_Construct){
	// If its in PathEdit Mode, place a new point for the path on the mouse position;
	if(Obj_CheckBox_PathDrawMode.image_index == 1){
		path_delete_point(Path_Temp, path_get_number(Path_Temp)-1);
	}
}