#macro CAM_W camera_get_view_width(view_camera[0])
#macro CAM_H camera_get_view_height(view_camera[0])

#macro CONFIDENCE_LOST_PER_FAIL 2
#macro CONFIDENCE_GAINED_PER_SUCCESS 1

global.player = {
	confidence : {current : 20, max : 20, display : 20}	
}