/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A98B272
/// @DnDComment : // Checks if the game is paused.
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(global.paused == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 309C7FAA
	/// @DnDComment : // Add to the timer to make the float effect
	/// @DnDParent : 6A98B272
	/// @DnDArgument : "expr" "delta_time * 0.000001 * 10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "float_timer"
	float_timer += delta_time * 0.000001 * 10;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4D7FA550
/// @DnDComment : // Draw the sprite at the appropriate height
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sin(float_timer) * 10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "sprite_index"
draw_sprite(sprite_index, 0, x + 0, y + sin(float_timer) * 10);