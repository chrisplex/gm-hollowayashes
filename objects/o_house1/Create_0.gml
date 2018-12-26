s_emit = audio_emitter_create();

falloff_factor=0.1;

falloff_ref=500;

falloff_max=1000;

audio_emitter_position(s_emit,x,y,0);

audio_emitter_falloff(s_emit,falloff_ref,falloff_max, 1);

audio_falloff_set_model(audio_falloff_linear_distance_clamped);

audio_play_sound_on(s_emit, strange_house, true, 1);