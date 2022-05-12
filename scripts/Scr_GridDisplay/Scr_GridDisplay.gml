///@function		Scr_GridDisplay(Line_Opacity(0 ~ 1), Grid_Size, CornerAjustment)

///@description		This function drawns a Grid all over the Room by receiving a
///					Size to each square in the grid and the opacity Required for the lines...
///					As some objects can have its origin on midle-center or not, the
///					"CornerAjustment" can be set as true to make the snap system on the Room-Editor
///					match with the midle-center of each Square for midle-centered objects, otherwise
///					midle-centered object would snap on the vertex from the grid.

function Scr_GridDisplay(Alpha = 0.3 , Size = 32, Ajustment = true){
	
	var PreviousAlpha = draw_get_alpha(); // Stores the Alpha before changing it
	draw_set_alpha(Alpha); // Set the alpha To all next drawnings to "Alpha" (0.3 by defaut)
	
	#region Loops
	//Dense following "For" loops goes to all lines from all coluns
	for (var i = 0 ; i< room_width/Size ; i++){
		for (var j = 0 ; j< room_width/Size ; j++){
			//Drawn a Square(Size x Size) that snaps a midle-centered object inside it instead of the vertices
			draw_rectangle(Size*j-(16*Ajustment),Size*i-(16*Ajustment),(Size*(j+1)-2-(16*Ajustment)),(Size*(i+1)-2-(16*Ajustment)),true); 
		}
	}
	#endregion
	
	draw_set_alpha(PreviousAlpha); // Returns the alpha to its previous value
}