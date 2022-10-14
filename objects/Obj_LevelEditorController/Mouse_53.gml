if (room == Rm_Construct){
	
	var PCB_Layer = layer_get_id("PCB");
	var PCB_Element = layer_background_get_id(PCB_Layer);
	var PCB_Sprite = layer_background_get_sprite(PCB_Element);
	var Width = sprite_get_width(PCB_Sprite)*PCBResizeValue;
	var Height = sprite_get_height(PCB_Sprite)*PCBResizeValue;
	
	//Calculate the PCB limits
	var LeftLimit = layer_get_x(PCB_Layer);
	var RightLimit = LeftLimit + Width;
	var TopLimit = layer_get_y(PCB_Layer);
	var BottomLimit = TopLimit + Height;
	
	//checks if the mouse is in the limits of the PCB border
	var isBetween = (LeftLimit < mouse_x) and (mouse_x < RightLimit) and (TopLimit < mouse_y) and (mouse_y < BottomLimit);
	
	// If its in PathEdit Mode, place a new point for the path on the mouse position;
	if(Obj_CheckBox_PathDrawMode.image_index == 1 and isBetween){
		path_add_point(Path_Temp, mouse_x, mouse_y, 100);
	}
}

