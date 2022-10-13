if(ReloadWavesData_Flag){
	instance_destroy(Obj_Enemy_Placed);
	var TempLevelsData = Scr_LevelsDataLoad();	//Carrega um array com as informações já presentes no arquivo de dados das waves
	Scr_Instanciate_From_Array_Horizontal(Obj_TimeLine.y, TempLevelsData, Obj_ValuePanel_LevelSet_Editor.Value-1, Obj_ValuePanel_WaveSet_Editor.Value-1)	// Instancia todos deste Level e Wave... "-1" por que array começa no indice 0
	ReloadWavesData_Flag = false;
}
//show_debug_message("Array: " + string(global.EnemyArray))