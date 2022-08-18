var LastRoom = ds_stack_pop(global.TempRoomStack);	// Pops the last room stored in the Stack
room_goto(LastRoom);	// When Pressed, Go to last room
