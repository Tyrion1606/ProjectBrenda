Waves = Scr_WaveData(global.Level);

switch(global.Level){
	case 0:
		global.Dinheiros = 10;
	break;
	case 1:
		global.Dinheiros = 20;
	break;
	case 2:
		global.Dinheiros = 40;
	break;
	case 3:
		global.Dinheiros = 80;
	break;
	case 4:
		global.Dinheiros = 120;
	break;
	case 5:
		global.Dinheiros = 200;
	break;
	case 6:
		global.Dinheiros = 30;
	break;
	default:
		global.Dinheiros = 0;
		show_message("Initial Dinheiros to this Level is not setted, takes 0 by defaut")
	break;
	
}


/*Waves = ds_list_create();

ds_list_add(Waves, [0, Obj_Enemy, 0]);
ds_list_add(Waves, [0, Obj_Enemy, 60]);
ds_list_add(Waves, [0, Obj_Enemy, 120]);

ds_list_add(Waves, [1, Obj_Enemy, 0]);
ds_list_add(Waves, [1, Obj_Enemy, 30]);
ds_list_add(Waves, [1, Obj_Enemy, 60]);
ds_list_add(Waves, [1, Obj_Enemy, 90]);

ds_list_add(Waves, [2, Obj_Enemy, 0]);
ds_list_add(Waves, [2, Obj_Enemy, 30]);
ds_list_add(Waves, [2, Obj_Enemy, 60]);
ds_list_add(Waves, [2, Obj_Enemy, 90]);
ds_list_add(Waves, [2, Obj_Enemy, 120]);
*/

/*switch(global.Level){
	case 0 :
		timeline_index = Wave1_1;
		timeline_running = true;
	break;
	case 1 :
		timeline_index = Timeline1;
		timeline_running = true;
	break;
	case 2 :
		timeline_index = Timeline1;
		timeline_running = true;
	break;
	case 3 :
		timeline_index = Timeline1;
		timeline_running = true;
	break;
	default:
	break;

}*/
