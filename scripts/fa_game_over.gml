///fa_game_over()

highscore_add("Best", fa_score.current_score);
audio_stop_sound(snd_fa_die);
audio_play_sound(snd_fa_die, 11, false);
room_goto(rm_fa_menu);
