
function Scr_WaveData(Level){
	Waves = ds_list_create();
	var waveindex;
	
	switch(Level){

		case 0 :
			#region Waves Data Insert
			waveindex = 0;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			waveindex = 1;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 30]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);/*
			waveindex = 2;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 30]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 90]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			waveindex = 3;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 30]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 90]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 150]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 180]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 210]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 240]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 270]);*/
			#endregion

		break;
		case 1 :
			#region Waves Data Insert
			
			waveindex = 0;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 30]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 90]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			waveindex = 1;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 30]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 90]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 150]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 180]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 210]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 240]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 270]);/*
			waveindex = 2;
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			waveindex = 3;
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 30]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);*/
			#endregion

		break;
		case 2 :

		break;
		case 3 :

		break;
		default:
		break;

	}
	return Waves;
}