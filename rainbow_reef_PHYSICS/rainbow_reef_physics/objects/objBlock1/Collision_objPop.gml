/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 76D5415E
instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 7AAA7E7C
/// @DnDApplyTo : {objController}
/// @DnDArgument : "score" "100"
/// @DnDArgument : "score_relative" "1"
with(objController) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(100);
}