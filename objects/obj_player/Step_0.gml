/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43C63CCF
/// @DnDComment : Original (no gamepad method) $(13_10)$(13_10)1 would be pressing right $(13_10)-1 would be pressing left$(13_10)0 would be no input
/// @DnDArgument : "expr" "keyboard_check(vk_right)-keyboard_check(vk_left)"
/// @DnDArgument : "var" "Move_x"
Move_x = keyboard_check(vk_right)-keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F3D7C44
/// @DnDArgument : "expr" "Move_x*Walk_speed"
/// @DnDArgument : "var" "Move_x"
Move_x = Move_x*Walk_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 06894CB5
/// @DnDComment : If we are on the ground.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_bifloor"
/// @DnDSaveInfo : "object" "obj_bifloor"
var l06894CB5_0 = instance_place(x + 0, y + 2, [obj_bifloor]);if ((l06894CB5_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69F018E1
	/// @DnDComment : Reset movement$(13_10)on the y-axis
	/// @DnDParent : 06894CB5
	/// @DnDArgument : "var" "Move_y"
	Move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 5A43B1EF
	/// @DnDParent : 06894CB5
	var l5A43B1EF_0;l5A43B1EF_0 = keyboard_check_pressed(vk_space);if (l5A43B1EF_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38F932A6
		/// @DnDParent : 5A43B1EF
		/// @DnDArgument : "expr" "-Jump_speed"
		/// @DnDArgument : "var" "Move_y"
		Move_y = -Jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 12C38A5F
/// @DnDComment : not on ground
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C666766
	/// @DnDParent : 12C38A5F
	/// @DnDArgument : "var" "Move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(Move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38A2511D
		/// @DnDComment : Add gravity
		/// @DnDParent : 0C666766
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Move_y"
		Move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 62F44A8A
/// @DnDArgument : "xvel" "Move_x"
/// @DnDArgument : "yvel" "Move_y"
/// @DnDArgument : "maxxmove" "Walk_speed"
/// @DnDArgument : "maxymove" "Jump_speed"
/// @DnDArgument : "object" "obj_bifloor"
/// @DnDSaveInfo : "object" "obj_bifloor"
move_and_collide(Move_x, Move_y, obj_bifloor,4,0,0,Walk_speed,Jump_speed);