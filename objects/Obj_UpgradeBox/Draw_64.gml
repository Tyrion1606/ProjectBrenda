/// @description Draw the box

var TextReference_X = box_margin + box_padding;
var TextReference_Y = box_margin + box_padding;

#region // Select the type of the box (TEMPORARILY DISABLED)

//switch(IndexSelector){
//	case 0:
//		// Draw the UpgradeBox in the upper right position
//		draw_sprite(Spr_UpgradeBox, IndexSelector, x - (box_margin + box_padding), y - (box_margin + box_padding));
//		TextReference_X = x + 32 + (box_margin + box_padding * 2);
//		TextReference_Y = y;
//		break;
//	case 1:
//		// Draw the UpgradeBox in the upper left position
//		draw_sprite(Spr_UpgradeBox, IndexSelector, x - sprite_get_width(Spr_UpgradeBox) + 64, y - (box_margin + box_padding));
//		TextReference_X = x - sprite_get_width(Spr_UpgradeBox) + 88;
//		TextReference_Y = y;
//		break;
//	case 2:
//		// Draw the UpgradeBox in the lower right position
//		draw_sprite(Spr_UpgradeBox, IndexSelector, x - (box_margin + box_padding), y - sprite_get_height(Spr_UpgradeBox) + 64);
//		TextReference_X = x + 40;
//		TextReference_Y = y - sprite_get_height(Spr_UpgradeBox) + 88;
//		break;
//	case 3:
//		// Draw the UpgradeBox in the lower left position
//		draw_sprite(Spr_UpgradeBox, IndexSelector, x - sprite_get_width(Spr_UpgradeBox) + 64, y - sprite_get_height(Spr_UpgradeBox) + 64);
//		TextReference_X = x - sprite_get_width(Spr_UpgradeBox) + 88;
//		TextReference_Y = y - sprite_get_height(Spr_UpgradeBox) + 88;
//		break;
//	default:
//		show_debug_message("Index don't exist");
//}
#endregion

#region // Draw the Title

draw_set_font(Fnt_Upgrade);
draw_text_transformed(x + TextReference_X,y + TextReference_Y, Title, 1.5, 1.5, 0);

#endregion

#region // Draw the Description

// Correct the description to not exceed the size of the box
var CorrectedDescription = Description;
var LastSpace = 0;
var Line = "";

// Scans the string to identify line breaks
for(var i=1; i <= string_length(Description); i++){
	// Identifies the end of the last word
	if(string_char_at(CorrectedDescription, i) == " "){
		LastSpace = i;
	}
	// Insert the next letter in the line
	Line += string_char_at(CorrectedDescription, i);
	
	// Checks if the line has exceeded the limit
	if(string_width(Line) > (sprite_get_width(Spr_UpgradeBox) - (box_margin + box_padding) * 2)){
		CorrectedDescription = string_insert("\n", CorrectedDescription, LastSpace);
		Line = "";
		i = LastSpace;
	}
}

// Draw the description
draw_text(x + TextReference_X, y + TextReference_Y + 32, CorrectedDescription);

#endregion
