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

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1CC0B5A9
/// @DnDApplyTo : other
with(other) instance_destroy();