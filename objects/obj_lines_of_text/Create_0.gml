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
["line2", "When we possess it, the world appears to us as a loving machine, "],
["line3", "wherein life is the music of its parts, all working in concert. "],
["line4", "When we are at peace, we are content to be specks of dust in the gears, listening, waiting, playing along. "],
["line5", "The famed Bard Vega was one such speck, for a time. "],
["line6", "He was not at peace, but he lived an orderly and pious life for which music was the center. "],
["line7", "He grew into a man, and made a man’s bargain with Fate,"],
["line8", "that should this be his life until the end, he would accept it however it came. "],
["line9", "Lyra taught him otherwise. She saw through his piety. "],
["line10", "In her very being was another path: no settling. "],
["line11", "Passion was something that could be felt in all facets of life."],
["line12", "And it could be quiet, ever-present, and peaceful. "],
["line13", "Vega and Lyra became one musical union, and they traveled the world together, "],
["line14", "playing enormous stages in far-flung places. "],
["line15", "Always they were on the move, yet they lived at peace wherever they went."],
["line16", "Two specks in the gears of a loving machine, content to find their way together"],
["line17", "But dust does not decide. We lose each other inside of the machine. We lose ourselves.."]);
canPress = true;
alarm[0] = 360; 
alarm[1] = 600;
i = 0;
//show_debug_message(string(_wrap));
display_set_gui_size(room_width, room_height);
skipTheIntro = false;