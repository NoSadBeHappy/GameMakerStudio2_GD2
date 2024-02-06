/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 794DC34A
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "100"
if(x > 100)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 753DB86E
	/// @DnDParent : 794DC34A
	/// @DnDArgument : "expr" "-10"
	/// @DnDArgument : "var" "hspeed"
	hspeed = -10;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 09EF092F
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DAA8F87
	/// @DnDParent : 09EF092F
	/// @DnDArgument : "var" "hspeed"
	hspeed = 0;
}