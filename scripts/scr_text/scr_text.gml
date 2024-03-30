function scr_text(){
	show_debug_message("scr_text running")
	show_debug_message("text: " + string(text))
	instance_create_layer(GUI_W/2, GUI_H/2, "Text", obj_text, {text : text, on_done : struct_get(self, "on_done")});
}