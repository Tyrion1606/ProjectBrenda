function Scr_PauseToggle(){
	if (room == PauseRoom or room = SettingsRoom){
		// If its aready paused, comed back and returns the room to a non-persistance status
		room_goto(Obj_Pause.PrePauseRoom);
		room_persistent = false;
	} else {
		// If its not paused, sets the current roon as Persistent(to store it) and goes to Pause screen
		Obj_Pause.PrePauseRoom = room;
		room_persistent = true;
		room_goto(PauseRoom);
	}
}
