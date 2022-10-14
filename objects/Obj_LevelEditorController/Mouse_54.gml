if (room == Rm_Construct){
	// If its in PathEdit Mode, delete last placed point, until the minimum of 2 points(start and finish);
	if(Obj_CheckBox_PathDrawMode.image_index == 1 and path_get_number(Path_Temp) > 2){
		path_delete_point(Path_Temp, path_get_number(Path_Temp)-2);
	}
}