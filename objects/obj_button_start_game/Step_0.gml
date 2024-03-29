if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)){
    //The mouse is over the sprite
    if (mouse_check_button_pressed(mb_left)){
        //LMB has been clicked    
        //Run the function for the button
		start_game();
    }
}