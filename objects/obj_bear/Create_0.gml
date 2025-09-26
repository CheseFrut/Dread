/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 5F152F01
/// @DnDComment : // Call parent event to set up general eney stuff.
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D445BB7
/// @DnDComment : // Set speed for this enemy type.
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "speed"
speed = 4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6751D9DF
/// @DnDComment : // Set animation speed.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "image_speed"
image_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 588928BF
/// @DnDComment : // Set sprites for this enemy type.
/// @DnDInput : 3
/// @DnDArgument : "expr" "spr_bear_walk"
/// @DnDArgument : "expr_1" "spr_bear_attack"
/// @DnDArgument : "expr_2" "spr_bear_hit"
/// @DnDArgument : "var" "walk_sprite"
/// @DnDArgument : "var_1" "attack_sprite"
/// @DnDArgument : "var_2" "hit_sprite"
walk_sprite = spr_bear_walk;
attack_sprite = spr_bear_attack;
hit_sprite = spr_bear_hit;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6DB765C4
/// @DnDComment : // Create variable for max hitpoints.
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "hitpoints_max"
hitpoints_max = 100;