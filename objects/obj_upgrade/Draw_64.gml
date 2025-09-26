/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 65A75D93
/// @DnDComment : // Checks if glow highlight should show.
/// @DnDArgument : "expr" "mouse_over"
if(mouse_over){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4F4CDA04
	/// @DnDComment : // Draws the glow highlight.
	/// @DnDParent : 65A75D93
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_card_glow"
	/// @DnDSaveInfo : "sprite" "spr_card_glow"
	draw_sprite(spr_card_glow, 0, x + 0, y + 0);}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 741089D8
/// @DnDComment : // Draws the upgrade object.
draw_self();

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 28687F9D
/// @DnDComment : // Checks if the upgrade has been set.
/// @DnDArgument : "var" "upgrade_data"
if(upgrade_data == undefined){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 03F0DC73
	/// @DnDComment : // Exits the event.
	/// @DnDParent : 28687F9D
	exit;}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 36D68BFD
/// @DnDComment : // Set the upgrade font.
/// @DnDArgument : "font" "fnt_medium"
/// @DnDSaveInfo : "font" "fnt_medium"
draw_set_font(fnt_medium);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3649CD6D
/// @DnDComment : // Reset text alignments.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 13AE48B9
/// @DnDArgument : "expr" "upgrade_data[? "title"] == "UNLOCK""
if(upgrade_data[? "title"] == "UNLOCK"){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 02F75D85
	/// @DnDComment : // Set the font colour and alpha.
	/// @DnDParent : 13AE48B9
	/// @DnDArgument : "color" "$FF4719FF"
	draw_set_colour($FF4719FF & $ffffff);
	var l02F75D85_0=($FF4719FF >> 24);
	draw_set_alpha(l02F75D85_0 / $ff);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E72F62F
	/// @DnDParent : 13AE48B9
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_index"
	image_index = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 60851397
else{	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 56AF297D
	/// @DnDComment : // Set the font colour and alpha.
	/// @DnDParent : 60851397
	/// @DnDArgument : "color" "$ff41d7ff"
	draw_set_colour($ff41d7ff & $ffffff);
	var l56AF297D_0=($ff41d7ff >> 24);
	draw_set_alpha(l56AF297D_0 / $ff);}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 42B33F98
/// @DnDComment : // Draw the upgrade text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "160"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "upgrade_data[? "title"]"
draw_text(x + 0, y + 160, string(upgrade_data[? "title"]) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 16492A1B
/// @DnDComment : // Set the font colour and alpha.
/// @DnDArgument : "color" "$FF191213"
draw_set_colour($FF191213 & $ffffff);
var l16492A1B_0=($FF191213 >> 24);
draw_set_alpha(l16492A1B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 08B3958D
/// @DnDComment : // Set the upgrade font.
/// @DnDArgument : "font" "fnt_card_name"
/// @DnDSaveInfo : "font" "fnt_card_name"
draw_set_font(fnt_card_name);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3E2BEF83
/// @DnDArgument : "expr" "upgrade_data[? "weapon_name"] == "PROJECTILE""
if(upgrade_data[? "weapon_name"] == "PROJECTILE"){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 178510E6
	/// @DnDComment : // Draw the upgrade text.
	/// @DnDParent : 3E2BEF83
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-110"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Projectile""
	draw_text(x + 0, y + -110, string("Projectile") + "");}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7198184B
/// @DnDArgument : "expr" "upgrade_data[? "weapon_name"] == "TRAIL""
if(upgrade_data[? "weapon_name"] == "TRAIL"){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 17FB8A45
	/// @DnDComment : // Draw the upgrade text.
	/// @DnDParent : 7198184B
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-110"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Trail""
	draw_text(x + 0, y + -110, string("Trail") + "");}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 51BF618F
/// @DnDArgument : "expr" "upgrade_data[? "weapon_name"] == "SWIPE""
if(upgrade_data[? "weapon_name"] == "SWIPE"){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7F5A4A0E
	/// @DnDComment : // Draw the upgrade text.
	/// @DnDParent : 51BF618F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-110"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Swipe""
	draw_text(x + 0, y + -110, string("Swipe") + "");}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6F8E810F
/// @DnDComment : // Set the upgrade font.
/// @DnDArgument : "font" "fnt_card_description"
/// @DnDSaveInfo : "font" "fnt_card_description"
draw_set_font(fnt_card_description);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6045EB6F
/// @DnDComment : // Draw the upgrade text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "+20"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "upgrade_data[? "description"]"
draw_text(x + 0, y + +20, string(upgrade_data[? "description"]) + "");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 62DB7915
/// @DnDArgument : "var" "upgrade_data[? "icon"]"
/// @DnDArgument : "value" "spr_trail_attack_big"
if(upgrade_data[? "icon"] == spr_trail_attack_big){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4EBB616D
	/// @DnDParent : 62DB7915
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-260"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1.25"
	/// @DnDArgument : "yscale" "1.25"
	/// @DnDArgument : "sprite" "spr_trail_attack_big"
	/// @DnDSaveInfo : "sprite" "spr_trail_attack_big"
	draw_sprite_ext(spr_trail_attack_big, 0, x + 0, y + -260, 1.25, 1.25, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 54E9C78F
else{	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 37926CD2
	/// @DnDParent : 54E9C78F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-260"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "sprite" "upgrade_data[? "icon"]"
	draw_sprite_ext(upgrade_data[? "icon"], 0, x + 0, y + -260, 2, 2, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 062DE59A
/// @DnDComment : // Set draw alpha.
/// @DnDArgument : "alpha" "roll_alpha"
draw_set_alpha(roll_alpha);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6F3D916A
/// @DnDComment : // Draw sprite.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_upgrade_hide"
/// @DnDSaveInfo : "sprite" "spr_upgrade_hide"
draw_sprite(spr_upgrade_hide, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 60858F02
/// @DnDComment : // Set draw alpha.
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3AE04342
/// @DnDComment : // Reset text alignments.
draw_set_halign(fa_left);
draw_set_valign(fa_top);