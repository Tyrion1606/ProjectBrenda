Label = "[Title]"
OffSet = -sprite_height/2.5;
Value = 1;	// Start Value
MinValue = 0;
MaxValue = 10;

ChangedValueFlag = false;

var MyMinusButton = instance_create_layer(id.x, id.y+sprite_height, "GUI", Obj_Button_Minus);
MyMinusButton.MyOwner = id;

var MyPlusButton = instance_create_layer(id.x+MyMinusButton.sprite_width, id.y+sprite_height, "GUI", Obj_Button_Plus);
MyPlusButton.MyOwner = id;
