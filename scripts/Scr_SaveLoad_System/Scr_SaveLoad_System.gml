function Scr_Save(){
	var SaveBuffer = buffer_create(8, buffer_grow,1);		// Cria o Buffer
	
	// =========================== Game Settings Data ===========================
	buffer_write(SaveBuffer, buffer_bool, global.GridShow);		// Stores if the gris is or not to be shown
	buffer_write(SaveBuffer, buffer_bool, global.FullScreen);	// Stores the FullScreen Status
	
	// ============================ Progression Data ============================
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
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[3][1]);	// T4: Atk Speed
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[3][2]);	// T4: range
	buffer_write(SaveBuffer, buffer_u8,global.Upgrade[3][3]);	// T4: BulletSpeed
	#endregion
	
	buffer_save(SaveBuffer,"SaveArchive");	// Salva em um arquivo
}

function Scr_Load(){
	
	if (file_exists("SaveArchive")){	// Se o arquivo de save existe, carrega
		var ContinueBuffer =  buffer_load("SaveArchive");	// Carrega os dados no buffer
	
		#region Reads any saved data from the buffer to its respective Variable/Array
		// =========================== Game Settings Data ===========================
		global.GridShow = buffer_read(ContinueBuffer, buffer_bool);		// Reads if the gris is or not to be shown
		global.FullScreen = buffer_read(ContinueBuffer, buffer_bool);	// Reads the FullScreen Status
		
		// ============================ Progression Data ============================
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
		global.Upgrade[3][1] = buffer_read(ContinueBuffer,buffer_u8);	// T4: Atk Speed
		global.Upgrade[3][2] = buffer_read(ContinueBuffer,buffer_u8);	// T4: Range
		global.Upgrade[3][3] = buffer_read(ContinueBuffer,buffer_u8);	// T4: BulletSpeed
		#endregion
	
	} else {	// Se o arquivo de save NÃO existe, Inicia um novo jogo
		show_message("Arquivo de save não existe");
	}
}
