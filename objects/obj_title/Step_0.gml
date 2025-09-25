/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 769B14FE
/// @DnDArgument : "key" "vk_escape"
var l769B14FE_0;l769B14FE_0 = keyboard_check_pressed(vk_escape);if (l769B14FE_0){	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 76072BDE
	/// @DnDComment : // Closes the game.
	/// @DnDParent : 769B14FE
	game_end();}