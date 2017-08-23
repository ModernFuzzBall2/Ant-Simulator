///get_input
right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));
pause_key = keyboard_check_pressed(vk_escape);
select_key = keyboard_check_pressed(vk_enter) || keyboard_check(vk_space);

// Check for gamepad input
if (gamepad_is_connected(0)) {
    right_key = (gamepad_axis_value(0, gp_axislh) >= .5);
    left_key = (gamepad_axis_value(0, gp_axislh) <= .5);
    down_key = (gamepad_axis_value(0, gp_axislv) >= .5);
    up_key = (gamepad_axis_value(0, gp_axislv) <= .5);
    pause_key = gamepad_button_check_pressed(0, gp_start);
    select_key = gamepad_button_check_pressed(0, gp_face1);
}
