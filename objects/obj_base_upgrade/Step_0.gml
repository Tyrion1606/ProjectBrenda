/// @description Change image collor when active

// Get the value of the upgrade from the turret
if(variable_struct_get(variable_struct_get(global.Upgrades, TurretUpgrade), TypeUpegrade)>0)
	image_index = IndexUpgradeImage;