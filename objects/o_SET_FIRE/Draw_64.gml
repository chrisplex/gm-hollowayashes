/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor


if(audio_is_playing(doorSoundfx) and gotoNextRoom == true){
	draw_set_color(c_black);
	draw_set_alpha(progress/room_speed);
	draw_rectangle(0,0,room_width, room_height,false);
	draw_set_alpha(1);
}

view_midw = surface_get_width(application_surface)/2;
view_midh  = 58;

// DOOR IS LOCKED

// DOOR IS OPEN
if switcher == 1 {
	if spke == false && place_meeting(x,y,o_player){
		draw_set_colour(c_white);
		draw_set_font(tip);
		draw_set_halign(fa_center);
		draw_text(view_midw,view_midh , label);
	}
	
	if spke == true{
			draw_set_halign(fa_center);
	//		Super_Text(self.x - 150, self.y - 200, string_to_draw, 30, 330, c_white,  tip, 0.4,  spk, 1, 0.2); 
			Super_Text(60,view_midh , text, 55,1000, c_white,  sumbas, 0.4,  audio_quiet, 1, 0.2);

	}
}

