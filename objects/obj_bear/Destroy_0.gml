/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6F7064A3
/// @DnDComment : // Pause the game.
/// @DnDArgument : "function" "pause"
pause();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 05F51F43
/// @DnDComment : // Create game over object.
/// @DnDArgument : "xpos" "1920 / 2"
/// @DnDArgument : "ypos" "1080 / 2"
/// @DnDArgument : "objectid" "obj_game_complete"
/// @DnDArgument : "layer" ""UpgradeScreen""
/// @DnDSaveInfo : "objectid" "obj_game_complete"
instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_game_complete);