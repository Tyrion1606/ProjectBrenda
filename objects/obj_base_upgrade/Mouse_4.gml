/// @description Open the UpgradeBox

var Upgrade = variable_struct_get(variable_struct_get(global.Upgrades, TurretUpgrade), TypeUpegrade);

if (position_meeting(mouse_x, mouse_y, self) && Upgrade < MaxUpgrade){
	
	// Check if has Upgrade Points
	if(global.Upgrades.Points > 0 ){
		// Set the upgrade image as the corresponding tower
		image_index = IndexUpgradeImage;
		
		// Actualize the upgrade
		variable_struct_set(variable_struct_get(global.Upgrades, TurretUpgrade), TypeUpegrade, ++Upgrade);
		global.Upgrades.Points--;
	}
}
