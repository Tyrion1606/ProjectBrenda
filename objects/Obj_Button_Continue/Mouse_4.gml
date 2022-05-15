if (file_exists("SaveArchive")){
	var ContinueBuffer =  buffer_load("SaveArchive");	// Carrega os dados no buffer
	
	global.Level = buffer_read(ContinueBuffer,buffer_u8);
	global.EXP = buffer_read(ContinueBuffer, buffer_u32);
	
	global.Upgrade[0][0] = buffer_read(ContinueBuffer,buffer_u8);	// T1: Damage
	global.Upgrade[0][1] = buffer_read(ContinueBuffer,buffer_u8);	// T1: Atk Speed
	global.Upgrade[0][2] = buffer_read(ContinueBuffer,buffer_u8);	// T1: Range

	global.Upgrade[1][0] = buffer_read(ContinueBuffer,buffer_u8);	// T2: Damage
	global.Upgrade[1][1] = buffer_read(ContinueBuffer,buffer_u8);	// T2: Atk Speed
	global.Upgrade[1][2] = buffer_read(ContinueBuffer,buffer_u8);	// T2: Range
	global.Upgrade[1][3] = buffer_read(ContinueBuffer,buffer_u8);	// T2: Bomb Speed
	global.Upgrade[1][4] = buffer_read(ContinueBuffer,buffer_u8);	// T2: Exprosion Area

	global.Upgrade[2][0] = buffer_read(ContinueBuffer,buffer_u8);	// T3: Damage
	global.Upgrade[2][1] = buffer_read(ContinueBuffer,buffer_u8);	// T3: Atk Speed
	global.Upgrade[2][2] = buffer_read(ContinueBuffer,buffer_u8);	// T3: Range
	global.Upgrade[2][3] = buffer_read(ContinueBuffer,buffer_u8);	// T3: Density

	global.Upgrade[3][0] = buffer_read(ContinueBuffer,buffer_u8);	// T4: Damage
	global.Upgrade[3][1] = buffer_read(ContinueBuffer,buffer_u8);	// T4: range
	
	show_debug_message(global.Level);
	show_debug_message(global.EXP);
	show_debug_message(global.Upgrade[0][0]);
	show_debug_message(global.Upgrade[1][0]);
	show_debug_message(global.Upgrade[2][0]);
	show_debug_message(global.Upgrade[3][0]);
	show_debug_message(global.Upgrade[3][1]);
} else {
	show_debug_message("arquivo não existe");
}

