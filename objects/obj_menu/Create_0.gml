display_set_gui_size(room_width, room_height);
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
// create the dialogues
_text = create_dialogues(["line1", "Peaces is an unnatural state. "],
["line2", "When we possess it, the world appears to us as a loving machine, wherein life is the music of its parts, all working in concert. "],
["line3", "When we are at peace, we are content to be specks of dust in the gears, listening, waiting, playing along. "],
["line4", "The famed Bard Vega was one such speck, for a time. "],
["line5", "He was not at peace, but he lived an orderly and pious life for which music was the center. "],
["line6", "He grew into a man, and made a man’s bargain with Fate, that should this be his life until the end, he would accept it however it came. "],
["line7", "Lyra taught him otherwise. She saw through his piety. In her very being was another path: no settling. "],
["line8", "Passion was something that could be felt in all facets of life. And it could be quiet, ever-present, and peaceful. "],
["line9", "Vega and Lyra became one musical union, and they traveled the world together, playing enormous stages in far-flung places. "],
["line10", "Always they were on the move, yet they lived at peace wherever they went."],
["line11", "Two specks in the gears of a loving machine, content to find their way together"]
);
alarm[0] = 360; 
i = 0;
show_debug_message(string(_text));
display_set_gui_size(room_width, room_height);
skipTheIntro = false;