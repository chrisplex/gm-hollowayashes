/// @description Insert description here
// You can write your code in this editor
if done_talking && keyboard_check_released(vk_anykey){
	spke = false;
}


if place_meeting(x,y,o_player) && keyboard_check_released(vk_up) && global.taken_alcohol == false && spke == false
{
	global.taken_alcohol = true;
	audio_play_sound(s_found2,10,false)
	if i > array_length_1d(text) - 1
		{
			Super_Text_Clear();
			//spke = true;
			//global.freeze = false;
			i = 0
		}
		else
		{
			spke = true;
			dialogue_string = text[i];
			i+= 1;
		}
}