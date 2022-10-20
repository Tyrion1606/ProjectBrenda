HP = 10;

Selectable = true;
Selected = false;



if (room == Rm_Construct){
	NewSquareSize = (48*Obj_LevelEditorController.PCBResizeValue);
	HalfNewSquareSize = NewSquareSize/2;
	alarm_set(0,1);	// espera um frame e então calcula os limites das bordas da PCB
}


