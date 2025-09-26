/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 550D17CB
/// @DnDComment : // Set color.$(13_10)// This will be a semi-transparent black.
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l550D17CB_0=($FF000000 >> 24);
draw_set_alpha(l550D17CB_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 14D7DE8F
/// @DnDComment : // Draw rectangle filling the screen.
/// @DnDArgument : "x2" "1920"
/// @DnDArgument : "y2" "1080"
/// @DnDArgument : "fill" "1"
draw_rectangle(0, 0, 1920, 1080, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7829E102
/// @DnDComment : // Set color to opaque white.
draw_set_colour($FFFFFFFF & $ffffff);
var l7829E102_0=($FFFFFFFF >> 24);
draw_set_alpha(l7829E102_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 18165491
/// @DnDComment : // Draw game over banner.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_well_done_banner"
/// @DnDSaveInfo : "sprite" "spr_well_done_banner"
draw_sprite(spr_well_done_banner, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 33B0A1C4
/// @DnDArgument : "xpos" "1920/2"
/// @DnDArgument : "ypos" "1080 - 300"
/// @DnDArgument : "objectid" "obj_button_exit"
/// @DnDArgument : "layer" ""UpgradeScreen""
/// @DnDSaveInfo : "objectid" "obj_button_exit"
instance_create_layer(1920/2, 1080 - 300, "UpgradeScreen", obj_button_exit);