/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27DF1838
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "powerup"
powerup = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 73CB3AD8
/// @DnDArgument : "steps" "30*60"
alarm_set(0, 30*60);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2276A9D6
/// @DnDArgument : "colour" "$FFFFBFDB"
image_blend = $FFFFBFDB & $ffffff;
image_alpha = ($FFFFBFDB >> 24) / $ff;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52687018
/// @DnDArgument : "var" "powerup"
/// @DnDArgument : "value" "1"
if(powerup == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7600831B
	/// @DnDParent : 52687018
	/// @DnDArgument : "var" "Move_y"
	Move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 54E52453
	/// @DnDParent : 52687018
	var l54E52453_0;l54E52453_0 = keyboard_check_pressed(vk_space);if (l54E52453_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 378C1D13
		/// @DnDParent : 54E52453
		/// @DnDArgument : "expr" "-Jump_speed*2"
		/// @DnDArgument : "var" "Move_y"
		Move_y = -Jump_speed*2;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1CC0B5A9
		/// @DnDApplyTo : other
		/// @DnDParent : 54E52453
		with(other) instance_destroy();}}