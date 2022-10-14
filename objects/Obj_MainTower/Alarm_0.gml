/// @description calculate the limits


	//Calculate the PCB limits
PCB_Layer = layer_get_id("PCB");
PCB_Element = layer_background_get_id(PCB_Layer);
PCB_Sprite = layer_background_get_sprite(PCB_Element);
Width = sprite_get_width(PCB_Sprite)*Obj_LevelEditorController.PCBResizeValue;
Height = sprite_get_height(PCB_Sprite)*Obj_LevelEditorController.PCBResizeValue;
	LeftLimit = layer_get_x(PCB_Layer);
	RightLimit = LeftLimit + Width;
	TopLimit = layer_get_y(PCB_Layer);
	BottomLimit = TopLimit + Height;
	
	show_debug_message("alarme")


