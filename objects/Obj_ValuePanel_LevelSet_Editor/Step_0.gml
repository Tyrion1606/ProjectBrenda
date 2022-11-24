if(ChangedValueFlag){
	Obj_LevelEditorController.ReloadWavesData_Flag = true;
	
	if(room = Rm_Construct){
		Obj_LevelEditorController.Flag_Reload_Path = true;
	}
	ChangedValueFlag = false;
}