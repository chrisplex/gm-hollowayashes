/// @description Insert description here
// You can write your code in this editor

hsp = 0; //horizontal speed
vsp = 0; //vertical speed
grv = 0.3; //gravity
walkspeed = 2; // walkspeed

audio_listener_set_orientation(0,1,0,0,0,1,0);
//step event

global.player_freeze = false;

global.keytaken_kitchen = false;
global.taken_alcohol = false;
global.taken_matches = false;
global.keytaken_basement = false;
global.setfire_basement = false;
global.setfire_groundfloor = false;
global.house_intro_music = false;