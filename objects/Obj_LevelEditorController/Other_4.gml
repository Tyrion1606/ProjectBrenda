if (room == Rm_Construct){
	var PCB_Layer = layer_get_id("PCB");
	var PCB_Element = layer_background_get_id(PCB_Layer);
	layer_background_xscale(PCB_Element, PCBResizeValue);
	layer_background_yscale(PCB_Element, PCBResizeValue);
	var PCB_Sprite = layer_background_get_sprite(PCB_Element);
	var OffSet = ((room_width/2)-((sprite_get_width(PCB_Sprite)/2)*PCBResizeValue));
	layer_x(PCB_Layer, OffSet);
	Obj_MainTower.Selectable = true;
}
