function Scr_PauseToggle(){
	if (room == PauseRoom or room = SettingsRoom){
		room_goto(Obj_Pause.PrePauseRoom);
		room_persistent = false;
	} else {
		Obj_Pause.PrePauseRoom = room;
		room_persistent = true;
		room_goto(PauseRoom);
	}
}
