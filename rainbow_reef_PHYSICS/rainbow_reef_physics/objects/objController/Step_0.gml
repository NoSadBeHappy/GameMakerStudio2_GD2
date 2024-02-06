//makes saving and going to title work.
if (room = title)
{
	score_saved = 0
	instance_destroy(self)
}
else
{
//for winning
var bigleg_count = instance_number(objBigleg)
if (bigleg_count <= 0)
	{
	if(room != room_last)
		room_goto_next()
	else
		{	
		
		}
	}
else 
	{
	//all_pops_gone_event
	var pop_count = instance_number(objPop)
	var pop2_count = instance_number(objPopStart)
	var pop_total_count = pop_count + pop2_count
	if (pop_total_count <= 0)
		{
		//remove one life from controller lives counter
		__dnd_lives += -1
		//set variable for later use, if true, player lost the game (I LOST THE GAME WHILE CODING THIS!!)
		var restart = __dnd_lives < 0
		
		//check if player lost the game (I LOST THE GAME AGAIN)
		if(restart)
			{
			show_message("you lost again.")
			game_restart();
			}
		//if they still have lives, then just restart the room
		else
			{
			room_restart();
			}
		}
	}
	
//for score keeping on last screem
if (room = win && score_saved = 0)
{
	score_saved = 1
	show_debug_message("score saved")
	highscore_add("name", __dnd_score)
}
}