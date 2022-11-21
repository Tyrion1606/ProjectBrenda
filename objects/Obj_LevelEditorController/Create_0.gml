ReloadWavesData_Flag = true;
Flag_Path_Create_n_Save = false;
PCBResizeValue = 0.9;

if (room == Rm_Construct){
	var PCB_Layer = layer_get_id("PCB");
	var PCB_Element = layer_background_get_id(PCB_Layer);
	layer_background_xscale(PCB_Element, PCBResizeValue);
	layer_background_yscale(PCB_Element, PCBResizeValue);
	var PCB_Sprite = layer_background_get_sprite(PCB_Element);
	var OffSet = ((room_width/2)-((sprite_get_width(PCB_Sprite)/2)*PCBResizeValue));
	layer_x(PCB_Layer, OffSet);
	Obj_MainTower.Selectable = true;
	
	path_add_point(Path_Temp, Obj_StartPoint.x, Obj_StartPoint.y, 100);	//Add initial path
	path_add_point(Path_Temp, Obj_MainTower.x, Obj_MainTower.y, 100);	//Add final path

	//Calculate the PCB limits
	var Width = sprite_get_width(PCB_Sprite)*PCBResizeValue;
	var Height = sprite_get_height(PCB_Sprite)*PCBResizeValue;
	LeftLimit = layer_get_x(PCB_Layer);
	RightLimit = LeftLimit + Width;
	TopLimit = layer_get_y(PCB_Layer);
	BottomLimit = TopLimit + Height;
}


