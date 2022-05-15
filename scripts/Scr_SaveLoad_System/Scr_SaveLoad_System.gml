function Scr_SaveSystem(){
	var SaveBuffer = buffer_create(16, buffer_fixed,1);		// Cria o Buffer
	
	buffer_write(SaveBuffer, buffer_u8, global.Level);		// Guarda o level 8b[0~255]
	buffer_write(SaveBuffer, buffer_u32, global.EXP);		// Guarda a EXP do jogador
	buffer_write(SaveBuffer, buffer_u32, global.Dinheiros); // Guarda os Dinheiros do jogador
	
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
