/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

		
if(audio_is_playing(doorSoundfx) and gotoNextRoom == true){
	draw_set_color(c_black);
	draw_set_alpha(progress/room_speed);
	draw_rectangle(0,0,display_get_gui_width(), display_get_gui_height(),false);
	draw_set_alpha(1);
}

