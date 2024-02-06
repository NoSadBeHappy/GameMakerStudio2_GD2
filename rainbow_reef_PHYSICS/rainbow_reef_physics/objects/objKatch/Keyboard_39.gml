/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6642BD80
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "800-60"
if(x < 800-60)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 050FFA9E
	/// @DnDParent : 6642BD80
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "var" "hspeed"
	hspeed = 10;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5EBB573E
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BC1D275
	/// @DnDParent : 5EBB573E
	/// @DnDArgument : "var" "hspeed"
	hspeed = 0;
}