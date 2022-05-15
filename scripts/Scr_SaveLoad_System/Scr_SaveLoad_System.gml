function Scr_SaveSystem(){
	var SaveBuffer = buffer_create(8, buffer_grow,1);		// Cria o Buffer
	
	buffer_write(SaveBuffer, buffer_u8, global.Level);		// Guarda o level 8b[0~255]
	buffer_write(SaveBuffer, buffer_u32, global.EXP);		// Guarda a EXP do jogador

	
	#region Save The UPgrades 8b[0~255]
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[0][0]);	// T1: Damage
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[0][1]);	// T1: Atk Speed
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[0][2]);	// T1: Range

	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[1][0]);	// T2: Damage
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[1][1]);	// T2: Atk Speed
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[1][2]);	// T2: Range
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[1][3]);	// T2: Bomb Speed
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[1][4]);	// T2: Exprosion Area

	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[2][0]);	// T3: Damage
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[2][1]);	// T3: Atk Speed
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[2][2]);	// T3: Range
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[2][3]);	// T3: Density

	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[3][0]);	// T4: Damage
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[3][1]);	// T4: range
	#endregion
	
	buffer_save(SaveBuffer,"SaveArchive");	// Salva em um arquivo
}

function Scr_LoadSystem(){
	var LoadBuffer = buffer_load("SaveArchive");
	/*
	var Level_data = buffer_read(LoadBuffer, buffer_u8);		// Pega o level 8b[0~255]
	var EXP_data = buffer_read(LoadBuffer, buffer_u32);			// Pega a EXP do jogador
	var Dinheiros_data = buffer_read(LoadBuffer, buffer_u32);	// Pega os Dinheiros do jogador
	*/
	return(LoadBuffer);
}
