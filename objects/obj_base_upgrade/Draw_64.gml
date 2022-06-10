/// @description Insert description here
// You can write your code in this editor
#region // Function to draw the text with border
function Draw_Text_With_Border(XX, YY, Text, Color = c_white, BorderColor = c_black){
	// Draw the borders
	draw_set_color(BorderColor);
	draw_text(XX-1, YY, Text);
	draw_text(XX+1, YY, Text);
	draw_text(XX, YY-1, Text);
	draw_text(XX, YY+1, Text);
	
	// Draw the original text
	draw_set_color(Color);
	draw_text(XX, YY, Text);
}
	
#endregion

// Show the actual number for the upgrade
var UpgradeValue = variable_struct_get(variable_struct_get(global.Upgrades, TurretUpgrade), TypeUpegrade);

draw_set_font(Fnt_Upgrade);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
switch(UpgradeValue){
	case 0:
		break;
	case MaxUpgrade:
		Draw_Text_With_Border(x + sprite_width, y + sprite_height, "Max");
		break;
	default:
		Draw_Text_With_Border(x + sprite_width, y + sprite_height, string(UpgradeValue));
}
draw_set_valign(fa_top);
draw_set_color(c_white);

if(position_meeting(mouse_x, mouse_y, self)){

	//shows the upgrade name in front of the buton
	draw_set_halign(fa_center);
	Draw_Text_With_Border(x + sprite_width/2, y + sprite_height + 8, Name);

}

draw_set_halign(fa_left);
