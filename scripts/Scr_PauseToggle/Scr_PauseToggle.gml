function Scr_PauseToggle(){
	if (room == PauseRoom or room = SettingsRoom){
		// If its aready paused, comed back and returns the room to a non-persistance status
		room_goto(ds_stack_pop(global.TempRoomStack));

		//room_persistent = false; // SERÁ ALTERADO NO OBJETO "ROOM_CONTROLLER" APÓS VOLTAR A ROOM.
	
	} else {
		// If its not paused, sets the current roon as Persistent(to store it) and goes to Pause screen
		ds_stack_push(global.TempRoomStack,room);
		room_persistent = true;
		room_goto(PauseRoom);
		
	}
}
