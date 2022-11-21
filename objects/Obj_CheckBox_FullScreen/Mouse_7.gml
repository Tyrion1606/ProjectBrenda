/// @description Toggle fullscreen
if (window_get_fullscreen()){
	window_set_fullscreen(false);
	image_index = 0;	// if the screen are fullscren sets to a 'marked' sprite
} else {
	window_set_fullscreen(true);
	image_index = 1;	// if the screen are fullscren sets to a 'marked' sprite
}

Fn_Data_Save_ini("Game_Settings",window_get_fullscreen(),"FullScreen", "Display");	// Saves the FullScreen status