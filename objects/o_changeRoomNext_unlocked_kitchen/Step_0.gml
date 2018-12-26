/// @description Insert description here
// You can write your code in this editor

if global.keytaken_basement == true {
	if place_meeting(x,y,o_player) && keyboard_check_pressed(vk_up)
		{
		
			audio_play_sound(doorSoundfx,2,false);
			gotoNextRoom = true;
		}
	
	if gotoNextRoom {
		progress ++
	}
	
	
	if(!audio_is_playing(doorSoundfx) and gotoNextRoom == true){
		
			room_goto(backroom);
			gotoNextRoom = false;
	}
}
