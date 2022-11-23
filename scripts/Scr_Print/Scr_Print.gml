/// @function						print(value)
/// @description					Print anything saying the [caller] and the {event} that printed it.
function print(Value = "Empty Print"){
	show_debug_message("["+string(object_get_name(event_object))+"]{" + Events_Lookup_Table(event_number) +"}: " + string(Value));
}

/// @function						Events_Lookup_Table(Event_number)
/// @param {Real}	Event_number	
/// @description					Returns the Event name by receiving the "event_number" built-in variable
/// @return {String}
/// @ignore
function Events_Lookup_Table(Event_number){
	switch (Event_number) {
	    case 53:
	        return "ev_global_left_press"
	        break;
	    case 54:
	        return "ev_global_right_press"
	        break;
	    default:
	        return string(Event_number)
	        break;
	}
}


