/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 64E7A290
/// @DnDComment : // If an instance of obj_upgrade exists then$(13_10)// that means we are on the upgrade screen...
/// @DnDArgument : "obj" "obj_game_over"
/// @DnDSaveInfo : "obj" "obj_game_over"
var l64E7A290_0 = false;l64E7A290_0 = instance_exists(obj_game_over);if(l64E7A290_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3A865879
	/// @DnDComment : // Exit event, so we don't render the HUD.
	/// @DnDParent : 64E7A290
	exit;}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 67C3CE8F
/// @DnDComment : // If the upgrade screen is open...
/// @DnDArgument : "obj" "obj_upgrade"
/// @DnDSaveInfo : "obj" "obj_upgrade"
var l67C3CE8F_0 = false;l67C3CE8F_0 = instance_exists(obj_upgrade);if(l67C3CE8F_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 32FFAA86
	/// @DnDComment : // Exit event, so we don't render the HUD.
	/// @DnDParent : 67C3CE8F
	exit;}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 678D6351
/// @DnDArgument : "x" "1920/2 - 240"
/// @DnDArgument : "y" "1080 - 210"
/// @DnDArgument : "xscale" "2.5"
/// @DnDArgument : "yscale" "2.5"
/// @DnDArgument : "sprite" "spr_shooting_attack_small"
/// @DnDArgument : "frame" "global.shooting[? "unlocked"]"
/// @DnDSaveInfo : "sprite" "spr_shooting_attack_small"
draw_sprite_ext(spr_shooting_attack_small, global.shooting[? "unlocked"], 1920/2 - 240, 1080 - 210, 2.5, 2.5, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1ECBEE06
/// @DnDArgument : "x" "1920/2"
/// @DnDArgument : "y" "1080 - 240"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "sprite" "spr_trail_attack_small"
/// @DnDArgument : "frame" "global.trail[? "unlocked"]"
/// @DnDSaveInfo : "sprite" "spr_trail_attack_small"
draw_sprite_ext(spr_trail_attack_small, global.trail[? "unlocked"], 1920/2, 1080 - 240, 2, 2, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7783D3F5
/// @DnDArgument : "x" "1920/2 + 240"
/// @DnDArgument : "y" "1080 - 200"
/// @DnDArgument : "xscale" "3"
/// @DnDArgument : "yscale" "3"
/// @DnDArgument : "sprite" "spr_arcing_attack_small"
/// @DnDArgument : "frame" "global.swipe[? "unlocked"]"
/// @DnDSaveInfo : "sprite" "spr_arcing_attack_small"
draw_sprite_ext(spr_arcing_attack_small, global.swipe[? "unlocked"], 1920/2 + 240, 1080 - 200, 3, 3, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 28D5C6DB
/// @DnDComment : // Draw the back of the experience bar.
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "xscale" "1120 / 65"
/// @DnDArgument : "sprite" "spr_xpbar_back"
/// @DnDSaveInfo : "sprite" "spr_xpbar_back"
draw_sprite_ext(spr_xpbar_back, 0, 400, 30, 1120 / 65, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 45D3CF88
/// @DnDComment : // Get how much the bar should be filled.
/// @DnDArgument : "var" "_fill"
/// @DnDArgument : "value" "min(global.xp / global.xp_goal, 1)"
var _fill = min(global.xp / global.xp_goal, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1BD30001
/// @DnDComment : // Draw the experince bar filling.
/// @DnDArgument : "x" "407"
/// @DnDArgument : "y" "37"
/// @DnDArgument : "xscale" "(1172 / 54) * _fill"
/// @DnDArgument : "sprite" "spr_xpbar_fill"
/// @DnDSaveInfo : "sprite" "spr_xpbar_fill"
draw_sprite_ext(spr_xpbar_fill, 0, 407, 37, (1172 / 54) * _fill, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3FF11531
/// @DnDComment : // Set the font.
/// @DnDArgument : "font" "fnt_small"
/// @DnDSaveInfo : "font" "fnt_small"
draw_set_font(fnt_small);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0759848B
/// @DnDComment : // Center the text vertically and horizontally.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 550610C1
/// @DnDComment : // Draw our current level.
/// @DnDArgument : "x" "1450"
/// @DnDArgument : "y" "65"
/// @DnDArgument : "caption" ""LV: ""
/// @DnDArgument : "var" "global.level"
draw_text(1450, 65, string("LV: ") + string(global.level));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 29E511A0
/// @DnDComment : // Reset text alignments.
draw_set_halign(fa_left);
draw_set_valign(fa_top);