/// @description Insert description here
// You can write your code in this editor
view_midw = surface_get_width(application_surface)/2;
view_midh  = 638;


if spke == false && place_meeting(x,y,o_player) && show_action == true{
	draw_set_colour(c_white);
	draw_set_font(tip);
	draw_set_halign(fa_center);
	draw_text(view_midw,view_midh , label);
}

if spke == true && place_meeting(x,y,o_player){
		draw_set_halign(fa_center);
		Super_Text(60,view_midh , dialogue_string, 35,1000, c_white,  sumbas, 1,  audio_quiet, 1, 0.2); 
			if(keyboard_check(vk_anykey)){		
				spke = false;
				show_action = false;
		}

}