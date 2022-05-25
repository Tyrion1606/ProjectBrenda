switch(global.Level){
	case 0:
		global.Dinheiros = 20;
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
