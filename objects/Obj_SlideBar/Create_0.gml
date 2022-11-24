/// @description 

Flag_Selected = false;
Label = "[LABEL]"
LabelSize = 2;
Value = 0;	// THIS MUST BE DEFINED IN THE CHILD!!! MANDATORILY!!!


#region Child will need this:
// Any child needs to have this in its "Create Event"
/*
		event_inherited(); - Inheris(Herda) the codes in the father
		Label = "[here you puts the label of the specific slide]"; - if you dont set it, it will be "[LABEL]"
		Value = [VARIABLE THAT THE "value" REPRESENTS]; - here you are setting the Value to the its inicial value based on what it refers
*/

// A child may need this in its "Step Event" to set the values on another object to "Value"
/*

		if([Some Flag... if you dont know what to use, use "Flag_Selected"]){	- To save Processing just execute the code bellow when there is a change on the "Value"
			[Your reference Obj].[the variable that must change] = Value; - Here you sets the external variable to the value of "Value"
			[Your reference Obj].[Some Flag... if you dont know what to use, use "Flag_Changes" ] = true; - This is a flag to say the reference Obj that you changed him... so it can do something about it.
		}
*/
#endregion