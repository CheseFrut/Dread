/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F7C97F6
/// @DnDArgument : "var" "global.level"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "10"
if(!(global.level == 10)){	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 448DF03A
	/// @DnDComment : // Decide what drop to use$(13_10)// By default it should be a regular collectable
	/// @DnDParent : 7F7C97F6
	/// @DnDArgument : "var" "_drop"
	/// @DnDArgument : "value" "obj_collectable"
	var _drop = obj_collectable;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 6A2A52B8
	/// @DnDComment : // However, there is a 1/10 chance to replace it with a heart instead$(13_10)// Because computers start countin at 0, the maximum value must be 9 for a 1/10 chance
	/// @DnDParent : 7F7C97F6
	/// @DnDArgument : "var" "_random"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "9"
	var _random = floor(random_range(0, 9 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19003753
	/// @DnDParent : 7F7C97F6
	/// @DnDArgument : "var" "_random"
	if(_random == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0652A5C5
		/// @DnDParent : 19003753
		/// @DnDArgument : "expr" "obj_heart"
		/// @DnDArgument : "var" "_drop"
		_drop = obj_heart;}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0690AF42
	/// @DnDComment : // Create the chosen drop.
	/// @DnDParent : 7F7C97F6
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "_drop"
	instance_create_layer(x + 0, y + 0, "Instances", _drop);}