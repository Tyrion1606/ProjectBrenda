/// @description Open the UpgradeBox

if (position_meeting(mouse_x, mouse_y, self)){
	if(TextBox ==  noone){
		TextBox = instance_create_layer(x, y, "Text_Box", Obj_UpgradeBox);
		TextBox.Title = Name;
		TextBox.Description = Description;
	}
	else{
		instance_destroy(TextBox);
		TextBox = noone;
	}
}
