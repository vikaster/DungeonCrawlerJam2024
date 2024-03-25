global.pause = true;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

global.key_revert = vk_return;
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_up = vk_up;
global.key_down = vk_down;

enum menu_page {
	main,
	settings,
	audio
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

ds_menu_main = create_menu_page(["RESUME", menu_element_type.script_runner, "resume_game"],
	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],
	["AUDIO", menu_element_type.page_transfer, menu_page.audio]
)

show_debug_message(string(ds_menu_main))