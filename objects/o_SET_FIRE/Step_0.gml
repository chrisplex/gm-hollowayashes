/// @description Insert description here
// You can write your code in this editor
//if 1==1{
if global.taken_alcohol == true && global.taken_matches == true {
	switcher = 1
}

if place_meeting(x,y,o_player) && keyboard_check_released(vk_up)
	{
		spke = true;
		if switcher == 1 {
			audio_play_sound(FIRE,2,false);
			gotoNextRoom = true;
		}
	}
	
if gotoNextRoom {
	progress ++
}
	
	
if(!audio_is_playing(FIRE) and gotoNextRoom == true and fintalking == false){
		
		//room_goto(targetRoom);
		//o_player.x = player_targetx;
		//o_player.y = player_targety;
		global.setfire_groundfloor = true;

		gotoNextRoom = false;
		var lay_id = layer_get_id("FIRE");
		layer_set_visible(lay_id, true);
		audio_play_sound(AFTER_THE_FIRE,2,false);
		instance_destroy();
		audio_play_sound(fireandwind,5,true);
}

