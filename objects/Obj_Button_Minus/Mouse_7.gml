if (MyOwner != -1) {
	with(MyOwner){
		if (variable_instance_exists(id, "Value")){
			if ((variable_instance_exists(id, "MinValue") and Value > MinValue) or (!variable_instance_exists(id, "MaxValue"))){	// Se existe um limite e ainda não o atingiu, ou se não há limite
				Value--;	// Decrementa a variavel "Value" do seu "owner"
			}
		} else {
			show_debug_message("Obj_Button_Minus cant work without an ''Value'' variable in his owner");
		}
	}
}

MyOwner.ChangedValueFlag = true;

