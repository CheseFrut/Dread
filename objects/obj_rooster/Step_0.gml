/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 141E5EE3
event_inherited();

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 22D41A6E
/// @DnDArgument : "alpha" "1 - distance_to_object(obj_hero) / 1200"
image_alpha = 1 - distance_to_object(obj_hero) / 1200;