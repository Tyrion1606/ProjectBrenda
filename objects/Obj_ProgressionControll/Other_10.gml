/// @description Goto the right room

switch(global.Level){
	case 1 :
		room_goto(Room1);
	break;
	case 2 :
		room_goto(Room2);
	break;
	case 3 :
		room_goto(Room3);
	break;
	case 4 :
		room_goto(Room4);
	break;
	default:
		room_goto(MainMenu);
		show_message("uncable to go for a level, by defaut going to main menu")
	break;

}
