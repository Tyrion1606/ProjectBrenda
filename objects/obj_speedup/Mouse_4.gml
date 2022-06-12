/// @description Insert description here
switch(CurrentSpeed){
	case 1:
		CurrentSpeed = 2;
		image_index = 2;
	break;
	case 2:
		CurrentSpeed = 4
		image_index = 3;
	break;
	case 4:
		CurrentSpeed = 8;
		image_index = 4;
	break;
	case 8:
		CurrentSpeed = 1;
		image_index = 1;
	break;
	default:
	break;
}
	
game_set_speed(30*CurrentSpeed, gamespeed_fps);
