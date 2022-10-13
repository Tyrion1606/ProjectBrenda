if (MyOwner != -1) {
	with(MyOwner){
		if (variable_instance_exists(id, "Value")){
			if ((variable_instance_exists(id, "MaxValue") and Value < MaxValue) or (!variable_instance_exists(id, "MaxValue"))){	// Se existe um limite e ainda não o atingiu, ou se não há limite
				Value++;	// incrementa a variavel "Value" do seu "owner"
			}
		} else {
			show_debug_message("Obj_Button_Plus cant work without an ''Value'' variable in his owner");
		}
	}
}




// talvez deva mudar de lugar
Obj_LevelEditorController.ReloadWavesData_Flag = true;