/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,o_player) && keyboard_check_released(ord("W")) && global.keytaken_basement == false && spke == false
{
	global.keytaken_kitchen = true;
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