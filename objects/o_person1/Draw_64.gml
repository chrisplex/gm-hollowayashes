view_midw = surface_get_width(application_surface)/2;
view_midh  = 538;


if spke == false && place_meeting(x,y,o_player){
	draw_set_colour(c_white);
	draw_set_font(tip);
	draw_set_halign(fa_center);
	draw_text(view_midw,view_midh , label);
}

if spke == true{
		draw_set_halign(fa_center);
		done_talking = Super_Text(60,view_midh , dialogue_string, 55,900, c_white,  sumbas, 0.4,  speak2, 1, 0.2); 
		global.player_freeze = true;
}
