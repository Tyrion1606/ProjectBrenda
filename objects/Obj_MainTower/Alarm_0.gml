/// @description calculate the limits


	//Calculate the PCB limits
var PCB_Layer = layer_get_id("PCB");
var PCB_Element = layer_background_get_id(PCB_Layer);
var PCB_Sprite = layer_background_get_sprite(PCB_Element);
var Width = sprite_get_width(PCB_Sprite)*Obj_LevelEditorController.PCBResizeValue;
var Height = sprite_get_height(PCB_Sprite)*Obj_LevelEditorController.PCBResizeValue;
	LeftLimit = layer_get_x(PCB_Layer);
	RightLimit = LeftLimit + Width;
	TopLimit = layer_get_y(PCB_Layer);
	BottomLimit = TopLimit + Height;

