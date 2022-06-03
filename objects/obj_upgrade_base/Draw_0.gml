/// @description Insert description here
// You can write your code in this editor

draw_self(); // Draw it self

// Show the actual number for the upgrade
var UpgradeValue = Upgrade;

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(c_lime);
switch(UpgradeValue){
	case 0:
		break;
	case MaxUpgrade:
		draw_text(x + sprite_width, y + sprite_height, "Max");
		break;
	default:
		draw_text(x + sprite_width, y + sprite_height, string(UpgradeValue));
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);