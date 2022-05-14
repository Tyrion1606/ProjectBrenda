//gpu_set_blendenable(false) // disable the alpha blending, we just want RGB ???

if (Pause){
	surface_set_target(application_surface);
	if (surface_exists(PauseSurf)){
		draw_surface(PauseSurf,0,0);
	} else {
		PauseSurf = surface_create(xResolution, yResolution);
		buffer_set_surface(PauseSurfBuffer, PauseSurf, 0);
	}
	surface_reset_target();
}

if(keyboard_check_pressed(vk_escape)){
	if(!Pause){
		Pause = true;
		
		instance_deactivate_all(true);
		
		PauseSurf = surface_create(xResolution, yResolution);
		surface_set_target(PauseSurf);
		draw_surface(application_surface,0,0);
		surface_reset_target();
		
		if(buffer_exists(PauseSurfBuffer)){
			buffer_delete(PauseSurfBuffer);
		}
		PauseSurfBuffer = buffer_create(xResolution*yResolution*4, buffer_fixed, 1);
		buffer_get_surface(PauseSurfBuffer, PauseSurf, 0);
	} else {
		Pause = false;
		instance_activate_all();
		if(surface_exists(PauseSurf)){
			surface_free(PauseSurf);
		}
		if(buffer_exists(PauseSurfBuffer)){
			buffer_delete(PauseSurfBuffer);
		}
	}
}
