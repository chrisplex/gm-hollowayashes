s_emit = audio_emitter_create();

falloff_factor=0.9;

falloff_ref=400;

falloff_max=1100;


audio_emitter_position(s_emit,x,y,3);

audio_emitter_falloff(s_emit,falloff_ref,falloff_max, falloff_factor);

audio_falloff_set_model(audio_falloff_linear_distance_clamped);

audio_play_sound_on(s_emit, arriving_where_i_left_off, true, 10);