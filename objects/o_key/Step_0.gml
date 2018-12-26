


if done_talking && keyboard_check_released(vk_anykey){
	spke = false;
}

if place_meeting(x,y,o_player) && keyboard_check_released(vk_up) && spke == false
{
	global.keytaken_basement = true;
	audio_play_sound(s_found,10,false)
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


