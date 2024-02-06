/// @DnDAction : YoYo Games.Files.If_File_Exists
/// @DnDVersion : 1
/// @DnDHash : 4341D11C
/// @DnDArgument : "file" ""save.dat""
var l4341D11C_0 = file_exists("save.dat");
if(l4341D11C_0)
{
	/// @DnDAction : YoYo Games.Game.Load_Game
	/// @DnDVersion : 1
	/// @DnDHash : 16C2045C
	/// @DnDParent : 4341D11C
	game_load("save.dat");
}