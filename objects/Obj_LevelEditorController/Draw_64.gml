if (room == Rm_Construct){
	draw_path(Path_Temp, 0, 0, true);

	for(var i = 0 ; i < path_get_number(Path_Temp) ; i++){	
		
		// Sets the collors for the points
		if (i == 0){	// First color + outline
			draw_set_color(c_white);
			draw_circle(path_get_point_x(Path_Temp, i), path_get_point_y(Path_Temp, i), 4, false);
			draw_set_color(c_green);
		} else if (i == path_get_number(Path_Temp)-1){	// Last color + outline
			draw_set_color(c_white);
			draw_circle(path_get_point_x(Path_Temp, i), path_get_point_y(Path_Temp, i), 4, false);
			draw_set_color(c_blue);
		} else {	// Others
			draw_set_color(c_white);
		}
		draw_circle(path_get_point_x(Path_Temp, i), path_get_point_y(Path_Temp, i), 3, false);
	}
	draw_set_color(c_white);
}

