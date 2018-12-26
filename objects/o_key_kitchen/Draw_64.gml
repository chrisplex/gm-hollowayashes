/// @description Insert description here
// You can write your code in this editor
view_midw = surface_get_width(application_surface)/2;
view_midh  = 638;

if global.keytaken_kitchen == false && place_meeting(x,y,o_player){
	draw_set_colour(c_white);
	draw_set_font(tip);
	draw_set_halign(fa_center);
	draw_text(view_midw,view_midh , label);
}

if global.keytaken_kitchen == true && spke = true{
		draw_set_halign(fa_center);
//		Super_Text(self.x - 150, self.y - 200, string_to_draw, 30, 330, c_white,  tip, 0.4,  spk, 1, 0.2); 
		Super_Text(60,view_midh , dialogue_string, 35,900, c_white,  sumbas, 0.4,  audio_quiet, 1, 0.2); 
		if(keyboard_check(vk_anykey)){
			spke = false;
		}

}