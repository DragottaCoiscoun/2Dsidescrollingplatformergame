/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 04897BC3
/// @DnDComment : if jumping
/// @DnDArgument : "var" "Move_y"
/// @DnDArgument : "op" "1"
if(Move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4047FBD4
	/// @DnDParent : 04897BC3
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_jump"
	/// @DnDSaveInfo : "spriteind" "spr_player_jump"
	sprite_index = spr_player_jump;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00762F4E
/// @DnDComment : if falling
/// @DnDArgument : "var" "Move_y"
/// @DnDArgument : "op" "2"
if(Move_y > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 67A76E9F
	/// @DnDParent : 00762F4E
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_idle"
	/// @DnDSaveInfo : "spriteind" "spr_player_idle"
	sprite_index = spr_player_idle;
	image_index += 1;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2F902B0E
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_bifloor"
/// @DnDSaveInfo : "object" "obj_bifloor"
var l2F902B0E_0 = instance_place(x + 0, y + 2, [obj_bifloor]);if ((l2F902B0E_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 250A1396
	/// @DnDParent : 2F902B0E
	/// @DnDArgument : "var" "Move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(Move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 41E9502A
		/// @DnDParent : 250A1396
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 2B6817EB
		/// @DnDParent : 250A1396
		/// @DnDArgument : "xscale" "-1*abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1*abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F44D808
	/// @DnDComment : if falling
	/// @DnDParent : 2F902B0E
	/// @DnDArgument : "var" "Move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(Move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6D7A85B0
		/// @DnDParent : 3F44D808
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 3C010996
		/// @DnDParent : 3F44D808
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F083B14
	/// @DnDParent : 2F902B0E
	/// @DnDArgument : "var" "Move_x"
	if(Move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 50B34E58
		/// @DnDParent : 6F083B14
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_idle"
		/// @DnDSaveInfo : "spriteind" "spr_player_idle"
		sprite_index = spr_player_idle;
		image_index += 0;}}