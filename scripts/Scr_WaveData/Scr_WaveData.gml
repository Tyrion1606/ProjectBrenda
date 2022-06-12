
function Scr_WaveData(Level){
	Waves = ds_list_create();
	var waveindex;
	
	switch(Level){

		case 0 :
			#region Waves Data Insert
			waveindex = 0;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 100]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 180]);
			waveindex = 1;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 180]);
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
			ds_list_add(Waves, [waveindex, Obj_Enemy, 270]);
			waveindex = 4;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 30]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 90]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 150]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 220]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 330]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 350]);
			waveindex = 5;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 30]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 90]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 150]);
			waveindex = 6;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 20]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 40]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 80]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 150]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 160]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 185]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 195]);
			waveindex = 7;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 20]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 40]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 80]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 100]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 150]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 160]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 170]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 200]);
			waveindex = 8;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 16]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 48]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 80]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 100]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 112]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 160]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 176]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 240]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 272]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_4, 432]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_4, 496]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 320]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 352]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 384]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 544]);
			waveindex = 9;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 48]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 64]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 96]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 166]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 112]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 128]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 144]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 160]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 176]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 240]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 272]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_4, 432]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_4, 464]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_4, 496]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 320]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_5, 400]);
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
			ds_list_add(Waves, [waveindex, Obj_Enemy, 10]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 20]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 40]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 50]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 70]);

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
			ds_list_add(Waves, [waveindex, Obj_Enemy, 270]);
			waveindex = 2;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 16]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 32]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 48]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 64]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 128]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 160]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 192]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 224]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 288]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 352]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 400]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 480]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 560]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 592]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 608]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 576]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 544]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 624]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 656]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 640]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 672]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 688]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 528]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 736]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 752]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 784]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 816]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 832]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 880]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 944]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 960]);
			waveindex = 3;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 16]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 32]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 48]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 64]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 128]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 160]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 192]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 224]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 288]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 352]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 400]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 480]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 560]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 592]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 608]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 576]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 544]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 624]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 656]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 640]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 672]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 688]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 528]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 736]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 752]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 784]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 816]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_2, 832]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 880]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 944]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 960]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 1120]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 1056]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 1104]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 1136]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 1184]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 704]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 384]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 240]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 112]);
			ds_list_add(Waves, [waveindex, Obj_Enemy_3, 96]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 272]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 320]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 512]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 896]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 1008]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 1024]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 432]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 864]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 912]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 928]);
			#endregion

		break;
		case 2 :
			#region Waves Data Insert
			waveindex = 0;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 180]);
			waveindex = 1;
			ds_list_add(Waves, [waveindex, Obj_Enemy, 0]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 60]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 120]);
			ds_list_add(Waves, [waveindex, Obj_Enemy, 180]);
			#endregion
		break;
		case 3 :

		break;
		default:
		break;

	}
	return Waves;
}