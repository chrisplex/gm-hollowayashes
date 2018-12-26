
// manages whether the actor is displayed or not
if 1==1{
	shower = 1
}

// look at the player
if x > o_player.x {
	image_xscale = -1;
}else{
	image_xscale = 1;
}

// is the actor speaking
if spke == true{
	global.player_freeze = true;
}else{
	global.player_freeze = false;
}

if done_talking && keyboard_check_released(vk_anykey){
	spke = false;
}

if place_meeting(x,y,o_player) && keyboard_check_released(vk_up) && spke == false
{
	if i > array_length_1d(text) - 1 
		{
			Super_Text_Clear();
			//spke = true;
			global.player_freeze = false;
			i = 0
			done_talking = 0;
		}
		else
		{
			spke = true;
			dialogue_string = text[i];
			i+= 1;
		}
}


