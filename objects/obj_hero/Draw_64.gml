/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A8D11C8
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 05F76F6D
	/// @DnDParent : 4A8D11C8
	exit;}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0491B7AC
/// @DnDComment : // If the pause button exists.
/// @DnDArgument : "obj" "obj_pause_button"
/// @DnDSaveInfo : "obj" "obj_pause_button"
var l0491B7AC_0 = false;l0491B7AC_0 = instance_exists(obj_pause_button);if(l0491B7AC_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51E973C3
	/// @DnDComment : // If the pause button is clicked.
	/// @DnDParent : 0491B7AC
	/// @DnDArgument : "var" "obj_pause_button.is_clicked"
	/// @DnDArgument : "value" "true"
	if(obj_pause_button.is_clicked == true){	/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 648F5189
		/// @DnDComment : // Exit event.
		/// @DnDParent : 51E973C3
		exit;}}