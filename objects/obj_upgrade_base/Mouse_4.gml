/// @description Open the UpgradeBox

if (position_meeting(mouse_x, mouse_y, self) && Upgrade < MaxUpgrade){
			
	Upgrade++;
	
	#region // Codigo usado para janela flutuante
	//// Check of already has a upgrade box open
	//if(layer_has_instance("Text_Box", Obj_UpgradeBox)){
	//	// Check if the upgrade box belong to this object
	//	if(layer_instance_get_instance( Obj_UpgradeBox) == TextBox){
	//		// Destroy the existing upgrade box
	//		layer_destroy_instances("Text_Box");
	//		TextBox = noone;
	//	}
	//	else{
	//		// Destroy the existing upgrade box
	//		layer_destroy_instances("Text_Box");
			
	//		// Create the upgrade box
	//		TextBox = instance_create_layer(room_width/2  - sprite_get_width(Spr_UpgradeBox)/2, 
	//								        room_height/2 - sprite_get_height(Spr_UpgradeBox)/2, "Text_Box", Obj_UpgradeBox);
	//		TextBox.Title = Name;
	//		TextBox.Description = Description;
			
	//	}
	//}
	//else{
	//	// Create the upgrade box
	//	TextBox = instance_create_layer(room_width/2  - sprite_get_width(Spr_UpgradeBox)/2, 
	//								    room_height/2 - sprite_get_height(Spr_UpgradeBox)/2, "Text_Box", Obj_UpgradeBox);
	//	TextBox.Title = Name;
	//	TextBox.Description = Description;
	//}
	#endregion
}
