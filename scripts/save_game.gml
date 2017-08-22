///save_game()

// Make sure the player exists
if (!instance_exists(player_stats)) exit;

// Create the save data structure
var save_data = ds_map_create();

with (player_stats) {
    save_data[? "room"] = previous_room;
    save_data[? "x"] = 0;
    save_data[? "y"] = 0;
}

var save_string = json_encode(save_data);
ds_map_destroy(save_data);
save_string = base64_encode(save_string);

var file = file_text_open_write(working_directory + "game.sav");
file_text_write_string(file, save_string);
file_text_close(file);

show_message("Game Saved");
