if(ChangedValueFlag){
	//Obj_LevelEditorController.ReloadWavesData_Flag = true;
	var Background_Element = layer_background_get_id(layer_get_id("PCB"));
	//layer_background_sprite(Background_Element, PCBsArray[Value]);
	layer_background_sprite(Background_Element, PCBsArray[Value]);
	ChangedValueFlag = false;
}